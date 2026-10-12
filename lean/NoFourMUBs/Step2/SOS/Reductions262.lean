import NoFourMUBs.Step2.SOS.Canonical091
import NoFourMUBs.Step2.SOS.Canonical092
import NoFourMUBs.Step2.SOS.Canonical146
import NoFourMUBs.Step2.SOS.Canonical148
import NoFourMUBs.Step2.SOS.Canonical149
import NoFourMUBs.Step2.SOS.Canonical150
import NoFourMUBs.Step2.SOS.Canonical181
import NoFourMUBs.Step2.SOS.Canonical182
import NoFourMUBs.Step2.SOS.Canonical189
import NoFourMUBs.Step2.SOS.Canonical190
import NoFourMUBs.Step2.SOS.Canonical221
import NoFourMUBs.Step2.SOS.Canonical298
import NoFourMUBs.Step2.SOS.Canonical366
import NoFourMUBs.Step2.SOS.Canonical382
import NoFourMUBs.Step2.SOS.Canonical529
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections026
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions004
import NoFourMUBs.Step2.SOS.Reductions012
import NoFourMUBs.Step2.SOS.Reductions024
import NoFourMUBs.Step2.SOS.Reductions032
import NoFourMUBs.Step2.SOS.Reductions033
import NoFourMUBs.Step2.SOS.Reductions035
import NoFourMUBs.Step2.SOS.Reductions041
import NoFourMUBs.Step2.SOS.Reductions044
import NoFourMUBs.Step2.SOS.Reductions045
import NoFourMUBs.Step2.SOS.Reductions075
import NoFourMUBs.Step2.SOS.Reductions092
import NoFourMUBs.Step2.SOS.Reductions094
import NoFourMUBs.Step2.SOS.Reductions109
import NoFourMUBs.Step2.SOS.Reductions127
import NoFourMUBs.Step2.SOS.Reductions128
import NoFourMUBs.Step2.SOS.Reductions129
import NoFourMUBs.Step2.SOS.Reductions133
import NoFourMUBs.Step2.SOS.Reductions134
import NoFourMUBs.Step2.SOS.Reductions135
import NoFourMUBs.Step2.SOS.Reductions136
import NoFourMUBs.Step2.SOS.Reductions137
import NoFourMUBs.Step2.SOS.Reductions139
import NoFourMUBs.Step2.SOS.Reductions144
import NoFourMUBs.Step2.SOS.Reductions145
import NoFourMUBs.Step2.SOS.Reductions146
import NoFourMUBs.Step2.SOS.Reductions168
import NoFourMUBs.Step2.SOS.Reductions181
import NoFourMUBs.Step2.SOS.Reductions210
import NoFourMUBs.Step2.SOS.Reductions214
import NoFourMUBs.Step2.SOS.Reductions260
import NoFourMUBs.Step2.SOS.Reductions261
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical131
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical132
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical168
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical170
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical311
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes33
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection8384 : Integer.Sparse (Fin 1613) := [(1075, 1)]

theorem reductionSound8384 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1075).moment H =
      Integer.Sparse.eval reductionProjection8384 (momentVector H) := by
  have hc : coordinates (1075 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1075) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection8384, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection8385 : Integer.Sparse (Fin 1613) := [(72, 1), (73, 1), (76, 1), (436, -3), (439, -3), (1075, -3)]

def reductionPivot8385 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 0, 3, -1], ![0, -2, 0, 2], ![0, 1, -3, 2], ![1, 2, 0, -3]]

theorem reductionSound8385 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode4687).moment H =
      Integer.Sparse.eval reductionProjection8385 (momentVector H) := by
  have heq : reductionPivot8385 = (fun u v => (normalNode4687).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4687).moment H = injectiveMoment H reductionPivot8385 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4687).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot8385 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8385 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8385 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1063, reductionProjection8384, reductionProjection1062, reductionProjection1336] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8385 (0 : Fin 4)) = canonicalInput19120.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8385 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1063 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8385 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1063 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19120 hH))).trans (reductionSound1063 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8385 (1 : Fin 4)) = canonicalInput9609.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8385 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8384 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8385 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8384 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9609 hH))).trans (reductionSound8384 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8385 (2 : Fin 4)) = canonicalInput9536.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8385 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1062 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8385 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1062 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9536 hH))).trans (reductionSound1062 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8385 (3 : Fin 4)) = canonicalInput9532.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8385 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1336 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8385 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1336 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9532 hH))).trans (reductionSound1336 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4687).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8385 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4687).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8385 (j : Fin 4)))
      2 6 6 2 ![3, 1, 1, 1] ![2, 6, 6, 6] reductionProjection8385 ![reductionProjection1063, reductionProjection8384, reductionProjection1062, reductionProjection1336]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8386 : Integer.Sparse (Fin 1613) := [(42, -1), (56, 3), (70, 3), (76, 3), (77, 3), (84, 3), (88, -1), (90, -3), (91, -1), (243, -1), (402, -9), (698, -2), (700, -2), (1226, -1)]

def reductionPivot8386 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 0, 3, -1], ![0, -1, -2, 3], ![1, -1, 0, 0], ![1, 3, -1, -3]]

theorem reductionSound8386 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode4689).moment H =
      Integer.Sparse.eval reductionProjection8386 (momentVector H) := by
  have heq : reductionPivot8386 = (fun u v => (normalNode4689).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4689).moment H = injectiveMoment H reductionPivot8386 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4689).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8386 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8386 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8386 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4316, reductionProjection8358, reductionProjection4089, oldProjection990] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8386 (0 : Fin 4)) = canonicalInput5876.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8386 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4316 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8386 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4316 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5876 hH))).trans (reductionSound4316 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8386 (1 : Fin 4)) = canonicalInput9514.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8386 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8358 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8386 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8358 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9514 hH))).trans (reductionSound8358 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8386 (2 : Fin 4)) = canonicalInput9542.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8386 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4089 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8386 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4089 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9542 hH))).trans (reductionSound4089 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8386 (3 : Fin 4)) = canonicalInput9543.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8386 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection990 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8386 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection990 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9543 hH))).trans (oldProjectionSound990 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4689).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8386 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4689).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8386 (j : Fin 4)))
      2 18 18 2 ![9, 9, 1, 9] ![2, 2, 18, 2] reductionProjection8386 ![reductionProjection4316, reductionProjection8358, reductionProjection4089, oldProjection990]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8387 : Integer.Sparse (Fin 1613) := [(0, 2), (90, -160), (94, -25), (302, -720), (446, -720), (698, -320), (700, -240), (704, -80), (1226, -80), (1251, -15)]

def reductionPivot8387 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 0, 3, -1], ![0, -1, -2, 3], ![1, 1, -1, -1], ![1, 1, 0, -2]]

theorem reductionSound8387 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4690).moment H =
      Integer.Sparse.eval reductionProjection8387 (momentVector H) := by
  have heq : reductionPivot8387 = (fun u v => (normalNode4690).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4690).moment H = injectiveMoment H reductionPivot8387 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4690).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8387 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8387 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8387 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4118, oldProjection458, oldProjection1001, oldProjection950] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8387 (0 : Fin 4)) = canonicalInput5877.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8387 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4118 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8387 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4118 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5877 hH))).trans (reductionSound4118 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8387 (1 : Fin 4)) = canonicalInput9517.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8387 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection458 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8387 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection458 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9517 hH))).trans (oldProjectionSound458 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8387 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4223 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8387 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1001 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8387 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1001 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4223 hH))).trans (oldProjectionSound1001 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8387 (3 : Fin 4)) = canonicalInput9544.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8387 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection950 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8387 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection950 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9544 hH))).trans (oldProjectionSound950 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4690).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8387 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4690).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8387 (j : Fin 4)))
      2 1440 1440 2 ![1, 1, 720, 720] ![1440, 1440, 2, 2] reductionProjection8387 ![reductionProjection4118, oldProjection458, oldProjection1001, oldProjection950]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8388 : Integer.Sparse (Fin 1613) := [(0, -13), (19, -40), (20, 10), (40, -240), (42, 240), (76, -480), (90, 560), (94, 105), (242, -240), (243, 400), (244, 80), (502, 720), (697, -720), (698, 1600), (700, 1360), (701, 160), (704, 480), (1052, -240), (1059, 400), (1226, 400), (1248, 720), (1323, -240)]

def reductionPivot8388 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, 3, -1], ![0, -1, -2, 3], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, 0, -2]]

theorem reductionSound8388 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4691).moment H =
      Integer.Sparse.eval reductionProjection8388 (momentVector H) := by
  have heq : reductionPivot8388 = (fun u v => (normalNode4691).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4691).moment H = injectiveMoment H reductionPivot8388 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4691).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot8388 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8388 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![240, 288, 1440, 720, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8388 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1638, oldProjection2144, oldProjection1948, oldProjection2145, oldProjection1946] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8388 (0 : Fin 5)) = canonicalInput9382.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8388 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1638 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8388 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1638 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9382 hH))).trans (oldProjectionSound1638 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8388 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2144⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8388 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2144 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8388 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2144 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2144 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8388 (2 : Fin 5)) = canonicalInput9540.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8388 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1948 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8388 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1948 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9540 hH))).trans (oldProjectionSound1948 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8388 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2145⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8388 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2145 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8388 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2145 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2145 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8388 (4 : Fin 5)) = canonicalInput9541.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8388 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1946 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8388 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1946 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9541 hH))).trans (oldProjectionSound1946 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4691).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8388 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4691).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8388 (j : Fin 5)))
      1 1440 1440 1 ![240, 288, 1440, 720, 1440] ![6, 5, 1, 2, 1] reductionProjection8388 ![oldProjection1638, oldProjection2144, oldProjection1948, oldProjection2145, oldProjection1946]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8389 : Integer.Sparse (Fin 1613) := [(402, -1), (466, -1), (502, -1), (795, -1)]

def reductionPivot8389 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, 3, -1], ![0, -1, -2, 3], ![1, -2, 0, 1], ![1, 2, 0, -3]]

theorem reductionSound8389 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4692).moment H =
      Integer.Sparse.eval reductionProjection8389 (momentVector H) := by
  have heq : reductionPivot8389 = (fun u v => (normalNode4692).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4692).moment H = injectiveMoment H reductionPivot8389 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4692).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8389 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8389 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8389 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection594, reductionProjection4636, oldProjection494, reductionProjection4089] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8389 (0 : Fin 4)) = canonicalInput11611.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8389 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection594 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8389 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection594 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11611 hH))).trans (oldProjectionSound594 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8389 (1 : Fin 4)) = canonicalInput9580.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8389 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4636 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8389 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4636 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9580 hH))).trans (reductionSound4636 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8389 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4222 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8389 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection494 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8389 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection494 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4222 hH))).trans (oldProjectionSound494 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8389 (3 : Fin 4)) = canonicalInput9542.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8389 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4089 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8389 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4089 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9542 hH))).trans (reductionSound4089 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4692).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8389 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4692).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8389 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection8389 ![oldProjection594, reductionProjection4636, oldProjection494, reductionProjection4089]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8390 : Integer.Sparse (Fin 1613) := [(87, 1), (89, 1), (151, -6), (163, -3), (1219, 1)]

def reductionPivot8390 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 0, 3, -1], ![0, -1, -1, 2], ![0, -1, -1, 2], ![1, 3, -1, -3]]

theorem reductionSound8390 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode4693).moment H =
      Integer.Sparse.eval reductionProjection8390 (momentVector H) := by
  have heq : reductionPivot8390 = (fun u v => (normalNode4693).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4693).moment H = injectiveMoment H reductionPivot8390 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4693).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot8390 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8390 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8390 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection797, reductionProjection1147, reductionProjection1147, reductionProjection796] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8390 (0 : Fin 4)) = canonicalInput19124.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8390 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection797 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8390 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection797 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19124 hH))).trans (reductionSound797 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8390 (1 : Fin 4)) = canonicalInput9612.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8390 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1147 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8390 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1147 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9612 hH))).trans (reductionSound1147 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8390 (2 : Fin 4)) = canonicalInput9558.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8390 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1147 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8390 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1147 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9558 hH))).trans (reductionSound1147 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8390 (3 : Fin 4)) = canonicalInput9548.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8390 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection796 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8390 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection796 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9548 hH))).trans (reductionSound796 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4693).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8390 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4693).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8390 (j : Fin 4)))
      2 6 6 2 ![3, 1, 1, 1] ![2, 6, 6, 6] reductionProjection8390 ![reductionProjection797, reductionProjection1147, reductionProjection1147, reductionProjection796]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8391 : Integer.Sparse (Fin 1613) := [(151, -1), (432, -1), (565, -1), (1071, -1)]

def reductionPivot8391 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 0, 3, -1], ![0, -1, -1, 2], ![1, -1, -1, 1], ![1, 3, -1, -3]]

theorem reductionSound8391 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4698).moment H =
      Integer.Sparse.eval reductionProjection8391 (momentVector H) := by
  have heq : reductionPivot8391 = (fun u v => (normalNode4698).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4698).moment H = injectiveMoment H reductionPivot8391 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4698).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8391 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8391 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8391 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection150, reductionProjection8361, reductionProjection1147, oldProjection505] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8391 (0 : Fin 4)) = canonicalInput5885.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8391 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection150 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8391 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection150 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5885 hH))).trans (reductionSound150 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8391 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1071).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8391 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8361 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8391 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8361 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8361 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8391 (2 : Fin 4)) = canonicalInput9558.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8391 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1147 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8391 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1147 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9558 hH))).trans (reductionSound1147 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8391 (3 : Fin 4)) = canonicalInput9561.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8391 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection505 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8391 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection505 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9561 hH))).trans (oldProjectionSound505 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4698).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8391 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4698).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8391 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection8391 ![reductionProjection150, reductionProjection8361, reductionProjection1147, oldProjection505]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8392 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (20, 5), (55, -480), (70, -240), (76, -480), (79, -480), (81, -480), (83, -240), (84, -480), (94, -10), (147, 720), (151, 1440), (159, 720), (243, 240), (432, 1440), (565, 1440), (683, -240), (696, -240), (698, 560), (704, 80), (1058, -720), (1071, 1440), (1223, -240), (1225, 80), (1226, 400), (1227, 240), (1251, -50)]

def reductionPivot8392 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 0, 3, -1], ![0, -1, -1, 2], ![0, -1, 0, 1], ![1, 0, -1, 0], ![1, 3, -1, -3]]

theorem reductionSound8392 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4694).moment H =
      Integer.Sparse.eval reductionProjection8392 (momentVector H) := by
  have heq : reductionPivot8392 = (fun u v => (normalNode4694).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4694).moment H = injectiveMoment H reductionPivot8392 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4694).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot8392 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8392 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 288, 2, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8392 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection154, reductionProjection8362, reductionProjection8375, reductionProjection8391, reductionProjection5379] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8392 (0 : Fin 5)) = canonicalInput5878.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8392 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection154 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8392 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection154 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5878 hH))).trans (reductionSound154 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8392 (1 : Fin 5)) = (normalNode4673).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8392 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8362 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8392 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8362 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8362 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8392 (2 : Fin 5)) = canonicalInput9545.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8392 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8375 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8392 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8375 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9545 hH))).trans (reductionSound8375 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8392 (3 : Fin 5)) = (normalNode4698).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8392 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8391 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8392 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8391 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8391 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8392 (4 : Fin 5)) = canonicalInput9550.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8392 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5379 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8392 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5379 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9550 hH))).trans (reductionSound5379 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4694).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8392 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4694).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8392 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 288, 2, 288] ![1, 5, 5, 720, 5] reductionProjection8392 ![reductionProjection154, reductionProjection8362, reductionProjection8375, reductionProjection8391, reductionProjection5379]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8393 : Integer.Sparse (Fin 1613) := [(0, -7), (81, -480), (94, 60), (406, 1440), (421, 1440), (431, 1440), (433, 1440), (503, 1440), (697, -480), (698, 160), (767, 1440), (1065, 720), (1072, -1440), (1226, 80), (1251, -5)]

def reductionPivot8393 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 0, 3, -1], ![0, -1, -1, 2], ![0, -1, 0, 1], ![1, 1, -2, 0], ![1, 2, 0, -3]]

theorem reductionSound8393 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4695).moment H =
      Integer.Sparse.eval reductionProjection8393 (momentVector H) := by
  have heq : reductionPivot8393 = (fun u v => (normalNode4695).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4695).moment H = injectiveMoment H reductionPivot8393 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4695).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot8393 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8393 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2, 2, 1, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8393 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4281, reductionProjection8363, reductionProjection8374, reductionProjection4343, reductionProjection5794] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8393 (0 : Fin 5)) = canonicalInput5879.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8393 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4281 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8393 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4281 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5879 hH))).trans (reductionSound4281 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8393 (1 : Fin 5)) = (normalNode4674).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8393 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8363 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8393 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8363 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8363 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8393 (2 : Fin 5)) = canonicalInput9546.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8393 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8374 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8393 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8374 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9546 hH))).trans (reductionSound8374 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8393 (3 : Fin 5)) = canonicalInput9549.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8393 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4343 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8393 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4343 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9549 hH))).trans (reductionSound4343 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8393 (4 : Fin 5)) = canonicalInput9551.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8393 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5794 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8393 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5794 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9551 hH))).trans (reductionSound5794 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4695).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8393 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4695).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8393 (j : Fin 5)))
      1 1440 1440 1 ![2, 2, 1, 1440, 288] ![720, 720, 1440, 1, 5] reductionProjection8393 ![reductionProjection4281, reductionProjection8363, reductionProjection8374, reductionProjection4343, reductionProjection5794]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8394 : Integer.Sparse (Fin 1613) := [(151, -1), (402, -1), (430, -1), (444, -1)]

def reductionPivot8394 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, 3, -1], ![0, -1, -1, 2], ![1, -2, 0, 1], ![1, 3, -1, -3]]

theorem reductionSound8394 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4700).moment H =
      Integer.Sparse.eval reductionProjection8394 (momentVector H) := by
  have heq : reductionPivot8394 = (fun u v => (normalNode4700).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4700).moment H = injectiveMoment H reductionPivot8394 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4700).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8394 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8394 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8394 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection475, reductionProjection4089, reductionProjection1147, reductionProjection1408] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8394 (0 : Fin 4)) = canonicalInput9407.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8394 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection475 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8394 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection475 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9407 hH))).trans (oldProjectionSound475 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8394 (1 : Fin 4)) = canonicalInput9542.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8394 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4089 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8394 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4089 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9542 hH))).trans (reductionSound4089 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8394 (2 : Fin 4)) = canonicalInput9558.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8394 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1147 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8394 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1147 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9558 hH))).trans (reductionSound1147 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8394 (3 : Fin 4)) = canonicalInput9559.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8394 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1408 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8394 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1408 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9559 hH))).trans (reductionSound1408 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4700).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8394 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4700).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8394 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection8394 ![oldProjection475, reductionProjection4089, reductionProjection1147, reductionProjection1408]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8395 : Integer.Sparse (Fin 1613) := [(0, -1), (42, 40), (56, -120), (70, -120), (76, -240), (77, -120), (79, -120), (81, -120), (84, -240), (87, -120), (88, 80), (89, -120), (90, 160), (91, 40), (151, 1080), (163, 360), (243, 120), (402, 360), (430, 360), (432, 360), (444, 360), (565, 360), (682, -120), (697, -120), (698, 320), (700, 80), (704, 40), (1052, -120), (1058, -120), (1059, 40), (1071, 360), (1217, -120), (1219, -120), (1221, -120), (1226, 240), (1227, 80), (1251, -15)]

def reductionPivot8395 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 0, 3, -1], ![0, -1, -1, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 3, -1, -3]]

theorem reductionSound8395 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode4696).moment H =
      Integer.Sparse.eval reductionProjection8395 (momentVector H) := by
  have heq : reductionPivot8395 = (fun u v => (normalNode4696).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4696).moment H = injectiveMoment H reductionPivot8395 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4696).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot8395 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8395 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 288, 6, 2, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8395 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4317, reductionProjection8364, reductionProjection8390, reductionProjection8394, oldProjection1797] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8395 (0 : Fin 5)) = canonicalInput5880.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8395 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4317 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8395 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4317 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5880 hH))).trans (reductionSound4317 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8395 (1 : Fin 5)) = (normalNode4675).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8395 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8364 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8395 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8364 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8364 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8395 (2 : Fin 5)) = (normalNode4693).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8395 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8390 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8395 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8390 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8390 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8395 (3 : Fin 5)) = (normalNode4700).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8395 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8394 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8395 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8394 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8394 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8395 (4 : Fin 5)) = canonicalInput9554.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8395 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1797 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8395 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1797 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9554 hH))).trans (oldProjectionSound1797 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4696).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8395 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4696).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8395 (j : Fin 5)))
      1 720 1440 2 ![144, 288, 6, 2, 1440] ![10, 5, 240, 720, 1] reductionProjection8395 ![reductionProjection4317, reductionProjection8364, reductionProjection8390, reductionProjection8394, oldProjection1797]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8396 : Integer.Sparse (Fin 1613) := [(1074, 1)]

theorem reductionSound8396 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1074).moment H =
      Integer.Sparse.eval reductionProjection8396 (momentVector H) := by
  have hc : coordinates (1074 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1074) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection8396, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection8397 : Integer.Sparse (Fin 1613) := [(0, -3), (56, -480), (58, -240), (76, -240), (81, -1200), (84, -240), (94, 30), (420, 720), (421, 720), (428, 720), (431, 720), (458, 720), (487, 720), (503, 720), (682, -240), (695, -240), (697, -480), (698, 320), (700, 240), (801, 720), (1058, -240), (1059, 240), (1074, -1440), (1076, 720), (1251, 25), (1389, -240)]

def reductionPivot8397 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 0, 3, -1], ![0, -1, -1, 2], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 2, 0, -3]]

theorem reductionSound8397 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4697).moment H =
      Integer.Sparse.eval reductionProjection8397 (momentVector H) := by
  have heq : reductionPivot8397 = (fun u v => (normalNode4697).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4697).moment H = injectiveMoment H reductionPivot8397 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4697).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot8397 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8397 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![6, 6, 18, 1, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8397 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4458, reductionProjection8365, reductionProjection4693, reductionProjection8396, reductionProjection3017] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8397 (0 : Fin 5)) = canonicalInput5882.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8397 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4458 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8397 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4458 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5882 hH))).trans (reductionSound4458 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8397 (1 : Fin 5)) = (normalNode4676).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8397 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8365 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8397 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8365 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8365 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8397 (2 : Fin 5)) = canonicalInput9553.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8397 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4693 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8397 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4693 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9553 hH))).trans (reductionSound4693 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8397 (3 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1074).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8397 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8396 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8397 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8396 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8396 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8397 (4 : Fin 5)) = canonicalInput9555.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8397 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3017 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8397 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3017 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9555 hH))).trans (reductionSound3017 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4697).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8397 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4697).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8397 (j : Fin 5)))
      1 1440 1440 1 ![6, 6, 18, 1, 1440] ![240, 240, 80, 1440, 1] reductionProjection8397 ![reductionProjection4458, reductionProjection8365, reductionProjection4693, reductionProjection8396, reductionProjection3017]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8398 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -15), (427, -720), (430, -720), (433, -720), (698, -160), (1058, 240), (1226, -80), (1227, -80), (1251, -20)]

def reductionPivot8398 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, 2, 0, 0], ![0, -1, -2, 3], ![0, -1, 2, -1], ![1, 0, 1, -2]]

theorem reductionSound8398 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5927).moment H =
      Integer.Sparse.eval reductionProjection8398 (momentVector H) := by
  have heq : reductionPivot8398 = (fun u v => (normalNode5927).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5927).moment H = injectiveMoment H reductionPivot8398 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5927).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot8398 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8398 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8398 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1277, oldProjection475, oldProjection476, oldProjection474] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8398 (0 : Fin 4)) = canonicalInput23480.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8398 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1277 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8398 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1277 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23480 hH))).trans (oldProjectionSound1277 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8398 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5444 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8398 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection475 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8398 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection475 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5444 hH))).trans (oldProjectionSound475 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8398 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5404 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8398 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection476 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8398 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection476 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5404 hH))).trans (oldProjectionSound476 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8398 (3 : Fin 4)) = canonicalInput12115.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8398 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection474 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8398 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection474 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12115 hH))).trans (oldProjectionSound474 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5927).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8398 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5927).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8398 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 1, 1] ![2, 1440, 1440, 1440] reductionProjection8398 ![oldProjection1277, oldProjection475, oldProjection476, oldProjection474]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8399 : Integer.Sparse (Fin 1613) := [(151, -1), (458, -1), (503, -1), (1261, -1)]

def reductionPivot8399 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, 3, -1], ![0, -1, -1, 2], ![1, -2, -1, 2], ![1, 2, 0, -3]]

theorem reductionSound8399 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4701).moment H =
      Integer.Sparse.eval reductionProjection8399 (momentVector H) := by
  have heq : reductionPivot8399 = (fun u v => (normalNode4701).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4701).moment H = injectiveMoment H reductionPivot8399 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4701).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8399 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8399 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8399 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1047, oldProjection480, reductionProjection1078, reductionProjection1147] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8399 (0 : Fin 4)) = canonicalInput11627.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8399 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1047 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8399 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1047 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11627 hH))).trans (reductionSound1047 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8399 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4229 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8399 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection480 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8399 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection480 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4229 hH))).trans (oldProjectionSound480 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8399 (2 : Fin 4)) = canonicalInput9560.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8399 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1078 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8399 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1078 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9560 hH))).trans (reductionSound1078 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8399 (3 : Fin 4)) = canonicalInput9558.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8399 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1147 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8399 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1147 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9558 hH))).trans (reductionSound1147 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4701).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8399 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4701).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8399 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection8399 ![reductionProjection1047, oldProjection480, reductionProjection1078, reductionProjection1147]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8400 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 15), (151, 720), (402, 720), (427, 720), (430, 720), (433, 720), (444, 720), (458, 720), (466, 720), (502, 720), (503, 720), (559, 720), (563, 720), (565, 720), (698, 160), (795, 720), (1058, -240), (1074, -1440), (1226, 80), (1227, 80), (1251, 20), (1261, 720)]

def reductionPivot8400 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, 3, -1], ![0, -1, -1, 2], ![0, 1, -1, 0], ![1, -2, 0, 1], ![1, 2, 0, -3]]

theorem reductionSound8400 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4699).moment H =
      Integer.Sparse.eval reductionProjection8400 (momentVector H) := by
  have heq : reductionPivot8400 = (fun u v => (normalNode4699).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4699).moment H = injectiveMoment H reductionPivot8400 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4699).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot8400 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8400 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2, 1, 2, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8400 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8398, reductionProjection8389, reductionProjection8396, reductionProjection8399, reductionProjection4350] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8400 (0 : Fin 5)) = canonicalInput9396.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8400 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8398 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8400 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8398 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9396 hH))).trans (reductionSound8398 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8400 (1 : Fin 5)) = (normalNode4692).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8400 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8389 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8400 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8389 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8389 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8400 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1074).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8400 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8396 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8400 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8396 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8396 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8400 (3 : Fin 5)) = (normalNode4701).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8400 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8399 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8400 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8399 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8399 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8400 (4 : Fin 5)) = canonicalInput9556.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8400 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4350 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8400 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4350 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9556 hH))).trans (reductionSound4350 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4699).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8400 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4699).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8400 (j : Fin 5)))
      1 1440 1440 1 ![1440, 2, 1, 2, 2] ![1, 720, 1440, 720, 720] reductionProjection8400 ![reductionProjection8398, reductionProjection8389, reductionProjection8396, reductionProjection8399, reductionProjection4350]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8401 : Integer.Sparse (Fin 1613) := [(70, -1), (76, -1), (84, -1)]

def reductionPivot8401 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -2, 3, -1], ![-2, 1, -2, 3], ![3, 1, -1, -3]]

theorem reductionSound8401 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode9853).moment H =
      Integer.Sparse.eval reductionProjection8401 (momentVector H) := by
  have heq : reductionPivot8401 = (fun u v => (normalNode9853).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9853).moment H = injectiveMoment H reductionPivot8401 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9853).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9853).entries)).symm
  have hshape : reductionPivot8401 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot8401 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8401 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection146, reductionProjection394, oldProjection103] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8401 (0 : Fin 3)) = canonicalInput14149.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8401 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection146 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8401 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection146 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14149 hH))).trans (reductionSound146 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8401 (1 : Fin 3)) = canonicalInput24474.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8401 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection394 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8401 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection394 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24474 hH))).trans (reductionSound394 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8401 (2 : Fin 3)) = canonicalInput24478.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8401 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection103 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8401 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection103 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24478 hH))).trans (oldProjectionSound103 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9853).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8401 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9853).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8401 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection8401 ![reductionProjection146, reductionProjection394, oldProjection103]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8402 : Integer.Sparse (Fin 1613) := [(0, 1), (70, 240), (76, 480), (81, 480), (84, 480), (94, -15), (147, -720), (683, 240), (698, -80), (1251, -20)]

def reductionPivot8402 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 0, 3, -1], ![0, -1, 0, 1], ![1, -1, -2, 2], ![1, 3, -1, -3]]

theorem reductionSound8402 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4708).moment H =
      Integer.Sparse.eval reductionProjection8402 (momentVector H) := by
  have heq : reductionPivot8402 = (fun u v => (normalNode4708).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4708).moment H = injectiveMoment H reductionPivot8402 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4708).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8402 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8402 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 3, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8402 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4270, reductionProjection1145, reductionProjection8401, oldProjection823] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8402 (0 : Fin 4)) = canonicalInput5892.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8402 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4270 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8402 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4270 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5892 hH))).trans (reductionSound4270 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8402 (1 : Fin 4)) = canonicalInput9534.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8402 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1145 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8402 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1145 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9534 hH))).trans (reductionSound1145 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8402 (2 : Fin 4)) = canonicalInput9577.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8402 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8401 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8402 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8401 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9577 hH))).trans (reductionSound8401 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8402 (3 : Fin 4)) = canonicalInput9578.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8402 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection823 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8402 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection823 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9578 hH))).trans (oldProjectionSound823 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4708).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8402 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4708).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8402 (j : Fin 4)))
      2 1440 1440 2 ![3, 1, 3, 720] ![480, 1440, 480, 2] reductionProjection8402 ![reductionProjection4270, reductionProjection1145, reductionProjection8401, oldProjection823]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8403 : Integer.Sparse (Fin 1613) := [(0, -2), (70, -80), (76, -240), (81, -480), (84, -240), (94, 25), (147, 720), (421, 720), (555, 720), (683, -240), (697, -240), (698, 80), (699, -80), (1067, 480), (1251, 15)]

def reductionPivot8403 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 0, 3, -1], ![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 0, -2, 1], ![1, 3, -1, -3]]

theorem reductionSound8403 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode4702).moment H =
      Integer.Sparse.eval reductionProjection8403 (momentVector H) := by
  have heq : reductionPivot8403 = (fun u v => (normalNode4702).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4702).moment H = injectiveMoment H reductionPivot8403 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4702).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8403 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8403 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2, 2, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8403 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4271, reductionProjection8377, reductionProjection8377, reductionProjection8402, reductionProjection1452] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8403 (0 : Fin 5)) = canonicalInput5886.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8403 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4271 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8403 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4271 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5886 hH))).trans (reductionSound4271 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8403 (1 : Fin 5)) = (normalNode4682).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8403 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8377 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8403 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8377 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8377 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8403 (2 : Fin 5)) = canonicalInput9562.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8403 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8377 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8403 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8377 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9562 hH))).trans (reductionSound8377 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8403 (3 : Fin 5)) = (normalNode4708).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8403 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8402 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8403 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8402 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8402 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8403 (4 : Fin 5)) = canonicalInput9567.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8403 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1452 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8403 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1452 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9567 hH))).trans (reductionSound1452 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4702).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8403 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4702).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8403 (j : Fin 5)))
      1 480 1440 3 ![1440, 2, 2, 1440, 1440] ![1, 720, 720, 1, 1] reductionProjection8403 ![reductionProjection4271, reductionProjection8377, reductionProjection8377, reductionProjection8402, reductionProjection1452]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8404 : Integer.Sparse (Fin 1613) := [(0, -1), (40, -60), (56, -180), (58, -180), (62, -60), (94, -5), (395, 540), (436, 540), (698, 120), (700, 180), (704, 60), (761, 540), (1068, 360), (1219, -180)]

def reductionPivot8404 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 0, 3, -1], ![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 1, -3, 1], ![1, 2, 0, -3]]

theorem reductionSound8404 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode4703).moment H =
      Integer.Sparse.eval reductionProjection8404 (momentVector H) := by
  have heq : reductionPivot8404 = (fun u v => (normalNode4703).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4703).moment H = injectiveMoment H reductionPivot8404 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4703).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8404 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8404 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2, 2, 144, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8404 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4275, reductionProjection8378, reductionProjection8378, reductionProjection4138, reductionProjection6721] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8404 (0 : Fin 5)) = canonicalInput5887.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8404 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4275 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8404 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4275 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5887 hH))).trans (reductionSound4275 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8404 (1 : Fin 5)) = (normalNode4683).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8404 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8378 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8404 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8378 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8378 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8404 (2 : Fin 5)) = canonicalInput9563.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8404 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8378 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8404 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8378 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9563 hH))).trans (reductionSound8378 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8404 (3 : Fin 5)) = canonicalInput9566.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8404 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4138 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8404 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4138 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9566 hH))).trans (reductionSound4138 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8404 (4 : Fin 5)) = canonicalInput9568.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8404 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6721 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8404 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6721 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9568 hH))).trans (reductionSound6721 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4703).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8404 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4703).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8404 (j : Fin 5)))
      1 360 1440 4 ![1440, 2, 2, 144, 1440] ![1, 720, 720, 10, 1] reductionProjection8404 ![reductionProjection4275, reductionProjection8378, reductionProjection8378, reductionProjection4138, reductionProjection6721]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8405 : Integer.Sparse (Fin 1613) := [(150, -1), (402, -1), (428, -1), (559, -1)]

def reductionPivot8405 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 0, 3, -1], ![0, 0, -2, 2], ![1, -2, 0, 1], ![1, 3, -1, -3]]

theorem reductionSound8405 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4709).moment H =
      Integer.Sparse.eval reductionProjection8405 (momentVector H) := by
  have heq : reductionPivot8405 = (fun u v => (normalNode4709).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4709).moment H = injectiveMoment H reductionPivot8405 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4709).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8405 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8405 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8405 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4307, reductionProjection4089, reductionProjection1039, oldProjection504] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8405 (0 : Fin 4)) = canonicalInput5897.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8405 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4307 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8405 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4307 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5897 hH))).trans (reductionSound4307 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8405 (1 : Fin 4)) = canonicalInput9542.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8405 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4089 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8405 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4089 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9542 hH))).trans (reductionSound4089 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8405 (2 : Fin 4)) = canonicalInput9581.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8405 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1039 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8405 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1039 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9581 hH))).trans (reductionSound1039 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8405 (3 : Fin 4)) = canonicalInput9582.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8405 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection504 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8405 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection504 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9582 hH))).trans (oldProjectionSound504 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4709).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8405 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4709).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8405 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection8405 ![reductionProjection4307, reductionProjection4089, reductionProjection1039, oldProjection504]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8406 : Integer.Sparse (Fin 1613) := [(0, -1), (42, 80), (56, -240), (70, -120), (76, -240), (77, -240), (79, -120), (81, -240), (84, -240), (88, 40), (90, 240), (91, 40), (94, 10), (147, 360), (150, 720), (162, 360), (243, 40), (402, 720), (428, 720), (559, 720), (683, -120), (695, -120), (698, 280), (700, 400), (701, 40), (1052, -120), (1059, 160), (1226, 80), (1251, -5)]

def reductionPivot8406 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 0, 3, -1], ![0, -1, 0, 1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 3, -1, -3]]

theorem reductionSound8406 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode4704).moment H =
      Integer.Sparse.eval reductionProjection8406 (momentVector H) := by
  have heq : reductionPivot8406 = (fun u v => (normalNode4704).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4704).moment H = injectiveMoment H reductionPivot8406 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4704).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8406 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8406 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![18, 6, 18, 2, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8406 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4367, reductionProjection8379, reductionProjection8386, reductionProjection8405, oldProjection1814] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8406 (0 : Fin 5)) = canonicalInput5888.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8406 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4367 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8406 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4367 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5888 hH))).trans (reductionSound4367 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8406 (1 : Fin 5)) = (normalNode4684).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8406 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8379 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8406 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8379 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8379 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8406 (2 : Fin 5)) = canonicalInput9564.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8406 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8386 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8406 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8386 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9564 hH))).trans (reductionSound8386 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8406 (3 : Fin 5)) = (normalNode4709).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8406 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8405 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8406 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8405 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8405 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8406 (4 : Fin 5)) = canonicalInput9571.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8406 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1814 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8406 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1814 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9571 hH))).trans (oldProjectionSound1814 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4704).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8406 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4704).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8406 (j : Fin 5)))
      1 720 720 1 ![18, 6, 18, 2, 720] ![40, 120, 40, 360, 1] reductionProjection8406 ![reductionProjection4367, reductionProjection8379, reductionProjection8386, reductionProjection8405, oldProjection1814]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8407 : Integer.Sparse (Fin 1613) := [(70, -1), (84, -1), (1217, -1)]

def reductionPivot8407 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![1, 0, 2, -3], ![-3, 3, -1, 1], ![3, -3, -1, 1]]

theorem reductionSound8407 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode11007).moment H =
      Integer.Sparse.eval reductionProjection8407 (momentVector H) := by
  have heq : reductionPivot8407 = (fun u v => (normalNode11007).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11007).moment H = injectiveMoment H reductionPivot8407 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode11007).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode11007).entries)).symm
  have hshape : reductionPivot8407 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot8407 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8407 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection220, reductionProjection394, reductionProjection146] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8407 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw9958 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8407 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection220 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8407 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection220 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9958 hH))).trans (oldProjectionSound220 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8407 (1 : Fin 3)) = canonicalInput33872.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8407 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection394 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8407 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection394 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound33872 hH))).trans (reductionSound394 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8407 (2 : Fin 3)) = canonicalInput33874.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8407 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection146 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8407 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection146 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound33874 hH))).trans (reductionSound146 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode11007).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8407 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11007).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8407 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection8407 ![oldProjection220, reductionProjection394, reductionProjection146]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8408 : Integer.Sparse (Fin 1613) := [(70, 1), (76, 2), (81, 1), (84, 2), (151, -3), (682, 1), (1217, 1), (1221, 1)]

def reductionPivot8408 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 0, 3, -1], ![0, 0, -1, 1], ![1, -2, -1, 2], ![1, 3, -1, -3]]

theorem reductionSound8408 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode4710).moment H =
      Integer.Sparse.eval reductionProjection8408 (momentVector H) := by
  have heq : reductionPivot8408 = (fun u v => (normalNode4710).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4710).moment H = injectiveMoment H reductionPivot8408 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4710).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8408 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8408 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 3, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8408 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4318, reductionProjection1147, reductionProjection8407, reductionProjection2405] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8408 (0 : Fin 4)) = canonicalInput5898.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8408 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4318 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8408 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4318 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5898 hH))).trans (reductionSound4318 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8408 (1 : Fin 4)) = canonicalInput9558.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8408 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1147 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8408 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1147 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9558 hH))).trans (reductionSound1147 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8408 (2 : Fin 4)) = canonicalInput9585.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8408 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8407 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8408 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8407 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9585 hH))).trans (reductionSound8407 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8408 (3 : Fin 4)) = canonicalInput9586.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8408 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2405 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8408 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2405 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9586 hH))).trans (reductionSound2405 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4710).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8408 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4710).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8408 (j : Fin 4)))
      2 6 6 2 ![3, 1, 3, 3] ![2, 6, 2, 2] reductionProjection8408 ![reductionProjection4318, reductionProjection1147, reductionProjection8407, reductionProjection2405]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8409 : Integer.Sparse (Fin 1613) := [(0, -1), (70, -80), (76, -320), (81, -320), (84, -240), (94, 20), (147, 240), (151, 480), (418, 240), (432, 480), (435, 240), (565, 480), (682, -160), (683, -80), (698, 80), (1071, 480), (1217, -80), (1221, -160), (1251, 5), (1321, -80), (1323, -80), (1389, -160)]

def reductionPivot8409 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 0, 3, -1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![1, 3, -1, -3]]

theorem reductionSound8409 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode4705).moment H =
      Integer.Sparse.eval reductionProjection8409 (momentVector H) := by
  have heq : reductionPivot8409 = (fun u v => (normalNode4705).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4705).moment H = injectiveMoment H reductionPivot8409 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4705).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8409 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8409 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2, 2, 6, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8409 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4354, reductionProjection8383, reductionProjection8391, reductionProjection8408, oldProjection1798] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8409 (0 : Fin 5)) = canonicalInput5889.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8409 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4354 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8409 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4354 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5889 hH))).trans (reductionSound4354 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8409 (1 : Fin 5)) = (normalNode4686).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8409 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8383 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8409 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8383 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8383 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8409 (2 : Fin 5)) = canonicalInput9565.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8409 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8391 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8409 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8391 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9565 hH))).trans (reductionSound8391 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8409 (3 : Fin 5)) = (normalNode4710).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8409 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8408 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8409 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8408 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8408 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8409 (4 : Fin 5)) = canonicalInput9572.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8409 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1798 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8409 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1798 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9572 hH))).trans (oldProjectionSound1798 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4705).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8409 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4705).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8409 (j : Fin 5)))
      1 480 1440 3 ![1440, 2, 2, 6, 1440] ![1, 720, 720, 240, 1] reductionProjection8409 ![reductionProjection4354, reductionProjection8383, reductionProjection8391, reductionProjection8408, oldProjection1798]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8410 : Integer.Sparse (Fin 1613) := [(466, -1), (491, -1), (803, -1), (1075, -1)]

def reductionPivot8410 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 0, 3, -1], ![0, 1, -3, 2], ![1, -2, 0, 1], ![1, 2, 0, -3]]

theorem reductionSound8410 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4711).moment H =
      Integer.Sparse.eval reductionProjection8410 (momentVector H) := by
  have heq : reductionPivot8410 = (fun u v => (normalNode4711).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4711).moment H = injectiveMoment H reductionPivot8410 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4711).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8410 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8410 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8410 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4398, reductionProjection4636, reductionProjection8384, oldProjection599] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8410 (0 : Fin 4)) = canonicalInput5899.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8410 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4398 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8410 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4398 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5899 hH))).trans (reductionSound4398 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8410 (1 : Fin 4)) = canonicalInput9580.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8410 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4636 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8410 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4636 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9580 hH))).trans (reductionSound4636 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8410 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1075).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8410 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8384 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8410 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8384 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8384 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8410 (3 : Fin 4)) = canonicalInput9589.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8410 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection599 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8410 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection599 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9589 hH))).trans (oldProjectionSound599 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4711).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8410 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4711).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8410 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection8410 ![reductionProjection4398, reductionProjection4636, reductionProjection8384, oldProjection599]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8411 : Integer.Sparse (Fin 1613) := [(0, -1), (40, -240), (42, 240), (56, -480), (58, -480), (60, 320), (72, -240), (73, -240), (76, -240), (90, 80), (94, 25), (243, 80), (436, 720), (439, 720), (466, 1440), (491, 1440), (698, 400), (700, 1360), (701, 80), (704, 240), (803, 1440), (1059, 160), (1075, 1440), (1251, 70)]

def reductionPivot8411 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 0, 3, -1], ![0, -1, 0, 1], ![0, 1, -3, 2], ![1, -1, 0, 0], ![1, 2, 0, -3]]

theorem reductionSound8411 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4706).moment H =
      Integer.Sparse.eval reductionProjection8411 (momentVector H) := by
  have heq : reductionPivot8411 = (fun u v => (normalNode4706).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4706).moment H = injectiveMoment H reductionPivot8411 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4706).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8411 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8411 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![72, 6, 288, 2, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8411 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4399, reductionProjection8385, reductionProjection4694, reductionProjection8410, reductionProjection6848] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8411 (0 : Fin 5)) = canonicalInput5890.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8411 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4399 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8411 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4399 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5890 hH))).trans (reductionSound4399 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8411 (1 : Fin 5)) = (normalNode4687).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8411 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8385 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8411 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8385 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8385 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8411 (2 : Fin 5)) = canonicalInput9569.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8411 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4694 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8411 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4694 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9569 hH))).trans (reductionSound4694 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8411 (3 : Fin 5)) = (normalNode4711).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8411 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8410 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8411 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8410 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8410 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8411 (4 : Fin 5)) = canonicalInput9573.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8411 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6848 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8411 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6848 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9573 hH))).trans (reductionSound6848 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4706).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8411 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4706).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8411 (j : Fin 5)))
      1 1440 1440 1 ![72, 6, 288, 2, 1440] ![20, 240, 5, 720, 1] reductionProjection8411 ![reductionProjection4399, reductionProjection8385, reductionProjection4694, reductionProjection8410, reductionProjection6848]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8412 : Integer.Sparse (Fin 1613) := [(458, -1), (487, -1), (801, -1), (1076, -1)]

def reductionPivot8412 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 0, 3, -1], ![0, 1, -2, 1], ![1, -2, -1, 2], ![1, 2, 0, -3]]

theorem reductionSound8412 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4712).moment H =
      Integer.Sparse.eval reductionProjection8412 (momentVector H) := by
  have heq : reductionPivot8412 = (fun u v => (normalNode4712).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4712).moment H = injectiveMoment H reductionPivot8412 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4712).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8412 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8412 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8412 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4077, oldProjection480, reductionProjection8348, oldProjection598] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8412 (0 : Fin 4)) = canonicalInput5900.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8412 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4077 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8412 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4077 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5900 hH))).trans (reductionSound4077 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8412 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4229 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8412 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection480 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8412 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection480 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4229 hH))).trans (oldProjectionSound480 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8412 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1076).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8412 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8348 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8412 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8348 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8348 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8412 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4232 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8412 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection598 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8412 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection598 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4232 hH))).trans (oldProjectionSound598 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4712).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8412 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4712).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8412 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection8412 ![reductionProjection4077, oldProjection480, reductionProjection8348, oldProjection598]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8413 : Integer.Sparse (Fin 1613) := [(0, -7), (94, 60), (420, 1440), (458, 1440), (487, 1440), (489, 1440), (490, 720), (502, 720), (697, -480), (698, 400), (700, 160), (801, 1440), (1059, 160), (1073, -1440), (1076, 720), (1251, -5)]

def reductionPivot8413 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 0, 3, -1], ![0, -1, 0, 1], ![0, 1, -2, 1], ![1, -1, -1, 1], ![1, 2, 0, -3]]

theorem reductionSound8413 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4707).moment H =
      Integer.Sparse.eval reductionProjection8413 (momentVector H) := by
  have heq : reductionPivot8413 = (fun u v => (normalNode4707).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4707).moment H = injectiveMoment H reductionPivot8413 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4707).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8413 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8413 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2, 1, 1440, 2, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8413 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4392, reductionProjection8380, reductionProjection4651, reductionProjection8412, reductionProjection2970] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8413 (0 : Fin 5)) = canonicalInput5891.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8413 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4392 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8413 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4392 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5891 hH))).trans (reductionSound4392 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8413 (1 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1073).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8413 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8380 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8413 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8380 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8380 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8413 (2 : Fin 5)) = canonicalInput9570.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8413 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4651 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8413 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4651 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9570 hH))).trans (reductionSound4651 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8413 (3 : Fin 5)) = (normalNode4712).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8413 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8412 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8413 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8412 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8412 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8413 (4 : Fin 5)) = canonicalInput9575.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8413 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2970 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8413 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2970 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9575 hH))).trans (reductionSound2970 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4707).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8413 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4707).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8413 (j : Fin 5)))
      1 1440 1440 1 ![2, 1, 1440, 2, 720] ![720, 1440, 1, 720, 2] reductionProjection8413 ![reductionProjection4392, reductionProjection8380, reductionProjection4651, reductionProjection8412, reductionProjection2970]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8414 : Integer.Sparse (Fin 1613) := [(150, -1), (458, -1), (912, -1), (1075, -1)]

def reductionPivot8414 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, 3, -1], ![0, 0, -2, 2], ![1, -3, 0, 2], ![1, 2, 0, -3]]

theorem reductionSound8414 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4714).moment H =
      Integer.Sparse.eval reductionProjection8414 (momentVector H) := by
  have heq : reductionPivot8414 = (fun u v => (normalNode4714).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4714).moment H = injectiveMoment H reductionPivot8414 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4714).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8414 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8414 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8414 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1069, reductionProjection8384, oldProjection480, reductionProjection1039] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8414 (0 : Fin 4)) = canonicalInput11648.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8414 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1069 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8414 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1069 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11648 hH))).trans (reductionSound1069 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8414 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1075).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8414 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8384 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8414 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8384 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8384 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8414 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4229 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8414 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection480 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8414 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection480 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4229 hH))).trans (oldProjectionSound480 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8414 (3 : Fin 4)) = canonicalInput9581.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8414 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1039 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8414 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1039 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9581 hH))).trans (reductionSound1039 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4714).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8414 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4714).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8414 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection8414 ![reductionProjection1069, reductionProjection8384, oldProjection480, reductionProjection1039]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8415 : Integer.Sparse (Fin 1613) := [(94, 1), (243, -8), (698, -8), (998, -36), (1052, 24), (1217, 12), (1221, 12), (1226, -4), (1251, 1)]

def reductionPivot8415 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, 2, 0, 0], ![0, -1, -2, 3], ![0, -1, 3, -2], ![1, 0, 0, -1]]

theorem reductionSound8415 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode5929).moment H =
      Integer.Sparse.eval reductionProjection8415 (momentVector H) := by
  have heq : reductionPivot8415 = (fun u v => (normalNode5929).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5929).moment H = injectiveMoment H reductionPivot8415 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5929).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot8415 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8415 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8415 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1214, oldProjection1226, oldProjection1223, reductionProjection3519] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8415 (0 : Fin 4)) = canonicalInput23481.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8415 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1214 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8415 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1214 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23481 hH))).trans (oldProjectionSound1214 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8415 (1 : Fin 4)) = canonicalInput12185.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8415 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1226 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8415 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1226 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12185 hH))).trans (oldProjectionSound1226 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8415 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5405 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8415 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1223 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8415 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1223 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5405 hH))).trans (oldProjectionSound1223 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8415 (3 : Fin 4)) = canonicalInput12117.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8415 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3519 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8415 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3519 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12117 hH))).trans (reductionSound3519 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5929).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8415 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5929).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8415 (j : Fin 4)))
      2 72 144 4 ![72, 144, 144, 1] ![2, 1, 1, 144] reductionProjection8415 ![oldProjection1214, oldProjection1226, oldProjection1223, reductionProjection3519]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

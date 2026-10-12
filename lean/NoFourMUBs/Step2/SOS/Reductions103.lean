import NoFourMUBs.Step2.SOS.Canonical021
import NoFourMUBs.Step2.SOS.Canonical022
import NoFourMUBs.Step2.SOS.Canonical048
import NoFourMUBs.Step2.SOS.Canonical050
import NoFourMUBs.Step2.SOS.Canonical054
import NoFourMUBs.Step2.SOS.Canonical056
import NoFourMUBs.Step2.SOS.Canonical110
import NoFourMUBs.Step2.SOS.Canonical111
import NoFourMUBs.Step2.SOS.Canonical125
import NoFourMUBs.Step2.SOS.Canonical218
import NoFourMUBs.Step2.SOS.Canonical243
import NoFourMUBs.Step2.SOS.Canonical250
import NoFourMUBs.Step2.SOS.Canonical252
import NoFourMUBs.Step2.SOS.Canonical254
import NoFourMUBs.Step2.SOS.Canonical255
import NoFourMUBs.Step2.SOS.Canonical258
import NoFourMUBs.Step2.SOS.Canonical259
import NoFourMUBs.Step2.SOS.Canonical261
import NoFourMUBs.Step2.SOS.Canonical262
import NoFourMUBs.Step2.SOS.Canonical272
import NoFourMUBs.Step2.SOS.Canonical274
import NoFourMUBs.Step2.SOS.Canonical288
import NoFourMUBs.Step2.SOS.Canonical310
import NoFourMUBs.Step2.SOS.Canonical312
import NoFourMUBs.Step2.SOS.Canonical317
import NoFourMUBs.Step2.SOS.Canonical318
import NoFourMUBs.Step2.SOS.Canonical322
import NoFourMUBs.Step2.SOS.Canonical329
import NoFourMUBs.Step2.SOS.Canonical331
import NoFourMUBs.Step2.SOS.Canonical332
import NoFourMUBs.Step2.SOS.Canonical333
import NoFourMUBs.Step2.SOS.Canonical334
import NoFourMUBs.Step2.SOS.Canonical355
import NoFourMUBs.Step2.SOS.Canonical386
import NoFourMUBs.Step2.SOS.Canonical388
import NoFourMUBs.Step2.SOS.Canonical431
import NoFourMUBs.Step2.SOS.Canonical435
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections032
import NoFourMUBs.Step2.SOS.OldProjections034
import NoFourMUBs.Step2.SOS.OldProjections035
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions029
import NoFourMUBs.Step2.SOS.Reductions031
import NoFourMUBs.Step2.SOS.Reductions067
import NoFourMUBs.Step2.SOS.Reductions068
import NoFourMUBs.Step2.SOS.Reductions082
import NoFourMUBs.Step2.SOS.Reductions085
import NoFourMUBs.Step2.SOS.Reductions086
import NoFourMUBs.Step2.SOS.Reductions087
import NoFourMUBs.Step2.SOS.Reductions091
import NoFourMUBs.Step2.SOS.Reductions095
import NoFourMUBs.Step2.SOS.Reductions097
import NoFourMUBs.Step2.SOS.Reductions098
import NoFourMUBs.Step2.SOS.Reductions100
import NoFourMUBs.Step2.SOS.Reductions102
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical204
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical225
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical63
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical76
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection3296 : Integer.Sparse (Fin 1613) := [(972, 1)]

theorem reductionSound3296 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code972).moment H =
      Integer.Sparse.eval reductionProjection3296 (momentVector H) := by
  have hc : coordinates (972 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code972) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection3296, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection3297 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -2), (247, -8), (1251, -1)]

def reductionPivot3297 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, -1, 2], ![0, 1, 1, -2], ![0, 1, 1, -2], ![1, -1, -1, 1]]

theorem reductionSound3297 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode10584).moment H =
      Integer.Sparse.eval reductionProjection3297 (momentVector H) := by
  have heq : reductionPivot3297 = (fun u v => (normalNode10584).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10584).moment H = injectiveMoment H reductionPivot3297 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10584).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot3297 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot3297 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![180, 360, 360, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3297 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection987, oldProjection1360, oldProjection1360, oldProjection275] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3297 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node987⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3297 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection987 (momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3297 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection987 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound987 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3297 (1 : Fin 4)) = canonicalInput24717.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3297 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1360 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3297 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1360 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24717 hH))).trans (oldProjectionSound1360 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3297 (2 : Fin 4)) = canonicalInput24876.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3297 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1360 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3297 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1360 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24876 hH))).trans (oldProjectionSound1360 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3297 (3 : Fin 4)) = canonicalInput24877.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3297 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection275 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3297 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection275 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24877 hH))).trans (oldProjectionSound275 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10584).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3297 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10584).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3297 (j : Fin 4)))
      2 72 360 10 ![180, 360, 360, 1] ![2, 1, 1, 360] reductionProjection3297 ![oldProjection987, oldProjection1360, oldProjection1360, oldProjection275]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3298 : Integer.Sparse (Fin 1613) := [(0, -7), (94, -15), (247, -40), (1251, 20), (1388, 120)]

def reductionPivot3298 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![0, -1, -1, 2], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, -1, -1, 1]]

theorem reductionSound3298 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode10835).moment H =
      Integer.Sparse.eval reductionProjection3298 (momentVector H) := by
  have heq : reductionPivot3298 = (fun u v => (normalNode10835).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10835).moment H = injectiveMoment H reductionPivot3298 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10835).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot3298 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot3298 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 360, 360, 240] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3298 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1260, oldProjection1360, oldProjection1362, oldProjection283] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3298 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6542 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3298 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1260 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3298 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1260 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6542 hH))).trans (oldProjectionSound1260 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3298 (1 : Fin 4)) = canonicalInput24717.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3298 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1360 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3298 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1360 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24717 hH))).trans (oldProjectionSound1360 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3298 (2 : Fin 4)) = canonicalInput24865.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3298 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1362 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3298 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1362 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24865 hH))).trans (oldProjectionSound1362 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3298 (3 : Fin 4)) = canonicalInput24871.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3298 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection283 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3298 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection283 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24871 hH))).trans (oldProjectionSound283 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10835).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3298 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10835).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3298 (j : Fin 4)))
      2 720 720 2 ![720, 360, 360, 240] ![1, 2, 2, 3] reductionProjection3298 ![oldProjection1260, oldProjection1360, oldProjection1362, oldProjection283]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3299 : Integer.Sparse (Fin 1613) := [(0, 7), (19, -4), (94, 25), (247, 48), (697, -48), (972, -288), (1055, -48), (1250, 48), (1251, -22), (1388, -96), (1389, -48)]

def reductionPivot3299 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, 0, 0, 1, 0], ![0, -1, 1, -1, 1], ![1, -1, 1, -1, 0], ![1, 2, -2, 1, -2]]

theorem reductionSound3299 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode8660).moment H =
      Integer.Sparse.eval reductionProjection3299 (momentVector H) := by
  have heq : reductionPivot3299 = (fun u v => (normalNode8660).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8660).moment H = injectiveMoment H reductionPivot3299 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode8660).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode8660).entries)).symm
  have hshape : reductionPivot3299 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot3299 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1440, 72, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3299 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3296, reductionProjection955, reductionProjection3297, reductionProjection3298] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3299 (0 : Fin 4)) = canonicalInput7061.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3299 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3296 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3299 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3296 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound7061 hH))).trans (reductionSound3296 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3299 (1 : Fin 4)) = canonicalInput21102.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3299 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection955 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3299 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection955 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21102 hH))).trans (reductionSound955 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3299 (2 : Fin 4)) = canonicalInput21210.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3299 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3297 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3299 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3297 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21210 hH))).trans (reductionSound3297 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3299 (3 : Fin 4)) = canonicalInput21214.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3299 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3298 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3299 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3298 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21214 hH))).trans (reductionSound3298 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8660).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3299 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8660).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3299 (j : Fin 4)))
      2 576 2880 10 ![1, 1440, 72, 720] ![2880, 2, 40, 4] reductionProjection3299 ![reductionProjection3296, reductionProjection955, reductionProjection3297, reductionProjection3298]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3300 : Integer.Sparse (Fin 1613) := [(0, 18), (94, 55), (247, 80), (433, 720), (698, 160), (869, 720), (1059, 80), (1221, -240), (1227, 160), (1251, -295), (1388, -240), (1389, -480)]

def reductionPivot3300 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -1, 0, 1, 1], ![0, 0, -1, -1, 2], ![0, 0, 1, 1, -2], ![1, 1, -1, -1, 0]]

theorem reductionSound3300 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8658).moment H =
      Integer.Sparse.eval reductionProjection3300 (momentVector H) := by
  have heq : reductionPivot3300 = (fun u v => (normalNode8658).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8658).moment H = injectiveMoment H reductionPivot3300 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8658).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot3300 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot3300 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 288, 1440, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3300 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2014, oldProjection2612, oldProjection1715, oldProjection1823] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3300 (0 : Fin 4)) = canonicalInput18445.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3300 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2014 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3300 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2014 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18445 hH))).trans (oldProjectionSound2014 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3300 (1 : Fin 4)) = canonicalInput16594.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3300 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2612 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3300 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2612 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16594 hH))).trans (oldProjectionSound2612 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3300 (2 : Fin 4)) = canonicalInput16536.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3300 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1715 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3300 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1715 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16536 hH))).trans (oldProjectionSound1715 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3300 (3 : Fin 4)) = canonicalInput16531.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3300 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1823 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3300 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1823 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16531 hH))).trans (oldProjectionSound1823 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8658).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3300 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8658).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3300 (j : Fin 4)))
      2 2880 2880 2 ![360, 288, 1440, 720] ![8, 10, 2, 4] reductionProjection3300 ![oldProjection2014, oldProjection2612, oldProjection1715, oldProjection1823]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3301 : Integer.Sparse (Fin 1613) := [(0, -11), (94, -35), (610, -720), (698, -80), (1251, 60), (1389, 240)]

def reductionPivot3301 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 1, 2], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 1, 0, -2]]

theorem reductionSound3301 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2699).moment H =
      Integer.Sparse.eval reductionProjection3301 (momentVector H) := by
  have heq : reductionPivot3301 = (fun u v => (normalNode2699).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2699).moment H = injectiveMoment H reductionPivot3301 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2699).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot3301 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot3301 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 240, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3301 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1099, oldProjection513, oldProjection1265, oldProjection1096] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3301 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2044 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3301 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1099 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3301 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1099 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2044 hH))).trans (oldProjectionSound1099 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3301 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node513⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3301 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection513 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3301 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3301 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2434 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3301 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1265 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3301 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1265 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2434 hH))).trans (oldProjectionSound1265 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3301 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2435 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3301 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1096 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3301 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1096 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2435 hH))).trans (oldProjectionSound1096 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2699).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3301 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2699).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3301 (j : Fin 4)))
      2 1440 1440 2 ![144, 1, 240, 720] ![10, 1440, 6, 2] reductionProjection3301 ![oldProjection1099, oldProjection513, oldProjection1265, oldProjection1096]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3302 : Integer.Sparse (Fin 1613) := [(0, 17), (94, 55), (610, 720), (698, 240), (1221, -240), (1227, 320), (1251, -110), (1389, -720)]

def reductionPivot3302 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, -1, 0, 0], ![-1, -1, 0, 1, 1], ![0, 0, -1, -1, 2], ![0, 0, 1, 1, -2], ![1, 0, 1, -1, -1]]

theorem reductionSound3302 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8661).moment H =
      Integer.Sparse.eval reductionProjection3302 (momentVector H) := by
  have heq : reductionPivot3302 = (fun u v => (normalNode8661).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8661).moment H = injectiveMoment H reductionPivot3302 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8661).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot3302 0 = Pi.single (1 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot3302 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1440, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3302 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1096, reductionProjection3301, oldProjection1825, oldProjection1823] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3302 (0 : Fin 4)) = canonicalInput20008.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3302 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1096 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3302 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1096 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20008 hH))).trans (oldProjectionSound1096 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3302 (1 : Fin 4)) = canonicalInput16761.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3302 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3301 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3302 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3301 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16761 hH))).trans (reductionSound3301 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3302 (2 : Fin 4)) = canonicalInput16544.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3302 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1825 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3302 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1825 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16544 hH))).trans (oldProjectionSound1825 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3302 (3 : Fin 4)) = canonicalInput16531.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3302 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1823 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3302 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1823 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16531 hH))).trans (oldProjectionSound1823 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8661).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3302 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8661).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3302 (j : Fin 4)))
      2 2880 2880 2 ![720, 1440, 720, 720] ![4, 2, 4, 4] reductionProjection3302 ![oldProjection1096, reductionProjection3301, oldProjection1825, oldProjection1823]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3303 : Integer.Sparse (Fin 1613) := [(0, 17), (94, 40), (698, 320), (1221, -240), (1226, 80), (1227, 320), (1251, -225), (1389, -480)]

def reductionPivot3303 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, 0, -1, 0], ![-1, -1, 0, 1, 1], ![0, 0, -1, -1, 2], ![0, 0, 1, 1, -2], ![1, 0, 0, 0, -1]]

theorem reductionSound3303 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8663).moment H =
      Integer.Sparse.eval reductionProjection3303 (momentVector H) := by
  have heq : reductionPivot3303 = (fun u v => (normalNode8663).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8663).moment H = injectiveMoment H reductionPivot3303 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8663).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot3303 0 = Pi.single (1 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot3303 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1440, 1440, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3303 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1039, oldProjection2445, oldProjection2449, oldProjection1823] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3303 (0 : Fin 4)) = canonicalInput20671.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3303 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1039 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3303 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1039 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20671 hH))).trans (oldProjectionSound1039 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3303 (1 : Fin 4)) = canonicalInput16788.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3303 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2445 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3303 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2445 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16788 hH))).trans (oldProjectionSound2445 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3303 (2 : Fin 4)) = canonicalInput16548.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3303 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2449 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3303 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2449 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16548 hH))).trans (oldProjectionSound2449 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3303 (3 : Fin 4)) = canonicalInput16531.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3303 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1823 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3303 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1823 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16531 hH))).trans (oldProjectionSound1823 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8663).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3303 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8663).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3303 (j : Fin 4)))
      2 2880 2880 2 ![72, 1440, 1440, 720] ![40, 2, 2, 4] reductionProjection3303 ![oldProjection1039, oldProjection2445, oldProjection2449, oldProjection1823]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3304 : Integer.Sparse (Fin 1613) := [(0, -104), (19, 20), (94, -295), (247, -320), (433, -1440), (434, -720), (610, -720), (697, 240), (698, -960), (869, -2880), (957, -720), (972, 1440), (1055, 480), (1059, -240), (1171, 1440), (1221, 960), (1226, -80), (1227, -1040), (1250, -240), (1251, 985), (1388, 960), (1389, 2160)]

def reductionPivot3304 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, -1, 1, 0, 0], ![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, 0, -1, 0], ![1, 0, -1, 1, -1], ![1, 1, -1, 0, -1]]

theorem reductionSound3304 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode1510).moment H =
      Integer.Sparse.eval reductionProjection3304 (momentVector H) := by
  have heq : reductionPivot3304 = (fun u v => (normalNode1510).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1510).moment H = injectiveMoment H reductionPivot3304 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1510).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot3304 0 = Pi.single (2 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot3304 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![576, 2880, 2880, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot3304 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3299, reductionProjection2792, reductionProjection3300, reductionProjection3302, reductionProjection3303] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3304 (0 : Fin 5)) = canonicalInput1374.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3304 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3299 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3304 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3299 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound1374 hH))).trans (reductionSound3299 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3304 (1 : Fin 5)) = canonicalInput3085.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3304 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2792 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3304 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2792 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3085 hH))).trans (reductionSound2792 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3304 (2 : Fin 5)) = canonicalInput3210.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3304 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3300 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3304 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3300 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3210 hH))).trans (reductionSound3300 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3304 (3 : Fin 5)) = canonicalInput3227.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3304 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3302 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3304 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3302 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3227 hH))).trans (reductionSound3302 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3304 (4 : Fin 5)) = canonicalInput3230.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3304 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3303 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3304 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3303 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3230 hH))).trans (reductionSound3303 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1510).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot3304 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1510).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot3304 (j : Fin 5)))
      1 2880 2880 1 ![576, 2880, 2880, 2880, 2880] ![5, 1, 1, 1, 1] reductionProjection3304 ![reductionProjection3299, reductionProjection2792, reductionProjection3300, reductionProjection3302, reductionProjection3303]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3305 : Integer.Sparse (Fin 1613) := [(0, -9), (94, -25), (241, -80), (698, -80), (1055, 240), (1251, 20)]

def reductionPivot3305 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, -2, 0, 1]]

theorem reductionSound3305 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10855).moment H =
      Integer.Sparse.eval reductionProjection3305 (momentVector H) := by
  have heq : reductionPivot3305 = (fun u v => (normalNode10855).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10855).moment H = injectiveMoment H reductionPivot3305 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10855).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot3305 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot3305 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 360, 240] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3305 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1047, oldProjection1309, oldProjection1316, oldProjection210] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3305 (0 : Fin 4)) = canonicalInput20345.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3305 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1047 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3305 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1047 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20345 hH))).trans (oldProjectionSound1047 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3305 (1 : Fin 4)) = canonicalInput27620.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3305 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1309 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3305 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1309 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27620 hH))).trans (oldProjectionSound1309 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3305 (2 : Fin 4)) = canonicalInput27876.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3305 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1316 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3305 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1316 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27876 hH))).trans (oldProjectionSound1316 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3305 (3 : Fin 4)) = canonicalInput27897.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3305 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection210 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3305 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection210 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27897 hH))).trans (oldProjectionSound210 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10855).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3305 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10855).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3305 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 360, 240] ![2, 2, 4, 6] reductionProjection3305 ![oldProjection1047, oldProjection1309, oldProjection1316, oldProjection210]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3306 : Integer.Sparse (Fin 1613) := [(0, 2), (94, 25), (241, 40), (247, 40), (697, -240), (698, 280), (853, -720), (1050, -120), (1055, -240), (1058, -360), (1059, 80), (1219, -120), (1227, 160), (1250, 30), (1251, -75)]

def reductionPivot3306 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, 0, 0, 1, 0], ![0, 0, 1, -2, 1], ![1, -2, 1, 0, 0], ![1, 2, -2, 1, -2]]

theorem reductionSound3306 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8725).moment H =
      Integer.Sparse.eval reductionProjection3306 (momentVector H) := by
  have heq : reductionPivot3306 = (fun u v => (normalNode8725).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8725).moment H = injectiveMoment H reductionPivot3306 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode8725).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode8725).entries)).symm
  have hshape : reductionPivot3306 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot3306 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 288, 72, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3306 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1006, reductionProjection3058, reductionProjection3111, reductionProjection3305] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3306 (0 : Fin 4)) = canonicalInput7111.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3306 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1006 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3306 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1006 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound7111 hH))).trans (reductionSound1006 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3306 (1 : Fin 4)) = canonicalInput21114.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3306 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3058 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3306 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3058 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21114 hH))).trans (reductionSound3058 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3306 (2 : Fin 4)) = canonicalInput21256.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3306 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3111 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3306 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3111 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21256 hH))).trans (reductionSound3111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3306 (3 : Fin 4)) = canonicalInput21260.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3306 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3305 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3306 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3305 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21260 hH))).trans (reductionSound3305 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8725).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3306 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8725).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3306 (j : Fin 4)))
      2 1440 1440 2 ![1, 288, 72, 1440] ![1440, 5, 20, 1] reductionProjection3306 ![reductionProjection1006, reductionProjection3058, reductionProjection3111, reductionProjection3305]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3307 : Integer.Sparse (Fin 1613) := [(887, 1)]

theorem reductionSound3307 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code887).moment H =
      Integer.Sparse.eval reductionProjection3307 (momentVector H) := by
  have hc : coordinates (887 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code887) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection3307, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection3308 : Integer.Sparse (Fin 1613) := [(0, 3), (94, 10), (427, 720), (433, 720), (698, 560), (865, 2160), (869, 720), (887, -1440), (890, 720), (1050, -240), (1055, -240), (1059, 320), (1221, -480), (1227, 240), (1251, -65)]

def reductionPivot3308 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, -1, 0, 2, 0], ![0, -1, 2, 0, -1], ![1, 0, 0, -2, 1], ![1, 2, -2, 0, -1]]

theorem reductionSound3308 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8477).moment H =
      Integer.Sparse.eval reductionProjection3308 (momentVector H) := by
  have heq : reductionPivot3308 = (fun u v => (normalNode8477).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8477).moment H = injectiveMoment H reductionPivot3308 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode8477).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode8477).entries)).symm
  have hshape : reductionPivot3308 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot3308 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1440, 720, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3308 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3307, reductionProjection2778, oldProjection2002, oldProjection1999] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3308 (0 : Fin 4)) = canonicalInput3622.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3308 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3307 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3308 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3307 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3622 hH))).trans (reductionSound3307 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3308 (1 : Fin 4)) = canonicalInput17458.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3308 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2778 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3308 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2778 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17458 hH))).trans (reductionSound2778 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3308 (2 : Fin 4)) = canonicalInput17576.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3308 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2002 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3308 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2002 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17576 hH))).trans (oldProjectionSound2002 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3308 (3 : Fin 4)) = canonicalInput17590.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3308 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1999 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3308 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1999 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17590 hH))).trans (oldProjectionSound1999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8477).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3308 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8477).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3308 (j : Fin 4)))
      2 2880 2880 2 ![1, 1440, 720, 1440] ![2880, 2, 4, 2] reductionProjection3308 ![reductionProjection3307, reductionProjection2778, oldProjection2002, oldProjection1999]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3309 : Integer.Sparse (Fin 1613) := [(0, 5), (94, 16), (241, 16), (427, 144), (698, 80), (700, 16), (865, 144), (890, 144), (1055, -48), (1059, 48), (1221, -48), (1227, 16), (1251, -5)]

def reductionPivot3309 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -1, 0, 1, 1], ![0, 0, 0, -2, 2], ![0, 0, 1, 1, -2], ![1, 1, -2, 0, 0]]

theorem reductionSound3309 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode8721).moment H =
      Integer.Sparse.eval reductionProjection3309 (momentVector H) := by
  have heq : reductionPivot3309 = (fun u v => (normalNode8721).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8721).moment H = injectiveMoment H reductionPivot3309 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8721).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot3309 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot3309 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3309 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2013, oldProjection2087, oldProjection1695, oldProjection1785] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3309 (0 : Fin 4)) = canonicalInput18454.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3309 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2013 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3309 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2013 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18454 hH))).trans (oldProjectionSound2013 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3309 (1 : Fin 4)) = canonicalInput16632.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3309 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2087 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3309 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2087 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16632 hH))).trans (oldProjectionSound2087 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3309 (2 : Fin 4)) = canonicalInput16579.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3309 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1695 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3309 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1695 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16579 hH))).trans (oldProjectionSound1695 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3309 (3 : Fin 4)) = canonicalInput16575.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3309 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1785 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3309 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1785 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16575 hH))).trans (oldProjectionSound1785 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8721).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3309 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8721).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3309 (j : Fin 4)))
      2 576 2880 10 ![144, 720, 1440, 1440] ![20, 4, 2, 2] reductionProjection3309 ![oldProjection2013, oldProjection2087, oldProjection1695, oldProjection1785]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3310 : Integer.Sparse (Fin 1613) := [(0, 1), (81, -192), (94, 7), (698, 128), (700, 16), (986, -288), (1059, 64), (1221, -96), (1226, 16), (1227, 64), (1251, -14), (1389, -96)]

def reductionPivot3310 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, 0, 0, 1, 0], ![0, 0, 1, -2, 1], ![1, -2, 1, 1, -1], ![1, 2, -2, 0, -1]]

theorem reductionSound3310 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode8726).moment H =
      Integer.Sparse.eval reductionProjection3310 (momentVector H) := by
  have heq : reductionPivot3310 = (fun u v => (normalNode8726).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8726).moment H = injectiveMoment H reductionPivot3310 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode8726).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode8726).entries)).symm
  have hshape : reductionPivot3310 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot3310 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 360, 1440, 288] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3310 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3044, reductionProjection2919, reductionProjection3147, reductionProjection1002] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3310 (0 : Fin 4)) = canonicalInput7112.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3310 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3044 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3310 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3044 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound7112 hH))).trans (reductionSound3044 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3310 (1 : Fin 4)) = canonicalInput21115.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3310 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2919 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3310 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2919 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21115 hH))).trans (reductionSound2919 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3310 (2 : Fin 4)) = canonicalInput21257.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3310 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3147 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3310 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3147 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21257 hH))).trans (reductionSound3147 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3310 (3 : Fin 4)) = canonicalInput21261.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3310 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1002 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3310 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1002 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21261 hH))).trans (reductionSound1002 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8726).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3310 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8726).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3310 (j : Fin 4)))
      2 576 2880 10 ![1, 360, 1440, 288] ![2880, 8, 2, 10] reductionProjection3310 ![reductionProjection3044, reductionProjection2919, reductionProjection3147, reductionProjection1002]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3311 : Integer.Sparse (Fin 1613) := [(0, 3), (94, 5), (698, 80), (1059, 40), (1221, -120), (1226, 40), (1227, 40), (1251, -10)]

def reductionPivot3311 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, -1, 0, 0], ![-1, -1, 0, 1, 1], ![0, 0, 0, -2, 2], ![0, 0, 1, 1, -2], ![1, 0, 0, 0, -1]]

theorem reductionSound3311 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8727).moment H =
      Integer.Sparse.eval reductionProjection3311 (momentVector H) := by
  have heq : reductionPivot3311 = (fun u v => (normalNode8727).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8727).moment H = injectiveMoment H reductionPivot3311 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8727).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot3311 0 = Pi.single (1 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot3311 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1440, 720, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3311 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1110, oldProjection2445, oldProjection1110, oldProjection1785] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3311 (0 : Fin 4)) = canonicalInput20024.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3311 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1110 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3311 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1110 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20024 hH))).trans (oldProjectionSound1110 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3311 (1 : Fin 4)) = canonicalInput16788.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3311 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2445 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3311 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2445 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16788 hH))).trans (oldProjectionSound2445 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3311 (2 : Fin 4)) = canonicalInput16587.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3311 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1110 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3311 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1110 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16587 hH))).trans (oldProjectionSound1110 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3311 (3 : Fin 4)) = canonicalInput16575.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3311 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1785 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3311 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1785 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16575 hH))).trans (oldProjectionSound1785 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8727).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3311 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8727).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3311 (j : Fin 4)))
      2 1440 1440 2 ![720, 1440, 720, 1440] ![2, 1, 2, 1] reductionProjection3311 ![oldProjection1110, oldProjection2445, oldProjection1110, oldProjection1785]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3312 : Integer.Sparse (Fin 1613) := [(0, -43), (81, 960), (94, -185), (241, -160), (247, -80), (427, -1440), (433, -720), (697, 480), (698, -2320), (700, -160), (853, 1440), (865, -2880), (869, -720), (887, 1440), (890, -1440), (986, 1440), (1050, 480), (1055, 960), (1058, 720), (1059, -1120), (1219, 240), (1221, 1440), (1226, -160), (1227, -1040), (1250, -60), (1251, 330), (1389, 480)]

def reductionPivot3312 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, -1, 1, 0, 0], ![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, 0, -1, 0], ![1, 0, 0, 1, -2], ![1, 1, -2, 0, 0]]

theorem reductionSound3312 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode1511).moment H =
      Integer.Sparse.eval reductionProjection3312 (momentVector H) := by
  have heq : reductionPivot3312 = (fun u v => (normalNode1511).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1511).moment H = injectiveMoment H reductionPivot3312 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1511).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot3312 0 = Pi.single (2 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot3312 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2880, 576, 576, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot3312 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3306, reductionProjection3308, reductionProjection3309, reductionProjection3310, reductionProjection3311] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3312 (0 : Fin 5)) = canonicalInput1375.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3312 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3306 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3312 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3306 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound1375 hH))).trans (reductionSound3306 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3312 (1 : Fin 5)) = canonicalInput3086.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3312 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3308 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3312 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3308 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3086 hH))).trans (reductionSound3308 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3312 (2 : Fin 5)) = canonicalInput3211.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3312 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3309 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3312 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3309 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3211 hH))).trans (reductionSound3309 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3312 (3 : Fin 5)) = canonicalInput3228.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3312 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3310 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3312 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3310 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3228 hH))).trans (reductionSound3310 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3312 (4 : Fin 5)) = canonicalInput3231.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3312 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3311 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3312 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3311 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3231 hH))).trans (reductionSound3311 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1511).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot3312 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1511).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot3312 (j : Fin 5)))
      1 2880 2880 1 ![1440, 2880, 576, 576, 1440] ![2, 1, 5, 5, 2] reductionProjection3312 ![reductionProjection3306, reductionProjection3308, reductionProjection3309, reductionProjection3310, reductionProjection3311]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3313 : Integer.Sparse (Fin 1613) := [(863, 1)]

theorem reductionSound3313 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code863).moment H =
      Integer.Sparse.eval reductionProjection3313 (momentVector H) := by
  have hc : coordinates (863 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code863) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection3313, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection3314 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 1), (433, 144), (698, 80), (863, -288), (865, 144), (869, 288), (906, -288), (1050, -48), (1055, -48), (1059, 64), (1227, 48), (1251, -44)]

def reductionPivot3314 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, -1, 0, 2, 0], ![0, -1, 2, 0, -1], ![0, 1, 0, -2, 1], ![2, 1, -2, 0, -1]]

theorem reductionSound3314 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode8098).moment H =
      Integer.Sparse.eval reductionProjection3314 (momentVector H) := by
  have heq : reductionPivot3314 = (fun u v => (normalNode8098).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8098).moment H = injectiveMoment H reductionPivot3314 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode8098).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode8098).entries)).symm
  have hshape : reductionPivot3314 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot3314 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1440, 1, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3314 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3290, reductionProjection2778, reductionProjection3313, oldProjection2003] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3314 (0 : Fin 4)) = canonicalInput3614.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3314 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3290 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3314 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3290 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3614 hH))).trans (reductionSound3290 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3314 (1 : Fin 4)) = canonicalInput17451.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3314 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2778 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3314 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2778 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17451 hH))).trans (reductionSound2778 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3314 (2 : Fin 4)) = canonicalInput17569.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3314 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3313 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3314 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3313 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17569 hH))).trans (reductionSound3313 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3314 (3 : Fin 4)) = canonicalInput17582.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3314 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2003 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3314 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2003 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17582 hH))).trans (oldProjectionSound2003 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8098).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3314 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8098).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3314 (j : Fin 4)))
      2 576 2880 10 ![1, 1440, 1, 360] ![2880, 2, 2880, 8] reductionProjection3314 ![reductionProjection3290, reductionProjection2778, reductionProjection3313, oldProjection2003]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3315 : Integer.Sparse (Fin 1613) := [(0, 21), (94, 45), (461, 720), (698, 1200), (700, 400), (890, 720), (1016, 720), (1059, 560), (1227, 480), (1251, -300)]

def reductionPivot3315 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -1, 0, 1, 1], ![0, 0, 0, -2, 2], ![0, 1, -2, 1, 0], ![1, 0, 1, 0, -2]]

theorem reductionSound3315 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8722).moment H =
      Integer.Sparse.eval reductionProjection3315 (momentVector H) := by
  have heq : reductionPivot3315 = (fun u v => (normalNode8722).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8722).moment H = injectiveMoment H reductionPivot3315 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8722).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot3315 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot3315 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 1440, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3315 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2015, oldProjection2073, oldProjection1786, oldProjection1696] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3315 (0 : Fin 4)) = canonicalInput18455.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3315 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2015 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3315 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2015 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18455 hH))).trans (oldProjectionSound2015 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3315 (1 : Fin 4)) = canonicalInput16636.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3315 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2073 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3315 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2073 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16636 hH))).trans (oldProjectionSound2073 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3315 (2 : Fin 4)) = canonicalInput16583.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3315 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1786 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3315 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1786 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16583 hH))).trans (oldProjectionSound1786 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3315 (3 : Fin 4)) = canonicalInput16580.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3315 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1696 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3315 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1696 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16580 hH))).trans (oldProjectionSound1696 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8722).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3315 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8722).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3315 (j : Fin 4)))
      2 2880 2880 2 ![1440, 1440, 1440, 720] ![2, 2, 2, 4] reductionProjection3315 ![oldProjection2015, oldProjection2073, oldProjection1786, oldProjection1696]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3316 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 10), (489, 720), (617, 720), (666, 720), (698, 1200), (863, -1440), (890, 720), (1055, -240), (1059, 640), (1227, 800), (1251, -405), (1389, -240)]

def reductionPivot3316 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, -1, 0, 1, 1], ![0, 1, 0, 1, -2], ![1, 1, -2, 0, 0], ![1, -1, 2, -2, 0]]

theorem reductionSound3316 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8547).moment H =
      Integer.Sparse.eval reductionProjection3316 (momentVector H) := by
  have heq : reductionPivot3316 = (fun u v => (normalNode8547).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8547).moment H = injectiveMoment H reductionPivot3316 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode8547).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode8547).entries)).symm
  have hshape : reductionPivot3316 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot3316 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 288, 36, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3316 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3313, reductionProjection2171, reductionProjection3222, reductionProjection3050] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3316 (0 : Fin 4)) = canonicalInput3499.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3316 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3313 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3316 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3313 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3499 hH))).trans (reductionSound3313 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3316 (1 : Fin 4)) = canonicalInput16314.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3316 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2171 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3316 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2171 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16314 hH))).trans (reductionSound2171 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3316 (2 : Fin 4)) = canonicalInput16799.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3316 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3222 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3316 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3222 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16799 hH))).trans (reductionSound3222 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3316 (3 : Fin 4)) = canonicalInput16800.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3316 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3050 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3316 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3050 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16800 hH))).trans (reductionSound3050 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8547).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3316 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8547).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3316 (j : Fin 4)))
      2 2880 2880 2 ![1, 288, 36, 1440] ![2880, 10, 80, 2] reductionProjection3316 ![reductionProjection3313, reductionProjection2171, reductionProjection3222, reductionProjection3050]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3317 : Integer.Sparse (Fin 1613) := [(0, -6), (94, 15), (698, 400), (1059, 160), (1226, 80), (1227, 320), (1251, -15)]

def reductionPivot3317 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, -1, 1], ![-1, -1, 0, 0, 2], ![0, 0, 0, 2, -2], ![0, 1, -1, 0, 0], ![1, 0, 1, -1, -1]]

theorem reductionSound3317 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8415).moment H =
      Integer.Sparse.eval reductionProjection3317 (momentVector H) := by
  have heq : reductionPivot3317 = (fun u v => (normalNode8415).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8415).moment H = injectiveMoment H reductionPivot3317 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8415).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot3317 0 = Pi.single (4 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot3317 4 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1440, 1440, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3317 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2742, oldProjection2725, oldProjection1786, oldProjection2745] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3317 (0 : Fin 4)) = canonicalInput15573.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3317 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2742 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3317 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2742 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15573 hH))).trans (oldProjectionSound2742 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3317 (1 : Fin 4)) = canonicalInput16005.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3317 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2725 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3317 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2725 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16005 hH))).trans (oldProjectionSound2725 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3317 (2 : Fin 4)) = canonicalInput16030.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3317 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1786 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3317 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1786 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16030 hH))).trans (oldProjectionSound1786 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3317 (3 : Fin 4)) = canonicalInput16032.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3317 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2745 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3317 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2745 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16032 hH))).trans (oldProjectionSound2745 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8415).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3317 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8415).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3317 (j : Fin 4)))
      2 2880 2880 2 ![720, 1440, 1440, 144] ![4, 2, 2, 20] reductionProjection3317 ![oldProjection2742, oldProjection2725, oldProjection1786, oldProjection2745]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3318 : Integer.Sparse (Fin 1613) := [(0, -23), (94, -125), (241, -80), (247, -80), (433, -720), (461, -720), (489, -720), (617, -720), (666, -720), (697, 480), (698, -3760), (700, -400), (853, 1440), (863, 2880), (865, -720), (869, -1440), (890, -1440), (906, 1440), (1016, -720), (1050, 480), (1055, 960), (1058, 720), (1059, -1840), (1219, 240), (1226, -80), (1227, -2160), (1250, -60), (1251, 1090), (1389, 240)]

def reductionPivot3318 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, -1, 1, 0, 0], ![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, 0, 1, -2], ![1, 0, 0, -1, 0], ![1, 1, -2, 0, 0]]

theorem reductionSound3318 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode1512).moment H =
      Integer.Sparse.eval reductionProjection3318 (momentVector H) := by
  have heq : reductionPivot3318 = (fun u v => (normalNode1512).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1512).moment H = injectiveMoment H reductionPivot3318 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1512).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot3318 0 = Pi.single (2 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot3318 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 576, 2880, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot3318 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3306, reductionProjection3314, reductionProjection3315, reductionProjection3316, reductionProjection3317] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3318 (0 : Fin 5)) = canonicalInput1376.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3318 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3306 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3318 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3306 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound1376 hH))).trans (reductionSound3306 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3318 (1 : Fin 5)) = canonicalInput3091.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3318 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3314 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3318 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3314 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3091 hH))).trans (reductionSound3314 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3318 (2 : Fin 5)) = canonicalInput3216.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3318 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3315 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3318 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3315 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3216 hH))).trans (reductionSound3315 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3318 (3 : Fin 5)) = canonicalInput3232.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3318 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3316 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3318 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3316 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3232 hH))).trans (reductionSound3316 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3318 (4 : Fin 5)) = canonicalInput3234.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3318 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3317 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3318 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3317 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3234 hH))).trans (reductionSound3317 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1512).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot3318 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1512).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot3318 (j : Fin 5)))
      1 2880 2880 1 ![1440, 576, 2880, 2880, 2880] ![2, 5, 1, 1, 1] reductionProjection3318 ![reductionProjection3306, reductionProjection3314, reductionProjection3315, reductionProjection3316, reductionProjection3317]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3319 : Integer.Sparse (Fin 1613) := [(859, 1)]

theorem reductionSound3319 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code859).moment H =
      Integer.Sparse.eval reductionProjection3319 (momentVector H) := by
  have hc : coordinates (859 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code859) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection3319, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection3320 : Integer.Sparse (Fin 1613) := [(0, 3), (94, 10), (423, 720), (698, 320), (859, -1440), (864, 720), (865, 1440), (887, -1440), (1050, -480), (1059, 240), (1221, -480), (1227, 80), (1251, 55)]

def reductionPivot3320 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, 0, 0, 2, -1], ![0, -2, 2, 0, 0], ![0, 1, -2, 0, 1], ![2, 1, 0, -2, -1]]

theorem reductionSound3320 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8261).moment H =
      Integer.Sparse.eval reductionProjection3320 (momentVector H) := by
  have heq : reductionPivot3320 = (fun u v => (normalNode8261).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8261).moment H = injectiveMoment H reductionPivot3320 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode8261).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode8261).entries)).symm
  have hshape : reductionPivot3320 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot3320 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1, 1, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3320 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2651, reductionProjection3307, reductionProjection3319, oldProjection1999] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3320 (0 : Fin 4)) = canonicalInput8009.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3320 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2651 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3320 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2651 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound8009 hH))).trans (reductionSound2651 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3320 (1 : Fin 4)) = canonicalInput21352.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3320 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3307 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3320 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3307 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21352 hH))).trans (reductionSound3307 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3320 (2 : Fin 4)) = canonicalInput21425.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3320 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3319 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3320 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3319 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21425 hH))).trans (reductionSound3319 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3320 (3 : Fin 4)) = canonicalInput21433.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3320 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1999 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3320 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1999 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21433 hH))).trans (oldProjectionSound1999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8261).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3320 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8261).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3320 (j : Fin 4)))
      2 2880 2880 2 ![1440, 1, 1, 1440] ![2, 2880, 2880, 2] reductionProjection3320 ![reductionProjection2651, reductionProjection3307, reductionProjection3319, oldProjection1999]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3321 : Integer.Sparse (Fin 1613) := [(0, 4), (94, 5), (698, -80), (1059, 80), (1226, 80), (1227, -160), (1251, 5)]

def reductionPivot3321 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -1, 0, 1, 1], ![0, 0, 0, -2, 2], ![0, 1, -1, 0, 0], ![1, 0, 0, 1, -2]]

theorem reductionSound3321 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8723).moment H =
      Integer.Sparse.eval reductionProjection3321 (momentVector H) := by
  have heq : reductionPivot3321 = (fun u v => (normalNode8723).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8723).moment H = injectiveMoment H reductionPivot3321 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8723).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot3321 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot3321 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 288, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3321 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2743, oldProjection2744, oldProjection1110, oldProjection2742] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3321 (0 : Fin 4)) = canonicalInput18456.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3321 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2743 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3321 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2743 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18456 hH))).trans (oldProjectionSound2743 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3321 (1 : Fin 4)) = canonicalInput16639.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3321 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2744 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3321 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2744 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16639 hH))).trans (oldProjectionSound2744 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3321 (2 : Fin 4)) = canonicalInput16586.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3321 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1110 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3321 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1110 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16586 hH))).trans (oldProjectionSound1110 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3321 (3 : Fin 4)) = canonicalInput16582.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3321 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2742 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3321 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2742 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16582 hH))).trans (oldProjectionSound2742 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8723).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3321 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8723).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3321 (j : Fin 4)))
      2 2880 2880 2 ![1440, 288, 720, 720] ![2, 10, 4, 4] reductionProjection3321 ![oldProjection2743, oldProjection2744, oldProjection1110, oldProjection2742]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3322 : Integer.Sparse (Fin 1613) := [(0, 3), (94, 10), (433, 720), (602, 720), (635, 720), (668, 720), (698, 720), (859, -1440), (865, 720), (1050, -240), (1059, 400), (1221, -1200), (1227, 320), (1251, -145), (1389, -240)]

def reductionPivot3322 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, -1, 0, 1, 1], ![0, 2, 0, 0, -2], ![1, 0, -2, 1, 0], ![1, -1, 2, -2, 0]]

theorem reductionSound3322 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8569).moment H =
      Integer.Sparse.eval reductionProjection3322 (momentVector H) := by
  have heq : reductionPivot3322 = (fun u v => (normalNode8569).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8569).moment H = injectiveMoment H reductionPivot3322 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode8569).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode8569).entries)).symm
  have hshape : reductionPivot3322 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot3322 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1440, 720, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3322 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3319, reductionProjection2177, reductionProjection3281, reductionProjection2737] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3322 (0 : Fin 4)) = canonicalInput3517.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3322 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3319 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3322 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3319 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3517 hH))).trans (reductionSound3319 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3322 (1 : Fin 4)) = canonicalInput16341.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3322 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2177 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3322 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2177 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16341 hH))).trans (reductionSound2177 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3322 (2 : Fin 4)) = canonicalInput16828.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3322 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3281 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3322 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3281 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16828 hH))).trans (reductionSound3281 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3322 (3 : Fin 4)) = canonicalInput16830.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3322 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2737 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3322 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2737 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16830 hH))).trans (reductionSound2737 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8569).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3322 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8569).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3322 (j : Fin 4)))
      2 2880 2880 2 ![1, 1440, 720, 1440] ![2880, 2, 4, 2] reductionProjection3322 ![reductionProjection3319, reductionProjection2177, reductionProjection3281, reductionProjection2737]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3323 : Integer.Sparse (Fin 1613) := [(0, -1), (81, 192), (94, -14), (241, -32), (423, -144), (433, -144), (602, -144), (635, -144), (668, -144), (697, 96), (698, -480), (857, 288), (859, 576), (864, -144), (865, -432), (887, 288), (966, 288), (1050, 288), (1052, 96), (1055, 48), (1058, 144), (1059, -288), (1221, 528), (1226, -32), (1227, -160), (1250, -12), (1251, 71), (1389, 144)]

def reductionPivot3323 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, -1, 1, 0, 0], ![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 2, -2, 0, 0], ![1, 0, 0, -1, 0], ![1, 0, 0, 1, -2]]

theorem reductionSound3323 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode1513).moment H =
      Integer.Sparse.eval reductionProjection3323 (momentVector H) := by
  have heq : reductionPivot3323 = (fun u v => (normalNode1513).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1513).moment H = injectiveMoment H reductionPivot3323 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1513).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot3323 0 = Pi.single (2 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot3323 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 2880, 2880, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot3323 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3288, reductionProjection3320, reductionProjection3321, reductionProjection3322, reductionProjection2920] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3323 (0 : Fin 5)) = canonicalInput1377.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3323 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3288 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3323 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3288 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound1377 hH))).trans (reductionSound3288 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3323 (1 : Fin 5)) = canonicalInput3095.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3323 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3320 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3323 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3320 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3095 hH))).trans (reductionSound3320 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3323 (2 : Fin 5)) = canonicalInput3222.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3323 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3321 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3323 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3321 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3222 hH))).trans (reductionSound3321 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3323 (3 : Fin 5)) = canonicalInput3238.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3323 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3322 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3323 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3322 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3238 hH))).trans (reductionSound3322 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3323 (4 : Fin 5)) = canonicalInput3241.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3323 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2920 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3323 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2920 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3241 hH))).trans (reductionSound2920 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1513).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot3323 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1513).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot3323 (j : Fin 5)))
      1 576 2880 5 ![2880, 2880, 2880, 2880, 2880] ![1, 1, 1, 1, 1] reductionProjection3323 ![reductionProjection3288, reductionProjection3320, reductionProjection3321, reductionProjection3322, reductionProjection2920]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3324 : Integer.Sparse (Fin 1613) := [(0, 2), (94, 5), (427, 720), (698, 480), (859, -1440), (865, 1440), (867, 720), (1050, -480), (1059, 400), (1221, -240), (1227, 80), (1251, -25), (1273, -1440)]

def reductionPivot3324 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, 0, 0, 2, -1], ![0, -2, 2, 0, 0], ![0, 1, 0, -2, 1], ![2, 1, -2, 0, -1]]

theorem reductionSound3324 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8266).moment H =
      Integer.Sparse.eval reductionProjection3324 (momentVector H) := by
  have heq : reductionPivot3324 = (fun u v => (normalNode8266).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8266).moment H = injectiveMoment H reductionPivot3324 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode8266).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode8266).entries)).symm
  have hshape : reductionPivot3324 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot3324 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 1, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3324 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3289, reductionProjection2777, reductionProjection3319, oldProjection1999] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3324 (0 : Fin 4)) = canonicalInput8011.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3324 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3289 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3324 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3289 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound8011 hH))).trans (reductionSound3289 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3324 (1 : Fin 4)) = canonicalInput21354.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3324 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2777 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3324 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2777 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21354 hH))).trans (reductionSound2777 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3324 (2 : Fin 4)) = canonicalInput21427.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3324 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3319 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3324 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3319 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21427 hH))).trans (reductionSound3319 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3324 (3 : Fin 4)) = canonicalInput21437.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3324 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1999 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3324 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1999 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21437 hH))).trans (oldProjectionSound1999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8266).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3324 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8266).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3324 (j : Fin 4)))
      2 2880 2880 2 ![720, 1, 1, 1440] ![4, 2880, 2880, 2] reductionProjection3324 ![reductionProjection3289, reductionProjection2777, reductionProjection3319, oldProjection1999]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3325 : Integer.Sparse (Fin 1613) := [(0, 3), (19, -20), (94, 35), (241, 80), (698, 240), (1050, -240), (1059, 80), (1250, 60), (1251, -100)]

def reductionPivot3325 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, -1, 0, 0], ![-1, -1, 0, 0, 2], ![0, 0, 0, 2, -2], ![0, 0, 1, -2, 1], ![1, 0, 0, 0, -1]]

theorem reductionSound3325 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8427).moment H =
      Integer.Sparse.eval reductionProjection3325 (momentVector H) := by
  have heq : reductionPivot3325 = (fun u v => (normalNode8427).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8427).moment H = injectiveMoment H reductionPivot3325 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8427).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot3325 0 = Pi.single (1 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot3325 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 720, 72, 288] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3325 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1053, oldProjection2814, oldProjection1053, oldProjection1749] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3325 (0 : Fin 4)) = canonicalInput19885.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3325 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1053 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3325 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1053 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19885 hH))).trans (oldProjectionSound1053 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3325 (1 : Fin 4)) = canonicalInput16164.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3325 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2814 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3325 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2814 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16164 hH))).trans (oldProjectionSound2814 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3325 (2 : Fin 4)) = canonicalInput16033.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3325 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1053 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3325 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1053 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16033 hH))).trans (oldProjectionSound1053 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3325 (3 : Fin 4)) = canonicalInput16024.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3325 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1749 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3325 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1749 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16024 hH))).trans (oldProjectionSound1749 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8427).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3325 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8427).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3325 (j : Fin 4)))
      2 2880 2880 2 ![72, 720, 72, 288] ![40, 4, 40, 10] reductionProjection3325 ![oldProjection1053, oldProjection2814, oldProjection1053, oldProjection1749]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3326 : Integer.Sparse (Fin 1613) := [(0, 3), (81, 720), (698, -240), (1034, -480), (1059, -160), (1221, 240), (1227, -80), (1251, 45), (1389, 240)]

def reductionPivot3326 : Matrix (Fin 4) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, -2, 1, 2, 0], ![0, 2, 1, -1, -2], ![2, 0, -2, -1, 1]]

theorem reductionSound3326 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8904).moment H =
      Integer.Sparse.eval reductionProjection3326 (momentVector H) := by
  have heq : reductionPivot3326 = (fun u v => (normalNode8904).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8904).moment H = injectiveMoment H reductionPivot3326 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode8904).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode8904).entries)).symm
  have hshape : reductionPivot3326 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot3326 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 480, 240] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot3326 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection625, oldProjection626, oldProjection624] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3326 (0 : Fin 3)) = canonicalInput1459.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3326 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection625 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3326 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection625 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound1459 hH))).trans (oldProjectionSound625 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3326 (1 : Fin 3)) = canonicalInput13958.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3326 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection626 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3326 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection626 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13958 hH))).trans (oldProjectionSound626 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3326 (2 : Fin 3)) = canonicalInput13981.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3326 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection624 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3326 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection624 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13981 hH))).trans (oldProjectionSound624 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode8904).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot3326 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8904).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot3326 (j : Fin 3)))
      3 1440 1440 3 ![1, 480, 240] ![1440, 3, 6] reductionProjection3326 ![oldProjection625, oldProjection626, oldProjection624]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection3327 : Integer.Sparse (Fin 1613) := [(0, 3), (94, -40), (698, -400), (1050, 240), (1055, 240), (1058, 240), (1059, -160), (1226, -80), (1227, -160), (1250, -60), (1251, 105)]

def reductionPivot3327 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, 0, -1, 2], ![0, 0, 2, -2], ![0, 1, -2, 1], ![1, -2, 1, 0]]

theorem reductionSound3327 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10345).moment H =
      Integer.Sparse.eval reductionProjection3327 (momentVector H) := by
  have heq : reductionPivot3327 = (fun u v => (normalNode10345).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10345).moment H = injectiveMoment H reductionPivot3327 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10345).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot3327 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot3327 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 360, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3327 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1309, oldProjection1277, oldProjection1314, oldProjection1263] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot3327 (0 : Fin 4)) = canonicalInput22777.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3327 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1309 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3327 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1309 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22777 hH))).trans (oldProjectionSound1309 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3327 (1 : Fin 4)) = canonicalInput20358.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3327 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1277 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3327 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1277 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20358 hH))).trans (oldProjectionSound1277 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3327 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7217 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3327 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1314 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3327 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1314 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7217 hH))).trans (oldProjectionSound1314 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot3327 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1263⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot3327 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1263 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot3327 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1263 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1263 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10345).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3327 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10345).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot3327 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 360, 720] ![2, 2, 4, 2] reductionProjection3327 ![oldProjection1309, oldProjection1277, oldProjection1314, oldProjection1263]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

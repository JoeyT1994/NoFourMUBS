import NoFourMUBs.Step2.SOS.Canonical268
import NoFourMUBs.Step2.SOS.Canonical340
import NoFourMUBs.Step2.SOS.Canonical387
import NoFourMUBs.Step2.SOS.Canonical397
import NoFourMUBs.Step2.SOS.Canonical403
import NoFourMUBs.Step2.SOS.Canonical404
import NoFourMUBs.Step2.SOS.Canonical419
import NoFourMUBs.Step2.SOS.Canonical434
import NoFourMUBs.Step2.SOS.Canonical439
import NoFourMUBs.Step2.SOS.Canonical445
import NoFourMUBs.Step2.SOS.Canonical446
import NoFourMUBs.Step2.SOS.Canonical449
import NoFourMUBs.Step2.SOS.Canonical456
import NoFourMUBs.Step2.SOS.Canonical457
import NoFourMUBs.Step2.SOS.Canonical486
import NoFourMUBs.Step2.SOS.Canonical488
import NoFourMUBs.Step2.SOS.Canonical489
import NoFourMUBs.Step2.SOS.Canonical491
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions272
import NoFourMUBs.Step2.SOS.Reductions273
import NoFourMUBs.Step2.SOS.Reductions290
import NoFourMUBs.Step2.SOS.Reductions306
import NoFourMUBs.Step2.SOS.Reductions309
import NoFourMUBs.Step2.SOS.Reductions310
import NoFourMUBs.Step2.SOS.Reductions311
import NoFourMUBs.Step2.SOS.Reductions325
import NoFourMUBs.Step2.SOS.Reductions364
import NoFourMUBs.Step2.SOS.Reductions365
import NoFourMUBs.Step2.SOS.Reductions369
import NoFourMUBs.Step2.SOS.Reductions378
import NoFourMUBs.Step2.SOS.Reductions384
import NoFourMUBs.Step2.SOS.Reductions385
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical297

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput358 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![0, 0, -3, 3], ![-1, 1, 3, -3]]

theorem rowSound358 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 358) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row358 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row358 H]
  have hshape : boundaryInput358 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput358 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 720, 1440, 1440, 288, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput358 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection12123, reductionProjection12294, reductionProjection12305, reductionProjection12305, reductionProjection11830, oldProjection3239] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput358 (0 : Fin 6)) = canonicalInput21802.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput358 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12123 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput358 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12123 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21802 hH))).trans (reductionSound12123 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput358 (1 : Fin 6)) = canonicalInput31140.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput358 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12294 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput358 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12294 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31140 hH))).trans (reductionSound12294 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput358 (2 : Fin 6)) = canonicalInput31318.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput358 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12305 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput358 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12305 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31318 hH))).trans (reductionSound12305 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput358 (3 : Fin 6)) = canonicalInput31433.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput358 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12305 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput358 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12305 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31433 hH))).trans (reductionSound12305 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput358 (4 : Fin 6)) = canonicalInput31435.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput358 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11830 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput358 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11830 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31435 hH))).trans (reductionSound11830 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput358 (5 : Fin 6)) = canonicalInput31438.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput358 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3239 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput358 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3239 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31438 hH))).trans (oldProjectionSound3239 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput358 (j : Fin 6)))
    144 1440 ![288, 720, 1440, 1440, 288, 720] ![-720, -288, -144, -144, -720, -288] (extendRow Arithmetic.row358) ![reductionProjection12123, reductionProjection12294, reductionProjection12305, reductionProjection12305, reductionProjection11830, oldProjection3239]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput412 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 1, -2, 2], ![-1, 2, 2, -3]]

theorem rowSound412 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 412) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row412 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row412 H]
  have hshape : boundaryInput412 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput412 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 1440, 1440, 144] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput412 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10427, reductionProjection9957, reductionProjection10430, reductionProjection10430, oldProjection3237, reductionProjection12314] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput412 (0 : Fin 6)) = canonicalInput24825.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput412 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10427 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput412 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10427 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24825 hH))).trans (reductionSound10427 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput412 (1 : Fin 6)) = canonicalInput28125.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput412 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9957 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput412 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9957 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28125 hH))).trans (reductionSound9957 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput412 (2 : Fin 6)) = canonicalInput29188.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput412 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10430 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput412 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10430 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29188 hH))).trans (reductionSound10430 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput412 (3 : Fin 6)) = canonicalInput29259.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput412 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10430 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput412 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10430 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29259 hH))).trans (reductionSound10430 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput412 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9527 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput412 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3237 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput412 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3237 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9527 hH))).trans (oldProjectionSound3237 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput412 (5 : Fin 6)) = canonicalInput29268.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput412 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12314 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput412 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12314 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29268 hH))).trans (reductionSound12314 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput412 (j : Fin 6)))
    1440 1440 ![288, 1440, 1440, 1440, 1440, 144] ![-7200, -1440, -1440, -1440, -1440, -14400] (extendRow Arithmetic.row412) ![reductionProjection10427, reductionProjection9957, reductionProjection10430, reductionProjection10430, oldProjection3237, reductionProjection12314]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput487 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, 1, -1, 1], ![-1, 2, 0, -1], ![1, -1, 3, -3]]

theorem rowSound487 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 487) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row487 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row487 H]
  have hshape : boundaryInput487 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput487 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput487 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9793, reductionProjection9793, reductionProjection9819, reductionProjection9290, reductionProjection12290, reductionProjection9908] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput487 (0 : Fin 6)) = canonicalInput24791.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput487 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9793 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput487 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9793 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24791 hH))).trans (reductionSound9793 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput487 (1 : Fin 6)) = canonicalInput28098.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput487 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9793 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput487 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9793 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28098 hH))).trans (reductionSound9793 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput487 (2 : Fin 6)) = canonicalInput28486.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput487 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9819 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput487 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9819 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28486 hH))).trans (reductionSound9819 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput487 (3 : Fin 6)) = canonicalInput28575.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput487 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9290 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput487 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9290 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28575 hH))).trans (reductionSound9290 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput487 (4 : Fin 6)) = canonicalInput28580.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput487 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12290 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput487 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12290 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28580 hH))).trans (reductionSound12290 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput487 (5 : Fin 6)) = canonicalInput28581.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput487 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9908 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput487 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9908 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28581 hH))).trans (reductionSound9908 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput487 (j : Fin 6)))
    72 1440 ![288, 288, 1440, 1440, 1440, 1440] ![-360, -360, -72, -72, -72, -72] (extendRow Arithmetic.row487) ![reductionProjection9793, reductionProjection9793, reductionProjection9819, reductionProjection9290, reductionProjection12290, reductionProjection9908]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput488 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, 1, -1, 1], ![1, -1, 1, -1], ![-1, 2, 2, -3]]

theorem rowSound488 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 488) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row488 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row488 H]
  have hshape : boundaryInput488 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput488 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 1440, 360, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput488 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11672, reductionProjection11672, reductionProjection11673, reductionProjection8744, reductionProjection9927, reductionProjection12313] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput488 (0 : Fin 6)) = canonicalInput24792.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput488 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11672 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput488 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11672 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24792 hH))).trans (reductionSound11672 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput488 (1 : Fin 6)) = canonicalInput28099.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput488 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11672 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput488 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11672 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28099 hH))).trans (reductionSound11672 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput488 (2 : Fin 6)) = canonicalInput28487.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput488 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11673 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput488 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11673 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28487 hH))).trans (reductionSound11673 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput488 (3 : Fin 6)) = canonicalInput28576.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput488 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8744 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput488 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8744 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28576 hH))).trans (reductionSound8744 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput488 (4 : Fin 6)) = canonicalInput28582.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput488 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9927 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput488 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9927 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28582 hH))).trans (reductionSound9927 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput488 (5 : Fin 6)) = canonicalInput28583.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput488 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12313 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput488 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12313 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28583 hH))).trans (reductionSound12313 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput488 (j : Fin 6)))
    288 1440 ![1440, 1440, 288, 1440, 360, 1440] ![-288, -288, -1440, -288, -1152, -288] (extendRow Arithmetic.row488) ![reductionProjection11672, reductionProjection11672, reductionProjection11673, reductionProjection8744, reductionProjection9927, reductionProjection12313]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput494 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-1, 1, -1, 1], ![1, -1, -1, 1], ![-1, 2, 2, -3]]

theorem rowSound494 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 494) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row494 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row494 H]
  have hshape : boundaryInput494 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput494 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput494 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11698, reductionProjection9920, reductionProjection11705, oldProjection3236, reductionProjection11703, reductionProjection12310] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput494 (0 : Fin 6)) = canonicalInput24823.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput494 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11698 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput494 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11698 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24823 hH))).trans (reductionSound11698 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput494 (1 : Fin 6)) = canonicalInput28123.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput494 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9920 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput494 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9920 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28123 hH))).trans (reductionSound9920 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput494 (2 : Fin 6)) = canonicalInput29186.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput494 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11705 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput494 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11705 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29186 hH))).trans (reductionSound11705 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput494 (3 : Fin 6)) = canonicalInput29238.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput494 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3236 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput494 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3236 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29238 hH))).trans (oldProjectionSound3236 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput494 (4 : Fin 6)) = canonicalInput29239.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput494 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11703 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput494 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11703 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29239 hH))).trans (reductionSound11703 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput494 (5 : Fin 6)) = canonicalInput29240.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput494 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12310 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput494 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12310 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29240 hH))).trans (reductionSound12310 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput494 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 288] ![-1440, -1440, -1440, -1440, -1440, -7200] (extendRow Arithmetic.row494) ![reductionProjection11698, reductionProjection9920, reductionProjection11705, oldProjection3236, reductionProjection11703, reductionProjection12310]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput504 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-1, 2, 0, -1], ![1, -1, 1, -1], ![-1, 1, -3, 3]]

theorem rowSound504 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 504) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row504 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row504 H]
  have hshape : boundaryInput504 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput504 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput504 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9806, reductionProjection9806, reductionProjection9819, reductionProjection12290, reductionProjection9821, oldProjection3292] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput504 (0 : Fin 6)) = canonicalInput26850.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput504 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9806 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput504 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9806 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26850 hH))).trans (reductionSound9806 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput504 (1 : Fin 6)) = canonicalInput31145.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput504 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9806 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput504 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9806 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31145 hH))).trans (reductionSound9806 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput504 (2 : Fin 6)) = canonicalInput31241.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput504 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9819 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput504 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9819 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31241 hH))).trans (reductionSound9819 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput504 (3 : Fin 6)) = canonicalInput31248.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput504 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12290 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput504 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12290 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31248 hH))).trans (reductionSound12290 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput504 (4 : Fin 6)) = canonicalInput31249.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput504 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9821 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput504 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9821 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31249 hH))).trans (reductionSound9821 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput504 (5 : Fin 6)) = canonicalInput31250.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput504 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3292 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput504 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3292 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31250 hH))).trans (oldProjectionSound3292 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput504 (j : Fin 6)))
    288 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-288, -288, -288, -288, -288, -288] (extendRow Arithmetic.row504) ![reductionProjection9806, reductionProjection9806, reductionProjection9819, reductionProjection12290, reductionProjection9821, oldProjection3292]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput826 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 1, -1, 1], ![-1, 1, 2, -2]]

theorem rowSound826 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 826) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row826 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row826 H]
  have hshape : boundaryInput826 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput826 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 288, 288, 144, 144] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput826 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection12312, oldProjection1823, reductionProjection12310, reductionProjection12310, reductionProjection12314, reductionProjection11650] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput826 (0 : Fin 6)) = canonicalInput27799.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput826 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12312 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput826 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12312 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27799 hH))).trans (reductionSound12312 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput826 (1 : Fin 6)) = canonicalInput28794.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput826 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1823 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput826 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1823 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28794 hH))).trans (oldProjectionSound1823 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput826 (2 : Fin 6)) = canonicalInput29205.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput826 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12310 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput826 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12310 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29205 hH))).trans (reductionSound12310 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput826 (3 : Fin 6)) = canonicalInput29263.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput826 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12310 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput826 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12310 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29263 hH))).trans (reductionSound12310 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput826 (4 : Fin 6)) = canonicalInput29268.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput826 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12314 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput826 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12314 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29268 hH))).trans (reductionSound12314 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput826 (5 : Fin 6)) = canonicalInput29269.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput826 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11650 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput826 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11650 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29269 hH))).trans (reductionSound11650 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput826 (j : Fin 6)))
    720 1440 ![720, 720, 288, 288, 144, 144] ![-1440, -1440, -3600, -3600, -7200, -7200] (extendRow Arithmetic.row826) ![reductionProjection12312, oldProjection1823, reductionProjection12310, reductionProjection12310, reductionProjection12314, reductionProjection11650]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput188 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 2, 1, -2], ![2, -1, 2, -3]]

theorem rowSound188 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 188) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row188 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row188 H]
  have hshape : boundaryInput188 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput188 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![360, 1440, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput188 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8734, reductionProjection8740, reductionProjection8740, reductionProjection8740, oldProjection3241, reductionProjection12328] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput188 (0 : Fin 6)) = canonicalInput17195.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput188 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8734 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput188 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8734 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17195 hH))).trans (reductionSound8734 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput188 (1 : Fin 6)) = canonicalInput25446.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput188 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8740 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput188 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8740 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25446 hH))).trans (reductionSound8740 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput188 (2 : Fin 6)) = canonicalInput25828.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput188 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8740 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput188 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8740 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25828 hH))).trans (reductionSound8740 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput188 (3 : Fin 6)) = canonicalInput25870.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput188 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8740 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput188 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8740 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25870 hH))).trans (reductionSound8740 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput188 (4 : Fin 6)) = canonicalInput25881.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput188 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3241 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput188 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3241 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25881 hH))).trans (oldProjectionSound3241 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput188 (5 : Fin 6)) = canonicalInput25885.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput188 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12328 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput188 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12328 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25885 hH))).trans (reductionSound12328 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput188 (j : Fin 6)))
    1440 1440 ![360, 1440, 1440, 1440, 1440, 288] ![-5760, -1440, -1440, -1440, -1440, -7200] (extendRow Arithmetic.row188) ![reductionProjection8734, reductionProjection8740, reductionProjection8740, reductionProjection8740, oldProjection3241, reductionProjection12328]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

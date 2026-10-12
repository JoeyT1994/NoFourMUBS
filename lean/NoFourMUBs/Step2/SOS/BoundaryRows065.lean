import NoFourMUBs.Step2.SOS.Canonical377
import NoFourMUBs.Step2.SOS.Canonical386
import NoFourMUBs.Step2.SOS.Canonical388
import NoFourMUBs.Step2.SOS.Canonical402
import NoFourMUBs.Step2.SOS.Canonical406
import NoFourMUBs.Step2.SOS.Canonical407
import NoFourMUBs.Step2.SOS.Canonical433
import NoFourMUBs.Step2.SOS.Canonical436
import NoFourMUBs.Step2.SOS.Canonical438
import NoFourMUBs.Step2.SOS.Canonical440
import NoFourMUBs.Step2.SOS.Canonical441
import NoFourMUBs.Step2.SOS.Canonical447
import NoFourMUBs.Step2.SOS.Canonical449
import NoFourMUBs.Step2.SOS.Canonical452
import NoFourMUBs.Step2.SOS.Canonical454
import NoFourMUBs.Step2.SOS.Canonical462
import NoFourMUBs.Step2.SOS.Canonical463
import NoFourMUBs.Step2.SOS.Canonical466
import NoFourMUBs.Step2.SOS.Canonical467
import NoFourMUBs.Step2.SOS.Canonical468
import NoFourMUBs.Step2.SOS.Canonical469
import NoFourMUBs.Step2.SOS.Canonical471
import NoFourMUBs.Step2.SOS.Canonical489
import NoFourMUBs.Step2.SOS.Canonical490
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections034
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.OldProjections041
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions009
import NoFourMUBs.Step2.SOS.Reductions137
import NoFourMUBs.Step2.SOS.Reductions230
import NoFourMUBs.Step2.SOS.Reductions232
import NoFourMUBs.Step2.SOS.Reductions240
import NoFourMUBs.Step2.SOS.Reductions251
import NoFourMUBs.Step2.SOS.Reductions252
import NoFourMUBs.Step2.SOS.Reductions255
import NoFourMUBs.Step2.SOS.Reductions271
import NoFourMUBs.Step2.SOS.Reductions278
import NoFourMUBs.Step2.SOS.Reductions283
import NoFourMUBs.Step2.SOS.Reductions284
import NoFourMUBs.Step2.SOS.Reductions286
import NoFourMUBs.Step2.SOS.Reductions287
import NoFourMUBs.Step2.SOS.Reductions288
import NoFourMUBs.Step2.SOS.Reductions290
import NoFourMUBs.Step2.SOS.Reductions292
import NoFourMUBs.Step2.SOS.Reductions293
import NoFourMUBs.Step2.SOS.Reductions294
import NoFourMUBs.Step2.SOS.Reductions295
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical302

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput391 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, 0, -1], ![-1, -1, 3, -1], ![-1, 0, -2, 3]]

theorem rowSound391 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 391) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row391 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row391 H]
  have hshape : boundaryInput391 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput391 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput391 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection291, reductionProjection9096, reductionProjection9382, reductionProjection9077, reductionProjection9072, reductionProjection9076] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput391 (0 : Fin 6)) = canonicalInput30171.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput391 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection291 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput391 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection291 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30171 hH))).trans (reductionSound291 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput391 (1 : Fin 6)) = canonicalInput31314.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput391 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9096 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput391 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9096 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31314 hH))).trans (reductionSound9096 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput391 (2 : Fin 6)) = canonicalInput31343.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput391 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9382 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput391 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9382 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31343 hH))).trans (reductionSound9382 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput391 (3 : Fin 6)) = canonicalInput31418.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput391 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9077 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput391 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9077 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31418 hH))).trans (reductionSound9077 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput391 (4 : Fin 6)) = canonicalInput31419.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput391 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9072 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput391 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9072 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31419 hH))).trans (reductionSound9072 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput391 (5 : Fin 6)) = canonicalInput31420.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput391 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9076 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput391 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9076 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31420 hH))).trans (reductionSound9076 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput391 (j : Fin 6)))
    720 1440 ![1440, 1440, 1440, 1440, 288, 1440] ![-720, -720, -720, -720, -3600, -720] (extendRow Arithmetic.row391) ![reductionProjection291, reductionProjection9096, reductionProjection9382, reductionProjection9077, reductionProjection9072, reductionProjection9076]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput527 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 1, 1, 0], ![0, 1, -3, 2], ![1, 1, 1, -3]]

theorem rowSound527 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 527) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row527 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row527 H]
  have hshape : boundaryInput527 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput527 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 2, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput527 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9366, reductionProjection8178, reductionProjection9368, reductionProjection8071, reductionProjection9387, reductionProjection9196] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput527 (0 : Fin 6)) = canonicalInput24149.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput527 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9366 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput527 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9366 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24149 hH))).trans (reductionSound9366 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput527 (1 : Fin 6)) = canonicalInput25782.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput527 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8178 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput527 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8178 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25782 hH))).trans (reductionSound8178 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput527 (2 : Fin 6)) = canonicalInput26046.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput527 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9368 (Normalization.momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst boundaryInput527 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9368 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26046 hH))).trans (reductionSound9368 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput527 (3 : Fin 6)) = canonicalInput26050.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput527 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8071 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput527 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8071 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26050 hH))).trans (reductionSound8071 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput527 (4 : Fin 6)) = canonicalInput26053.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput527 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9387 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput527 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9387 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26053 hH))).trans (reductionSound9387 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput527 (5 : Fin 6)) = canonicalInput26054.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput527 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9196 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput527 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9196 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26054 hH))).trans (reductionSound9196 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput527 (j : Fin 6)))
    288 1440 ![1440, 1440, 2, 1440, 1440, 288] ![-288, -288, -207360, -288, -288, -1440] (extendRow Arithmetic.row527) ![reductionProjection9366, reductionProjection8178, reductionProjection9368, reductionProjection8071, reductionProjection9387, reductionProjection9196]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput779 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![-1, 1, 1, -1], ![2, -1, 0, -1]]

theorem rowSound779 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 779) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row779 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row779 H]
  have hshape : boundaryInput779 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput779 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 288, 1440, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput779 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7450, oldProjection2631, reductionProjection8087, reductionProjection8059, oldProjection3429, reductionProjection9394] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput779 (0 : Fin 6)) = canonicalInput27749.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput779 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7450 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput779 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7450 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27749 hH))).trans (reductionSound7450 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput779 (1 : Fin 6)) = canonicalInput28743.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput779 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection2631 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput779 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection2631 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28743 hH))).trans (oldProjectionSound2631 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput779 (2 : Fin 6)) = canonicalInput28951.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput779 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8087 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput779 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8087 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28951 hH))).trans (reductionSound8087 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput779 (3 : Fin 6)) = canonicalInput29079.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput779 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8059 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput779 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8059 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29079 hH))).trans (reductionSound8059 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput779 (4 : Fin 6)) = canonicalInput29082.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput779 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3429 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput779 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3429 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29082 hH))).trans (oldProjectionSound3429 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput779 (5 : Fin 6)) = canonicalInput29083.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput779 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9394 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput779 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9394 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29083 hH))).trans (reductionSound9394 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput779 (j : Fin 6)))
    1440 1440 ![288, 288, 288, 1440, 1440, 720] ![-7200, -7200, -7200, -1440, -1440, -2880] (extendRow Arithmetic.row779) ![reductionProjection7450, oldProjection2631, reductionProjection8087, reductionProjection8059, oldProjection3429, reductionProjection9394]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput865 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, 1, 1, -1], ![2, -1, -1, 0]]

theorem rowSound865 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 865) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row865 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row865 H]
  have hshape : boundaryInput865 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput865 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 720, 720, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput865 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9179, oldProjection2071, reductionProjection8060, reductionProjection9394, oldProjection3209, oldProjection3247] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput865 (0 : Fin 6)) = canonicalInput27750.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput865 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9179 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput865 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9179 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27750 hH))).trans (reductionSound9179 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput865 (1 : Fin 6)) = canonicalInput28745.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput865 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection2071 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput865 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection2071 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28745 hH))).trans (oldProjectionSound2071 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput865 (2 : Fin 6)) = canonicalInput28952.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput865 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8060 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput865 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8060 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28952 hH))).trans (reductionSound8060 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput865 (3 : Fin 6)) = canonicalInput29083.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput865 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9394 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput865 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9394 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29083 hH))).trans (reductionSound9394 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput865 (4 : Fin 6)) = canonicalInput29085.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput865 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3209 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput865 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3209 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29085 hH))).trans (oldProjectionSound3209 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput865 (5 : Fin 6)) = canonicalInput29086.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput865 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3247 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput865 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3247 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29086 hH))).trans (oldProjectionSound3247 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput865 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 720, 720, 288] ![-1440, -1440, -1440, -2880, -2880, -7200] (extendRow Arithmetic.row865) ![reductionProjection9179, oldProjection2071, reductionProjection8060, reductionProjection9394, oldProjection3209, oldProjection3247]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1167 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 1, 1, 0], ![0, -1, -1, 2], ![0, 1, 2, -3]]

theorem rowSound1167 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1167) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1167 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1167 H]
  have hshape : boundaryInput1167 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1167 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1167 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9380, reductionProjection9381, reductionProjection9230, reductionProjection4413, reductionProjection9371, reductionProjection9377] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1167 (0 : Fin 6)) = canonicalInput27943.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1167 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9380 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1167 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9380 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27943 hH))).trans (reductionSound9380 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1167 (1 : Fin 6)) = canonicalInput29996.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1167 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9381 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1167 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9381 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29996 hH))).trans (reductionSound9381 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1167 (2 : Fin 6)) = canonicalInput30042.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1167 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9230 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1167 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9230 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30042 hH))).trans (reductionSound9230 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1167 (3 : Fin 6)) = canonicalInput30061.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1167 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4413 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1167 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4413 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30061 hH))).trans (reductionSound4413 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1167 (4 : Fin 6)) = canonicalInput30062.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1167 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9371 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1167 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9371 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30062 hH))).trans (reductionSound9371 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1167 (5 : Fin 6)) = canonicalInput30063.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1167 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9377 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1167 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9377 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30063 hH))).trans (reductionSound9377 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1167 (j : Fin 6)))
    720 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-720, -720, -720, -720, -720, -720] (extendRow Arithmetic.row1167) ![reductionProjection9380, reductionProjection9381, reductionProjection9230, reductionProjection4413, reductionProjection9371, reductionProjection9377]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput253 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 1, -1, 2], ![0, -1, 4, -3]]

theorem rowSound253 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 253) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row253 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row253 H]
  have hshape : boundaryInput253 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput253 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 288, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput253 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8912, reductionProjection9439, reductionProjection8920, reductionProjection8923, reductionProjection8690, oldProjection3252] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput253 (0 : Fin 6)) = canonicalInput27904.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput253 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8912 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput253 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8912 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27904 hH))).trans (reductionSound8912 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput253 (1 : Fin 6)) = canonicalInput29669.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput253 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9439 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput253 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9439 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29669 hH))).trans (reductionSound9439 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput253 (2 : Fin 6)) = canonicalInput29859.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput253 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8920 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput253 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8920 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29859 hH))).trans (reductionSound8920 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput253 (3 : Fin 6)) = canonicalInput29884.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput253 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8923 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput253 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8923 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29884 hH))).trans (reductionSound8923 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput253 (4 : Fin 6)) = canonicalInput29890.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput253 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8690 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput253 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8690 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29890 hH))).trans (reductionSound8690 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput253 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9665 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput253 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3252 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput253 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3252 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9665 hH))).trans (oldProjectionSound3252 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput253 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 288, 720, 1440] ![-1440, -1440, -1440, -7200, -2880, -1440] (extendRow Arithmetic.row253) ![reductionProjection8912, reductionProjection9439, reductionProjection8920, reductionProjection8923, reductionProjection8690, oldProjection3252]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput525 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, -2, 0, 2], ![-2, 1, 2, -1], ![1, 1, 1, -3]]

theorem rowSound525 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 525) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row525 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row525 H]
  have hshape : boundaryInput525 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput525 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 1440, 18, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput525 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9434, reductionProjection7683, reductionProjection9438, reductionProjection9427, reductionProjection7389, oldProjection3190] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput525 (0 : Fin 6)) = canonicalInput24862.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput525 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9434 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput525 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9434 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24862 hH))).trans (reductionSound9434 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput525 (1 : Fin 6)) = canonicalInput28656.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput525 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7683 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput525 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7683 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28656 hH))).trans (reductionSound7683 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput525 (2 : Fin 6)) = canonicalInput29575.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput525 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9438 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput525 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9438 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29575 hH))).trans (reductionSound9438 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput525 (3 : Fin 6)) = canonicalInput29690.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput525 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9427 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput525 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9427 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29690 hH))).trans (reductionSound9427 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput525 (4 : Fin 6)) = canonicalInput29692.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput525 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7389 (Normalization.momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst boundaryInput525 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7389 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29692 hH))).trans (reductionSound7389 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput525 (5 : Fin 6)) = canonicalInput29694.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput525 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3190 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput525 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3190 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29694 hH))).trans (oldProjectionSound3190 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput525 (j : Fin 6)))
    288 1440 ![1440, 1440, 288, 1440, 18, 1440] ![-288, -288, -1440, -288, -23040, -288] (extendRow Arithmetic.row525) ![reductionProjection9434, reductionProjection7683, reductionProjection9438, reductionProjection9427, reductionProjection7389, oldProjection3190]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput512 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 1, 0], ![-2, 2, 1, -1], ![1, 1, 1, -3]]

theorem rowSound512 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 512) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row512 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row512 H]
  have hshape : boundaryInput512 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput512 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![180, 180, 180, 720, 240, 72] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput512 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9450, reductionProjection9450, reductionProjection9450, reductionProjection9464, reductionProjection9285, reductionProjection9284] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput512 (0 : Fin 6)) = canonicalInput24761.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput512 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9450 (Normalization.momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst boundaryInput512 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9450 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24761 hH))).trans (reductionSound9450 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput512 (1 : Fin 6)) = canonicalInput28070.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput512 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9450 (Normalization.momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst boundaryInput512 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9450 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28070 hH))).trans (reductionSound9450 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput512 (2 : Fin 6)) = canonicalInput28218.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput512 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9450 (Normalization.momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst boundaryInput512 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9450 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28218 hH))).trans (reductionSound9450 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput512 (3 : Fin 6)) = canonicalInput28268.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput512 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9464 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput512 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9464 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28268 hH))).trans (reductionSound9464 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput512 (4 : Fin 6)) = canonicalInput28275.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput512 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9285 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput512 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9285 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28275 hH))).trans (reductionSound9285 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput512 (5 : Fin 6)) = canonicalInput28277.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput512 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9284 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput512 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9284 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28277 hH))).trans (reductionSound9284 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput512 (j : Fin 6)))
    720 720 ![180, 180, 180, 720, 240, 72] ![-2880, -2880, -2880, -720, -2160, -7200] (extendRow Arithmetic.row512) ![reductionProjection9450, reductionProjection9450, reductionProjection9450, reductionProjection9464, reductionProjection9285, reductionProjection9284]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

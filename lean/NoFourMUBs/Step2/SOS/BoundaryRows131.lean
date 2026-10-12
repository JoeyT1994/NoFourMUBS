import NoFourMUBs.Step2.SOS.Canonical163
import NoFourMUBs.Step2.SOS.Canonical164
import NoFourMUBs.Step2.SOS.Canonical166
import NoFourMUBs.Step2.SOS.Canonical340
import NoFourMUBs.Step2.SOS.Canonical356
import NoFourMUBs.Step2.SOS.Canonical357
import NoFourMUBs.Step2.SOS.Canonical386
import NoFourMUBs.Step2.SOS.Canonical387
import NoFourMUBs.Step2.SOS.Canonical438
import NoFourMUBs.Step2.SOS.Canonical439
import NoFourMUBs.Step2.SOS.Canonical440
import NoFourMUBs.Step2.SOS.Canonical441
import NoFourMUBs.Step2.SOS.Canonical445
import NoFourMUBs.Step2.SOS.Canonical447
import NoFourMUBs.Step2.SOS.Canonical486
import NoFourMUBs.Step2.SOS.Canonical487
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.OldProjections041
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions280
import NoFourMUBs.Step2.SOS.Reductions285
import NoFourMUBs.Step2.SOS.Reductions286
import NoFourMUBs.Step2.SOS.Reductions287
import NoFourMUBs.Step2.SOS.Reductions289
import NoFourMUBs.Step2.SOS.Reductions295
import NoFourMUBs.Step2.SOS.Reductions301
import NoFourMUBs.Step2.SOS.Reductions302
import NoFourMUBs.Step2.SOS.Reductions303
import NoFourMUBs.Step2.SOS.Reductions304
import NoFourMUBs.Step2.SOS.Reductions345
import NoFourMUBs.Step2.SOS.Reductions346
import NoFourMUBs.Step2.SOS.Reductions347
import NoFourMUBs.Step2.SOS.Reductions360
import NoFourMUBs.Step2.SOS.Reductions365
import NoFourMUBs.Step2.SOS.Reductions368
import NoFourMUBs.Step2.SOS.Reductions369
import NoFourMUBs.Step2.SOS.Reductions370
import NoFourMUBs.Step2.SOS.Reductions372
import NoFourMUBs.Step2.SOS.Reductions374
import NoFourMUBs.Step2.SOS.Reductions375
import NoFourMUBs.Step2.SOS.Reductions384
import NoFourMUBs.Step2.SOS.Reductions385
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical289
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical292

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput359 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 1, 0, 0], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![2, -2, -1, 1], ![0, 0, 4, -4]]

theorem rowSound359 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 359) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row359 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row359 H]
  have hshape : boundaryInput359 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput359 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 720, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput359 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9264, reductionProjection9643, reductionProjection9643, reductionProjection9687, reductionProjection12339, oldProjection3314] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput359 (0 : Fin 6)) = canonicalInput10645.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput359 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9264 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput359 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9264 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10645 hH))).trans (reductionSound9264 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput359 (1 : Fin 6)) = canonicalInput22843.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput359 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9643 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput359 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9643 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22843 hH))).trans (reductionSound9643 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput359 (2 : Fin 6)) = canonicalInput22893.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput359 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9643 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput359 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9643 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22893 hH))).trans (reductionSound9643 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput359 (3 : Fin 6)) = canonicalInput22898.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput359 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9687 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput359 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9687 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22898 hH))).trans (reductionSound9687 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput359 (4 : Fin 6)) = canonicalInput22901.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput359 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12339 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput359 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12339 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22901 hH))).trans (reductionSound12339 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput359 (5 : Fin 6)) = canonicalInput22902.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput359 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3314 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput359 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3314 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22902 hH))).trans (oldProjectionSound3314 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput359 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 720, 1440, 1440] ![-1440, -1440, -1440, -2880, -1440, -1440] (extendRow Arithmetic.row359) ![reductionProjection9264, reductionProjection9643, reductionProjection9643, reductionProjection9687, reductionProjection12339, oldProjection3314]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput360 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 1, 0, 0], ![0, -1, 0, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 1, -3, 1], ![0, 0, 4, -4]]

theorem rowSound360 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 360) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row360 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row360 H]
  have hshape : boundaryInput360 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput360 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 144, 144, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput360 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9122, reductionProjection11064, reductionProjection11078, reductionProjection11127, reductionProjection12333, reductionProjection11065] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput360 (0 : Fin 6)) = canonicalInput10491.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput360 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9122 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput360 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9122 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10491 hH))).trans (reductionSound9122 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput360 (1 : Fin 6)) = canonicalInput22837.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput360 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11064 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput360 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11064 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22837 hH))).trans (reductionSound11064 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput360 (2 : Fin 6)) = canonicalInput22867.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput360 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11078 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput360 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11078 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22867 hH))).trans (reductionSound11078 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput360 (3 : Fin 6)) = canonicalInput22871.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput360 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11127 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput360 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11127 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22871 hH))).trans (reductionSound11127 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput360 (4 : Fin 6)) = canonicalInput22872.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput360 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12333 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput360 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12333 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22872 hH))).trans (reductionSound12333 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput360 (5 : Fin 6)) = canonicalInput22873.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput360 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11065 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput360 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11065 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22873 hH))).trans (reductionSound11065 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput360 (j : Fin 6)))
    1440 1440 ![1440, 144, 144, 1440, 288, 1440] ![-1440, -14400, -14400, -1440, -7200, -1440] (extendRow Arithmetic.row360) ![reductionProjection9122, reductionProjection11064, reductionProjection11078, reductionProjection11127, reductionProjection12333, reductionProjection11065]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput361 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 1, 0, 0], ![0, -1, 0, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -3, 2], ![0, 0, 4, -4]]

theorem rowSound361 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 361) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row361 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row361 H]
  have hshape : boundaryInput361 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput361 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 288, 288, 144, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput361 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9154, reductionProjection11541, reductionProjection11921, reductionProjection11975, reductionProjection12337, reductionProjection11804] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput361 (0 : Fin 6)) = canonicalInput10497.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput361 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9154 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput361 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9154 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10497 hH))).trans (reductionSound9154 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput361 (1 : Fin 6)) = canonicalInput22838.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput361 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11541 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput361 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11541 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22838 hH))).trans (reductionSound11541 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput361 (2 : Fin 6)) = canonicalInput22868.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput361 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11921 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput361 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11921 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22868 hH))).trans (reductionSound11921 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput361 (3 : Fin 6)) = canonicalInput22874.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput361 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11975 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput361 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11975 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22874 hH))).trans (reductionSound11975 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput361 (4 : Fin 6)) = canonicalInput22875.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput361 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12337 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput361 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12337 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22875 hH))).trans (reductionSound12337 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput361 (5 : Fin 6)) = canonicalInput22876.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput361 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11804 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput361 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11804 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22876 hH))).trans (reductionSound11804 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput361 (j : Fin 6)))
    288 288 ![288, 288, 288, 288, 144, 288] ![-288, -288, -288, -288, -576, -288] (extendRow Arithmetic.row361) ![reductionProjection9154, reductionProjection11541, reductionProjection11921, reductionProjection11975, reductionProjection12337, reductionProjection11804]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput363 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 1, 0, 0], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, 1, -3, 2], ![1, 0, 3, -4]]

theorem rowSound363 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 363) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row363 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row363 H]
  have hshape : boundaryInput363 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput363 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 144, 288, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput363 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9189, reductionProjection11696, reductionProjection11807, reductionProjection11859, reductionProjection11815, reductionProjection12332] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput363 (0 : Fin 6)) = canonicalInput10515.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput363 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9189 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput363 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9189 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10515 hH))).trans (reductionSound9189 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput363 (1 : Fin 6)) = canonicalInput22841.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput363 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11696 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput363 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11696 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22841 hH))).trans (reductionSound11696 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput363 (2 : Fin 6)) = canonicalInput22882.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput363 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11807 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput363 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11807 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22882 hH))).trans (reductionSound11807 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput363 (3 : Fin 6)) = canonicalInput22883.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput363 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11859 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput363 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11859 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22883 hH))).trans (reductionSound11859 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput363 (4 : Fin 6)) = canonicalInput22884.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput363 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11815 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput363 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11815 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22884 hH))).trans (reductionSound11815 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput363 (5 : Fin 6)) = canonicalInput22885.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput363 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12332 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput363 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12332 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22885 hH))).trans (reductionSound12332 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput363 (j : Fin 6)))
    288 1440 ![288, 144, 288, 1440, 288, 1440] ![-1440, -2880, -1440, -288, -1440, -288] (extendRow Arithmetic.row363) ![reductionProjection9189, reductionProjection11696, reductionProjection11807, reductionProjection11859, reductionProjection11815, reductionProjection12332]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput395 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, -2, 0, 0], ![-1, 1, 2, -2], ![0, 0, -3, 3]]

theorem rowSound395 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 395) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row395 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row395 H]
  have hshape : boundaryInput395 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput395 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 144, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput395 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9729, reductionProjection9729, reductionProjection9733, reductionProjection12326, reductionProjection8964, reductionProjection9705] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput395 (0 : Fin 6)) = canonicalInput21779.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput395 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9729 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput395 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9729 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21779 hH))).trans (reductionSound9729 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput395 (1 : Fin 6)) = canonicalInput31128.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput395 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9729 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput395 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9729 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31128 hH))).trans (reductionSound9729 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput395 (2 : Fin 6)) = canonicalInput31175.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput395 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9733 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput395 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9733 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31175 hH))).trans (reductionSound9733 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput395 (3 : Fin 6)) = canonicalInput31211.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput395 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12326 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput395 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12326 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31211 hH))).trans (reductionSound12326 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput395 (4 : Fin 6)) = canonicalInput31221.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput395 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8964 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput395 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8964 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31221 hH))).trans (reductionSound8964 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput395 (5 : Fin 6)) = canonicalInput31222.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput395 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9705 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput395 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9705 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31222 hH))).trans (reductionSound9705 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput395 (j : Fin 6)))
    1440 1440 ![288, 288, 144, 1440, 1440, 1440] ![-7200, -7200, -14400, -1440, -1440, -1440] (extendRow Arithmetic.row395) ![reductionProjection9729, reductionProjection9729, reductionProjection9733, reductionProjection12326, reductionProjection8964, reductionProjection9705]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1014 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 1, -1, 1], ![-1, 1, 3, -3]]

theorem rowSound1014 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1014) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1014 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1014 H]
  have hshape : boundaryInput1014 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1014 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 720, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1014 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection12014, reductionProjection12014, reductionProjection9267, oldProjection3461, reductionProjection12295, reductionProjection12331] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1014 (0 : Fin 6)) = canonicalInput24798.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1014 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12014 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1014 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12014 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24798 hH))).trans (reductionSound12014 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1014 (1 : Fin 6)) = canonicalInput28105.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1014 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12014 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1014 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12014 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28105 hH))).trans (reductionSound12014 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1014 (2 : Fin 6)) = canonicalInput28493.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1014 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9267 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1014 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9267 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28493 hH))).trans (reductionSound9267 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1014 (3 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9373 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1014 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3461 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1014 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3461 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9373 hH))).trans (oldProjectionSound3461 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1014 (4 : Fin 6)) = canonicalInput28646.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1014 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12295 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1014 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12295 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28646 hH))).trans (reductionSound12295 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1014 (5 : Fin 6)) = canonicalInput28647.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1014 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12331 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1014 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12331 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28647 hH))).trans (reductionSound12331 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1014 (j : Fin 6)))
    720 1440 ![1440, 1440, 1440, 720, 1440, 1440] ![-720, -720, -720, -1440, -720, -720] (extendRow Arithmetic.row1014) ![reductionProjection12014, reductionProjection12014, reductionProjection9267, oldProjection3461, reductionProjection12295, reductionProjection12331]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1108 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 1, 2, -1], ![1, 1, 1, -3]]

theorem rowSound1108 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1108) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1108 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1108 H]
  have hshape : boundaryInput1108 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1108 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1108 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9455, reductionProjection9455, reductionProjection9455, reductionProjection9258, oldProjection3375, reductionProjection12340] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1108 (0 : Fin 6)) = canonicalInput24763.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1108 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9455 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1108 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9455 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24763 hH))).trans (reductionSound9455 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1108 (1 : Fin 6)) = canonicalInput28072.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1108 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9455 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1108 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9455 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28072 hH))).trans (reductionSound9455 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1108 (2 : Fin 6)) = canonicalInput28220.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1108 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9455 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1108 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9455 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28220 hH))).trans (reductionSound9455 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1108 (3 : Fin 6)) = canonicalInput28271.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1108 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9258 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1108 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9258 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28271 hH))).trans (reductionSound9258 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1108 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9273 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1108 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3375 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1108 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3375 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9273 hH))).trans (oldProjectionSound3375 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1108 (5 : Fin 6)) = canonicalInput28281.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1108 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12340 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1108 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12340 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28281 hH))).trans (reductionSound12340 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1108 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-1440, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row1108) ![reductionProjection9455, reductionProjection9455, reductionProjection9455, reductionProjection9258, oldProjection3375, reductionProjection12340]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

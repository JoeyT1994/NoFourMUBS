import NoFourMUBs.Step2.SOS.Canonical115
import NoFourMUBs.Step2.SOS.Canonical116
import NoFourMUBs.Step2.SOS.Canonical119
import NoFourMUBs.Step2.SOS.Canonical123
import NoFourMUBs.Step2.SOS.Canonical137
import NoFourMUBs.Step2.SOS.Canonical267
import NoFourMUBs.Step2.SOS.Canonical286
import NoFourMUBs.Step2.SOS.Canonical323
import NoFourMUBs.Step2.SOS.Canonical324
import NoFourMUBs.Step2.SOS.Canonical325
import NoFourMUBs.Step2.SOS.Canonical326
import NoFourMUBs.Step2.SOS.Canonical327
import NoFourMUBs.Step2.SOS.Canonical328
import NoFourMUBs.Step2.SOS.Canonical339
import NoFourMUBs.Step2.SOS.Canonical340
import NoFourMUBs.Step2.SOS.Canonical397
import NoFourMUBs.Step2.SOS.Canonical401
import NoFourMUBs.Step2.SOS.Canonical402
import NoFourMUBs.Step2.SOS.Canonical417
import NoFourMUBs.Step2.SOS.Canonical420
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions234
import NoFourMUBs.Step2.SOS.Reductions237
import NoFourMUBs.Step2.SOS.Reductions239
import NoFourMUBs.Step2.SOS.Reductions242
import NoFourMUBs.Step2.SOS.Reductions253
import NoFourMUBs.Step2.SOS.Reductions267
import NoFourMUBs.Step2.SOS.Reductions268
import NoFourMUBs.Step2.SOS.Reductions274
import NoFourMUBs.Step2.SOS.Reductions275
import NoFourMUBs.Step2.SOS.Reductions276
import NoFourMUBs.Step2.SOS.Reductions277
import NoFourMUBs.Step2.SOS.Reductions282
import NoFourMUBs.Step2.SOS.Reductions286
import NoFourMUBs.Step2.SOS.Reductions288
import NoFourMUBs.Step2.SOS.Reductions301
import NoFourMUBs.Step2.SOS.Reductions303
import NoFourMUBs.Step2.SOS.Reductions304
import NoFourMUBs.Step2.SOS.Reductions342
import NoFourMUBs.Step2.SOS.Reductions345
import NoFourMUBs.Step2.SOS.Reductions346
import NoFourMUBs.Step2.SOS.Reductions358
import NoFourMUBs.Step2.SOS.Reductions364
import NoFourMUBs.Step2.SOS.Reductions367
import NoFourMUBs.Step2.SOS.Reductions368
import NoFourMUBs.Step2.SOS.Reductions369
import NoFourMUBs.Step2.SOS.Reductions370
import NoFourMUBs.Step2.SOS.Reductions371
import NoFourMUBs.Step2.SOS.Reductions372
import NoFourMUBs.Step2.SOS.Reductions373
import NoFourMUBs.Step2.SOS.Reductions378
import NoFourMUBs.Step2.SOS.Reductions381

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput334 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, 1, -2, 2], ![1, 0, 3, -4]]

theorem rowSound334 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 334) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row334 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row334 H]
  have hshape : boundaryInput334 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput334 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput334 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11487, reductionProjection11660, reductionProjection11775, reductionProjection11850, reductionProjection8570, reductionProjection12193] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput334 (0 : Fin 6)) = canonicalInput17134.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput334 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11487 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput334 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11487 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17134 hH))).trans (reductionSound11487 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput334 (1 : Fin 6)) = canonicalInput25424.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput334 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11660 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput334 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11660 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25424 hH))).trans (reductionSound11660 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput334 (2 : Fin 6)) = canonicalInput25704.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput334 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11775 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput334 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11775 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25704 hH))).trans (reductionSound11775 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput334 (3 : Fin 6)) = canonicalInput25756.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput334 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11850 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput334 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11850 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25756 hH))).trans (reductionSound11850 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput334 (4 : Fin 6)) = canonicalInput25762.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput334 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8570 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput334 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8570 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25762 hH))).trans (reductionSound8570 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput334 (5 : Fin 6)) = canonicalInput25764.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput334 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12193 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput334 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12193 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25764 hH))).trans (reductionSound12193 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput334 (j : Fin 6)))
    288 1440 ![1440, 1440, 1440, 1440, 288, 1440] ![-288, -288, -288, -288, -1440, -288] (extendRow Arithmetic.row334) ![reductionProjection11487, reductionProjection11660, reductionProjection11775, reductionProjection11850, reductionProjection8570, reductionProjection12193]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput336 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, 1, -3, 2], ![-1, 1, 3, -3]]

theorem rowSound336 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 336) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row336 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row336 H]
  have hshape : boundaryInput336 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput336 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 1440, 1440, 144, 144, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput336 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11480, reductionProjection11655, reductionProjection12213, reductionProjection12104, reductionProjection12111, reductionProjection8577] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput336 (0 : Fin 6)) = canonicalInput17150.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput336 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11480 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput336 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11480 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17150 hH))).trans (reductionSound11480 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput336 (1 : Fin 6)) = canonicalInput25431.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput336 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11655 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput336 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11655 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25431 hH))).trans (reductionSound11655 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput336 (2 : Fin 6)) = canonicalInput25739.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput336 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12213 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput336 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12213 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25739 hH))).trans (reductionSound12213 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput336 (3 : Fin 6)) = canonicalInput25785.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput336 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12104 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput336 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12104 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25785 hH))).trans (reductionSound12104 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput336 (4 : Fin 6)) = canonicalInput25788.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput336 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12111 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput336 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12111 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25788 hH))).trans (reductionSound12111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput336 (5 : Fin 6)) = canonicalInput25790.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput336 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8577 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput336 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8577 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25790 hH))).trans (reductionSound8577 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput336 (j : Fin 6)))
    1440 1440 ![720, 1440, 1440, 144, 144, 288] ![-2880, -1440, -1440, -14400, -14400, -7200] (extendRow Arithmetic.row336) ![reductionProjection11480, reductionProjection11655, reductionProjection12213, reductionProjection12104, reductionProjection12111, reductionProjection8577]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput341 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, -2, 1], ![0, -1, 4, -3]]

theorem rowSound341 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 341) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row341 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row341 H]
  have hshape : boundaryInput341 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput341 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput341 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7664, reductionProjection8816, reductionProjection8883, reductionProjection8839, reductionProjection12215, reductionProjection8794] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput341 (0 : Fin 6)) = canonicalInput7637.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput341 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7664 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput341 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7664 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7637 hH))).trans (reductionSound7664 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput341 (1 : Fin 6)) = canonicalInput20745.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput341 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8816 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput341 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8816 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20745 hH))).trans (reductionSound8816 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput341 (2 : Fin 6)) = canonicalInput20927.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput341 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8883 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput341 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8883 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20927 hH))).trans (reductionSound8883 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput341 (3 : Fin 6)) = canonicalInput20958.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput341 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8839 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput341 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8839 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20958 hH))).trans (reductionSound8839 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput341 (4 : Fin 6)) = canonicalInput20964.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput341 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12215 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput341 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12215 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20964 hH))).trans (reductionSound12215 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput341 (5 : Fin 6)) = canonicalInput20965.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput341 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8794 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput341 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8794 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20965 hH))).trans (reductionSound8794 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput341 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 720] ![-1440, -1440, -1440, -1440, -1440, -2880] (extendRow Arithmetic.row341) ![reductionProjection7664, reductionProjection8816, reductionProjection8883, reductionProjection8839, reductionProjection12215, reductionProjection8794]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput346 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, -3, 1], ![0, 0, 4, -4]]

theorem rowSound346 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 346) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row346 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row346 H]
  have hshape : boundaryInput346 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput346 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 144, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput346 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7518, reductionProjection10953, reductionProjection11049, reductionProjection11102, reductionProjection12196, reductionProjection10957] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput346 (0 : Fin 6)) = canonicalInput7409.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput346 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7518 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput346 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7518 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7409 hH))).trans (reductionSound7518 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput346 (1 : Fin 6)) = canonicalInput20717.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput346 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10953 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput346 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10953 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20717 hH))).trans (reductionSound10953 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput346 (2 : Fin 6)) = canonicalInput20827.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput346 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11049 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput346 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11049 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20827 hH))).trans (reductionSound11049 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput346 (3 : Fin 6)) = canonicalInput20852.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput346 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11102 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput346 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11102 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20852 hH))).trans (reductionSound11102 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput346 (4 : Fin 6)) = canonicalInput20855.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput346 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12196 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput346 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12196 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20855 hH))).trans (reductionSound12196 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput346 (5 : Fin 6)) = canonicalInput20856.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput346 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10957 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput346 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10957 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20856 hH))).trans (reductionSound10957 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput346 (j : Fin 6)))
    1440 1440 ![288, 144, 1440, 1440, 288, 1440] ![-7200, -14400, -1440, -1440, -7200, -1440] (extendRow Arithmetic.row346) ![reductionProjection7518, reductionProjection10953, reductionProjection11049, reductionProjection11102, reductionProjection12196, reductionProjection10957]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput354 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 0, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -3, 2], ![0, 1, 3, -4]]

theorem rowSound354 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 354) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row354 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row354 H]
  have hshape : boundaryInput354 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput354 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 144, 1440, 1440, 288, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput354 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7609, reductionProjection11664, reductionProjection11824, reductionProjection11957, reductionProjection12204, reductionProjection11906] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput354 (0 : Fin 6)) = canonicalInput7470.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput354 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7609 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput354 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7609 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7470 hH))).trans (reductionSound7609 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput354 (1 : Fin 6)) = canonicalInput20727.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput354 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11664 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput354 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11664 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20727 hH))).trans (reductionSound11664 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput354 (2 : Fin 6)) = canonicalInput20869.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput354 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11824 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput354 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11824 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20869 hH))).trans (reductionSound11824 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput354 (3 : Fin 6)) = canonicalInput20886.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput354 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11957 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput354 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11957 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20886 hH))).trans (reductionSound11957 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput354 (4 : Fin 6)) = canonicalInput20890.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput354 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12204 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput354 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12204 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20890 hH))).trans (reductionSound12204 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput354 (5 : Fin 6)) = canonicalInput20892.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput354 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11906 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput354 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11906 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20892 hH))).trans (reductionSound11906 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput354 (j : Fin 6)))
    1440 1440 ![288, 144, 1440, 1440, 288, 288] ![-7200, -14400, -1440, -1440, -7200, -7200] (extendRow Arithmetic.row354) ![reductionProjection7609, reductionProjection11664, reductionProjection11824, reductionProjection11957, reductionProjection12204, reductionProjection11906]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput356 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 0, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![0, 1, -3, 2], ![0, 0, 4, -4]]

theorem rowSound356 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 356) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row356 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row356 H]
  have hshape : boundaryInput356 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput356 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![144, 288, 288, 288, 144, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput356 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7756, reductionProjection11897, reductionProjection12196, reductionProjection12196, reductionProjection12125, reductionProjection11778] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput356 (0 : Fin 6)) = canonicalInput7872.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput356 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7756 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput356 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7756 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7872 hH))).trans (reductionSound7756 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput356 (1 : Fin 6)) = canonicalInput20773.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput356 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11897 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput356 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11897 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20773 hH))).trans (reductionSound11897 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput356 (2 : Fin 6)) = canonicalInput21021.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput356 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12196 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput356 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12196 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21021 hH))).trans (reductionSound12196 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput356 (3 : Fin 6)) = canonicalInput21025.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput356 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12196 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput356 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12196 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21025 hH))).trans (reductionSound12196 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput356 (4 : Fin 6)) = canonicalInput21027.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput356 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12125 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput356 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12125 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21027 hH))).trans (reductionSound12125 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput356 (5 : Fin 6)) = canonicalInput21028.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput356 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11778 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput356 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11778 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21028 hH))).trans (reductionSound11778 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput356 (j : Fin 6)))
    288 288 ![144, 288, 288, 288, 144, 288] ![-576, -288, -288, -288, -576, -288] (extendRow Arithmetic.row356) ![reductionProjection7756, reductionProjection11897, reductionProjection12196, reductionProjection12196, reductionProjection12125, reductionProjection11778]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput396 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 2, -1, 0], ![0, 0, -3, 3], ![0, 0, 3, -3]]

theorem rowSound396 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 396) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row396 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row396 H]
  have hshape : boundaryInput396 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput396 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![72, 288, 144, 288, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput396 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9174, reductionProjection12216, reductionProjection9034, reductionProjection9662, reductionProjection9216, reductionProjection9177] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput396 (0 : Fin 6)) = canonicalInput18343.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput396 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9174 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput396 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9174 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18343 hH))).trans (reductionSound9174 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput396 (1 : Fin 6)) = canonicalInput26720.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput396 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12216 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput396 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12216 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26720 hH))).trans (reductionSound12216 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput396 (2 : Fin 6)) = canonicalInput26903.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput396 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9034 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput396 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9034 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26903 hH))).trans (reductionSound9034 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput396 (3 : Fin 6)) = canonicalInput26904.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput396 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9662 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput396 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9662 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26904 hH))).trans (reductionSound9662 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput396 (4 : Fin 6)) = canonicalInput26907.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput396 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9216 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput396 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9216 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26907 hH))).trans (reductionSound9216 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput396 (5 : Fin 6)) = canonicalInput26908.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput396 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9177 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput396 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9177 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26908 hH))).trans (reductionSound9177 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput396 (j : Fin 6)))
    1440 1440 ![72, 288, 144, 288, 288, 1440] ![-28800, -7200, -14400, -7200, -7200, -1440] (extendRow Arithmetic.row396) ![reductionProjection9174, reductionProjection12216, reductionProjection9034, reductionProjection9662, reductionProjection9216, reductionProjection9177]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput397 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -2, 0, 0], ![0, 0, -3, 3], ![0, 0, 3, -3]]

theorem rowSound397 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 397) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row397 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row397 H]
  have hshape : boundaryInput397 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput397 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![72, 72, 144, 288, 288, 36] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput397 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8115, reductionProjection9731, reductionProjection9730, reductionProjection12216, reductionProjection9701, reductionProjection9707] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput397 (0 : Fin 6)) = canonicalInput8807.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput397 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8115 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput397 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8115 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8807 hH))).trans (reductionSound8115 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput397 (1 : Fin 6)) = canonicalInput21723.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput397 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9731 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput397 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9731 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21723 hH))).trans (reductionSound9731 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput397 (2 : Fin 6)) = canonicalInput21793.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput397 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9730 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput397 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9730 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21793 hH))).trans (reductionSound9730 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput397 (3 : Fin 6)) = canonicalInput21796.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput397 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12216 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput397 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12216 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21796 hH))).trans (reductionSound12216 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput397 (4 : Fin 6)) = canonicalInput21799.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput397 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9701 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput397 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9701 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21799 hH))).trans (reductionSound9701 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput397 (5 : Fin 6)) = canonicalInput21800.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput397 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9707 (Normalization.momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst boundaryInput397 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9707 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21800 hH))).trans (reductionSound9707 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput397 (j : Fin 6)))
    144 288 ![72, 72, 144, 288, 288, 36] ![-576, -576, -288, -144, -144, -1152] (extendRow Arithmetic.row397) ![reductionProjection8115, reductionProjection9731, reductionProjection9730, reductionProjection12216, reductionProjection9701, reductionProjection9707]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

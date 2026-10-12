import NoFourMUBs.Step2.SOS.Canonical164
import NoFourMUBs.Step2.SOS.Canonical269
import NoFourMUBs.Step2.SOS.Canonical271
import NoFourMUBs.Step2.SOS.Canonical316
import NoFourMUBs.Step2.SOS.Canonical340
import NoFourMUBs.Step2.SOS.Canonical356
import NoFourMUBs.Step2.SOS.Canonical357
import NoFourMUBs.Step2.SOS.Canonical398
import NoFourMUBs.Step2.SOS.Canonical404
import NoFourMUBs.Step2.SOS.Canonical406
import NoFourMUBs.Step2.SOS.Canonical407
import NoFourMUBs.Step2.SOS.Canonical408
import NoFourMUBs.Step2.SOS.Canonical437
import NoFourMUBs.Step2.SOS.Canonical440
import NoFourMUBs.Step2.SOS.Canonical441
import NoFourMUBs.Step2.SOS.Canonical450
import NoFourMUBs.Step2.SOS.Canonical451
import NoFourMUBs.Step2.SOS.Canonical455
import NoFourMUBs.Step2.SOS.Canonical486
import NoFourMUBs.Step2.SOS.Canonical487
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions265
import NoFourMUBs.Step2.SOS.Reductions269
import NoFourMUBs.Step2.SOS.Reductions271
import NoFourMUBs.Step2.SOS.Reductions272
import NoFourMUBs.Step2.SOS.Reductions276
import NoFourMUBs.Step2.SOS.Reductions284
import NoFourMUBs.Step2.SOS.Reductions298
import NoFourMUBs.Step2.SOS.Reductions299
import NoFourMUBs.Step2.SOS.Reductions300
import NoFourMUBs.Step2.SOS.Reductions301
import NoFourMUBs.Step2.SOS.Reductions302
import NoFourMUBs.Step2.SOS.Reductions345
import NoFourMUBs.Step2.SOS.Reductions346
import NoFourMUBs.Step2.SOS.Reductions347
import NoFourMUBs.Step2.SOS.Reductions359
import NoFourMUBs.Step2.SOS.Reductions369
import NoFourMUBs.Step2.SOS.Reductions379
import NoFourMUBs.Step2.SOS.Reductions381
import NoFourMUBs.Step2.SOS.Reductions382
import NoFourMUBs.Step2.SOS.Reductions385

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput232 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 1, 0, 0], ![0, -1, 0, 1], ![1, -1, 0, 0], ![0, 0, 2, -2], ![0, 0, -3, 3], ![1, 1, 1, -3]]

theorem rowSound232 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 232) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row232 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row232 H]
  have hshape : boundaryInput232 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput232 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 36, 1440, 1440, 72, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput232 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9103, reductionProjection11053, reductionProjection11115, reductionProjection11077, reductionProjection11055, reductionProjection12335] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput232 (0 : Fin 6)) = canonicalInput10501.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput232 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9103 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput232 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9103 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10501 hH))).trans (reductionSound9103 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput232 (1 : Fin 6)) = canonicalInput22840.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput232 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11053 (Normalization.momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst boundaryInput232 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11053 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22840 hH))).trans (reductionSound11053 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput232 (2 : Fin 6)) = canonicalInput22870.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput232 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11115 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput232 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11115 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22870 hH))).trans (reductionSound11115 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput232 (3 : Fin 6)) = canonicalInput22879.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput232 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11077 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput232 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11077 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22879 hH))).trans (reductionSound11077 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput232 (4 : Fin 6)) = canonicalInput22880.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput232 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11055 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput232 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11055 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22880 hH))).trans (reductionSound11055 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput232 (5 : Fin 6)) = canonicalInput22881.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput232 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12335 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput232 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12335 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22881 hH))).trans (reductionSound12335 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput232 (j : Fin 6)))
    288 1440 ![288, 36, 1440, 1440, 72, 288] ![-1440, -11520, -288, -288, -5760, -1440] (extendRow Arithmetic.row232) ![reductionProjection9103, reductionProjection11053, reductionProjection11115, reductionProjection11077, reductionProjection11055, reductionProjection12335]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput288 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 1, 2, -2], ![2, -2, 2, -2]]

theorem rowSound288 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 288) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row288 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row288 H]
  have hshape : boundaryInput288 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput288 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 720, 480, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput288 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9607, reductionProjection9607, reductionProjection9607, reductionProjection9623, oldProjection3265, reductionProjection12328] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput288 (0 : Fin 6)) = canonicalInput20231.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput288 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9607 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput288 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9607 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20231 hH))).trans (reductionSound9607 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput288 (1 : Fin 6)) = canonicalInput27969.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput288 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9607 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput288 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9607 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27969 hH))).trans (reductionSound9607 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput288 (2 : Fin 6)) = canonicalInput28192.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput288 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9607 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput288 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9607 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28192 hH))).trans (reductionSound9607 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput288 (3 : Fin 6)) = canonicalInput28244.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput288 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9623 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput288 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9623 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28244 hH))).trans (reductionSound9623 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput288 (4 : Fin 6)) = canonicalInput28258.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput288 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3265 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput288 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3265 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28258 hH))).trans (oldProjectionSound3265 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput288 (5 : Fin 6)) = canonicalInput28260.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput288 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12328 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput288 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12328 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28260 hH))).trans (reductionSound12328 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput288 (j : Fin 6)))
    1440 1440 ![720, 720, 720, 480, 1440, 288] ![-2880, -2880, -2880, -4320, -1440, -7200] (extendRow Arithmetic.row288) ![reductionProjection9607, reductionProjection9607, reductionProjection9607, reductionProjection9623, oldProjection3265, reductionProjection12328]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput299 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, 1, -2, 2], ![2, -2, 2, -2]]

theorem rowSound299 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 299) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row299 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row299 H]
  have hshape : boundaryInput299 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput299 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput299 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9596, reductionProjection9574, reductionProjection9574, reductionProjection9615, reductionProjection8694, reductionProjection12342] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput299 (0 : Fin 6)) = canonicalInput20269.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput299 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9596 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput299 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9596 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20269 hH))).trans (reductionSound9596 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput299 (1 : Fin 6)) = canonicalInput28000.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput299 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9574 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput299 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9574 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28000 hH))).trans (reductionSound9574 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput299 (2 : Fin 6)) = canonicalInput28808.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput299 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9574 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput299 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9574 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28808 hH))).trans (reductionSound9574 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput299 (3 : Fin 6)) = canonicalInput28875.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput299 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9615 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput299 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9615 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28875 hH))).trans (reductionSound9615 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput299 (4 : Fin 6)) = canonicalInput28888.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput299 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8694 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput299 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8694 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28888 hH))).trans (reductionSound8694 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput299 (5 : Fin 6)) = canonicalInput28892.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput299 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12342 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput299 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12342 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28892 hH))).trans (reductionSound12342 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput299 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-1440, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row299) ![reductionProjection9596, reductionProjection9574, reductionProjection9574, reductionProjection9615, reductionProjection8694, reductionProjection12342]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput300 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, 1, 2, -2], ![2, -2, -2, 2]]

theorem rowSound300 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 300) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row300 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row300 H]
  have hshape : boundaryInput300 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput300 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput300 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9563, reductionProjection9574, reductionProjection9574, reductionProjection9620, oldProjection3255, reductionProjection12324] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput300 (0 : Fin 6)) = canonicalInput20270.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput300 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9563 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput300 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9563 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20270 hH))).trans (reductionSound9563 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput300 (1 : Fin 6)) = canonicalInput28001.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput300 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9574 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput300 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9574 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28001 hH))).trans (reductionSound9574 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput300 (2 : Fin 6)) = canonicalInput28809.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput300 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9574 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput300 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9574 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28809 hH))).trans (reductionSound9574 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput300 (3 : Fin 6)) = canonicalInput28876.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput300 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9620 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput300 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9620 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28876 hH))).trans (reductionSound9620 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput300 (4 : Fin 6)) = canonicalInput28890.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput300 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3255 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput300 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3255 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28890 hH))).trans (oldProjectionSound3255 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput300 (5 : Fin 6)) = canonicalInput28893.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput300 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12324 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput300 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12324 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28893 hH))).trans (reductionSound12324 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput300 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-1440, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row300) ![reductionProjection9563, reductionProjection9574, reductionProjection9574, reductionProjection9620, oldProjection3255, reductionProjection12324]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput302 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, 1, -2, 2], ![1, -2, 3, -2]]

theorem rowSound302 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 302) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row302 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row302 H]
  have hshape : boundaryInput302 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput302 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput302 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8677, reductionProjection8620, reductionProjection8711, reductionProjection12324, reductionProjection8710, reductionProjection12207] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput302 (0 : Fin 6)) = canonicalInput20282.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput302 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8677 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput302 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8677 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20282 hH))).trans (reductionSound8677 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput302 (1 : Fin 6)) = canonicalInput28014.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput302 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8620 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput302 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8620 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28014 hH))).trans (reductionSound8620 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput302 (2 : Fin 6)) = canonicalInput28822.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput302 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8711 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput302 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8711 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28822 hH))).trans (reductionSound8711 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput302 (3 : Fin 6)) = canonicalInput29120.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput302 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12324 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput302 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12324 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29120 hH))).trans (reductionSound12324 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput302 (4 : Fin 6)) = canonicalInput29158.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput302 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8710 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput302 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8710 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29158 hH))).trans (reductionSound8710 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput302 (5 : Fin 6)) = canonicalInput29162.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput302 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12207 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput302 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12207 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29162 hH))).trans (reductionSound12207 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput302 (j : Fin 6)))
    1440 1440 ![1440, 1440, 288, 1440, 1440, 1440] ![-1440, -1440, -7200, -1440, -1440, -1440] (extendRow Arithmetic.row302) ![reductionProjection8677, reductionProjection8620, reductionProjection8711, reductionProjection12324, reductionProjection8710, reductionProjection12207]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput321 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, 2, -2, 1], ![0, 0, 4, -4]]

theorem rowSound321 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 321) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row321 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row321 H]
  have hshape : boundaryInput321 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput321 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput321 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8837, reductionProjection8856, reductionProjection12228, reductionProjection12339, reductionProjection9578, reductionProjection8839] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput321 (0 : Fin 6)) = canonicalInput17231.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput321 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8837 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput321 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8837 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17231 hH))).trans (reductionSound8837 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput321 (1 : Fin 6)) = canonicalInput25474.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput321 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8856 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput321 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8856 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25474 hH))).trans (reductionSound8856 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput321 (2 : Fin 6)) = canonicalInput25863.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput321 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12228 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput321 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12228 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25863 hH))).trans (reductionSound12228 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput321 (3 : Fin 6)) = canonicalInput25989.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput321 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12339 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput321 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12339 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25989 hH))).trans (reductionSound12339 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput321 (4 : Fin 6)) = canonicalInput25993.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput321 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9578 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput321 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9578 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25993 hH))).trans (reductionSound9578 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput321 (5 : Fin 6)) = canonicalInput25995.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput321 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8839 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput321 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8839 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25995 hH))).trans (reductionSound8839 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput321 (j : Fin 6)))
    720 1440 ![1440, 1440, 288, 1440, 1440, 1440] ![-720, -720, -3600, -720, -720, -720] (extendRow Arithmetic.row321) ![reductionProjection8837, reductionProjection8856, reductionProjection12228, reductionProjection12339, reductionProjection9578, reductionProjection8839]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput339 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, 1, -2, 2], ![0, 0, 4, -4]]

theorem rowSound339 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 339) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row339 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row339 H]
  have hshape : boundaryInput339 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput339 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput339 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11513, reductionProjection12137, reductionProjection12198, reductionProjection12321, reductionProjection8631, reductionProjection11826] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput339 (0 : Fin 6)) = canonicalInput17348.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput339 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11513 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput339 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11513 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17348 hH))).trans (reductionSound11513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput339 (1 : Fin 6)) = canonicalInput25521.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput339 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12137 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput339 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12137 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25521 hH))).trans (reductionSound12137 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput339 (2 : Fin 6)) = canonicalInput26111.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput339 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12198 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput339 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12198 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26111 hH))).trans (reductionSound12198 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput339 (3 : Fin 6)) = canonicalInput26125.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput339 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12321 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput339 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12321 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26125 hH))).trans (reductionSound12321 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput339 (4 : Fin 6)) = canonicalInput26128.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput339 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8631 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput339 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8631 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26128 hH))).trans (reductionSound8631 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput339 (5 : Fin 6)) = canonicalInput26129.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput339 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11826 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput339 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11826 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26129 hH))).trans (reductionSound11826 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput339 (j : Fin 6)))
    288 1440 ![288, 1440, 1440, 1440, 288, 1440] ![-1440, -288, -288, -288, -1440, -288] (extendRow Arithmetic.row339) ![reductionProjection11513, reductionProjection12137, reductionProjection12198, reductionProjection12321, reductionProjection8631, reductionProjection11826]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput357 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, -2, 1, -1], ![-1, 1, -3, 3]]

theorem rowSound357 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 357) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row357 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row357 H]
  have hshape : boundaryInput357 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput357 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput357 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9650, reductionProjection9650, reductionProjection9650, reductionProjection9682, reductionProjection12344, reductionProjection8480] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput357 (0 : Fin 6)) = canonicalInput21773.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput357 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9650 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput357 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9650 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21773 hH))).trans (reductionSound9650 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput357 (1 : Fin 6)) = canonicalInput31121.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput357 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9650 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput357 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9650 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31121 hH))).trans (reductionSound9650 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput357 (2 : Fin 6)) = canonicalInput31168.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput357 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9650 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput357 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9650 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31168 hH))).trans (reductionSound9650 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput357 (3 : Fin 6)) = canonicalInput31179.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput357 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9682 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput357 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9682 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31179 hH))).trans (reductionSound9682 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput357 (4 : Fin 6)) = canonicalInput31184.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput357 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12344 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput357 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12344 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31184 hH))).trans (reductionSound12344 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput357 (5 : Fin 6)) = canonicalInput31185.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput357 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8480 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput357 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8480 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31185 hH))).trans (reductionSound8480 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput357 (j : Fin 6)))
    288 1440 ![1440, 1440, 1440, 1440, 288, 1440] ![-288, -288, -288, -288, -1440, -288] (extendRow Arithmetic.row357) ![reductionProjection9650, reductionProjection9650, reductionProjection9650, reductionProjection9682, reductionProjection12344, reductionProjection8480]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

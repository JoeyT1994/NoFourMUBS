import NoFourMUBs.Step2.SOS.Canonical379
import NoFourMUBs.Step2.SOS.Canonical418
import NoFourMUBs.Step2.SOS.Canonical419
import NoFourMUBs.Step2.SOS.Canonical434
import NoFourMUBs.Step2.SOS.Canonical435
import NoFourMUBs.Step2.SOS.Canonical436
import NoFourMUBs.Step2.SOS.Canonical450
import NoFourMUBs.Step2.SOS.Canonical457
import NoFourMUBs.Step2.SOS.Canonical458
import NoFourMUBs.Step2.SOS.Canonical459
import NoFourMUBs.Step2.SOS.Canonical461
import NoFourMUBs.Step2.SOS.Canonical462
import NoFourMUBs.Step2.SOS.Canonical463
import NoFourMUBs.Step2.SOS.Canonical468
import NoFourMUBs.Step2.SOS.Canonical471
import NoFourMUBs.Step2.SOS.Canonical491
import NoFourMUBs.Step2.SOS.Canonical492
import NoFourMUBs.Step2.SOS.Canonical493
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections033
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.OldProjections041
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions249
import NoFourMUBs.Step2.SOS.Reductions269
import NoFourMUBs.Step2.SOS.Reductions286
import NoFourMUBs.Step2.SOS.Reductions288
import NoFourMUBs.Step2.SOS.Reductions292
import NoFourMUBs.Step2.SOS.Reductions309
import NoFourMUBs.Step2.SOS.Reductions310
import NoFourMUBs.Step2.SOS.Reductions324
import NoFourMUBs.Step2.SOS.Reductions325
import NoFourMUBs.Step2.SOS.Reductions334
import NoFourMUBs.Step2.SOS.Reductions342
import NoFourMUBs.Step2.SOS.Reductions343
import NoFourMUBs.Step2.SOS.Reductions344
import NoFourMUBs.Step2.SOS.Reductions357
import NoFourMUBs.Step2.SOS.Reductions358
import NoFourMUBs.Step2.SOS.Reductions359

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput387 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -2, 0], ![-1, -1, -1, 3], ![-1, 0, 3, -2]]

theorem rowSound387 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 387) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row387 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row387 H]
  have hshape : boundaryInput387 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput387 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput387 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection2519, reductionProjection11437, reductionProjection11014, reductionProjection10987, reductionProjection10714, reductionProjection11005] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput387 (0 : Fin 6)) = canonicalInput30200.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput387 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection2519 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput387 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection2519 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30200 hH))).trans (oldProjectionSound2519 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput387 (1 : Fin 6)) = canonicalInput31449.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput387 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11437 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput387 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11437 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31449 hH))).trans (reductionSound11437 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput387 (2 : Fin 6)) = canonicalInput31522.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput387 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11014 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput387 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11014 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31522 hH))).trans (reductionSound11014 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput387 (3 : Fin 6)) = canonicalInput31581.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput387 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10987 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput387 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10987 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31581 hH))).trans (reductionSound10987 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput387 (4 : Fin 6)) = canonicalInput31585.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput387 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10714 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput387 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10714 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31585 hH))).trans (reductionSound10714 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput387 (5 : Fin 6)) = canonicalInput31586.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput387 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11005 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput387 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11005 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31586 hH))).trans (reductionSound11005 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput387 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 720] ![-1440, -1440, -1440, -1440, -1440, -2880] (extendRow Arithmetic.row387) ![oldProjection2519, reductionProjection11437, reductionProjection11014, reductionProjection10987, reductionProjection10714, reductionProjection11005]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput508 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-1, -1, 1, 1], ![1, 1, 0, -2], ![-1, 2, -3, 2]]

theorem rowSound508 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 508) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row508 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row508 H]
  have hshape : boundaryInput508 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput508 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 360, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput508 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9926, reductionProjection9927, reductionProjection9928, reductionProjection9916, reductionProjection8639, reductionProjection11433] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput508 (0 : Fin 6)) = canonicalInput24302.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput508 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9926 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput508 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9926 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24302 hH))).trans (reductionSound9926 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput508 (1 : Fin 6)) = canonicalInput26757.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput508 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9927 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput508 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9927 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26757 hH))).trans (reductionSound9927 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput508 (2 : Fin 6)) = canonicalInput26849.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput508 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9928 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput508 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9928 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26849 hH))).trans (reductionSound9928 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput508 (3 : Fin 6)) = canonicalInput26862.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput508 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9916 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput508 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9916 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26862 hH))).trans (reductionSound9916 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput508 (4 : Fin 6)) = canonicalInput26863.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput508 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8639 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput508 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8639 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26863 hH))).trans (reductionSound8639 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput508 (5 : Fin 6)) = canonicalInput26864.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput508 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11433 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput508 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11433 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26864 hH))).trans (reductionSound11433 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput508 (j : Fin 6)))
    720 1440 ![1440, 360, 1440, 1440, 288, 1440] ![-720, -2880, -720, -720, -3600, -720] (extendRow Arithmetic.row508) ![reductionProjection9926, reductionProjection9927, reductionProjection9928, reductionProjection9916, reductionProjection8639, reductionProjection11433]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput890 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![-1, 0, 2, -1], ![1, 1, -2, 0]]

theorem rowSound890 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 890) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row890 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row890 H]
  have hshape : boundaryInput890 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput890 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 720, 720, 1440, 144] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput890 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection2065, reductionProjection9375, reductionProjection11465, reductionProjection11005, oldProjection3206, reductionProjection10980] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput890 (0 : Fin 6)) = canonicalInput30182.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput890 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection2065 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput890 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection2065 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30182 hH))).trans (oldProjectionSound2065 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput890 (1 : Fin 6)) = canonicalInput31428.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput890 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9375 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput890 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9375 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31428 hH))).trans (reductionSound9375 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput890 (2 : Fin 6)) = canonicalInput31504.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput890 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11465 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput890 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11465 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31504 hH))).trans (reductionSound11465 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput890 (3 : Fin 6)) = canonicalInput31529.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput890 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11005 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput890 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11005 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31529 hH))).trans (reductionSound11005 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput890 (4 : Fin 6)) = canonicalInput31531.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput890 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3206 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput890 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3206 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31531 hH))).trans (oldProjectionSound3206 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput890 (5 : Fin 6)) = canonicalInput31532.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput890 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10980 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput890 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10980 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31532 hH))).trans (reductionSound10980 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput890 (j : Fin 6)))
    288 1440 ![1440, 288, 720, 720, 1440, 144] ![-288, -1440, -576, -576, -288, -2880] (extendRow Arithmetic.row890) ![oldProjection2065, reductionProjection9375, reductionProjection11465, reductionProjection11005, oldProjection3206, reductionProjection10980]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1280 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-1, 1, 1, -1], ![-1, 2, -1, 0], ![1, -3, 1, 1]]

theorem rowSound1280 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1280) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1280 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1280 H]
  have hshape : boundaryInput1280 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1280 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![360, 1440, 720, 1440, 720, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1280 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10969, oldProjection2511, reductionProjection10966, oldProjection3353, reductionProjection10369, reductionProjection11484] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1280 (0 : Fin 6)) = canonicalInput27808.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1280 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10969 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1280 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10969 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27808 hH))).trans (reductionSound10969 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1280 (1 : Fin 6)) = canonicalInput28806.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1280 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection2511 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1280 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection2511 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28806 hH))).trans (oldProjectionSound2511 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1280 (2 : Fin 6)) = canonicalInput29293.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1280 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10966 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1280 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10966 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29293 hH))).trans (reductionSound10966 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1280 (3 : Fin 6)) = canonicalInput29313.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1280 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3353 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1280 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3353 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29313 hH))).trans (oldProjectionSound3353 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1280 (4 : Fin 6)) = canonicalInput29314.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1280 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10369 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1280 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10369 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29314 hH))).trans (reductionSound10369 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1280 (5 : Fin 6)) = canonicalInput29315.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1280 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11484 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1280 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11484 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29315 hH))).trans (reductionSound11484 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1280 (j : Fin 6)))
    720 1440 ![360, 1440, 720, 1440, 720, 720] ![-2880, -720, -1440, -720, -1440, -1440] (extendRow Arithmetic.row1280) ![reductionProjection10969, oldProjection2511, reductionProjection10966, oldProjection3353, reductionProjection10369, reductionProjection11484]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1308 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, 2, 0, -1], ![1, 0, 1, -2], ![-1, -2, 2, 1]]

theorem rowSound1308 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1308) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1308 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1308 H]
  have hshape : boundaryInput1308 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1308 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 1440, 1440, 720, 1440, 18] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1308 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10417, reductionProjection10413, reductionProjection10411, reductionProjection9231, oldProjection3077, reductionProjection11477] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1308 (0 : Fin 6)) = canonicalInput27864.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1308 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10417 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1308 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10417 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27864 hH))).trans (reductionSound10417 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1308 (1 : Fin 6)) = canonicalInput29385.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1308 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10413 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1308 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10413 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29385 hH))).trans (reductionSound10413 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1308 (2 : Fin 6)) = canonicalInput29573.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1308 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10411 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1308 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10411 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29573 hH))).trans (reductionSound10411 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1308 (3 : Fin 6)) = canonicalInput29650.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1308 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9231 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1308 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9231 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29650 hH))).trans (reductionSound9231 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1308 (4 : Fin 6)) = canonicalInput29651.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1308 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3077 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1308 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3077 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29651 hH))).trans (oldProjectionSound3077 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1308 (5 : Fin 6)) = canonicalInput29652.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1308 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11477 (Normalization.momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1308 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11477 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29652 hH))).trans (reductionSound11477 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1308 (j : Fin 6)))
    1440 1440 ![720, 1440, 1440, 720, 1440, 18] ![-2880, -1440, -1440, -2880, -1440, -115200] (extendRow Arithmetic.row1308) ![reductionProjection10417, reductionProjection10413, reductionProjection10411, reductionProjection9231, oldProjection3077, reductionProjection11477]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput385 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -1, -1], ![-1, -1, 3, -1], ![-1, 0, -2, 3]]

theorem rowSound385 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 385) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row385 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row385 H]
  have hshape : boundaryInput385 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput385 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 1440, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput385 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection2517, reductionProjection11011, reductionProjection11010, reductionProjection11009, reductionProjection11496, reductionProjection11028] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput385 (0 : Fin 6)) = canonicalInput30202.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput385 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection2517 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput385 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection2517 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30202 hH))).trans (oldProjectionSound2517 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput385 (1 : Fin 6)) = canonicalInput31451.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput385 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11011 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput385 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11011 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31451 hH))).trans (reductionSound11011 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput385 (2 : Fin 6)) = canonicalInput31524.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput385 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11010 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput385 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11010 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31524 hH))).trans (reductionSound11010 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput385 (3 : Fin 6)) = canonicalInput31587.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput385 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11009 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput385 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11009 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31587 hH))).trans (reductionSound11009 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput385 (4 : Fin 6)) = canonicalInput31590.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput385 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11496 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput385 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11496 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31590 hH))).trans (reductionSound11496 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput385 (5 : Fin 6)) = canonicalInput31591.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput385 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11028 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput385 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11028 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31591 hH))).trans (reductionSound11028 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput385 (j : Fin 6)))
    1440 1440 ![1440, 1440, 288, 1440, 720, 1440] ![-1440, -1440, -7200, -1440, -2880, -1440] (extendRow Arithmetic.row385) ![oldProjection2517, reductionProjection11011, reductionProjection11010, reductionProjection11009, reductionProjection11496, reductionProjection11028]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1161 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![1, 1, 0, -2], ![-1, 0, 3, -2]]

theorem rowSound1161 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1161) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1161 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1161 H]
  have hshape : boundaryInput1161 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1161 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 720, 1440, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1161 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11468, reductionProjection11493, reductionProjection11462, reductionProjection11009, reductionProjection11496, reductionProjection7986] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1161 (0 : Fin 6)) = canonicalInput27857.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1161 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11468 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1161 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11468 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27857 hH))).trans (reductionSound11468 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1161 (1 : Fin 6)) = canonicalInput29378.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1161 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11493 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1161 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11493 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29378 hH))).trans (reductionSound11493 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1161 (2 : Fin 6)) = canonicalInput29566.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1161 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11462 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1161 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11462 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29566 hH))).trans (reductionSound11462 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1161 (3 : Fin 6)) = canonicalInput29623.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1161 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11009 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1161 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11009 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29623 hH))).trans (reductionSound11009 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1161 (4 : Fin 6)) = canonicalInput29630.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1161 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11496 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1161 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11496 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29630 hH))).trans (reductionSound11496 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1161 (5 : Fin 6)) = canonicalInput29631.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1161 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7986 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1161 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7986 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29631 hH))).trans (reductionSound7986 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1161 (j : Fin 6)))
    1440 1440 ![1440, 1440, 720, 1440, 720, 1440] ![-1440, -1440, -2880, -1440, -2880, -1440] (extendRow Arithmetic.row1161) ![reductionProjection11468, reductionProjection11493, reductionProjection11462, reductionProjection11009, reductionProjection11496, reductionProjection7986]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1311 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 0, 2, -1], ![0, 3, -1, -2]]

theorem rowSound1311 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1311) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1311 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1311 H]
  have hshape : boundaryInput1311 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1311 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![144, 1440, 1440, 288, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1311 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11515, reductionProjection11514, reductionProjection11514, reductionProjection9167, oldProjection2999, reductionProjection11497] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1311 (0 : Fin 6)) = canonicalInput27930.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1311 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11515 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1311 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11515 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27930 hH))).trans (reductionSound11515 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1311 (1 : Fin 6)) = canonicalInput29982.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1311 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11514 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1311 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11514 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29982 hH))).trans (reductionSound11514 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1311 (2 : Fin 6)) = canonicalInput30002.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1311 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11514 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1311 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11514 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30002 hH))).trans (reductionSound11514 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1311 (3 : Fin 6)) = canonicalInput30010.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1311 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9167 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1311 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9167 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30010 hH))).trans (reductionSound9167 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1311 (4 : Fin 6)) = canonicalInput30012.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1311 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2999 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1311 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2999 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30012 hH))).trans (oldProjectionSound2999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1311 (5 : Fin 6)) = canonicalInput30013.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1311 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11497 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1311 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11497 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30013 hH))).trans (reductionSound11497 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1311 (j : Fin 6)))
    1440 1440 ![144, 1440, 1440, 288, 1440, 1440] ![-14400, -1440, -1440, -7200, -1440, -1440] (extendRow Arithmetic.row1311) ![reductionProjection11515, reductionProjection11514, reductionProjection11514, reductionProjection9167, oldProjection2999, reductionProjection11497]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

import NoFourMUBs.Step2.SOS.Canonical268
import NoFourMUBs.Step2.SOS.Canonical269
import NoFourMUBs.Step2.SOS.Canonical316
import NoFourMUBs.Step2.SOS.Canonical397
import NoFourMUBs.Step2.SOS.Canonical398
import NoFourMUBs.Step2.SOS.Canonical403
import NoFourMUBs.Step2.SOS.Canonical404
import NoFourMUBs.Step2.SOS.Canonical405
import NoFourMUBs.Step2.SOS.Canonical406
import NoFourMUBs.Step2.SOS.Canonical435
import NoFourMUBs.Step2.SOS.Canonical436
import NoFourMUBs.Step2.SOS.Canonical437
import NoFourMUBs.Step2.SOS.Canonical440
import NoFourMUBs.Step2.SOS.Canonical441
import NoFourMUBs.Step2.SOS.Canonical444
import NoFourMUBs.Step2.SOS.Canonical446
import NoFourMUBs.Step2.SOS.Canonical447
import NoFourMUBs.Step2.SOS.Canonical459
import NoFourMUBs.Step2.SOS.Canonical462
import NoFourMUBs.Step2.SOS.Canonical463
import NoFourMUBs.Step2.SOS.Canonical468
import NoFourMUBs.Step2.SOS.Canonical469
import NoFourMUBs.Step2.SOS.Canonical500
import NoFourMUBs.Step2.SOS.Canonical508
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions171
import NoFourMUBs.Step2.SOS.Reductions181
import NoFourMUBs.Step2.SOS.Reductions194
import NoFourMUBs.Step2.SOS.Reductions195
import NoFourMUBs.Step2.SOS.Reductions196
import NoFourMUBs.Step2.SOS.Reductions210
import NoFourMUBs.Step2.SOS.Reductions216
import NoFourMUBs.Step2.SOS.Reductions249
import NoFourMUBs.Step2.SOS.Reductions263
import NoFourMUBs.Step2.SOS.Reductions264
import NoFourMUBs.Step2.SOS.Reductions265
import NoFourMUBs.Step2.SOS.Reductions298
import NoFourMUBs.Step2.SOS.Reductions324
import NoFourMUBs.Step2.SOS.Reductions325
import NoFourMUBs.Step2.SOS.Reductions364
import NoFourMUBs.Step2.SOS.Reductions370
import NoFourMUBs.Step2.SOS.Reductions375
import NoFourMUBs.Step2.SOS.Reductions376

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput221 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 0, -1, 2], ![-1, 0, -1, 2], ![1, -1, 3, -3]]

theorem rowSound221 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 221) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row221 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row221 H]
  have hshape : boundaryInput221 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput221 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 720, 1440, 1440, 144] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput221 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection12003, reductionProjection12003, reductionProjection12006, reductionProjection11866, reductionProjection11866, reductionProjection5486] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput221 (0 : Fin 6)) = canonicalInput32006.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput221 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12003 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput221 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12003 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32006 hH))).trans (reductionSound12003 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput221 (1 : Fin 6)) = canonicalInput32522.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput221 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12003 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput221 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12003 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32522 hH))).trans (reductionSound12003 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput221 (2 : Fin 6)) = canonicalInput32560.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput221 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12006 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput221 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12006 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32560 hH))).trans (reductionSound12006 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput221 (3 : Fin 6)) = canonicalInput32571.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput221 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11866 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput221 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11866 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32571 hH))).trans (reductionSound11866 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput221 (4 : Fin 6)) = canonicalInput32572.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput221 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11866 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput221 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11866 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32572 hH))).trans (reductionSound11866 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput221 (5 : Fin 6)) = canonicalInput32573.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput221 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5486 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput221 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5486 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32573 hH))).trans (reductionSound5486 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput221 (j : Fin 6)))
    720 1440 ![720, 720, 720, 1440, 1440, 144] ![-1440, -1440, -1440, -720, -720, -7200] (extendRow Arithmetic.row221) ![reductionProjection12003, reductionProjection12003, reductionProjection12006, reductionProjection11866, reductionProjection11866, reductionProjection5486]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput885 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 0, 2, -1], ![-1, 1, -1, 1], ![0, 1, 1, -2]]

theorem rowSound885 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 885) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row885 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row885 H]
  have hshape : boundaryInput885 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput885 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 720, 720, 720, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput885 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection12020, reductionProjection12018, reductionProjection12018, oldProjection3208, reductionProjection12022, oldProjection3208] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput885 (0 : Fin 6)) = canonicalInput27933.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput885 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12020 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput885 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12020 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27933 hH))).trans (reductionSound12020 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput885 (1 : Fin 6)) = canonicalInput29985.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput885 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12018 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput885 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12018 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29985 hH))).trans (reductionSound12018 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput885 (2 : Fin 6)) = canonicalInput30005.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput885 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12018 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput885 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12018 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30005 hH))).trans (reductionSound12018 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput885 (3 : Fin 6)) = canonicalInput30019.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput885 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3208 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput885 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3208 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30019 hH))).trans (oldProjectionSound3208 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput885 (4 : Fin 6)) = canonicalInput30020.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput885 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12022 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput885 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12022 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30020 hH))).trans (reductionSound12022 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput885 (5 : Fin 6)) = canonicalInput30021.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput885 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3208 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput885 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3208 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30021 hH))).trans (oldProjectionSound3208 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput885 (j : Fin 6)))
    144 1440 ![1440, 720, 720, 720, 1440, 720] ![-144, -288, -288, -288, -144, -288] (extendRow Arithmetic.row885) ![reductionProjection12020, reductionProjection12018, reductionProjection12018, oldProjection3208, reductionProjection12022, oldProjection3208]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1305 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, 1, 1, -1], ![1, 1, 0, -2], ![-1, -2, 2, 1]]

theorem rowSound1305 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1305) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1305 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1305 H]
  have hshape : boundaryInput1305 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1305 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1305 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10383, reductionProjection10380, reductionProjection10377, oldProjection3067, reductionProjection11677, reductionProjection12008] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1305 (0 : Fin 6)) = canonicalInput27863.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1305 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10383 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1305 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10383 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27863 hH))).trans (reductionSound10383 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1305 (1 : Fin 6)) = canonicalInput29384.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1305 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10380 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1305 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10380 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29384 hH))).trans (reductionSound10380 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1305 (2 : Fin 6)) = canonicalInput29572.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1305 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10377 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1305 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10377 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29572 hH))).trans (reductionSound10377 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1305 (3 : Fin 6)) = canonicalInput29646.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1305 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3067 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1305 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3067 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29646 hH))).trans (oldProjectionSound3067 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1305 (4 : Fin 6)) = canonicalInput29648.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1305 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11677 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1305 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11677 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29648 hH))).trans (reductionSound11677 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1305 (5 : Fin 6)) = canonicalInput29649.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1305 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12008 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1305 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12008 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29649 hH))).trans (reductionSound12008 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1305 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 720] ![-1440, -1440, -1440, -1440, -1440, -2880] (extendRow Arithmetic.row1305) ![reductionProjection10383, reductionProjection10380, reductionProjection10377, oldProjection3067, reductionProjection11677, reductionProjection12008]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1310 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, 2, 0, -1], ![0, 1, 1, -2], ![-1, -2, 2, 1]]

theorem rowSound1310 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1310) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1310 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1310 H]
  have hshape : boundaryInput1310 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1310 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 1440, 720, 1440, 288, 72] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1310 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10415, reductionProjection10409, reductionProjection10408, reductionProjection7982, reductionProjection5801, reductionProjection12021] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1310 (0 : Fin 6)) = canonicalInput27942.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1310 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10415 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1310 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10415 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27942 hH))).trans (reductionSound10415 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1310 (1 : Fin 6)) = canonicalInput29994.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1310 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10409 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1310 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10409 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29994 hH))).trans (reductionSound10409 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1310 (2 : Fin 6)) = canonicalInput30032.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1310 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10408 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1310 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10408 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30032 hH))).trans (reductionSound10408 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1310 (3 : Fin 6)) = canonicalInput30058.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1310 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7982 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1310 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7982 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30058 hH))).trans (reductionSound7982 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1310 (4 : Fin 6)) = canonicalInput30059.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1310 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5801 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1310 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5801 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30059 hH))).trans (reductionSound5801 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1310 (5 : Fin 6)) = canonicalInput30060.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1310 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12021 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1310 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12021 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30060 hH))).trans (reductionSound12021 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1310 (j : Fin 6)))
    1440 1440 ![720, 1440, 720, 1440, 288, 72] ![-2880, -1440, -2880, -1440, -7200, -28800] (extendRow Arithmetic.row1310) ![reductionProjection10415, reductionProjection10409, reductionProjection10408, reductionProjection7982, reductionProjection5801, reductionProjection12021]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput84 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![2, -2, 3, -3]]

theorem rowSound84 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 84) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row84 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row84 H]
  have hshape : boundaryInput84 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput84 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![360, 360, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput84 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9537, reductionProjection9537, reductionProjection9538, reductionProjection9538, reductionProjection6927, reductionProjection12052] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput84 (0 : Fin 6)) = canonicalInput20247.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput84 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9537 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput84 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9537 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20247 hH))).trans (reductionSound9537 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput84 (1 : Fin 6)) = canonicalInput27984.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput84 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9537 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput84 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9537 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27984 hH))).trans (reductionSound9537 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput84 (2 : Fin 6)) = canonicalInput28209.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput84 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9538 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput84 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9538 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28209 hH))).trans (reductionSound9538 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput84 (3 : Fin 6)) = canonicalInput28428.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput84 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9538 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput84 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9538 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28428 hH))).trans (reductionSound9538 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput84 (4 : Fin 6)) = canonicalInput28445.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput84 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6927 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput84 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6927 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28445 hH))).trans (reductionSound6927 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput84 (5 : Fin 6)) = canonicalInput28451.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput84 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12052 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput84 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12052 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28451 hH))).trans (reductionSound12052 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput84 (j : Fin 6)))
    1440 1440 ![360, 360, 1440, 1440, 1440, 1440] ![-5760, -5760, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row84) ![reductionProjection9537, reductionProjection9537, reductionProjection9538, reductionProjection9538, reductionProjection6927, reductionProjection12052]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput90 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 0, -1, 2], ![0, 2, 3, -5]]

theorem rowSound90 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 90) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row90 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row90 H]
  have hshape : boundaryInput90 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput90 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 1440, 1440, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput90 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6285, reductionProjection6285, reductionProjection12044, reductionProjection12044, reductionProjection6274, reductionProjection8489] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput90 (0 : Fin 6)) = canonicalInput20256.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput90 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6285 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput90 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6285 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20256 hH))).trans (reductionSound6285 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput90 (1 : Fin 6)) = canonicalInput27989.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput90 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6285 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput90 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6285 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27989 hH))).trans (reductionSound6285 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput90 (2 : Fin 6)) = canonicalInput28225.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput90 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12044 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput90 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12044 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28225 hH))).trans (reductionSound12044 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput90 (3 : Fin 6)) = canonicalInput28590.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput90 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12044 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput90 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12044 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28590 hH))).trans (reductionSound12044 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput90 (4 : Fin 6)) = canonicalInput28617.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput90 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6274 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput90 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6274 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28617 hH))).trans (reductionSound6274 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput90 (5 : Fin 6)) = canonicalInput28625.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput90 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8489 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput90 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8489 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28625 hH))).trans (reductionSound8489 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput90 (j : Fin 6)))
    1440 1440 ![720, 720, 1440, 1440, 720, 1440] ![-2880, -2880, -1440, -1440, -2880, -1440] (extendRow Arithmetic.row90) ![reductionProjection6285, reductionProjection6285, reductionProjection12044, reductionProjection12044, reductionProjection6274, reductionProjection8489]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput95 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![2, -1, 3, -4]]

theorem rowSound95 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 95) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row95 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row95 H]
  have hshape : boundaryInput95 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput95 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 720, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput95 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8423, reductionProjection8429, reductionProjection8440, reductionProjection8462, reductionProjection6749, reductionProjection12045] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput95 (0 : Fin 6)) = canonicalInput17210.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput95 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8423 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput95 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8423 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17210 hH))).trans (reductionSound8423 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput95 (1 : Fin 6)) = canonicalInput25460.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput95 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8429 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput95 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8429 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25460 hH))).trans (reductionSound8429 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput95 (2 : Fin 6)) = canonicalInput25843.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput95 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8440 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput95 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8440 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25843 hH))).trans (reductionSound8440 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput95 (3 : Fin 6)) = canonicalInput25932.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput95 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8462 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput95 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8462 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25932 hH))).trans (reductionSound8462 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput95 (4 : Fin 6)) = canonicalInput25950.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput95 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6749 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput95 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6749 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25950 hH))).trans (reductionSound6749 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput95 (5 : Fin 6)) = canonicalInput25951.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput95 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12045 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput95 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12045 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25951 hH))).trans (reductionSound12045 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput95 (j : Fin 6)))
    1440 1440 ![1440, 720, 1440, 1440, 1440, 1440] ![-1440, -2880, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row95) ![reductionProjection8423, reductionProjection8429, reductionProjection8440, reductionProjection8462, reductionProjection6749, reductionProjection12045]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput99 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, 0, -1, 2], ![0, 2, 3, -5]]

theorem rowSound99 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 99) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row99 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row99 H]
  have hshape : boundaryInput99 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput99 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 720, 288, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput99 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6233, reductionProjection6254, reductionProjection12040, reductionProjection12044, reductionProjection6247, reductionProjection8464] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput99 (0 : Fin 6)) = canonicalInput17230.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput99 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6233 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput99 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6233 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17230 hH))).trans (reductionSound6233 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput99 (1 : Fin 6)) = canonicalInput25473.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput99 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6254 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput99 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6254 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25473 hH))).trans (reductionSound6254 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput99 (2 : Fin 6)) = canonicalInput25862.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput99 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12040 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput99 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12040 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25862 hH))).trans (reductionSound12040 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput99 (3 : Fin 6)) = canonicalInput25988.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput99 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12044 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput99 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12044 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25988 hH))).trans (reductionSound12044 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput99 (4 : Fin 6)) = canonicalInput25992.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput99 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6247 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput99 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6247 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25992 hH))).trans (reductionSound6247 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput99 (5 : Fin 6)) = canonicalInput25994.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput99 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8464 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput99 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8464 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25994 hH))).trans (reductionSound8464 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput99 (j : Fin 6)))
    1440 1440 ![1440, 720, 288, 1440, 1440, 1440] ![-1440, -2880, -7200, -1440, -1440, -1440] (extendRow Arithmetic.row99) ![reductionProjection6233, reductionProjection6254, reductionProjection12040, reductionProjection12044, reductionProjection6247, reductionProjection8464]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

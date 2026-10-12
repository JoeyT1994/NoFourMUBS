import NoFourMUBs.Step2.SOS.Canonical267
import NoFourMUBs.Step2.SOS.Canonical271
import NoFourMUBs.Step2.SOS.Canonical316
import NoFourMUBs.Step2.SOS.Canonical396
import NoFourMUBs.Step2.SOS.Canonical397
import NoFourMUBs.Step2.SOS.Canonical398
import NoFourMUBs.Step2.SOS.Canonical399
import NoFourMUBs.Step2.SOS.Canonical400
import NoFourMUBs.Step2.SOS.Canonical401
import NoFourMUBs.Step2.SOS.Canonical402
import NoFourMUBs.Step2.SOS.Canonical407
import NoFourMUBs.Step2.SOS.Canonical408
import NoFourMUBs.Step2.SOS.Canonical437
import NoFourMUBs.Step2.SOS.Canonical440
import NoFourMUBs.Step2.SOS.Canonical443
import NoFourMUBs.Step2.SOS.Canonical444
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions031
import NoFourMUBs.Step2.SOS.Reductions032
import NoFourMUBs.Step2.SOS.Reductions037
import NoFourMUBs.Step2.SOS.Reductions040
import NoFourMUBs.Step2.SOS.Reductions041
import NoFourMUBs.Step2.SOS.Reductions049
import NoFourMUBs.Step2.SOS.Reductions072
import NoFourMUBs.Step2.SOS.Reductions073
import NoFourMUBs.Step2.SOS.Reductions074
import NoFourMUBs.Step2.SOS.Reductions165
import NoFourMUBs.Step2.SOS.Reductions175
import NoFourMUBs.Step2.SOS.Reductions176
import NoFourMUBs.Step2.SOS.Reductions178
import NoFourMUBs.Step2.SOS.Reductions182
import NoFourMUBs.Step2.SOS.Reductions308
import NoFourMUBs.Step2.SOS.Reductions314
import NoFourMUBs.Step2.SOS.Reductions315
import NoFourMUBs.Step2.SOS.Reductions316
import NoFourMUBs.Step2.SOS.Reductions322
import NoFourMUBs.Step2.SOS.Reductions326
import NoFourMUBs.Step2.SOS.Reductions327

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput464 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 1, -1, 0], ![-1, 1, -2, 2], ![2, 1, 1, -4]]

theorem rowSound464 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 464) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row464 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row464 H]
  have hshape : boundaryInput464 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput464 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 1440, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput464 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection2336, reductionProjection2397, reductionProjection2397, reductionProjection2317, reductionProjection1021, reductionProjection10450] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput464 (0 : Fin 6)) = canonicalInput17124.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput464 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2336 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput464 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2336 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17124 hH))).trans (reductionSound2336 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput464 (1 : Fin 6)) = canonicalInput25411.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput464 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2397 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput464 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2397 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25411 hH))).trans (reductionSound2397 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput464 (2 : Fin 6)) = canonicalInput25692.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput464 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2397 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput464 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2397 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25692 hH))).trans (reductionSound2397 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput464 (3 : Fin 6)) = canonicalInput25712.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput464 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2317 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput464 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2317 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25712 hH))).trans (reductionSound2317 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput464 (4 : Fin 6)) = canonicalInput25716.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput464 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1021 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput464 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1021 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25716 hH))).trans (reductionSound1021 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput464 (5 : Fin 6)) = canonicalInput25717.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput464 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10450 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput464 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10450 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25717 hH))).trans (reductionSound10450 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput464 (j : Fin 6)))
    1440 1440 ![720, 1440, 1440, 1440, 288, 1440] ![-2880, -1440, -1440, -1440, -7200, -1440] (extendRow Arithmetic.row464) ![reductionProjection2336, reductionProjection2397, reductionProjection2397, reductionProjection2317, reductionProjection1021, reductionProjection10450]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput466 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, 1, -2, 2], ![1, 1, 2, -4]]

theorem rowSound466 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 466) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row466 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row466 H]
  have hshape : boundaryInput466 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput466 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput466 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10070, reductionProjection10083, reductionProjection10063, reductionProjection10134, reductionProjection1027, reductionProjection10452] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput466 (0 : Fin 6)) = canonicalInput17133.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput466 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10070 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput466 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10070 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17133 hH))).trans (reductionSound10070 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput466 (1 : Fin 6)) = canonicalInput25423.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput466 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10083 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput466 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10083 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25423 hH))).trans (reductionSound10083 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput466 (2 : Fin 6)) = canonicalInput25703.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput466 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10063 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput466 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10063 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25703 hH))).trans (reductionSound10063 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput466 (3 : Fin 6)) = canonicalInput25755.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput466 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10134 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput466 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10134 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25755 hH))).trans (reductionSound10134 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput466 (4 : Fin 6)) = canonicalInput25760.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput466 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1027 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput466 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1027 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25760 hH))).trans (reductionSound1027 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput466 (5 : Fin 6)) = canonicalInput25761.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput466 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10452 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput466 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10452 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25761 hH))).trans (reductionSound10452 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput466 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 720, 1440] ![-1440, -1440, -1440, -1440, -2880, -1440] (extendRow Arithmetic.row466) ![reductionProjection10070, reductionProjection10083, reductionProjection10063, reductionProjection10134, reductionProjection1027, reductionProjection10452]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput467 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 1, -2, 2], ![0, 1, 3, -4]]

theorem rowSound467 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 467) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row467 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row467 H]
  have hshape : boundaryInput467 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput467 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![72, 720, 1440, 1440, 144, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput467 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10334, reductionProjection10328, reductionProjection10449, reductionProjection10449, reductionProjection1029, reductionProjection9876] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput467 (0 : Fin 6)) = canonicalInput17347.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput467 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10334 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput467 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10334 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17347 hH))).trans (reductionSound10334 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput467 (1 : Fin 6)) = canonicalInput25520.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput467 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10328 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput467 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10328 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25520 hH))).trans (reductionSound10328 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput467 (2 : Fin 6)) = canonicalInput26110.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput467 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10449 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput467 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10449 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26110 hH))).trans (reductionSound10449 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput467 (3 : Fin 6)) = canonicalInput26124.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput467 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10449 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput467 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10449 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26124 hH))).trans (reductionSound10449 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput467 (4 : Fin 6)) = canonicalInput26126.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput467 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1029 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput467 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1029 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26126 hH))).trans (reductionSound1029 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput467 (5 : Fin 6)) = canonicalInput26127.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput467 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9876 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput467 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9876 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26127 hH))).trans (reductionSound9876 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput467 (j : Fin 6)))
    720 1440 ![72, 720, 1440, 1440, 144, 720] ![-14400, -1440, -720, -720, -7200, -1440] (extendRow Arithmetic.row467) ![reductionProjection10334, reductionProjection10328, reductionProjection10449, reductionProjection10449, reductionProjection1029, reductionProjection9876]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput160 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, -2, 1, 2], ![1, 1, 2, -4]]

theorem rowSound160 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 160) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row160 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row160 H]
  have hshape : boundaryInput160 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput160 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 288, 1440, 720, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput160 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5302, reductionProjection5302, oldProjection3052, reductionProjection10461, reductionProjection1195, reductionProjection10471] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput160 (0 : Fin 6)) = canonicalInput20251.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput160 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5302 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput160 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5302 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20251 hH))).trans (reductionSound5302 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput160 (1 : Fin 6)) = canonicalInput27986.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput160 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5302 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput160 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5302 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27986 hH))).trans (reductionSound5302 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput160 (2 : Fin 6)) = canonicalInput28212.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput160 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection3052 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput160 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection3052 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28212 hH))).trans (oldProjectionSound3052 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput160 (3 : Fin 6)) = canonicalInput28431.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput160 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10461 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput160 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10461 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28431 hH))).trans (reductionSound10461 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput160 (4 : Fin 6)) = canonicalInput28467.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput160 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1195 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput160 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1195 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28467 hH))).trans (reductionSound1195 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput160 (5 : Fin 6)) = canonicalInput28473.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput160 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10471 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput160 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10471 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28473 hH))).trans (reductionSound10471 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput160 (j : Fin 6)))
    1440 1440 ![720, 720, 288, 1440, 720, 288] ![-2880, -2880, -7200, -1440, -2880, -7200] (extendRow Arithmetic.row160) ![reductionProjection5302, reductionProjection5302, oldProjection3052, reductionProjection10461, reductionProjection1195, reductionProjection10471]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput161 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -2, 1, 2], ![2, 0, 2, -4]]

theorem rowSound161 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 161) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row161 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row161 H]
  have hshape : boundaryInput161 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput161 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput161 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5304, reductionProjection5304, reductionProjection5714, oldProjection3054, reductionProjection1193, reductionProjection10466] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput161 (0 : Fin 6)) = canonicalInput20239.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput161 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5304 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput161 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5304 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20239 hH))).trans (reductionSound5304 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput161 (1 : Fin 6)) = canonicalInput27979.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput161 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5304 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput161 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5304 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27979 hH))).trans (reductionSound5304 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput161 (2 : Fin 6)) = canonicalInput28203.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput161 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5714 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput161 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5714 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28203 hH))).trans (reductionSound5714 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput161 (3 : Fin 6)) = canonicalInput28376.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput161 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3054 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput161 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3054 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28376 hH))).trans (oldProjectionSound3054 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput161 (4 : Fin 6)) = canonicalInput28387.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput161 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1193 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput161 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1193 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28387 hH))).trans (reductionSound1193 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput161 (5 : Fin 6)) = canonicalInput28395.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput161 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10466 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput161 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10466 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28395 hH))).trans (reductionSound10466 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput161 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-1440, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row161) ![reductionProjection5304, reductionProjection5304, reductionProjection5714, oldProjection3054, reductionProjection1193, reductionProjection10466]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput192 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 0, 3, -2], ![2, 2, -1, -3]]

theorem rowSound192 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 192) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row192 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row192 H]
  have hshape : boundaryInput192 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput192 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 720, 720, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput192 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1285, reductionProjection1285, reductionProjection1317, reductionProjection1317, reductionProjection1299, reductionProjection10491] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput192 (0 : Fin 6)) = canonicalInput17096.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput192 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1285 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput192 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1285 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17096 hH))).trans (reductionSound1285 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput192 (1 : Fin 6)) = canonicalInput25387.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput192 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1285 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput192 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1285 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25387 hH))).trans (reductionSound1285 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput192 (2 : Fin 6)) = canonicalInput25568.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput192 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1317 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput192 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1317 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25568 hH))).trans (reductionSound1317 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput192 (3 : Fin 6)) = canonicalInput25604.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput192 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1317 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput192 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1317 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25604 hH))).trans (reductionSound1317 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput192 (4 : Fin 6)) = canonicalInput25607.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput192 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1299 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput192 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1299 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25607 hH))).trans (reductionSound1299 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput192 (5 : Fin 6)) = canonicalInput25609.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput192 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10491 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput192 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10491 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25609 hH))).trans (reductionSound10491 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput192 (j : Fin 6)))
    288 1440 ![1440, 1440, 720, 720, 1440, 288] ![-288, -288, -576, -576, -288, -1440] (extendRow Arithmetic.row192) ![reductionProjection1285, reductionProjection1285, reductionProjection1317, reductionProjection1317, reductionProjection1299, reductionProjection10491]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput294 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-1, -2, 2, 1], ![2, 0, 2, -4]]

theorem rowSound294 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 294) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row294 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row294 H]
  have hshape : boundaryInput294 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput294 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 720, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput294 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5633, reductionProjection5633, reductionProjection5845, reductionProjection5845, reductionProjection1570, reductionProjection10491] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput294 (0 : Fin 6)) = canonicalInput20238.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput294 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5633 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput294 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5633 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20238 hH))).trans (reductionSound5633 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput294 (1 : Fin 6)) = canonicalInput27978.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput294 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5633 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput294 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5633 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27978 hH))).trans (reductionSound5633 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput294 (2 : Fin 6)) = canonicalInput28202.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput294 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5845 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput294 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5845 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28202 hH))).trans (reductionSound5845 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput294 (3 : Fin 6)) = canonicalInput28375.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput294 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5845 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput294 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5845 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28375 hH))).trans (reductionSound5845 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput294 (4 : Fin 6)) = canonicalInput28384.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput294 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1570 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput294 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1570 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28384 hH))).trans (reductionSound1570 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput294 (5 : Fin 6)) = canonicalInput28386.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput294 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10491 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput294 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10491 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28386 hH))).trans (reductionSound10491 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput294 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 720, 288] ![-1440, -1440, -1440, -1440, -2880, -7200] (extendRow Arithmetic.row294) ![reductionProjection5633, reductionProjection5633, reductionProjection5845, reductionProjection5845, reductionProjection1570, reductionProjection10491]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput295 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, -2, 2, 1], ![1, 1, 2, -4]]

theorem rowSound295 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 295) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row295 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row295 H]
  have hshape : boundaryInput295 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput295 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput295 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5629, reductionProjection5629, reductionProjection5836, reductionProjection10479, reductionProjection1581, reductionProjection10486] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput295 (0 : Fin 6)) = canonicalInput20244.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput295 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5629 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput295 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5629 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20244 hH))).trans (reductionSound5629 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput295 (1 : Fin 6)) = canonicalInput27983.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput295 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5629 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput295 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5629 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27983 hH))).trans (reductionSound5629 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput295 (2 : Fin 6)) = canonicalInput28208.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput295 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5836 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput295 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5836 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28208 hH))).trans (reductionSound5836 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput295 (3 : Fin 6)) = canonicalInput28381.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput295 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10479 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput295 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10479 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28381 hH))).trans (reductionSound10479 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput295 (4 : Fin 6)) = canonicalInput28416.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput295 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1581 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput295 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1581 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28416 hH))).trans (reductionSound1581 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput295 (5 : Fin 6)) = canonicalInput28417.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput295 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10486 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput295 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10486 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28417 hH))).trans (reductionSound10486 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput295 (j : Fin 6)))
    1440 1440 ![288, 288, 1440, 1440, 1440, 1440] ![-7200, -7200, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row295) ![reductionProjection5629, reductionProjection5629, reductionProjection5836, reductionProjection10479, reductionProjection1581, reductionProjection10486]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

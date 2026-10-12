import NoFourMUBs.Step2.SOS.Canonical377
import NoFourMUBs.Step2.SOS.Canonical379
import NoFourMUBs.Step2.SOS.Canonical399
import NoFourMUBs.Step2.SOS.Canonical404
import NoFourMUBs.Step2.SOS.Canonical405
import NoFourMUBs.Step2.SOS.Canonical417
import NoFourMUBs.Step2.SOS.Canonical431
import NoFourMUBs.Step2.SOS.Canonical432
import NoFourMUBs.Step2.SOS.Canonical433
import NoFourMUBs.Step2.SOS.Canonical436
import NoFourMUBs.Step2.SOS.Canonical439
import NoFourMUBs.Step2.SOS.Canonical443
import NoFourMUBs.Step2.SOS.Canonical444
import NoFourMUBs.Step2.SOS.Canonical448
import NoFourMUBs.Step2.SOS.Canonical451
import NoFourMUBs.Step2.SOS.Canonical452
import NoFourMUBs.Step2.SOS.Canonical464
import NoFourMUBs.Step2.SOS.Canonical467
import NoFourMUBs.Step2.SOS.Canonical468
import NoFourMUBs.Step2.SOS.Canonical469
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions032
import NoFourMUBs.Step2.SOS.Reductions033
import NoFourMUBs.Step2.SOS.Reductions034
import NoFourMUBs.Step2.SOS.Reductions037
import NoFourMUBs.Step2.SOS.Reductions040
import NoFourMUBs.Step2.SOS.Reductions046
import NoFourMUBs.Step2.SOS.Reductions072
import NoFourMUBs.Step2.SOS.Reductions137
import NoFourMUBs.Step2.SOS.Reductions145
import NoFourMUBs.Step2.SOS.Reductions147
import NoFourMUBs.Step2.SOS.Reductions148
import NoFourMUBs.Step2.SOS.Reductions150
import NoFourMUBs.Step2.SOS.Reductions164
import NoFourMUBs.Step2.SOS.Reductions168
import NoFourMUBs.Step2.SOS.Reductions171
import NoFourMUBs.Step2.SOS.Reductions172
import NoFourMUBs.Step2.SOS.Reductions173
import NoFourMUBs.Step2.SOS.Reductions174
import NoFourMUBs.Step2.SOS.Reductions175
import NoFourMUBs.Step2.SOS.Reductions176
import NoFourMUBs.Step2.SOS.Reductions178

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput445 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-2, 0, -1, 3], ![1, 3, -2, -2]]

theorem rowSound445 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 445) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row445 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row445 H]
  have hshape : boundaryInput445 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput445 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput445 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4725, reductionProjection4725, reductionProjection4740, reductionProjection4743, reductionProjection2315, reductionProjection5565] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput445 (0 : Fin 6)) = canonicalInput24272.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput445 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4725 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput445 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4725 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24272 hH))).trans (reductionSound4725 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput445 (1 : Fin 6)) = canonicalInput26702.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput445 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4725 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput445 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4725 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26702 hH))).trans (reductionSound4725 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput445 (2 : Fin 6)) = canonicalInput26722.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput445 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4740 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput445 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4740 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26722 hH))).trans (reductionSound4740 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput445 (3 : Fin 6)) = canonicalInput26727.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput445 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4743 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput445 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4743 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26727 hH))).trans (reductionSound4743 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput445 (4 : Fin 6)) = canonicalInput26732.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput445 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2315 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput445 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2315 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26732 hH))).trans (reductionSound2315 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput445 (5 : Fin 6)) = canonicalInput26733.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput445 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5565 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput445 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5565 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26733 hH))).trans (reductionSound5565 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput445 (j : Fin 6)))
    1440 1440 ![288, 288, 1440, 1440, 1440, 288] ![-7200, -7200, -1440, -1440, -1440, -7200] (extendRow Arithmetic.row445) ![reductionProjection4725, reductionProjection4725, reductionProjection4740, reductionProjection4743, reductionProjection2315, reductionProjection5565]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput501 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, -1, 1, 1], ![-1, 0, 2, -1], ![2, 2, -1, -3]]

theorem rowSound501 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 501) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row501 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row501 H]
  have hshape : boundaryInput501 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput501 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 1440, 288, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput501 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1060, reductionProjection1097, reductionProjection1291, reductionProjection1051, reductionProjection1054, reductionProjection5562] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput501 (0 : Fin 6)) = canonicalInput24130.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput501 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1060 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput501 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1060 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24130 hH))).trans (reductionSound1060 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput501 (1 : Fin 6)) = canonicalInput25556.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput501 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1097 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput501 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1097 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25556 hH))).trans (reductionSound1097 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput501 (2 : Fin 6)) = canonicalInput25866.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput501 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1291 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput501 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1291 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25866 hH))).trans (reductionSound1291 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput501 (3 : Fin 6)) = canonicalInput25924.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput501 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1051 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput501 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1051 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25924 hH))).trans (reductionSound1051 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput501 (4 : Fin 6)) = canonicalInput25925.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput501 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1054 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput501 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1054 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25925 hH))).trans (reductionSound1054 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput501 (5 : Fin 6)) = canonicalInput25926.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput501 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5562 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput501 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5562 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25926 hH))).trans (reductionSound5562 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput501 (j : Fin 6)))
    1440 1440 ![1440, 288, 1440, 288, 1440, 1440] ![-1440, -7200, -1440, -7200, -1440, -1440] (extendRow Arithmetic.row501) ![reductionProjection1060, reductionProjection1097, reductionProjection1291, reductionProjection1051, reductionProjection1054, reductionProjection5562]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1225 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 1, 2, -1], ![2, -3, 1, 0]]

theorem rowSound1225 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1225) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1225 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1225 H]
  have hshape : boundaryInput1225 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1225 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![144, 144, 360, 360, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1225 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4644, reductionProjection4644, reductionProjection5550, reductionProjection5550, oldProjection2996, oldProjection3135] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1225 (0 : Fin 6)) = canonicalInput27649.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1225 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4644 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1225 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4644 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27649 hH))).trans (reductionSound4644 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1225 (1 : Fin 6)) = canonicalInput28151.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1225 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4644 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1225 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4644 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28151 hH))).trans (reductionSound4644 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1225 (2 : Fin 6)) = canonicalInput28394.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1225 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5550 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1225 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5550 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28394 hH))).trans (reductionSound5550 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1225 (3 : Fin 6)) = canonicalInput28438.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1225 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5550 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1225 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5550 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28438 hH))).trans (reductionSound5550 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1225 (4 : Fin 6)) = canonicalInput28449.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1225 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2996 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1225 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2996 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28449 hH))).trans (oldProjectionSound2996 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1225 (5 : Fin 6)) = canonicalInput28450.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1225 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3135 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1225 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3135 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28450 hH))).trans (oldProjectionSound3135 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1225 (j : Fin 6)))
    1440 1440 ![144, 144, 360, 360, 1440, 1440] ![-14400, -14400, -5760, -5760, -1440, -1440] (extendRow Arithmetic.row1225) ![reductionProjection4644, reductionProjection4644, reductionProjection5550, reductionProjection5550, oldProjection2996, oldProjection3135]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1314 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![0, -1, 2, -1], ![0, 1, 1, -2], ![-2, 2, -1, 1]]

theorem rowSound1314 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1314) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1314 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1314 H]
  have hshape : boundaryInput1314 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1314 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![180, 1440, 1440, 720, 144, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1314 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5258, reductionProjection5588, reductionProjection5588, oldProjection3042, oldProjection3040, reductionProjection1498] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1314 (0 : Fin 6)) = canonicalInput27934.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1314 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5258 (Normalization.momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1314 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5258 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27934 hH))).trans (reductionSound5258 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1314 (1 : Fin 6)) = canonicalInput29986.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1314 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5588 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1314 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5588 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29986 hH))).trans (reductionSound5588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1314 (2 : Fin 6)) = canonicalInput30006.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1314 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5588 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1314 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5588 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30006 hH))).trans (reductionSound5588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1314 (3 : Fin 6)) = canonicalInput30022.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1314 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3042 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1314 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3042 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30022 hH))).trans (oldProjectionSound3042 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1314 (4 : Fin 6)) = canonicalInput30023.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1314 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3040 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1314 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3040 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30023 hH))).trans (oldProjectionSound3040 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1314 (5 : Fin 6)) = canonicalInput30024.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1314 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1498 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1314 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1498 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30024 hH))).trans (reductionSound1498 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1314 (j : Fin 6)))
    360 1440 ![180, 1440, 1440, 720, 144, 720] ![-2880, -360, -360, -720, -3600, -720] (extendRow Arithmetic.row1314) ![reductionProjection5258, reductionProjection5588, reductionProjection5588, oldProjection3042, oldProjection3040, reductionProjection1498]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput373 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, -2, 0, 2], ![-2, 0, 3, -1], ![2, 1, -1, -2]]

theorem rowSound373 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 373) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row373 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row373 H]
  have hshape : boundaryInput373 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput373 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput373 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5503, reductionProjection4642, reductionProjection5609, reductionProjection5495, reductionProjection5490, reductionProjection5400] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput373 (0 : Fin 6)) = canonicalInput27717.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput373 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5503 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput373 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5503 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27717 hH))).trans (reductionSound5503 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput373 (1 : Fin 6)) = canonicalInput28710.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput373 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4642 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput373 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4642 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28710 hH))).trans (reductionSound4642 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput373 (2 : Fin 6)) = canonicalInput28919.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput373 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5609 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput373 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5609 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28919 hH))).trans (reductionSound5609 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput373 (3 : Fin 6)) = canonicalInput28968.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput373 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5495 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput373 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5495 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28968 hH))).trans (reductionSound5495 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput373 (4 : Fin 6)) = canonicalInput28969.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput373 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5490 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput373 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5490 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28969 hH))).trans (reductionSound5490 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput373 (5 : Fin 6)) = canonicalInput28970.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput373 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5400 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput373 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5400 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28970 hH))).trans (reductionSound5400 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput373 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 288] ![-1440, -1440, -1440, -1440, -1440, -7200] (extendRow Arithmetic.row373) ![reductionProjection5503, reductionProjection4642, reductionProjection5609, reductionProjection5495, reductionProjection5490, reductionProjection5400]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput375 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, 0, 2, -1], ![-1, -2, 1, 2], ![2, 1, -1, -2]]

theorem rowSound375 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 375) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row375 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row375 H]
  have hshape : boundaryInput375 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput375 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![360, 1440, 288, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput375 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5507, reductionProjection4828, reductionProjection5610, reductionProjection5499, reductionProjection4410, reductionProjection5405] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput375 (0 : Fin 6)) = canonicalInput27716.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput375 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5507 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput375 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5507 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27716 hH))).trans (reductionSound5507 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput375 (1 : Fin 6)) = canonicalInput28709.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput375 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4828 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput375 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4828 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28709 hH))).trans (reductionSound4828 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput375 (2 : Fin 6)) = canonicalInput28918.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput375 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5610 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput375 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5610 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28918 hH))).trans (reductionSound5610 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput375 (3 : Fin 6)) = canonicalInput28957.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput375 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5499 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput375 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5499 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28957 hH))).trans (reductionSound5499 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput375 (4 : Fin 6)) = canonicalInput28959.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput375 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4410 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput375 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4410 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28959 hH))).trans (reductionSound4410 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput375 (5 : Fin 6)) = canonicalInput28960.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput375 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5405 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput375 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5405 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28960 hH))).trans (reductionSound5405 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput375 (j : Fin 6)))
    720 1440 ![360, 1440, 288, 1440, 288, 1440] ![-2880, -720, -3600, -720, -3600, -720] (extendRow Arithmetic.row375) ![reductionProjection5507, reductionProjection4828, reductionProjection5610, reductionProjection5499, reductionProjection4410, reductionProjection5405]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1152 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![0, -1, 2, -1], ![1, 1, -1, -1], ![-2, -1, 1, 2]]

theorem rowSound1152 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1152) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1152 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1152 H]
  have hshape : boundaryInput1152 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1152 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1152 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5606, reductionProjection5612, reductionProjection5614, reductionProjection5526, reductionProjection5615, reductionProjection4415] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1152 (0 : Fin 6)) = canonicalInput27924.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1152 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5606 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1152 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5606 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27924 hH))).trans (reductionSound5606 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1152 (1 : Fin 6)) = canonicalInput29720.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1152 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5612 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1152 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5612 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29720 hH))).trans (reductionSound5612 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1152 (2 : Fin 6)) = canonicalInput29927.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1152 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5614 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1152 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5614 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29927 hH))).trans (reductionSound5614 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1152 (3 : Fin 6)) = canonicalInput29965.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1152 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5526 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1152 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5526 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29965 hH))).trans (reductionSound5526 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1152 (4 : Fin 6)) = canonicalInput29967.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1152 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5615 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1152 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5615 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29967 hH))).trans (reductionSound5615 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1152 (5 : Fin 6)) = canonicalInput29968.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1152 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4415 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1152 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4415 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29968 hH))).trans (reductionSound4415 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1152 (j : Fin 6)))
    720 1440 ![288, 288, 1440, 1440, 1440, 288] ![-3600, -3600, -720, -720, -720, -3600] (extendRow Arithmetic.row1152) ![reductionProjection5606, reductionProjection5612, reductionProjection5614, reductionProjection5526, reductionProjection5615, reductionProjection4415]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput123 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, -1, 1, 2], ![2, -1, 2, -3]]

theorem rowSound123 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 123) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row123 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row123 H]
  have hshape : boundaryInput123 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput123 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput123 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5644, reductionProjection5644, reductionProjection5703, reductionProjection5703, reductionProjection1198, reductionProjection5704] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput123 (0 : Fin 6)) = canonicalInput27645.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput123 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5644 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput123 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5644 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27645 hH))).trans (reductionSound5644 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput123 (1 : Fin 6)) = canonicalInput28147.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput123 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5644 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput123 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5644 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28147 hH))).trans (reductionSound5644 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput123 (2 : Fin 6)) = canonicalInput28390.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput123 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5703 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput123 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5703 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28390 hH))).trans (reductionSound5703 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput123 (3 : Fin 6)) = canonicalInput28434.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput123 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5703 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput123 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5703 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28434 hH))).trans (reductionSound5703 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput123 (4 : Fin 6)) = canonicalInput28442.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput123 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1198 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput123 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1198 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28442 hH))).trans (reductionSound1198 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput123 (5 : Fin 6)) = canonicalInput28443.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput123 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5704 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput123 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5704 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28443 hH))).trans (reductionSound5704 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput123 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 288] ![-1440, -1440, -1440, -1440, -1440, -7200] (extendRow Arithmetic.row123) ![reductionProjection5644, reductionProjection5644, reductionProjection5703, reductionProjection5703, reductionProjection1198, reductionProjection5704]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

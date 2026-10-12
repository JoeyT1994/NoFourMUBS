import NoFourMUBs.Step2.SOS.Canonical091
import NoFourMUBs.Step2.SOS.Canonical184
import NoFourMUBs.Step2.SOS.Canonical373
import NoFourMUBs.Step2.SOS.Canonical513
import NoFourMUBs.Step2.SOS.Canonical521
import NoFourMUBs.Step2.SOS.Canonical536
import NoFourMUBs.Step2.SOS.Canonical537
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.FourierRowInputs
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections020
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions005
import NoFourMUBs.Step2.SOS.Reductions007
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical249
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical283
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical316

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

theorem rowSound1 {H : CMatrix} (hH : IsHadamard H)
    (hF : ∀ π : Equiv.Perm Coord, g H (permuteCharge π alpha) = 0)
    (hFt : ∀ π : Equiv.Perm Coord, g H.transpose (permuteCharge π alpha) = 0) :
    Integer.Sparse.eval (Arithmetic.rows 1) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1 H]
  have hchildren : ∀ j : Fin 15,
      ((![216, 12960, 12960, 12960, 25920, 12960, 216, 3240, 2592, 12960, 6480, 6480, 3240, 25920, 12960] : Fin 15 → ℤ) j : ℝ) * (![((1 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 0)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 1)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 2)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 3)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 4)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 5)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 6)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 7)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 8)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 9)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 10)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 11)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 12)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 13)), ((5 : ℝ) / 18) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 14))] j) =
        Integer.Sparse.eval (![(Integer.Sparse.scale 1 oldProjection0), (Integer.Sparse.scale 5 oldProjection26), (Integer.Sparse.scale 5 oldProjection1323), (Integer.Sparse.scale 5 oldProjection46), (Integer.Sparse.scale 5 oldProjection1430), (Integer.Sparse.scale 5 oldProjection26), (Integer.Sparse.scale 5 oldProjection0), (Integer.Sparse.scale 5 oldProjection26), (Integer.Sparse.scale 5 oldProjection68), (Integer.Sparse.scale 5 oldProjection1323), (Integer.Sparse.scale 5 reductionProjection254), (Integer.Sparse.scale 5 reductionProjection254), (Integer.Sparse.scale 5 oldProjection1323), (Integer.Sparse.scale 5 oldProjection1430), (Integer.Sparse.scale 5 reductionProjection177)] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (groupedColumns fourierInput1 (EqualityPatterns.family4.label 0)) = OAI.MUB6.Certificate.PairSemantics.raw7982 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (1 : ℝ) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 0)) =
          Integer.Sparse.eval oldProjection0 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 1) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7982 hH))).trans (oldProjectionSound0 hH)
      change ((216 : ℤ) : ℝ) * (((1 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 0))) =
        Integer.Sparse.eval (Integer.Sparse.scale 1 oldProjection0) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (1 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput1 (EqualityPatterns.family4.label 1)) = OAI.MUB6.Certificate.PairSemantics.raw890 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (60 : ℝ) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 1)) =
          Integer.Sparse.eval oldProjection26 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (60 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 2) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical890 hH))).trans (oldProjectionSound26 hH)
      change ((12960 : ℤ) : ℝ) * (((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 1))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection26) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput1 (EqualityPatterns.family4.label 2)) = OAI.MUB6.Certificate.PairSemantics.raw10113 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (60 : ℝ) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 2)) =
          Integer.Sparse.eval oldProjection1323 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (60 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 2) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical10113 hH))).trans (oldProjectionSound1323 hH)
      change ((12960 : ℤ) : ℝ) * (((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 2))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection1323) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput1 (EqualityPatterns.family4.label 3)) = canonicalInput11790.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (60 : ℝ) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 3)) =
          Integer.Sparse.eval oldProjection46 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (60 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 2) ℤ => injectiveMoment H M) he).trans (canonicalSound11790 hH))).trans (oldProjectionSound46 hH)
      change ((12960 : ℤ) : ℝ) * (((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 3))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection46) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput1 (EqualityPatterns.family4.label 4)) = canonicalInput5846.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (480 : ℝ) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 4)) =
          Integer.Sparse.eval oldProjection1430 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound5846 hH))).trans (oldProjectionSound1430 hH)
      change ((25920 : ℤ) : ℝ) * (((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 4))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection1430) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput1 (EqualityPatterns.family4.label 5)) = canonicalInput34330.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (60 : ℝ) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 5)) =
          Integer.Sparse.eval oldProjection26 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (60 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 2) ℤ => injectiveMoment H M) he).trans (canonicalSound34330 hH))).trans (oldProjectionSound26 hH)
      change ((12960 : ℤ) : ℝ) * (((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 5))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection26) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput1 (EqualityPatterns.family4.label 6)) = OAI.MUB6.Certificate.PairSemantics.raw9056 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (1 : ℝ) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 6)) =
          Integer.Sparse.eval oldProjection0 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 2) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9056 hH))).trans (oldProjectionSound0 hH)
      change ((216 : ℤ) : ℝ) * (((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 6))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection0) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput1 (EqualityPatterns.family4.label 7)) = canonicalInput23900.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (60 : ℝ) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 7)) =
          Integer.Sparse.eval oldProjection26 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (60 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound23900 hH))).trans (oldProjectionSound26 hH)
      change ((3240 : ℤ) : ℝ) * (((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 7))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection26) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput1 (EqualityPatterns.family4.label 8)) = canonicalInput34413.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (12 : ℝ) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 8)) =
          Integer.Sparse.eval oldProjection68 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 2) ℤ => injectiveMoment H M) he).trans (canonicalSound34413 hH))).trans (oldProjectionSound68 hH)
      change ((2592 : ℤ) : ℝ) * (((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 8))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection68) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput1 (EqualityPatterns.family4.label 9)) = OAI.MUB6.Certificate.PairSemantics.raw10113 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (60 : ℝ) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 9)) =
          Integer.Sparse.eval oldProjection1323 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (60 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 2) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical10113 hH))).trans (oldProjectionSound1323 hH)
      change ((12960 : ℤ) : ℝ) * (((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 9))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection1323) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput1 (EqualityPatterns.family4.label 10)) = canonicalInput32834.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (120 : ℝ) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 10)) =
          Integer.Sparse.eval reductionProjection254 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound32834 hH))).trans (reductionSound254 hH)
      change ((6480 : ℤ) : ℝ) * (((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 10))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 reductionProjection254) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput1 (EqualityPatterns.family4.label 11)) = canonicalInput34418.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (120 : ℝ) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 11)) =
          Integer.Sparse.eval reductionProjection254 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound34418 hH))).trans (reductionSound254 hH)
      change ((6480 : ℤ) : ℝ) * (((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 11))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 reductionProjection254) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput1 (EqualityPatterns.family4.label 12)) = canonicalInput33372.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (60 : ℝ) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 12)) =
          Integer.Sparse.eval oldProjection1323 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (60 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound33372 hH))).trans (oldProjectionSound1323 hH)
      change ((3240 : ℤ) : ℝ) * (((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 12))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection1323) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput1 (EqualityPatterns.family4.label 13)) = canonicalInput32847.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (480 : ℝ) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 13)) =
          Integer.Sparse.eval oldProjection1430 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound32847 hH))).trans (oldProjectionSound1430 hH)
      change ((25920 : ℤ) : ℝ) * (((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 13))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection1430) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput1 (EqualityPatterns.family4.label 14)) = canonicalInput32839.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (720 : ℝ) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 14)) =
          Integer.Sparse.eval reductionProjection177 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32839 hH))).trans (reductionSound177 hH)
      change ((12960 : ℤ) : ℝ) * (((5 : ℝ) / 18) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 14))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 reductionProjection177) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
  exact projected_zero (Normalization.momentVector H) ![((1 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 0)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 1)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 2)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 3)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 4)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 5)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 6)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 7)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 8)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 9)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 10)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 11)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 12)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 13)), ((5 : ℝ) / 18) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 14))]
    1296 25920 ![216, 12960, 12960, 12960, 25920, 12960, 216, 3240, 2592, 12960, 6480, 6480, 3240, 25920, 12960] ![-155520, -2592, -2592, -2592, -1296, -2592, -155520, -10368, -12960, -2592, -5184, -5184, -10368, -1296, -2592] (extendRow Arithmetic.row1) ![(Integer.Sparse.scale 1 oldProjection0), (Integer.Sparse.scale 5 oldProjection26), (Integer.Sparse.scale 5 oldProjection1323), (Integer.Sparse.scale 5 oldProjection46), (Integer.Sparse.scale 5 oldProjection1430), (Integer.Sparse.scale 5 oldProjection26), (Integer.Sparse.scale 5 oldProjection0), (Integer.Sparse.scale 5 oldProjection26), (Integer.Sparse.scale 5 oldProjection68), (Integer.Sparse.scale 5 oldProjection1323), (Integer.Sparse.scale 5 reductionProjection254), (Integer.Sparse.scale 5 reductionProjection254), (Integer.Sparse.scale 5 oldProjection1323), (Integer.Sparse.scale 5 oldProjection1430), (Integer.Sparse.scale 5 reductionProjection177)]
    (by decide +kernel) (by decide +kernel) (fourierInputZero1 hH hF hFt)
    hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

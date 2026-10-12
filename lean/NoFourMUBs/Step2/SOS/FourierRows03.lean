import NoFourMUBs.Step2.SOS.Canonical013
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
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions005
import NoFourMUBs.Step2.SOS.Reductions007
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical249
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical283
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical316

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

theorem rowSound3 {H : CMatrix} (hH : IsHadamard H)
    (hF : ∀ π : Equiv.Perm Coord, g H (permuteCharge π alpha) = 0)
    (hFt : ∀ π : Equiv.Perm Coord, g H.transpose (permuteCharge π alpha) = 0) :
    Integer.Sparse.eval (Arithmetic.rows 3) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row3 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row3 H]
  have hchildren : ∀ j : Fin 15,
      ((![216, 216, 12960, 25920, 5184, 216, 216, 54, 25920, 12960, 5184, 5184, 3240, 5184, 1296] : Fin 15 → ℤ) j : ℝ) * (![((1 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 0)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 1)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 2)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 3)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 4)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 5)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 6)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 7)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 8)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 9)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 10)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 11)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 12)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 13)), ((5 : ℝ) / 18) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 14))] j) =
        Integer.Sparse.eval (![(Integer.Sparse.scale 1 oldProjection0), (Integer.Sparse.scale 5 oldProjection3), (Integer.Sparse.scale 5 oldProjection1323), (Integer.Sparse.scale 5 oldProjection296), (Integer.Sparse.scale 5 reductionProjection248), (Integer.Sparse.scale 5 oldProjection3), (Integer.Sparse.scale 5 oldProjection0), (Integer.Sparse.scale 5 oldProjection3), (Integer.Sparse.scale 5 oldProjection296), (Integer.Sparse.scale 5 oldProjection1323), (Integer.Sparse.scale 5 reductionProjection248), (Integer.Sparse.scale 5 reductionProjection248), (Integer.Sparse.scale 5 oldProjection1323), (Integer.Sparse.scale 5 reductionProjection248), (Integer.Sparse.scale 5 reductionProjection165)] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (groupedColumns fourierInput3 (EqualityPatterns.family4.label 0)) = OAI.MUB6.Certificate.PairSemantics.raw7982 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (1 : ℝ) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 0)) =
          Integer.Sparse.eval oldProjection0 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 1) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7982 hH))).trans (oldProjectionSound0 hH)
      change ((216 : ℤ) : ℝ) * (((1 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 0))) =
        Integer.Sparse.eval (Integer.Sparse.scale 1 oldProjection0) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (1 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput3 (EqualityPatterns.family4.label 1)) = canonicalInput855.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (1 : ℝ) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 1)) =
          Integer.Sparse.eval oldProjection3 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 2) ℤ => injectiveMoment H M) he).trans (canonicalSound855 hH))).trans (oldProjectionSound3 hH)
      change ((216 : ℤ) : ℝ) * (((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 1))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection3) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput3 (EqualityPatterns.family4.label 2)) = OAI.MUB6.Certificate.PairSemantics.raw10113 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (60 : ℝ) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 2)) =
          Integer.Sparse.eval oldProjection1323 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (60 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 2) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical10113 hH))).trans (oldProjectionSound1323 hH)
      change ((12960 : ℤ) : ℝ) * (((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 2))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection1323) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput3 (EqualityPatterns.family4.label 3)) = canonicalInput11792.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (120 : ℝ) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 3)) =
          Integer.Sparse.eval oldProjection296 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 2) ℤ => injectiveMoment H M) he).trans (canonicalSound11792 hH))).trans (oldProjectionSound296 hH)
      change ((25920 : ℤ) : ℝ) * (((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 3))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection296) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput3 (EqualityPatterns.family4.label 4)) = canonicalInput5848.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (96 : ℝ) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 4)) =
          Integer.Sparse.eval reductionProjection248 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound5848 hH))).trans (reductionSound248 hH)
      change ((5184 : ℤ) : ℝ) * (((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 4))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 reductionProjection248) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput3 (EqualityPatterns.family4.label 5)) = canonicalInput34328.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (1 : ℝ) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 5)) =
          Integer.Sparse.eval oldProjection3 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 2) ℤ => injectiveMoment H M) he).trans (canonicalSound34328 hH))).trans (oldProjectionSound3 hH)
      change ((216 : ℤ) : ℝ) * (((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 5))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection3) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput3 (EqualityPatterns.family4.label 6)) = OAI.MUB6.Certificate.PairSemantics.raw9056 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (1 : ℝ) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 6)) =
          Integer.Sparse.eval oldProjection0 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 2) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9056 hH))).trans (oldProjectionSound0 hH)
      change ((216 : ℤ) : ℝ) * (((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 6))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection0) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput3 (EqualityPatterns.family4.label 7)) = canonicalInput23902.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (1 : ℝ) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 7)) =
          Integer.Sparse.eval oldProjection3 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound23902 hH))).trans (oldProjectionSound3 hH)
      change ((54 : ℤ) : ℝ) * (((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 7))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection3) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput3 (EqualityPatterns.family4.label 8)) = canonicalInput34411.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (120 : ℝ) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 8)) =
          Integer.Sparse.eval oldProjection296 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 2) ℤ => injectiveMoment H M) he).trans (canonicalSound34411 hH))).trans (oldProjectionSound296 hH)
      change ((25920 : ℤ) : ℝ) * (((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 8))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection296) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput3 (EqualityPatterns.family4.label 9)) = OAI.MUB6.Certificate.PairSemantics.raw10113 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (60 : ℝ) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 9)) =
          Integer.Sparse.eval oldProjection1323 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (60 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 2) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical10113 hH))).trans (oldProjectionSound1323 hH)
      change ((12960 : ℤ) : ℝ) * (((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 9))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection1323) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput3 (EqualityPatterns.family4.label 10)) = canonicalInput32836.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (96 : ℝ) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 10)) =
          Integer.Sparse.eval reductionProjection248 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound32836 hH))).trans (reductionSound248 hH)
      change ((5184 : ℤ) : ℝ) * (((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 10))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 reductionProjection248) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput3 (EqualityPatterns.family4.label 11)) = canonicalInput34416.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (96 : ℝ) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 11)) =
          Integer.Sparse.eval reductionProjection248 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound34416 hH))).trans (reductionSound248 hH)
      change ((5184 : ℤ) : ℝ) * (((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 11))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 reductionProjection248) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput3 (EqualityPatterns.family4.label 12)) = canonicalInput33372.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (60 : ℝ) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 12)) =
          Integer.Sparse.eval oldProjection1323 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (60 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound33372 hH))).trans (oldProjectionSound1323 hH)
      change ((3240 : ℤ) : ℝ) * (((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 12))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection1323) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput3 (EqualityPatterns.family4.label 13)) = canonicalInput32849.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (96 : ℝ) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 13)) =
          Integer.Sparse.eval reductionProjection248 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound32849 hH))).trans (reductionSound248 hH)
      change ((5184 : ℤ) : ℝ) * (((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 13))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 reductionProjection248) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput3 (EqualityPatterns.family4.label 14)) = canonicalInput32841.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (72 : ℝ) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 14)) =
          Integer.Sparse.eval reductionProjection165 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32841 hH))).trans (reductionSound165 hH)
      change ((1296 : ℤ) : ℝ) * (((5 : ℝ) / 18) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 14))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 reductionProjection165) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
  exact projected_zero (Normalization.momentVector H) ![((1 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 0)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 1)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 2)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 3)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 4)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 5)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 6)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 7)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 8)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 9)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 10)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 11)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 12)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 13)), ((5 : ℝ) / 18) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 14))]
    2592 25920 ![216, 216, 12960, 25920, 5184, 216, 216, 54, 25920, 12960, 5184, 5184, 3240, 5184, 1296] ![-311040, -311040, -5184, -2592, -12960, -311040, -311040, -1244160, -2592, -5184, -12960, -12960, -20736, -12960, -51840] (extendRow Arithmetic.row3) ![(Integer.Sparse.scale 1 oldProjection0), (Integer.Sparse.scale 5 oldProjection3), (Integer.Sparse.scale 5 oldProjection1323), (Integer.Sparse.scale 5 oldProjection296), (Integer.Sparse.scale 5 reductionProjection248), (Integer.Sparse.scale 5 oldProjection3), (Integer.Sparse.scale 5 oldProjection0), (Integer.Sparse.scale 5 oldProjection3), (Integer.Sparse.scale 5 oldProjection296), (Integer.Sparse.scale 5 oldProjection1323), (Integer.Sparse.scale 5 reductionProjection248), (Integer.Sparse.scale 5 reductionProjection248), (Integer.Sparse.scale 5 oldProjection1323), (Integer.Sparse.scale 5 reductionProjection248), (Integer.Sparse.scale 5 reductionProjection165)]
    (by decide +kernel) (by decide +kernel) (fourierInputZero3 hH hF hFt)
    hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

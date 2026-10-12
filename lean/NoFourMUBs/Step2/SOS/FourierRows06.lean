import NoFourMUBs.Step2.SOS.Canonical291
import NoFourMUBs.Step2.SOS.Canonical381
import NoFourMUBs.Step2.SOS.Canonical513
import NoFourMUBs.Step2.SOS.Canonical521
import NoFourMUBs.Step2.SOS.Canonical530
import NoFourMUBs.Step2.SOS.Canonical536
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.FourierRowInputs
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections030
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions192
import NoFourMUBs.Step2.SOS.Reductions302
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical161
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical241
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical249
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical283
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical316

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

theorem rowSound6 {H : CMatrix} (hH : IsHadamard H)
    (hF : ∀ π : Equiv.Perm Coord, g H (permuteCharge π alpha) = 0)
    (hFt : ∀ π : Equiv.Perm Coord, g H.transpose (permuteCharge π alpha) = 0) :
    Integer.Sparse.eval (Arithmetic.rows 6) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row6 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row6 H]
  have hchildren : ∀ j : Fin 15,
      ((![216, 4320, 12960, 12960, 12960, 4320, 216, 1080, 12960, 12960, 12960, 12960, 3240, 12960, 4320] : Fin 15 → ℤ) j : ℝ) * (![((1 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 0)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 1)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 2)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 3)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 4)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 5)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 6)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 7)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 8)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 9)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 10)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 11)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 12)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 13)), ((5 : ℝ) / 18) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 14))] j) =
        Integer.Sparse.eval (![(Integer.Sparse.scale 1 oldProjection0), (Integer.Sparse.scale 5 oldProjection11), (Integer.Sparse.scale 5 oldProjection1323), (Integer.Sparse.scale 5 oldProjection65), (Integer.Sparse.scale 5 oldProjection2306), (Integer.Sparse.scale 5 oldProjection11), (Integer.Sparse.scale 5 oldProjection0), (Integer.Sparse.scale 5 oldProjection11), (Integer.Sparse.scale 5 oldProjection382), (Integer.Sparse.scale 5 oldProjection1323), (Integer.Sparse.scale 5 reductionProjection6146), (Integer.Sparse.scale 5 reductionProjection6146), (Integer.Sparse.scale 5 oldProjection1323), (Integer.Sparse.scale 5 oldProjection2306), (Integer.Sparse.scale 5 reductionProjection9683)] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (groupedColumns fourierInput6 (EqualityPatterns.family4.label 0)) = OAI.MUB6.Certificate.PairSemantics.raw7982 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (1 : ℝ) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 0)) =
          Integer.Sparse.eval oldProjection0 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 1) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7982 hH))).trans (oldProjectionSound0 hH)
      change ((216 : ℤ) : ℝ) * (((1 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 0))) =
        Integer.Sparse.eval (Integer.Sparse.scale 1 oldProjection0) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (1 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput6 (EqualityPatterns.family4.label 1)) = OAI.MUB6.Certificate.PairSemantics.raw5164 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (20 : ℝ) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 1)) =
          Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 2) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5164 hH))).trans (oldProjectionSound11 hH)
      change ((4320 : ℤ) : ℝ) * (((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 1))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection11) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput6 (EqualityPatterns.family4.label 2)) = OAI.MUB6.Certificate.PairSemantics.raw10113 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (60 : ℝ) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 2)) =
          Integer.Sparse.eval oldProjection1323 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (60 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 2) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical10113 hH))).trans (oldProjectionSound1323 hH)
      change ((12960 : ℤ) : ℝ) * (((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 2))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection1323) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput6 (EqualityPatterns.family4.label 3)) = OAI.MUB6.Certificate.PairSemantics.raw7741 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (60 : ℝ) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 3)) =
          Integer.Sparse.eval oldProjection65 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (60 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 2) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7741 hH))).trans (oldProjectionSound65 hH)
      change ((12960 : ℤ) : ℝ) * (((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 3))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection65) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput6 (EqualityPatterns.family4.label 4)) = canonicalInput18665.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (240 : ℝ) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 4)) =
          Integer.Sparse.eval oldProjection2306 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound18665 hH))).trans (oldProjectionSound2306 hH)
      change ((12960 : ℤ) : ℝ) * (((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 4))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection2306) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput6 (EqualityPatterns.family4.label 5)) = canonicalInput33950.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (20 : ℝ) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 5)) =
          Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 2) ℤ => injectiveMoment H M) he).trans (canonicalSound33950 hH))).trans (oldProjectionSound11 hH)
      change ((4320 : ℤ) : ℝ) * (((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 5))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection11) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput6 (EqualityPatterns.family4.label 6)) = OAI.MUB6.Certificate.PairSemantics.raw9056 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (1 : ℝ) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 6)) =
          Integer.Sparse.eval oldProjection0 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 2) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9056 hH))).trans (oldProjectionSound0 hH)
      change ((216 : ℤ) : ℝ) * (((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 6))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection0) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput6 (EqualityPatterns.family4.label 7)) = canonicalInput24401.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (20 : ℝ) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 7)) =
          Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound24401 hH))).trans (oldProjectionSound11 hH)
      change ((1080 : ℤ) : ℝ) * (((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 7))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection11) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput6 (EqualityPatterns.family4.label 8)) = canonicalInput34333.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (60 : ℝ) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 8)) =
          Integer.Sparse.eval oldProjection382 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (60 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 2) ℤ => injectiveMoment H M) he).trans (canonicalSound34333 hH))).trans (oldProjectionSound382 hH)
      change ((12960 : ℤ) : ℝ) * (((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 8))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection382) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput6 (EqualityPatterns.family4.label 9)) = OAI.MUB6.Certificate.PairSemantics.raw10113 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (60 : ℝ) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 9)) =
          Integer.Sparse.eval oldProjection1323 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (60 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 2) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical10113 hH))).trans (oldProjectionSound1323 hH)
      change ((12960 : ℤ) : ℝ) * (((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 9))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection1323) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput6 (EqualityPatterns.family4.label 10)) = canonicalInput32844.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (240 : ℝ) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 10)) =
          Integer.Sparse.eval reductionProjection6146 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound32844 hH))).trans (reductionSound6146 hH)
      change ((12960 : ℤ) : ℝ) * (((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 10))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 reductionProjection6146) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput6 (EqualityPatterns.family4.label 11)) = canonicalInput34352.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (240 : ℝ) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 11)) =
          Integer.Sparse.eval reductionProjection6146 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound34352 hH))).trans (reductionSound6146 hH)
      change ((12960 : ℤ) : ℝ) * (((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 11))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 reductionProjection6146) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput6 (EqualityPatterns.family4.label 12)) = canonicalInput33372.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (60 : ℝ) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 12)) =
          Integer.Sparse.eval oldProjection1323 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (60 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound33372 hH))).trans (oldProjectionSound1323 hH)
      change ((3240 : ℤ) : ℝ) * (((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 12))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection1323) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput6 (EqualityPatterns.family4.label 13)) = canonicalInput32877.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (240 : ℝ) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 13)) =
          Integer.Sparse.eval oldProjection2306 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound32877 hH))).trans (oldProjectionSound2306 hH)
      change ((12960 : ℤ) : ℝ) * (((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 13))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection2306) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput6 (EqualityPatterns.family4.label 14)) = canonicalInput32870.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (240 : ℝ) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 14)) =
          Integer.Sparse.eval reductionProjection9683 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32870 hH))).trans (reductionSound9683 hH)
      change ((4320 : ℤ) : ℝ) * (((5 : ℝ) / 18) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 14))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 reductionProjection9683) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
  exact projected_zero (Normalization.momentVector H) ![((1 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 0)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 1)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 2)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 3)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 4)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 5)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 6)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 7)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 8)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 9)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 10)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 11)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 12)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 13)), ((5 : ℝ) / 18) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 14))]
    1296 12960 ![216, 4320, 12960, 12960, 12960, 4320, 216, 1080, 12960, 12960, 12960, 12960, 3240, 12960, 4320] ![-77760, -3888, -1296, -1296, -1296, -3888, -77760, -15552, -1296, -1296, -1296, -1296, -5184, -1296, -3888] (extendRow Arithmetic.row6) ![(Integer.Sparse.scale 1 oldProjection0), (Integer.Sparse.scale 5 oldProjection11), (Integer.Sparse.scale 5 oldProjection1323), (Integer.Sparse.scale 5 oldProjection65), (Integer.Sparse.scale 5 oldProjection2306), (Integer.Sparse.scale 5 oldProjection11), (Integer.Sparse.scale 5 oldProjection0), (Integer.Sparse.scale 5 oldProjection11), (Integer.Sparse.scale 5 oldProjection382), (Integer.Sparse.scale 5 oldProjection1323), (Integer.Sparse.scale 5 reductionProjection6146), (Integer.Sparse.scale 5 reductionProjection6146), (Integer.Sparse.scale 5 oldProjection1323), (Integer.Sparse.scale 5 oldProjection2306), (Integer.Sparse.scale 5 reductionProjection9683)]
    (by decide +kernel) (by decide +kernel) (fourierInputZero6 hH hF hFt)
    hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

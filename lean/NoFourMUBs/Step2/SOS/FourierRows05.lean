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
import NoFourMUBs.Step2.SOS.OldProjections026
import NoFourMUBs.Step2.SOS.OldProjections030
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.PrimitiveRows
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical161
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical215
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical241
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical249
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical283
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical316

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

theorem rowSound5 {H : CMatrix} (hH : IsHadamard H)
    (hF : ∀ π : Equiv.Perm Coord, g H (permuteCharge π alpha) = 0)
    (hFt : ∀ π : Equiv.Perm Coord, g H.transpose (permuteCharge π alpha) = 0) :
    Integer.Sparse.eval (Arithmetic.rows 5) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row5 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row5 H]
  have hchildren : ∀ j : Fin 15,
      ((![216, 216, 12960, 12960, 12960, 216, 216, 54, 25920, 12960, 25920, 25920, 3240, 12960, 8640] : Fin 15 → ℤ) j : ℝ) * (![((1 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 0)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 1)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 2)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 3)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 4)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 5)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 6)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 7)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 8)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 9)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 10)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 11)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 12)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 13)), ((5 : ℝ) / 18) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 14))] j) =
        Integer.Sparse.eval (![(Integer.Sparse.scale 1 oldProjection0), (Integer.Sparse.scale 5 oldProjection4), (Integer.Sparse.scale 5 oldProjection1323), (Integer.Sparse.scale 5 oldProjection1323), (Integer.Sparse.scale 5 oldProjection2304), (Integer.Sparse.scale 5 oldProjection4), (Integer.Sparse.scale 5 oldProjection0), (Integer.Sparse.scale 5 oldProjection4), (Integer.Sparse.scale 5 oldProjection381), (Integer.Sparse.scale 5 oldProjection1323), (Integer.Sparse.scale 5 oldProjection1873), (Integer.Sparse.scale 5 oldProjection1873), (Integer.Sparse.scale 5 oldProjection1323), (Integer.Sparse.scale 5 oldProjection2304), (Integer.Sparse.scale 5 oldProjection3317)] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (groupedColumns fourierInput5 (EqualityPatterns.family4.label 0)) = OAI.MUB6.Certificate.PairSemantics.raw7982 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (1 : ℝ) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 0)) =
          Integer.Sparse.eval oldProjection0 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 1) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7982 hH))).trans (oldProjectionSound0 hH)
      change ((216 : ℤ) : ℝ) * (((1 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 0))) =
        Integer.Sparse.eval (Integer.Sparse.scale 1 oldProjection0) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (1 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput5 (EqualityPatterns.family4.label 1)) = OAI.MUB6.Certificate.PairSemantics.raw5163 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (1 : ℝ) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 1)) =
          Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 2) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5163 hH))).trans (oldProjectionSound4 hH)
      change ((216 : ℤ) : ℝ) * (((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 1))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection4) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput5 (EqualityPatterns.family4.label 2)) = OAI.MUB6.Certificate.PairSemantics.raw10113 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (60 : ℝ) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 2)) =
          Integer.Sparse.eval oldProjection1323 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (60 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 2) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical10113 hH))).trans (oldProjectionSound1323 hH)
      change ((12960 : ℤ) : ℝ) * (((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 2))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection1323) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput5 (EqualityPatterns.family4.label 3)) = OAI.MUB6.Certificate.PairSemantics.raw7739 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (60 : ℝ) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 3)) =
          Integer.Sparse.eval oldProjection1323 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (60 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 2) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7739 hH))).trans (oldProjectionSound1323 hH)
      change ((12960 : ℤ) : ℝ) * (((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 3))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection1323) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput5 (EqualityPatterns.family4.label 4)) = OAI.MUB6.Certificate.PairSemantics.raw6884 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (240 : ℝ) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 4)) =
          Integer.Sparse.eval oldProjection2304 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6884 hH))).trans (oldProjectionSound2304 hH)
      change ((12960 : ℤ) : ℝ) * (((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 4))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection2304) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput5 (EqualityPatterns.family4.label 5)) = canonicalInput33951.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (1 : ℝ) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 5)) =
          Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 2) ℤ => injectiveMoment H M) he).trans (canonicalSound33951 hH))).trans (oldProjectionSound4 hH)
      change ((216 : ℤ) : ℝ) * (((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 5))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection4) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput5 (EqualityPatterns.family4.label 6)) = OAI.MUB6.Certificate.PairSemantics.raw9056 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (1 : ℝ) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 6)) =
          Integer.Sparse.eval oldProjection0 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 2) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9056 hH))).trans (oldProjectionSound0 hH)
      change ((216 : ℤ) : ℝ) * (((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 6))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection0) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput5 (EqualityPatterns.family4.label 7)) = canonicalInput24400.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (1 : ℝ) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 7)) =
          Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound24400 hH))).trans (oldProjectionSound4 hH)
      change ((54 : ℤ) : ℝ) * (((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 7))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection4) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput5 (EqualityPatterns.family4.label 8)) = canonicalInput34334.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (120 : ℝ) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 8)) =
          Integer.Sparse.eval oldProjection381 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 2) ℤ => injectiveMoment H M) he).trans (canonicalSound34334 hH))).trans (oldProjectionSound381 hH)
      change ((25920 : ℤ) : ℝ) * (((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 8))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection381) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput5 (EqualityPatterns.family4.label 9)) = OAI.MUB6.Certificate.PairSemantics.raw10113 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (60 : ℝ) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 9)) =
          Integer.Sparse.eval oldProjection1323 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (60 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 2) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical10113 hH))).trans (oldProjectionSound1323 hH)
      change ((12960 : ℤ) : ℝ) * (((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 9))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection1323) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput5 (EqualityPatterns.family4.label 10)) = canonicalInput32843.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (480 : ℝ) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 10)) =
          Integer.Sparse.eval oldProjection1873 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound32843 hH))).trans (oldProjectionSound1873 hH)
      change ((25920 : ℤ) : ℝ) * (((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 10))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection1873) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput5 (EqualityPatterns.family4.label 11)) = canonicalInput34353.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (480 : ℝ) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 11)) =
          Integer.Sparse.eval oldProjection1873 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound34353 hH))).trans (oldProjectionSound1873 hH)
      change ((25920 : ℤ) : ℝ) * (((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 11))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection1873) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput5 (EqualityPatterns.family4.label 12)) = canonicalInput33372.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (60 : ℝ) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 12)) =
          Integer.Sparse.eval oldProjection1323 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (60 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound33372 hH))).trans (oldProjectionSound1323 hH)
      change ((3240 : ℤ) : ℝ) * (((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 12))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection1323) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput5 (EqualityPatterns.family4.label 13)) = canonicalInput32876.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (240 : ℝ) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 13)) =
          Integer.Sparse.eval oldProjection2304 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound32876 hH))).trans (oldProjectionSound2304 hH)
      change ((12960 : ℤ) : ℝ) * (((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 13))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection2304) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (groupedColumns fourierInput5 (EqualityPatterns.family4.label 14)) = canonicalInput32869.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (480 : ℝ) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 14)) =
          Integer.Sparse.eval oldProjection3317 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32869 hH))).trans (oldProjectionSound3317 hH)
      change ((8640 : ℤ) : ℝ) * (((5 : ℝ) / 18) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 14))) =
        Integer.Sparse.eval (Integer.Sparse.scale 5 oldProjection3317) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (5 : ℝ) * t) hh using 1 <;> norm_num <;> ring
  exact projected_zero (Normalization.momentVector H) ![((1 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 0)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 1)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 2)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 3)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 4)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 5)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 6)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 7)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 8)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 9)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 10)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 11)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 12)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 13)), ((5 : ℝ) / 18) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 14))]
    5184 25920 ![216, 216, 12960, 12960, 12960, 216, 216, 54, 25920, 12960, 25920, 25920, 3240, 12960, 8640] ![-622080, -622080, -10368, -10368, -10368, -622080, -622080, -2488320, -5184, -10368, -5184, -5184, -41472, -10368, -15552] (extendRow Arithmetic.row5) ![(Integer.Sparse.scale 1 oldProjection0), (Integer.Sparse.scale 5 oldProjection4), (Integer.Sparse.scale 5 oldProjection1323), (Integer.Sparse.scale 5 oldProjection1323), (Integer.Sparse.scale 5 oldProjection2304), (Integer.Sparse.scale 5 oldProjection4), (Integer.Sparse.scale 5 oldProjection0), (Integer.Sparse.scale 5 oldProjection4), (Integer.Sparse.scale 5 oldProjection381), (Integer.Sparse.scale 5 oldProjection1323), (Integer.Sparse.scale 5 oldProjection1873), (Integer.Sparse.scale 5 oldProjection1873), (Integer.Sparse.scale 5 oldProjection1323), (Integer.Sparse.scale 5 oldProjection2304), (Integer.Sparse.scale 5 oldProjection3317)]
    (by decide +kernel) (by decide +kernel) (fourierInputZero5 hH hF hFt)
    hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

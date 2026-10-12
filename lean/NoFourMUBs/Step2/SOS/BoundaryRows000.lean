import NoFourMUBs.Step2.SOS.Canonical170
import NoFourMUBs.Step2.SOS.Canonical291
import NoFourMUBs.Step2.SOS.Canonical356
import NoFourMUBs.Step2.SOS.Canonical381
import NoFourMUBs.Step2.SOS.Canonical412
import NoFourMUBs.Step2.SOS.Canonical413
import NoFourMUBs.Step2.SOS.Canonical414
import NoFourMUBs.Step2.SOS.Canonical470
import NoFourMUBs.Step2.SOS.Canonical498
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections020
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections026
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions000
import NoFourMUBs.Step2.SOS.Reductions004
import NoFourMUBs.Step2.SOS.Reductions007
import NoFourMUBs.Step2.SOS.Reductions008
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical268
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical269
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical270
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical313

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput47 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![-1, 1, 0], ![-1, 1, 0], ![0, -1, 1], ![0, -1, 1], ![0, -2, 2], ![3, 2, -5]]

theorem rowSound47 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 47) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row47 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row47 H]
  have hshape : boundaryInput47 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput47 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![24, 24, 96, 96, 96, 240] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput47 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection128, reductionProjection128, reductionProjection134, reductionProjection134, reductionProjection132, oldProjection1543] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput47 (0 : Fin 6)) = canonicalInput10885.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput47 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection128 (Normalization.momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst boundaryInput47 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection128 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10885 hH))).trans (reductionSound128 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput47 (1 : Fin 6)) = canonicalInput22811.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput47 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection128 (Normalization.momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst boundaryInput47 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection128 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound22811 hH))).trans (reductionSound128 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput47 (2 : Fin 6)) = canonicalInput22816.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput47 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection134 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput47 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection134 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound22816 hH))).trans (reductionSound134 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput47 (3 : Fin 6)) = canonicalInput22817.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput47 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection134 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput47 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection134 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound22817 hH))).trans (reductionSound134 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput47 (4 : Fin 6)) = canonicalInput22818.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput47 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection132 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput47 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection132 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound22818 hH))).trans (reductionSound132 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput47 (5 : Fin 6)) = canonicalInput22819.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput47 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection1543 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput47 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection1543 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound22819 hH))).trans (oldProjectionSound1543 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput47 (j : Fin 6)))
    480 480 ![24, 24, 96, 96, 96, 240] ![-9600, -9600, -2400, -2400, -2400, -960] (extendRow Arithmetic.row47) ![reductionProjection128, reductionProjection128, reductionProjection134, reductionProjection134, reductionProjection132, oldProjection1543]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput38 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![0, 1, -1], ![-2, -1, 3], ![3, 1, -4]]

theorem rowSound38 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 38) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row38 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row38 H]
  have hshape : boundaryInput38 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput38 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![96, 96, 96, 96, 96, 480] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput38 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection244, reductionProjection244, oldProjection1383, oldProjection1383, reductionProjection241, oldProjection1873] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput38 (0 : Fin 6)) = canonicalInput18643.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput38 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection244 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput38 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection244 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound18643 hH))).trans (reductionSound244 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput38 (1 : Fin 6)) = canonicalInput26384.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput38 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection244 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput38 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection244 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26384 hH))).trans (reductionSound244 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput38 (2 : Fin 6)) = canonicalInput26428.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput38 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection1383 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput38 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection1383 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26428 hH))).trans (oldProjectionSound1383 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput38 (3 : Fin 6)) = canonicalInput26477.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput38 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection1383 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput38 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection1383 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26477 hH))).trans (oldProjectionSound1383 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput38 (4 : Fin 6)) = canonicalInput26483.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput38 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection241 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput38 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection241 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26483 hH))).trans (reductionSound241 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput38 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8623 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput38 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection1873 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput38 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection1873 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8623 hH))).trans (oldProjectionSound1873 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput38 (j : Fin 6)))
    480 480 ![96, 96, 96, 96, 96, 480] ![-2400, -2400, -2400, -2400, -2400, -480] (extendRow Arithmetic.row38) ![reductionProjection244, reductionProjection244, oldProjection1383, oldProjection1383, reductionProjection241, oldProjection1873]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput40 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![0, -1, 1], ![0, -1, 1], ![1, 0, -1], ![1, 0, -1], ![-2, -1, 3], ![1, 3, -4]]

theorem rowSound40 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 40) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row40 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row40 H]
  have hshape : boundaryInput40 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput40 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![480, 480, 480, 480, 480, 240] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput40 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection247, reductionProjection247, oldProjection553, oldProjection553, reductionProjection245, oldProjection1878] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput40 (0 : Fin 6)) = canonicalInput18654.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput40 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection247 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput40 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection247 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound18654 hH))).trans (reductionSound247 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput40 (1 : Fin 6)) = canonicalInput26394.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput40 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection247 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput40 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection247 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26394 hH))).trans (reductionSound247 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput40 (2 : Fin 6)) = canonicalInput26475.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput40 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection553 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput40 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection553 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26475 hH))).trans (oldProjectionSound553 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput40 (3 : Fin 6)) = canonicalInput26540.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput40 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection553 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput40 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection553 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26540 hH))).trans (oldProjectionSound553 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput40 (4 : Fin 6)) = canonicalInput26542.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput40 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection245 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput40 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection245 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26542 hH))).trans (reductionSound245 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput40 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8668 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput40 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection1878 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput40 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection1878 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8668 hH))).trans (oldProjectionSound1878 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput40 (j : Fin 6)))
    480 480 ![480, 480, 480, 480, 480, 240] ![-480, -480, -480, -480, -480, -960] (extendRow Arithmetic.row40) ![reductionProjection247, reductionProjection247, oldProjection553, oldProjection553, reductionProjection245, oldProjection1878]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput52 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, 1, -1], ![0, 1, -1], ![1, -1, 0], ![1, -1, 0], ![1, 2, -3], ![-3, -1, 4]]

theorem rowSound52 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 52) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row52 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row52 H]
  have hshape : boundaryInput52 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput52 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![96, 96, 96, 96, 480, 96] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput52 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection320, oldProjection320, reductionProjection274, reductionProjection274, oldProjection1390, reductionProjection132] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput52 (0 : Fin 6)) = canonicalInput30090.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput52 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection320 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput52 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection320 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound30090 hH))).trans (oldProjectionSound320 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput52 (1 : Fin 6)) = canonicalInput31876.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput52 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection320 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput52 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection320 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31876 hH))).trans (oldProjectionSound320 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput52 (2 : Fin 6)) = canonicalInput31879.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput52 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection274 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput52 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection274 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31879 hH))).trans (reductionSound274 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput52 (3 : Fin 6)) = canonicalInput31882.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput52 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection274 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput52 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection274 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31882 hH))).trans (reductionSound274 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput52 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw10032 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput52 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection1390 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput52 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection1390 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical10032 hH))).trans (oldProjectionSound1390 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput52 (5 : Fin 6)) = canonicalInput31884.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput52 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection132 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput52 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection132 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31884 hH))).trans (reductionSound132 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput52 (j : Fin 6)))
    480 480 ![96, 96, 96, 96, 480, 96] ![-2400, -2400, -2400, -2400, -480, -2400] (extendRow Arithmetic.row52) ![oldProjection320, oldProjection320, reductionProjection274, reductionProjection274, oldProjection1390, reductionProjection132]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput55 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, 1, -1], ![1, -1, 0], ![1, -1, 0], ![1, 0, -1], ![0, 3, -3], ![-3, -1, 4]]

theorem rowSound55 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 55) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row55 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row55 H]
  have hshape : boundaryInput55 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput55 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![96, 96, 96, 96, 120, 96] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput55 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection324, reductionProjection276, reductionProjection276, reductionProjection277, oldProjection1391, reductionProjection137] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput55 (0 : Fin 6)) = canonicalInput30091.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput55 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection324 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput55 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection324 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound30091 hH))).trans (oldProjectionSound324 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput55 (1 : Fin 6)) = canonicalInput31887.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput55 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection276 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput55 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection276 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31887 hH))).trans (reductionSound276 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput55 (2 : Fin 6)) = canonicalInput31893.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput55 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection276 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput55 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection276 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31893 hH))).trans (reductionSound276 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput55 (3 : Fin 6)) = canonicalInput31897.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput55 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection277 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput55 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection277 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31897 hH))).trans (reductionSound277 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput55 (4 : Fin 6)) = canonicalInput31900.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((120 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput55 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection1391 (Normalization.momentVector H)
      have hh : (120 : ℝ) * injectiveMoment H (mergeFirst boundaryInput55 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection1391 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31900 hH))).trans (oldProjectionSound1391 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput55 (5 : Fin 6)) = canonicalInput31901.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput55 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection137 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput55 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection137 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31901 hH))).trans (reductionSound137 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput55 (j : Fin 6)))
    480 480 ![96, 96, 96, 96, 120, 96] ![-2400, -2400, -2400, -2400, -1920, -2400] (extendRow Arithmetic.row55) ![oldProjection324, reductionProjection276, reductionProjection276, reductionProjection277, oldProjection1391, reductionProjection137]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput56 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![-2, 3, -1], ![3, 1, -4]]

theorem rowSound56 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 56) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row56 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row56 H]
  have hshape : boundaryInput56 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput56 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![96, 96, 96, 96, 96, 240] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput56 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection269, reductionProjection269, reductionProjection269, reductionProjection269, reductionProjection263, oldProjection1888] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput56 (0 : Fin 6)) = canonicalInput18637.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput56 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection269 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput56 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection269 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound18637 hH))).trans (reductionSound269 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput56 (1 : Fin 6)) = canonicalInput26378.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput56 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection269 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput56 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection269 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26378 hH))).trans (reductionSound269 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput56 (2 : Fin 6)) = canonicalInput26422.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput56 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection269 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput56 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection269 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26422 hH))).trans (reductionSound269 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput56 (3 : Fin 6)) = canonicalInput26449.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput56 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection269 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput56 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection269 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26449 hH))).trans (reductionSound269 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput56 (4 : Fin 6)) = canonicalInput26458.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput56 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection263 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput56 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection263 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26458 hH))).trans (reductionSound263 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput56 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8583 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput56 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection1888 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput56 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection1888 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8583 hH))).trans (oldProjectionSound1888 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput56 (j : Fin 6)))
    480 480 ![96, 96, 96, 96, 96, 240] ![-2400, -2400, -2400, -2400, -2400, -960] (extendRow Arithmetic.row56) ![reductionProjection269, reductionProjection269, reductionProjection269, reductionProjection269, reductionProjection263, oldProjection1888]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput74 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![-3, 3, 0], ![3, 1, -4]]

theorem rowSound74 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 74) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row74 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row74 H]
  have hshape : boundaryInput74 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput74 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![96, 96, 96, 96, 96, 480] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput74 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection20, reductionProjection20, reductionProjection20, reductionProjection263, reductionProjection21, oldProjection1411] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput74 (0 : Fin 6)) = canonicalInput18640.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput74 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection20 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput74 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection20 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound18640 hH))).trans (reductionSound20 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput74 (1 : Fin 6)) = canonicalInput26381.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput74 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection20 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput74 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection20 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26381 hH))).trans (reductionSound20 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput74 (2 : Fin 6)) = canonicalInput26425.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput74 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection20 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput74 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection20 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26425 hH))).trans (reductionSound20 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput74 (3 : Fin 6)) = canonicalInput26458.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput74 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection263 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput74 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection263 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26458 hH))).trans (reductionSound263 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput74 (4 : Fin 6)) = canonicalInput26466.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput74 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection21 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput74 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection21 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26466 hH))).trans (reductionSound21 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput74 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8593 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput74 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection1411 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput74 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection1411 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8593 hH))).trans (oldProjectionSound1411 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput74 (j : Fin 6)))
    480 480 ![96, 96, 96, 96, 96, 480] ![-2400, -2400, -2400, -2400, -2400, -480] (extendRow Arithmetic.row74) ![reductionProjection20, reductionProjection20, reductionProjection20, reductionProjection263, reductionProjection21, oldProjection1411]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput932 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![1, 0, -1], ![2, 0, -2], ![-3, 4, -1]]

theorem rowSound932 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 932) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row932 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row932 H]
  have hshape : boundaryInput932 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput932 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![96, 96, 96, 480, 480, 480] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput932 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection272, reductionProjection272, reductionProjection272, oldProjection1388, oldProjection1387, oldProjection1410] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput932 (0 : Fin 6)) = canonicalInput24385.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput932 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection272 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput932 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection272 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound24385 hH))).trans (reductionSound272 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput932 (1 : Fin 6)) = canonicalInput26406.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput932 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection272 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput932 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection272 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26406 hH))).trans (reductionSound272 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput932 (2 : Fin 6)) = canonicalInput26440.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput932 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection272 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput932 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection272 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26440 hH))).trans (reductionSound272 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput932 (3 : Fin 6)) = canonicalInput26471.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput932 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection1388 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput932 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection1388 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26471 hH))).trans (oldProjectionSound1388 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput932 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8602 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput932 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection1387 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput932 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection1387 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8602 hH))).trans (oldProjectionSound1387 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput932 (5 : Fin 6)) = canonicalInput26472.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput932 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection1410 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput932 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection1410 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26472 hH))).trans (oldProjectionSound1410 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput932 (j : Fin 6)))
    480 480 ![96, 96, 96, 480, 480, 480] ![-2400, -2400, -2400, -480, -480, -480] (extendRow Arithmetic.row932) ![reductionProjection272, reductionProjection272, reductionProjection272, oldProjection1388, oldProjection1387, oldProjection1410]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

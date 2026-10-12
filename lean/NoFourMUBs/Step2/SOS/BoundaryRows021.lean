import NoFourMUBs.Step2.SOS.Canonical376
import NoFourMUBs.Step2.SOS.Canonical379
import NoFourMUBs.Step2.SOS.Canonical399
import NoFourMUBs.Step2.SOS.Canonical400
import NoFourMUBs.Step2.SOS.Canonical401
import NoFourMUBs.Step2.SOS.Canonical402
import NoFourMUBs.Step2.SOS.Canonical417
import NoFourMUBs.Step2.SOS.Canonical419
import NoFourMUBs.Step2.SOS.Canonical431
import NoFourMUBs.Step2.SOS.Canonical432
import NoFourMUBs.Step2.SOS.Canonical439
import NoFourMUBs.Step2.SOS.Canonical440
import NoFourMUBs.Step2.SOS.Canonical443
import NoFourMUBs.Step2.SOS.Canonical445
import NoFourMUBs.Step2.SOS.Canonical446
import NoFourMUBs.Step2.SOS.Canonical501
import NoFourMUBs.Step2.SOS.Canonical508
import NoFourMUBs.Step2.SOS.Canonical509
import NoFourMUBs.Step2.SOS.Canonical510
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions049
import NoFourMUBs.Step2.SOS.Reductions050
import NoFourMUBs.Step2.SOS.Reductions074
import NoFourMUBs.Step2.SOS.Reductions139
import NoFourMUBs.Step2.SOS.Reductions145
import NoFourMUBs.Step2.SOS.Reductions146
import NoFourMUBs.Step2.SOS.Reductions148
import NoFourMUBs.Step2.SOS.Reductions173
import NoFourMUBs.Step2.SOS.Reductions174
import NoFourMUBs.Step2.SOS.Reductions182
import NoFourMUBs.Step2.SOS.Reductions188
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical291

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput239 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, -1, 2, 1], ![1, 1, 2, -4]]

theorem rowSound239 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 239) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row239 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row239 H]
  have hshape : boundaryInput239 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput239 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput239 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5853, reductionProjection5853, reductionProjection5840, reductionProjection5836, oldProjection3052, reductionProjection5832] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput239 (0 : Fin 6)) = canonicalInput27644.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput239 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5853 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput239 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5853 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27644 hH))).trans (reductionSound5853 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput239 (1 : Fin 6)) = canonicalInput28146.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput239 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5853 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput239 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5853 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28146 hH))).trans (reductionSound5853 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput239 (2 : Fin 6)) = canonicalInput28358.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput239 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5840 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput239 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5840 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28358 hH))).trans (reductionSound5840 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput239 (3 : Fin 6)) = canonicalInput28410.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput239 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5836 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput239 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5836 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28410 hH))).trans (reductionSound5836 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput239 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9320 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput239 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3052 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput239 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3052 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9320 hH))).trans (oldProjectionSound3052 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput239 (5 : Fin 6)) = canonicalInput28413.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput239 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5832 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput239 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5832 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28413 hH))).trans (reductionSound5832 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput239 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 288, 1440] ![-1440, -1440, -1440, -1440, -7200, -1440] (extendRow Arithmetic.row239) ![reductionProjection5853, reductionProjection5853, reductionProjection5840, reductionProjection5836, oldProjection3052, reductionProjection5832]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput427 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![2, 1, -1, -2], ![-2, 1, 3, -2]]

theorem rowSound427 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 427) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row427 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row427 H]
  have hshape : boundaryInput427 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput427 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 1440, 288, 720, 360] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput427 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5559, reductionProjection5559, reductionProjection5598, reductionProjection5831, oldProjection3201, reductionProjection5550] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput427 (0 : Fin 6)) = canonicalInput24100.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput427 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5559 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput427 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5559 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24100 hH))).trans (reductionSound5559 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput427 (1 : Fin 6)) = canonicalInput25538.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput427 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5559 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput427 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5559 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25538 hH))).trans (reductionSound5559 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput427 (2 : Fin 6)) = canonicalInput25586.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput427 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5598 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput427 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5598 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25586 hH))).trans (reductionSound5598 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput427 (3 : Fin 6)) = canonicalInput25612.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput427 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5831 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput427 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5831 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25612 hH))).trans (reductionSound5831 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput427 (4 : Fin 6)) = canonicalInput25617.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput427 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3201 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput427 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3201 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25617 hH))).trans (oldProjectionSound3201 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput427 (5 : Fin 6)) = canonicalInput25618.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput427 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5550 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput427 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5550 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25618 hH))).trans (reductionSound5550 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput427 (j : Fin 6)))
    1440 1440 ![288, 288, 1440, 288, 720, 360] ![-7200, -7200, -1440, -7200, -2880, -5760] (extendRow Arithmetic.row427) ![reductionProjection5559, reductionProjection5559, reductionProjection5598, reductionProjection5831, oldProjection3201, reductionProjection5550]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput430 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-2, 1, -1, 2], ![2, 2, -2, -2]]

theorem rowSound430 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 430) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row430 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row430 H]
  have hshape : boundaryInput430 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput430 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput430 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1577, reductionProjection1587, reductionProjection1627, reductionProjection1627, reductionProjection1572, reductionProjection5826] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput430 (0 : Fin 6)) = canonicalInput24104.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput430 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1577 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput430 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1577 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24104 hH))).trans (reductionSound1577 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput430 (1 : Fin 6)) = canonicalInput25542.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput430 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1587 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput430 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1587 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25542 hH))).trans (reductionSound1587 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput430 (2 : Fin 6)) = canonicalInput25715.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput430 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1627 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput430 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1627 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25715 hH))).trans (reductionSound1627 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput430 (3 : Fin 6)) = canonicalInput25747.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput430 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1627 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput430 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1627 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25747 hH))).trans (reductionSound1627 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput430 (4 : Fin 6)) = canonicalInput25748.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput430 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1572 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput430 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1572 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25748 hH))).trans (reductionSound1572 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput430 (5 : Fin 6)) = canonicalInput25749.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput430 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5826 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput430 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5826 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25749 hH))).trans (reductionSound5826 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput430 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-1440, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row430) ![reductionProjection1577, reductionProjection1587, reductionProjection1627, reductionProjection1627, reductionProjection1572, reductionProjection5826]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput442 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 0, -1, 3], ![1, 3, -2, -2]]

theorem rowSound442 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 442) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row442 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row442 H]
  have hshape : boundaryInput442 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput442 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput442 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4737, reductionProjection4743, reductionProjection4743, reductionProjection4762, reductionProjection2387, reductionProjection5846] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput442 (0 : Fin 6)) = canonicalInput24293.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput442 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4737 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput442 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4737 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24293 hH))).trans (reductionSound4737 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput442 (1 : Fin 6)) = canonicalInput26727.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput442 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4743 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput442 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4743 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26727 hH))).trans (reductionSound4743 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput442 (2 : Fin 6)) = canonicalInput26824.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput442 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4743 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput442 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4743 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26824 hH))).trans (reductionSound4743 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput442 (3 : Fin 6)) = canonicalInput26829.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput442 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4762 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput442 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4762 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26829 hH))).trans (reductionSound4762 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput442 (4 : Fin 6)) = canonicalInput26832.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput442 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2387 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput442 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2387 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26832 hH))).trans (reductionSound2387 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput442 (5 : Fin 6)) = canonicalInput26833.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput442 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5846 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput442 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5846 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26833 hH))).trans (reductionSound5846 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput442 (j : Fin 6)))
    288 1440 ![1440, 1440, 1440, 1440, 720, 1440] ![-288, -288, -288, -288, -576, -288] (extendRow Arithmetic.row442) ![reductionProjection4737, reductionProjection4743, reductionProjection4743, reductionProjection4762, reductionProjection2387, reductionProjection5846]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1118 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 0, 2, -1], ![1, 2, 0, -3]]

theorem rowSound1118 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1118) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1118 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1118 H]
  have hshape : boundaryInput1118 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1118 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1118 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4665, reductionProjection4665, reductionProjection4640, oldProjection2995, oldProjection2999, reductionProjection5825] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1118 (0 : Fin 6)) = canonicalInput27672.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1118 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4665 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1118 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4665 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27672 hH))).trans (reductionSound4665 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1118 (1 : Fin 6)) = canonicalInput28170.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1118 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4665 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1118 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4665 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28170 hH))).trans (reductionSound4665 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1118 (2 : Fin 6)) = canonicalInput28505.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1118 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4640 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1118 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4640 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28505 hH))).trans (reductionSound4640 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1118 (3 : Fin 6)) = canonicalInput28562.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1118 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2995 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1118 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2995 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28562 hH))).trans (oldProjectionSound2995 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1118 (4 : Fin 6)) = canonicalInput28564.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1118 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2999 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1118 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2999 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28564 hH))).trans (oldProjectionSound2999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1118 (5 : Fin 6)) = canonicalInput28565.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1118 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5825 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1118 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5825 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28565 hH))).trans (reductionSound5825 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1118 (j : Fin 6)))
    72 1440 ![1440, 1440, 1440, 1440, 1440, 720] ![-72, -72, -72, -72, -72, -144] (extendRow Arithmetic.row1118) ![reductionProjection4665, reductionProjection4665, reductionProjection4640, oldProjection2995, oldProjection2999, reductionProjection5825]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1120 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, -1, 2, -1], ![1, 2, 0, -3]]

theorem rowSound1120 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1120) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1120 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1120 H]
  have hshape : boundaryInput1120 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1120 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![360, 360, 1440, 720, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1120 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4672, reductionProjection4672, reductionProjection4656, oldProjection3006, oldProjection3004, reductionProjection5847] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1120 (0 : Fin 6)) = canonicalInput27661.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1120 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4672 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1120 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4672 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27661 hH))).trans (reductionSound4672 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1120 (1 : Fin 6)) = canonicalInput28159.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1120 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4672 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1120 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4672 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28159 hH))).trans (reductionSound4672 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1120 (2 : Fin 6)) = canonicalInput28494.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1120 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4656 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1120 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4656 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28494 hH))).trans (reductionSound4656 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1120 (3 : Fin 6)) = canonicalInput28530.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1120 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3006 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1120 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3006 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28530 hH))).trans (oldProjectionSound3006 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1120 (4 : Fin 6)) = canonicalInput28533.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1120 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3004 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1120 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3004 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28533 hH))).trans (oldProjectionSound3004 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1120 (5 : Fin 6)) = canonicalInput28534.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1120 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5847 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1120 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5847 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28534 hH))).trans (reductionSound5847 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1120 (j : Fin 6)))
    1440 1440 ![360, 360, 1440, 720, 1440, 1440] ![-5760, -5760, -1440, -2880, -1440, -1440] (extendRow Arithmetic.row1120) ![reductionProjection4672, reductionProjection4672, reductionProjection4656, oldProjection3006, oldProjection3004, reductionProjection5847]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput840 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, -1, -1, 2], ![-2, -1, 3, 0]]

theorem rowSound840 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 840) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row840 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row840 H]
  have hshape : boundaryInput840 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput840 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 1440, 1440, 1440, 360] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput840 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection2977, oldProjection2977, reductionProjection4453, oldProjection2976, reductionProjection4474, reductionProjection6046] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput840 (0 : Fin 6)) = canonicalInput32090.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput840 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection2977 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput840 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection2977 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32090 hH))).trans (oldProjectionSound2977 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput840 (1 : Fin 6)) = canonicalInput32553.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput840 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection2977 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput840 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection2977 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32553 hH))).trans (oldProjectionSound2977 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput840 (2 : Fin 6)) = canonicalInput32622.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput840 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4453 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput840 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4453 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32622 hH))).trans (reductionSound4453 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput840 (3 : Fin 6)) = canonicalInput32664.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput840 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2976 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput840 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2976 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32664 hH))).trans (oldProjectionSound2976 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput840 (4 : Fin 6)) = canonicalInput32677.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput840 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4474 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput840 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4474 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32677 hH))).trans (reductionSound4474 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput840 (5 : Fin 6)) = canonicalInput32678.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput840 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6046 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput840 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6046 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32678 hH))).trans (reductionSound6046 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput840 (j : Fin 6)))
    1440 1440 ![288, 288, 1440, 1440, 1440, 360] ![-7200, -7200, -1440, -1440, -1440, -5760] (extendRow Arithmetic.row840) ![oldProjection2977, oldProjection2977, reductionProjection4453, oldProjection2976, reductionProjection4474, reductionProjection6046]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput841 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, 0, -1, 2], ![-1, -2, 3, 0]]

theorem rowSound841 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 841) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row841 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row841 H]
  have hshape : boundaryInput841 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput841 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 360, 720, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput841 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection2977, oldProjection2977, reductionProjection4455, oldProjection2979, reductionProjection4476, reductionProjection6045] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput841 (0 : Fin 6)) = canonicalInput32085.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput841 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection2977 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput841 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection2977 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32085 hH))).trans (oldProjectionSound2977 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput841 (1 : Fin 6)) = canonicalInput32550.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput841 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection2977 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput841 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection2977 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32550 hH))).trans (oldProjectionSound2977 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput841 (2 : Fin 6)) = canonicalInput32619.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput841 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4455 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput841 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4455 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32619 hH))).trans (reductionSound4455 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput841 (3 : Fin 6)) = canonicalInput32657.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput841 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2979 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput841 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2979 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32657 hH))).trans (oldProjectionSound2979 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput841 (4 : Fin 6)) = canonicalInput32673.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput841 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4476 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput841 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4476 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32673 hH))).trans (reductionSound4476 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput841 (5 : Fin 6)) = canonicalInput32674.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput841 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6045 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput841 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6045 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32674 hH))).trans (reductionSound6045 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput841 (j : Fin 6)))
    1440 1440 ![288, 288, 360, 720, 1440, 1440] ![-7200, -7200, -5760, -2880, -1440, -1440] (extendRow Arithmetic.row841) ![oldProjection2977, oldProjection2977, reductionProjection4455, oldProjection2979, reductionProjection4476, reductionProjection6045]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

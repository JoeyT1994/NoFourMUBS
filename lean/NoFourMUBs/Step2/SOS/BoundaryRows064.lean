import NoFourMUBs.Step2.SOS.Canonical291
import NoFourMUBs.Step2.SOS.Canonical380
import NoFourMUBs.Step2.SOS.Canonical381
import NoFourMUBs.Step2.SOS.Canonical412
import NoFourMUBs.Step2.SOS.Canonical413
import NoFourMUBs.Step2.SOS.Canonical414
import NoFourMUBs.Step2.SOS.Canonical415
import NoFourMUBs.Step2.SOS.Canonical416
import NoFourMUBs.Step2.SOS.Canonical472
import NoFourMUBs.Step2.SOS.Canonical485
import NoFourMUBs.Step2.SOS.Canonical513
import NoFourMUBs.Step2.SOS.Canonical514
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections009
import NoFourMUBs.Step2.SOS.OldProjections020
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections030
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions001
import NoFourMUBs.Step2.SOS.Reductions002
import NoFourMUBs.Step2.SOS.Reductions010
import NoFourMUBs.Step2.SOS.Reductions154
import NoFourMUBs.Step2.SOS.Reductions159
import NoFourMUBs.Step2.SOS.Reductions161
import NoFourMUBs.Step2.SOS.Reductions258
import NoFourMUBs.Step2.SOS.Reductions259
import NoFourMUBs.Step2.SOS.Reductions290
import NoFourMUBs.Step2.SOS.Reductions291
import NoFourMUBs.Step2.SOS.Reductions292
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical268

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput79 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![0, -1, 1], ![1, -1, 0], ![1, 0, -1], ![-1, -1, 2], ![2, -1, -1], ![-2, 4, -2]]

theorem rowSound79 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 79) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row79 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row79 H]
  have hshape : boundaryInput79 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput79 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![6, 480, 6, 6, 480, 480] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput79 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection65, oldProjection1532, oldProjection422, reductionProjection62, oldProjection1530, reductionProjection9321] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput79 (0 : Fin 6)) = canonicalInput18668.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput79 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection65 (Normalization.momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst boundaryInput79 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection65 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound18668 hH))).trans (reductionSound65 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput79 (1 : Fin 6)) = canonicalInput26539.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput79 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1532 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput79 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1532 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26539 hH))).trans (oldProjectionSound1532 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput79 (2 : Fin 6)) = canonicalInput26617.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput79 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection422 (Normalization.momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst boundaryInput79 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection422 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26617 hH))).trans (oldProjectionSound422 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput79 (3 : Fin 6)) = canonicalInput26632.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput79 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection62 (Normalization.momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst boundaryInput79 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection62 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26632 hH))).trans (reductionSound62 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput79 (4 : Fin 6)) = canonicalInput26636.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput79 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection1530 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput79 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection1530 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26636 hH))).trans (oldProjectionSound1530 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput79 (5 : Fin 6)) = canonicalInput26637.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput79 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9321 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput79 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9321 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26637 hH))).trans (reductionSound9321 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput79 (j : Fin 6)))
    240 480 ![6, 480, 6, 6, 480, 480] ![-19200, -240, -19200, -19200, -240, -240] (extendRow Arithmetic.row79) ![reductionProjection65, oldProjection1532, oldProjection422, reductionProjection62, oldProjection1530, reductionProjection9321]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput914 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![-2, 1, 1], ![2, 0, -2], ![0, 3, -3]]

theorem rowSound914 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 914) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row914 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row914 H]
  have hshape : boundaryInput914 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput914 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![480, 480, 480, 480, 240, 480] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput914 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8287, reductionProjection8287, reductionProjection8287, oldProjection2109, reductionProjection9342, oldProjection2118] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput914 (0 : Fin 6)) = canonicalInput24379.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput914 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8287 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput914 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8287 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound24379 hH))).trans (reductionSound8287 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput914 (1 : Fin 6)) = canonicalInput26400.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput914 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8287 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput914 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8287 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26400 hH))).trans (reductionSound8287 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput914 (2 : Fin 6)) = canonicalInput26434.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput914 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8287 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput914 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8287 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26434 hH))).trans (reductionSound8287 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput914 (3 : Fin 6)) = canonicalInput26441.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput914 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2109 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput914 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2109 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26441 hH))).trans (oldProjectionSound2109 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput914 (4 : Fin 6)) = canonicalInput26444.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput914 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9342 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput914 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9342 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26444 hH))).trans (reductionSound9342 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput914 (5 : Fin 6)) = canonicalInput26445.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput914 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2118 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput914 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2118 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26445 hH))).trans (oldProjectionSound2118 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput914 (j : Fin 6)))
    480 480 ![480, 480, 480, 480, 240, 480] ![-480, -480, -480, -480, -960, -480] (extendRow Arithmetic.row914) ![reductionProjection8287, reductionProjection8287, reductionProjection8287, oldProjection2109, reductionProjection9342, oldProjection2118]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput952 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![1, -1, 0], ![1, -1, 0], ![1, 0, -1], ![-2, 1, 1], ![-1, -1, 2], ![0, 3, -3]]

theorem rowSound952 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 952) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row952 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row952 H]
  have hshape : boundaryInput952 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput952 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![240, 240, 480, 96, 96, 120] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput952 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9318, reductionProjection9318, oldProjection1409, reductionProjection333, reductionProjection9308, oldProjection2099] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput952 (0 : Fin 6)) = canonicalInput32875.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput952 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9318 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput952 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9318 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound32875 hH))).trans (reductionSound9318 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput952 (1 : Fin 6)) = canonicalInput32922.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput952 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9318 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput952 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9318 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound32922 hH))).trans (reductionSound9318 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput952 (2 : Fin 6)) = canonicalInput32923.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput952 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection1409 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput952 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection1409 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound32923 hH))).trans (oldProjectionSound1409 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput952 (3 : Fin 6)) = canonicalInput32924.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput952 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection333 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput952 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection333 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound32924 hH))).trans (reductionSound333 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput952 (4 : Fin 6)) = canonicalInput32925.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput952 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9308 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput952 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9308 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound32925 hH))).trans (reductionSound9308 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput952 (5 : Fin 6)) = canonicalInput32926.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((120 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput952 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2099 (Normalization.momentVector H)
      have hh : (120 : ℝ) * injectiveMoment H (mergeFirst boundaryInput952 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2099 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound32926 hH))).trans (oldProjectionSound2099 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput952 (j : Fin 6)))
    480 480 ![240, 240, 480, 96, 96, 120] ![-960, -960, -480, -2400, -2400, -1920] (extendRow Arithmetic.row952) ![reductionProjection9318, reductionProjection9318, oldProjection1409, reductionProjection333, reductionProjection9308, oldProjection2099]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput22 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![-2, 1, 1], ![1, 4, -5]]

theorem rowSound22 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 22) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row22 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row22 H]
  have hshape : boundaryInput22 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput22 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![96, 96, 96, 6, 480, 96] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput22 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9345, reductionProjection9345, reductionProjection9345, reductionProjection9351, oldProjection2123, oldProjection2302] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput22 (0 : Fin 6)) = canonicalInput24384.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput22 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9345 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput22 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9345 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound24384 hH))).trans (reductionSound9345 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput22 (1 : Fin 6)) = canonicalInput26405.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput22 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9345 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput22 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9345 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26405 hH))).trans (reductionSound9345 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput22 (2 : Fin 6)) = canonicalInput26439.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput22 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9345 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput22 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9345 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26439 hH))).trans (reductionSound9345 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput22 (3 : Fin 6)) = canonicalInput26465.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput22 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9351 (Normalization.momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst boundaryInput22 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9351 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26465 hH))).trans (reductionSound9351 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput22 (4 : Fin 6)) = canonicalInput26469.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput22 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2123 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput22 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2123 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26469 hH))).trans (oldProjectionSound2123 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput22 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8594 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput22 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2302 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput22 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2302 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8594 hH))).trans (oldProjectionSound2302 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput22 (j : Fin 6)))
    480 480 ![96, 96, 96, 6, 480, 96] ![-2400, -2400, -2400, -38400, -480, -2400] (extendRow Arithmetic.row22) ![reductionProjection9345, reductionProjection9345, reductionProjection9345, reductionProjection9351, oldProjection2123, oldProjection2302]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput35 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![1, 0, -1], ![-2, 1, 1], ![0, 3, -3], ![1, -3, 2]]

theorem rowSound35 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 35) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row35 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row35 H]
  have hshape : boundaryInput35 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput35 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![48, 96, 480, 480, 480, 96] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput35 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9337, oldProjection696, reductionProjection9336, reductionProjection8304, reductionProjection9346, reductionProjection9335] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput35 (0 : Fin 6)) = canonicalInput24411.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput35 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9337 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput35 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9337 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound24411 hH))).trans (reductionSound9337 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput35 (1 : Fin 6)) = canonicalInput26552.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput35 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection696 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput35 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection696 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26552 hH))).trans (oldProjectionSound696 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput35 (2 : Fin 6)) = canonicalInput26574.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput35 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9336 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput35 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9336 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26574 hH))).trans (reductionSound9336 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput35 (3 : Fin 6)) = canonicalInput26595.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput35 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8304 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput35 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8304 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26595 hH))).trans (reductionSound8304 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput35 (4 : Fin 6)) = canonicalInput26599.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput35 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9346 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput35 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9346 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26599 hH))).trans (reductionSound9346 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput35 (5 : Fin 6)) = canonicalInput26600.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput35 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9335 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput35 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9335 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26600 hH))).trans (reductionSound9335 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput35 (j : Fin 6)))
    480 480 ![48, 96, 480, 480, 480, 96] ![-4800, -2400, -480, -480, -480, -2400] (extendRow Arithmetic.row35) ![reductionProjection9337, oldProjection696, reductionProjection9336, reductionProjection8304, reductionProjection9346, reductionProjection9335]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput647 : Matrix (Fin 7) (Fin 5) ℤ := ![![0, 0, 0, -1, 1], ![0, 0, 0, 1, -1], ![0, 0, 1, -1, 0], ![0, 0, 1, 0, -1], ![-1, -1, 0, 1, 1], ![-1, 2, -1, -1, 1], ![2, -1, -1, 1, -1]]

theorem rowSound647 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 647) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row647 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row647 H]
  have hshape : boundaryInput647 0 = Pi.single (4 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput647 4 3 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![576, 1440, 2880, 1440, 2880, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput647 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4938, reductionProjection9363, reductionProjection5090, reductionProjection4939, reductionProjection9361, reductionProjection5182] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput647 (0 : Fin 6)) = canonicalInput30233.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput647 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4938 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput647 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4938 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound30233 hH))).trans (reductionSound4938 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput647 (1 : Fin 6)) = canonicalInput31065.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput647 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9363 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput647 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9363 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound31065 hH))).trans (reductionSound9363 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput647 (2 : Fin 6)) = canonicalInput31069.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput647 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5090 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput647 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5090 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound31069 hH))).trans (reductionSound5090 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput647 (3 : Fin 6)) = canonicalInput31073.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput647 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4939 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput647 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4939 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound31073 hH))).trans (reductionSound4939 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput647 (4 : Fin 6)) = canonicalInput31074.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput647 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9361 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput647 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9361 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound31074 hH))).trans (reductionSound9361 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput647 (5 : Fin 6)) = canonicalInput31075.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput647 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5182 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput647 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5182 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound31075 hH))).trans (reductionSound5182 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput647 (j : Fin 6)))
    576 2880 ![576, 1440, 2880, 1440, 2880, 2880] ![-2880, -1152, -576, -1152, -576, -576] (extendRow Arithmetic.row647) ![reductionProjection4938, reductionProjection9363, reductionProjection5090, reductionProjection4939, reductionProjection9361, reductionProjection5182]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput729 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![-1, 2, -1], ![-1, 2, -1], ![2, 0, -2]]

theorem rowSound729 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 729) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row729 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row729 H]
  have hshape : boundaryInput729 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput729 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![48, 48, 48, 480, 480, 240] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput729 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8305, reductionProjection8305, reductionProjection8305, oldProjection2142, oldProjection2142, reductionProjection9352] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput729 (0 : Fin 6)) = canonicalInput24381.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput729 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8305 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput729 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8305 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound24381 hH))).trans (reductionSound8305 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput729 (1 : Fin 6)) = canonicalInput26402.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput729 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8305 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput729 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8305 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26402 hH))).trans (reductionSound8305 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput729 (2 : Fin 6)) = canonicalInput26436.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput729 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8305 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput729 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8305 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26436 hH))).trans (reductionSound8305 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput729 (3 : Fin 6)) = canonicalInput26452.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput729 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2142 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput729 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2142 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26452 hH))).trans (oldProjectionSound2142 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput729 (4 : Fin 6)) = canonicalInput26453.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput729 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2142 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput729 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2142 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26453 hH))).trans (oldProjectionSound2142 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput729 (5 : Fin 6)) = canonicalInput26454.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput729 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9352 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput729 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9352 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26454 hH))).trans (reductionSound9352 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput729 (j : Fin 6)))
    60 480 ![48, 48, 48, 480, 480, 240] ![-600, -600, -600, -60, -60, -120] (extendRow Arithmetic.row729) ![reductionProjection8305, reductionProjection8305, reductionProjection8305, oldProjection2142, oldProjection2142, reductionProjection9352]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput731 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![-2, 1, 1], ![0, 2, -2], ![1, 1, -2]]

theorem rowSound731 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 731) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row731 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row731 H]
  have hshape : boundaryInput731 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput731 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![480, 480, 480, 240, 120, 96] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput731 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9347, reductionProjection9347, reductionProjection9348, oldProjection2130, oldProjection2305, oldProjection2301] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput731 (0 : Fin 6)) = canonicalInput24392.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput731 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9347 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput731 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9347 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound24392 hH))).trans (reductionSound9347 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput731 (1 : Fin 6)) = canonicalInput26413.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput731 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9347 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput731 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9347 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26413 hH))).trans (reductionSound9347 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput731 (2 : Fin 6)) = canonicalInput26499.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput731 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9348 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput731 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9348 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26499 hH))).trans (reductionSound9348 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput731 (3 : Fin 6)) = canonicalInput26511.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput731 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2130 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput731 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2130 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26511 hH))).trans (oldProjectionSound2130 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput731 (4 : Fin 6)) = canonicalInput26519.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((120 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput731 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2305 (Normalization.momentVector H)
      have hh : (120 : ℝ) * injectiveMoment H (mergeFirst boundaryInput731 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2305 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26519 hH))).trans (oldProjectionSound2305 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput731 (5 : Fin 6)) = canonicalInput26520.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput731 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2301 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput731 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2301 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26520 hH))).trans (oldProjectionSound2301 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput731 (j : Fin 6)))
    480 480 ![480, 480, 480, 240, 120, 96] ![-480, -480, -480, -960, -1920, -2400] (extendRow Arithmetic.row731) ![reductionProjection9347, reductionProjection9347, reductionProjection9348, oldProjection2130, oldProjection2305, oldProjection2301]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

import NoFourMUBs.Step2.SOS.Canonical108
import NoFourMUBs.Step2.SOS.Canonical110
import NoFourMUBs.Step2.SOS.Canonical247
import NoFourMUBs.Step2.SOS.Canonical248
import NoFourMUBs.Step2.SOS.Canonical321
import NoFourMUBs.Step2.SOS.Canonical322
import NoFourMUBs.Step2.SOS.Canonical329
import NoFourMUBs.Step2.SOS.Canonical331
import NoFourMUBs.Step2.SOS.Canonical332
import NoFourMUBs.Step2.SOS.Canonical387
import NoFourMUBs.Step2.SOS.Canonical390
import NoFourMUBs.Step2.SOS.Canonical392
import NoFourMUBs.Step2.SOS.Canonical393
import NoFourMUBs.Step2.SOS.Canonical394
import NoFourMUBs.Step2.SOS.Canonical395
import NoFourMUBs.Step2.SOS.Canonical438
import NoFourMUBs.Step2.SOS.Canonical441
import NoFourMUBs.Step2.SOS.Canonical443
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions061
import NoFourMUBs.Step2.SOS.Reductions062
import NoFourMUBs.Step2.SOS.Reductions063
import NoFourMUBs.Step2.SOS.Reductions064
import NoFourMUBs.Step2.SOS.Reductions065
import NoFourMUBs.Step2.SOS.Reductions066
import NoFourMUBs.Step2.SOS.Reductions067
import NoFourMUBs.Step2.SOS.Reductions068
import NoFourMUBs.Step2.SOS.Reductions101
import NoFourMUBs.Step2.SOS.Reductions117
import NoFourMUBs.Step2.SOS.Reductions118
import NoFourMUBs.Step2.SOS.Reductions119
import NoFourMUBs.Step2.SOS.Reductions156
import NoFourMUBs.Step2.SOS.Reductions178
import NoFourMUBs.Step2.SOS.Reductions218
import NoFourMUBs.Step2.SOS.Reductions220
import NoFourMUBs.Step2.SOS.Reductions222
import NoFourMUBs.Step2.SOS.Reductions225
import NoFourMUBs.Step2.SOS.Reductions248
import NoFourMUBs.Step2.SOS.Reductions254
import NoFourMUBs.Step2.SOS.Reductions313
import NoFourMUBs.Step2.SOS.Reductions318
import NoFourMUBs.Step2.SOS.Reductions337
import NoFourMUBs.Step2.SOS.Reductions382

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput629 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![0, -1, -1, 1, 1], ![2, 0, 0, -1, -1], ![-1, 2, 1, 1, -3]]

theorem rowSound629 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 629) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row629 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row629 H]
  have hshape : boundaryInput629 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput629 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 2880, 2880, 2880, 2880, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput629 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection2012, reductionProjection2020, reductionProjection2111, reductionProjection2006, reductionProjection12243, reductionProjection2174] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput629 (0 : Fin 6)) = canonicalInput15858.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput629 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2012 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput629 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2012 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15858 hH))).trans (reductionSound2012 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput629 (1 : Fin 6)) = canonicalInput24963.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput629 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2020 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput629 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2020 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24963 hH))).trans (reductionSound2020 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput629 (2 : Fin 6)) = canonicalInput25133.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput629 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2111 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput629 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2111 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25133 hH))).trans (reductionSound2111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput629 (3 : Fin 6)) = canonicalInput25207.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput629 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2006 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput629 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2006 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25207 hH))).trans (reductionSound2006 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput629 (4 : Fin 6)) = canonicalInput25226.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput629 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12243 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput629 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12243 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25226 hH))).trans (reductionSound12243 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput629 (5 : Fin 6)) = canonicalInput25227.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput629 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2174 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput629 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2174 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25227 hH))).trans (reductionSound2174 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput629 (j : Fin 6)))
    2880 2880 ![2880, 2880, 2880, 2880, 2880, 2880] ![-2880, -2880, -2880, -2880, -2880, -2880] (extendRow Arithmetic.row629) ![reductionProjection2012, reductionProjection2020, reductionProjection2111, reductionProjection2006, reductionProjection12243, reductionProjection2174]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput630 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![-1, 0, 0, 2, -1], ![1, -1, -1, 0, 1], ![1, 2, 1, -1, -3]]

theorem rowSound630 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 630) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row630 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row630 H]
  have hshape : boundaryInput630 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput630 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![576, 576, 2880, 720, 2880, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput630 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1967, reductionProjection1975, reductionProjection2111, reductionProjection1990, reductionProjection10041, reductionProjection12249] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput630 (0 : Fin 6)) = canonicalInput15855.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput630 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1967 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput630 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1967 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15855 hH))).trans (reductionSound1967 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput630 (1 : Fin 6)) = canonicalInput24960.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput630 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1975 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput630 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1975 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24960 hH))).trans (reductionSound1975 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput630 (2 : Fin 6)) = canonicalInput25130.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput630 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2111 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput630 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2111 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25130 hH))).trans (reductionSound2111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput630 (3 : Fin 6)) = canonicalInput25204.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput630 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1990 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput630 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1990 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25204 hH))).trans (reductionSound1990 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput630 (4 : Fin 6)) = canonicalInput25217.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput630 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10041 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput630 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10041 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25217 hH))).trans (reductionSound10041 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput630 (5 : Fin 6)) = canonicalInput25218.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput630 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12249 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput630 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12249 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25218 hH))).trans (reductionSound12249 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput630 (j : Fin 6)))
    2880 2880 ![576, 576, 2880, 720, 2880, 2880] ![-14400, -14400, -2880, -11520, -2880, -2880] (extendRow Arithmetic.row630) ![reductionProjection1967, reductionProjection1975, reductionProjection2111, reductionProjection1990, reductionProjection10041, reductionProjection12249]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput631 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![0, 1, -1, -1, 1], ![2, -1, 0, 0, -1], ![-1, 1, 1, 2, -3]]

theorem rowSound631 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 631) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row631 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row631 H]
  have hshape : boundaryInput631 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput631 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 2880, 2880, 2880, 2880, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput631 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection2148, reductionProjection2143, reductionProjection2137, reductionProjection2135, reductionProjection12245, reductionProjection2200] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput631 (0 : Fin 6)) = canonicalInput15863.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput631 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2148 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput631 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2148 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15863 hH))).trans (reductionSound2148 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput631 (1 : Fin 6)) = canonicalInput24968.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput631 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2143 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput631 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2143 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24968 hH))).trans (reductionSound2143 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput631 (2 : Fin 6)) = canonicalInput25138.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput631 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2137 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput631 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2137 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25138 hH))).trans (reductionSound2137 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput631 (3 : Fin 6)) = canonicalInput25219.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput631 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2135 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput631 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2135 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25219 hH))).trans (reductionSound2135 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput631 (4 : Fin 6)) = canonicalInput25236.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput631 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12245 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput631 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12245 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25236 hH))).trans (reductionSound12245 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput631 (5 : Fin 6)) = canonicalInput25237.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput631 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2200 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput631 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2200 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25237 hH))).trans (reductionSound2200 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput631 (j : Fin 6)))
    576 2880 ![2880, 2880, 2880, 2880, 2880, 2880] ![-576, -576, -576, -576, -576, -576] (extendRow Arithmetic.row631) ![reductionProjection2148, reductionProjection2143, reductionProjection2137, reductionProjection2135, reductionProjection12245, reductionProjection2200]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput633 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![0, -1, 1, -1, 1], ![2, 0, 0, -1, -1], ![-1, 1, 1, 2, -3]]

theorem rowSound633 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 633) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row633 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row633 H]
  have hshape : boundaryInput633 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput633 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 2880, 2880, 2880, 2880, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput633 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection2067, reductionProjection2089, reductionProjection2115, reductionProjection2057, reductionProjection12246, reductionProjection2185] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput633 (0 : Fin 6)) = canonicalInput15879.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput633 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2067 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput633 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2067 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15879 hH))).trans (reductionSound2067 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput633 (1 : Fin 6)) = canonicalInput24982.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput633 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2089 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput633 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2089 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24982 hH))).trans (reductionSound2089 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput633 (2 : Fin 6)) = canonicalInput25152.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput633 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2115 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput633 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2115 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25152 hH))).trans (reductionSound2115 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput633 (3 : Fin 6)) = canonicalInput25265.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput633 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2057 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput633 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2057 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25265 hH))).trans (reductionSound2057 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput633 (4 : Fin 6)) = canonicalInput25278.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput633 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12246 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput633 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12246 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25278 hH))).trans (reductionSound12246 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput633 (5 : Fin 6)) = canonicalInput25279.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput633 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2185 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput633 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2185 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25279 hH))).trans (reductionSound2185 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput633 (j : Fin 6)))
    2880 2880 ![2880, 2880, 2880, 2880, 2880, 2880] ![-2880, -2880, -2880, -2880, -2880, -2880] (extendRow Arithmetic.row633) ![reductionProjection2067, reductionProjection2089, reductionProjection2115, reductionProjection2057, reductionProjection12246, reductionProjection2185]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput635 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, 0, 0, 1, 0], ![0, 0, 0, -1, 1], ![1, 0, 0, -1, 0], ![0, -2, 1, 0, 1], ![0, 1, -2, 0, 1], ![1, 1, 1, 1, -4]]

theorem rowSound635 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 635) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row635 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row635 H]
  have hshape : boundaryInput635 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput635 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![18, 6, 1440, 2880, 2880, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput635 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7213, reductionProjection7229, reductionProjection10793, reductionProjection3261, reductionProjection3261, reductionProjection12239] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput635 (0 : Fin 6)) = canonicalInput7102.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput635 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7213 (Normalization.momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst boundaryInput635 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7213 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound7102 hH))).trans (reductionSound7213 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput635 (1 : Fin 6)) = canonicalInput21111.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput635 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7229 (Normalization.momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst boundaryInput635 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7229 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21111 hH))).trans (reductionSound7229 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput635 (2 : Fin 6)) = canonicalInput21247.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput635 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10793 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput635 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10793 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21247 hH))).trans (reductionSound10793 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput635 (3 : Fin 6)) = canonicalInput21249.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput635 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3261 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput635 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3261 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21249 hH))).trans (reductionSound3261 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput635 (4 : Fin 6)) = canonicalInput21251.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput635 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3261 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput635 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3261 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21251 hH))).trans (reductionSound3261 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput635 (5 : Fin 6)) = canonicalInput21253.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput635 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12239 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput635 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12239 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21253 hH))).trans (reductionSound12239 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput635 (j : Fin 6)))
    288 2880 ![18, 6, 1440, 2880, 2880, 288] ![-46080, -138240, -576, -288, -288, -2880] (extendRow Arithmetic.row635) ![reductionProjection7213, reductionProjection7229, reductionProjection10793, reductionProjection3261, reductionProjection3261, reductionProjection12239]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput645 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 0, 1, -1], ![-1, 2, 0, 0, -1], ![1, -1, -1, -1, 2], ![1, 0, 2, -1, -2]]

theorem rowSound645 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 645) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row645 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row645 H]
  have hshape : boundaryInput645 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput645 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 1440, 2880, 288, 1440, 576] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput645 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection3780, reductionProjection3764, reductionProjection3836, reductionProjection3772, reductionProjection10194, reductionProjection12250] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput645 (0 : Fin 6)) = canonicalInput15893.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput645 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3780 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput645 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3780 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15893 hH))).trans (reductionSound3780 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput645 (1 : Fin 6)) = canonicalInput24990.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput645 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3764 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput645 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3764 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24990 hH))).trans (reductionSound3764 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput645 (2 : Fin 6)) = canonicalInput25289.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput645 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3836 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput645 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3836 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25289 hH))).trans (reductionSound3836 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput645 (3 : Fin 6)) = canonicalInput25309.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput645 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3772 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput645 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3772 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25309 hH))).trans (reductionSound3772 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput645 (4 : Fin 6)) = canonicalInput25316.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput645 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10194 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput645 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10194 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25316 hH))).trans (reductionSound10194 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput645 (5 : Fin 6)) = canonicalInput25318.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput645 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12250 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput645 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12250 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25318 hH))).trans (reductionSound12250 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput645 (j : Fin 6)))
    576 2880 ![2880, 1440, 2880, 288, 1440, 576] ![-576, -1152, -576, -5760, -1152, -2880] (extendRow Arithmetic.row645) ![reductionProjection3780, reductionProjection3764, reductionProjection3836, reductionProjection3772, reductionProjection10194, reductionProjection12250]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput657 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, 0, 0, 0, 1], ![0, -1, 0, 1, 0], ![0, -1, 1, 0, 0], ![0, 1, -2, 1, 0], ![0, 1, 1, -3, 1], ![2, 0, 0, 1, -3]]

theorem rowSound657 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 657) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row657 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row657 H]
  have hshape : boundaryInput657 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput657 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 2880, 2880, 576, 2880, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput657 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7006, reductionProjection7052, reductionProjection7056, reductionProjection5002, reductionProjection7108, reductionProjection12238] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput657 (0 : Fin 6)) = canonicalInput6914.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput657 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7006 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput657 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7006 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6914 hH))).trans (reductionSound7006 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput657 (1 : Fin 6)) = canonicalInput20578.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput657 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7052 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput657 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7052 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20578 hH))).trans (reductionSound7052 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput657 (2 : Fin 6)) = canonicalInput20638.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput657 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7056 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput657 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7056 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20638 hH))).trans (reductionSound7056 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput657 (3 : Fin 6)) = canonicalInput20639.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput657 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5002 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput657 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5002 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20639 hH))).trans (reductionSound5002 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput657 (4 : Fin 6)) = canonicalInput20640.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput657 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7108 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput657 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7108 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20640 hH))).trans (reductionSound7108 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput657 (5 : Fin 6)) = canonicalInput20641.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput657 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12238 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput657 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12238 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20641 hH))).trans (reductionSound12238 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput657 (j : Fin 6)))
    2880 2880 ![288, 2880, 2880, 576, 2880, 2880] ![-28800, -2880, -2880, -14400, -2880, -2880] (extendRow Arithmetic.row657) ![reductionProjection7006, reductionProjection7052, reductionProjection7056, reductionProjection5002, reductionProjection7108, reductionProjection12238]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1010 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![2, -1, 2, -3]]

theorem rowSound1010 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1010) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1010 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1010 H]
  have hshape : boundaryInput1010 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1010 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 288, 720, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1010 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7949, reductionProjection7949, reductionProjection12230, oldProjection2782, reductionProjection5703, reductionProjection8138] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1010 (0 : Fin 6)) = canonicalInput24779.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1010 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7949 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1010 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7949 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24779 hH))).trans (reductionSound7949 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1010 (1 : Fin 6)) = canonicalInput28088.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1010 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7949 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1010 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7949 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28088 hH))).trans (reductionSound7949 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1010 (2 : Fin 6)) = canonicalInput28264.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1010 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12230 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1010 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12230 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28264 hH))).trans (reductionSound12230 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1010 (3 : Fin 6)) = canonicalInput28383.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1010 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2782 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1010 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2782 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28383 hH))).trans (oldProjectionSound2782 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1010 (4 : Fin 6)) = canonicalInput28390.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1010 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5703 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1010 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5703 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28390 hH))).trans (reductionSound5703 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1010 (5 : Fin 6)) = canonicalInput28392.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1010 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8138 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1010 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8138 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28392 hH))).trans (reductionSound8138 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1010 (j : Fin 6)))
    1440 1440 ![720, 720, 288, 720, 1440, 288] ![-2880, -2880, -7200, -2880, -1440, -7200] (extendRow Arithmetic.row1010) ![reductionProjection7949, reductionProjection7949, reductionProjection12230, oldProjection2782, reductionProjection5703, reductionProjection8138]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

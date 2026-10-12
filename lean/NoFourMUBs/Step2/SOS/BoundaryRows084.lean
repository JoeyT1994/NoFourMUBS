import NoFourMUBs.Step2.SOS.Canonical119
import NoFourMUBs.Step2.SOS.Canonical268
import NoFourMUBs.Step2.SOS.Canonical269
import NoFourMUBs.Step2.SOS.Canonical316
import NoFourMUBs.Step2.SOS.Canonical324
import NoFourMUBs.Step2.SOS.Canonical326
import NoFourMUBs.Step2.SOS.Canonical327
import NoFourMUBs.Step2.SOS.Canonical356
import NoFourMUBs.Step2.SOS.Canonical357
import NoFourMUBs.Step2.SOS.Canonical397
import NoFourMUBs.Step2.SOS.Canonical403
import NoFourMUBs.Step2.SOS.Canonical404
import NoFourMUBs.Step2.SOS.Canonical405
import NoFourMUBs.Step2.SOS.Canonical437
import NoFourMUBs.Step2.SOS.Canonical440
import NoFourMUBs.Step2.SOS.Canonical443
import NoFourMUBs.Step2.SOS.Canonical500
import NoFourMUBs.Step2.SOS.Canonical508
import NoFourMUBs.Step2.SOS.Canonical509
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.OldProjections041
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions131
import NoFourMUBs.Step2.SOS.Reductions142
import NoFourMUBs.Step2.SOS.Reductions211
import NoFourMUBs.Step2.SOS.Reductions229
import NoFourMUBs.Step2.SOS.Reductions232
import NoFourMUBs.Step2.SOS.Reductions234
import NoFourMUBs.Step2.SOS.Reductions240
import NoFourMUBs.Step2.SOS.Reductions276
import NoFourMUBs.Step2.SOS.Reductions282
import NoFourMUBs.Step2.SOS.Reductions284
import NoFourMUBs.Step2.SOS.Reductions289
import NoFourMUBs.Step2.SOS.Reductions329
import NoFourMUBs.Step2.SOS.Reductions330
import NoFourMUBs.Step2.SOS.Reductions331
import NoFourMUBs.Step2.SOS.Reductions335

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput86 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![1, 1, 3, -5]]

theorem rowSound86 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 86) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row86 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row86 H]
  have hshape : boundaryInput86 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput86 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput86 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10557, reductionProjection10557, reductionProjection10576, reductionProjection10586, reductionProjection4554, oldProjection3394] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput86 (0 : Fin 6)) = canonicalInput20242.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput86 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10557 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput86 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10557 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20242 hH))).trans (reductionSound10557 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput86 (1 : Fin 6)) = canonicalInput27982.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput86 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10557 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput86 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10557 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27982 hH))).trans (reductionSound10557 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput86 (2 : Fin 6)) = canonicalInput28207.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput86 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10576 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput86 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10576 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28207 hH))).trans (reductionSound10576 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput86 (3 : Fin 6)) = canonicalInput28380.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput86 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10586 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput86 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10586 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28380 hH))).trans (reductionSound10586 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput86 (4 : Fin 6)) = canonicalInput28412.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput86 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4554 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput86 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4554 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28412 hH))).trans (reductionSound4554 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput86 (5 : Fin 6)) = canonicalInput28414.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput86 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3394 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput86 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3394 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28414 hH))).trans (oldProjectionSound3394 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput86 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 720, 1440] ![-1440, -1440, -1440, -1440, -2880, -1440] (extendRow Arithmetic.row86) ![reductionProjection10557, reductionProjection10557, reductionProjection10576, reductionProjection10586, reductionProjection4554, oldProjection3394]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput97 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![1, 1, 3, -5]]

theorem rowSound97 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 97) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row97 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row97 H]
  have hshape : boundaryInput97 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput97 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 1440, 1440, 1440, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput97 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10542, reductionProjection10546, reductionProjection10553, reductionProjection10586, reductionProjection4212, oldProjection3389] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput97 (0 : Fin 6)) = canonicalInput17218.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput97 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10542 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput97 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10542 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17218 hH))).trans (reductionSound10542 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput97 (1 : Fin 6)) = canonicalInput25466.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput97 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10546 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput97 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10546 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25466 hH))).trans (reductionSound10546 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput97 (2 : Fin 6)) = canonicalInput25849.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput97 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10553 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput97 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10553 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25849 hH))).trans (reductionSound10553 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput97 (3 : Fin 6)) = canonicalInput25943.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput97 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10586 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput97 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10586 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25943 hH))).trans (reductionSound10586 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput97 (4 : Fin 6)) = canonicalInput25965.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput97 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4212 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput97 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4212 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25965 hH))).trans (reductionSound4212 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput97 (5 : Fin 6)) = canonicalInput25968.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput97 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3389 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput97 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3389 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25968 hH))).trans (oldProjectionSound3389 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput97 (j : Fin 6)))
    1440 1440 ![720, 1440, 1440, 1440, 1440, 720] ![-2880, -1440, -1440, -1440, -1440, -2880] (extendRow Arithmetic.row97) ![reductionProjection10542, reductionProjection10546, reductionProjection10553, reductionProjection10586, reductionProjection4212, oldProjection3389]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput98 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, 0, -1, 2], ![1, 1, 3, -5]]

theorem rowSound98 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 98) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row98 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row98 H]
  have hshape : boundaryInput98 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput98 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 360, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput98 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10557, reductionProjection10564, reductionProjection10578, reductionProjection10589, reductionProjection6754, oldProjection3420] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput98 (0 : Fin 6)) = canonicalInput17214.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput98 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10557 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput98 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10557 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17214 hH))).trans (reductionSound10557 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput98 (1 : Fin 6)) = canonicalInput25463.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput98 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10564 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput98 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10564 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25463 hH))).trans (reductionSound10564 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput98 (2 : Fin 6)) = canonicalInput25846.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput98 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10578 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput98 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10578 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25846 hH))).trans (reductionSound10578 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput98 (3 : Fin 6)) = canonicalInput25939.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput98 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10589 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput98 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10589 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25939 hH))).trans (reductionSound10589 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput98 (4 : Fin 6)) = canonicalInput25958.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput98 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6754 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput98 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6754 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25958 hH))).trans (reductionSound6754 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput98 (5 : Fin 6)) = canonicalInput25961.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput98 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3420 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput98 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3420 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25961 hH))).trans (oldProjectionSound3420 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput98 (j : Fin 6)))
    1440 1440 ![1440, 360, 1440, 1440, 1440, 288] ![-1440, -5760, -1440, -1440, -1440, -7200] (extendRow Arithmetic.row98) ![reductionProjection10557, reductionProjection10564, reductionProjection10578, reductionProjection10589, reductionProjection6754, oldProjection3420]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput112 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -2, 0, 1], ![1, 1, 3, -5]]

theorem rowSound112 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 112) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row112 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row112 H]
  have hshape : boundaryInput112 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput112 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput112 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7681, reductionProjection9041, reductionProjection9041, reductionProjection9111, reductionProjection10588, oldProjection3449] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput112 (0 : Fin 6)) = (normalNode4036).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput112 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7681 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput112 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7681 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7681 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput112 (1 : Fin 6)) = canonicalInput20739.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput112 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9041 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput112 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9041 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20739 hH))).trans (reductionSound9041 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput112 (2 : Fin 6)) = canonicalInput20921.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput112 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9041 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput112 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9041 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20921 hH))).trans (reductionSound9041 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput112 (3 : Fin 6)) = canonicalInput20935.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput112 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9111 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput112 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9111 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20935 hH))).trans (reductionSound9111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput112 (4 : Fin 6)) = canonicalInput20944.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput112 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10588 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput112 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10588 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20944 hH))).trans (reductionSound10588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput112 (5 : Fin 6)) = canonicalInput20946.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput112 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3449 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput112 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3449 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20946 hH))).trans (oldProjectionSound3449 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput112 (j : Fin 6)))
    288 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-288, -288, -288, -288, -288, -288] (extendRow Arithmetic.row112) ![reductionProjection7681, reductionProjection9041, reductionProjection9041, reductionProjection9111, reductionProjection10588, oldProjection3449]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput117 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, -2, 0, 2], ![1, 1, 3, -5]]

theorem rowSound117 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 117) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row117 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row117 H]
  have hshape : boundaryInput117 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput117 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput117 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7330, reductionProjection7442, reductionProjection7505, reductionProjection10588, reductionProjection4212, oldProjection3424] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput117 (0 : Fin 6)) = canonicalInput7644.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput117 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7330 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput117 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7330 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7644 hH))).trans (reductionSound7330 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput117 (1 : Fin 6)) = canonicalInput20748.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput117 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7442 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput117 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7442 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20748 hH))).trans (reductionSound7442 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput117 (2 : Fin 6)) = canonicalInput20928.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput117 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7505 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput117 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7505 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20928 hH))).trans (reductionSound7505 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput117 (3 : Fin 6)) = canonicalInput20959.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput117 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10588 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput117 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10588 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20959 hH))).trans (reductionSound10588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput117 (4 : Fin 6)) = canonicalInput20967.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput117 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4212 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput117 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4212 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20967 hH))).trans (reductionSound4212 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput117 (5 : Fin 6)) = canonicalInput20968.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput117 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3424 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput117 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3424 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20968 hH))).trans (oldProjectionSound3424 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput117 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 720] ![-1440, -1440, -1440, -1440, -1440, -2880] (extendRow Arithmetic.row117) ![reductionProjection7330, reductionProjection7442, reductionProjection7505, reductionProjection10588, reductionProjection4212, oldProjection3424]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput94 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, 1, -1, 1], ![1, 1, 3, -5]]

theorem rowSound94 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 94) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row94 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row94 H]
  have hshape : boundaryInput94 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput94 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput94 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10576, reductionProjection10578, reductionProjection10578, reductionProjection10594, reductionProjection8833, oldProjection3464] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput94 (0 : Fin 6)) = canonicalInput17198.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput94 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10576 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput94 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10576 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17198 hH))).trans (reductionSound10576 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput94 (1 : Fin 6)) = canonicalInput25450.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput94 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10578 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput94 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10578 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25450 hH))).trans (reductionSound10578 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput94 (2 : Fin 6)) = canonicalInput25832.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput94 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10578 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput94 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10578 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25832 hH))).trans (reductionSound10578 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput94 (3 : Fin 6)) = canonicalInput25875.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput94 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10594 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput94 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10594 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25875 hH))).trans (reductionSound10594 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput94 (4 : Fin 6)) = canonicalInput25900.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput94 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8833 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput94 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8833 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25900 hH))).trans (reductionSound8833 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput94 (5 : Fin 6)) = canonicalInput25902.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput94 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3464 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput94 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3464 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25902 hH))).trans (oldProjectionSound3464 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput94 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-1440, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row94) ![reductionProjection10576, reductionProjection10578, reductionProjection10578, reductionProjection10594, reductionProjection8833, oldProjection3464]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput122 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 1, 0, 0], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 0, 1], ![1, 1, 3, -5]]

theorem rowSound122 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 122) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row122 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row122 H]
  have hshape : boundaryInput122 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput122 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![6, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput122 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9257, reductionProjection9053, reductionProjection9053, reductionProjection9053, reductionProjection10593, oldProjection3468] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput122 (0 : Fin 6)) = (normalNode5478).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput122 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9257 (Normalization.momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst boundaryInput122 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9257 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9257 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput122 (1 : Fin 6)) = canonicalInput22842.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput122 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9053 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput122 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9053 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22842 hH))).trans (reductionSound9053 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput122 (2 : Fin 6)) = canonicalInput22892.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput122 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9053 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput122 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9053 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22892 hH))).trans (reductionSound9053 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput122 (3 : Fin 6)) = canonicalInput22897.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput122 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9053 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput122 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9053 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22897 hH))).trans (reductionSound9053 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput122 (4 : Fin 6)) = canonicalInput22899.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput122 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10593 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput122 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10593 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22899 hH))).trans (reductionSound10593 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput122 (5 : Fin 6)) = canonicalInput22900.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput122 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3468 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput122 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3468 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22900 hH))).trans (oldProjectionSound3468 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput122 (j : Fin 6)))
    1440 1440 ![6, 1440, 1440, 1440, 1440, 1440] ![-345600, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row122) ![reductionProjection9257, reductionProjection9053, reductionProjection9053, reductionProjection9053, reductionProjection10593, oldProjection3468]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput154 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 0, 3, -2], ![-1, -1, -2, 4]]

theorem rowSound154 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 154) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row154 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row154 H]
  have hshape : boundaryInput154 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput154 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput154 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection3344, oldProjection3344, reductionProjection10731, reductionProjection10732, oldProjection2911, reductionProjection10573] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput154 (0 : Fin 6)) = canonicalInput32025.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput154 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection3344 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput154 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection3344 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32025 hH))).trans (oldProjectionSound3344 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput154 (1 : Fin 6)) = canonicalInput32530.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput154 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3344 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput154 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3344 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32530 hH))).trans (oldProjectionSound3344 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput154 (2 : Fin 6)) = canonicalInput32568.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput154 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10731 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput154 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10731 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32568 hH))).trans (reductionSound10731 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput154 (3 : Fin 6)) = canonicalInput32590.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput154 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10732 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput154 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10732 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32590 hH))).trans (reductionSound10732 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput154 (4 : Fin 6)) = canonicalInput32596.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput154 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2911 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput154 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2911 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32596 hH))).trans (oldProjectionSound2911 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput154 (5 : Fin 6)) = canonicalInput32597.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput154 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10573 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput154 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10573 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32597 hH))).trans (reductionSound10573 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput154 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 288] ![-1440, -1440, -1440, -1440, -1440, -7200] (extendRow Arithmetic.row154) ![oldProjection3344, oldProjection3344, reductionProjection10731, reductionProjection10732, oldProjection2911, reductionProjection10573]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

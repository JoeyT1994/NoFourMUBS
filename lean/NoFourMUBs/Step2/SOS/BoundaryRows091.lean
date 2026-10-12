import NoFourMUBs.Step2.SOS.Canonical115
import NoFourMUBs.Step2.SOS.Canonical131
import NoFourMUBs.Step2.SOS.Canonical268
import NoFourMUBs.Step2.SOS.Canonical316
import NoFourMUBs.Step2.SOS.Canonical323
import NoFourMUBs.Step2.SOS.Canonical325
import NoFourMUBs.Step2.SOS.Canonical339
import NoFourMUBs.Step2.SOS.Canonical397
import NoFourMUBs.Step2.SOS.Canonical403
import NoFourMUBs.Step2.SOS.Canonical404
import NoFourMUBs.Step2.SOS.Canonical437
import NoFourMUBs.Step2.SOS.Canonical450
import NoFourMUBs.Step2.SOS.Canonical452
import NoFourMUBs.Step2.SOS.Canonical453
import NoFourMUBs.Step2.SOS.Canonical471
import NoFourMUBs.Step2.SOS.Canonical472
import NoFourMUBs.Step2.SOS.Canonical491
import NoFourMUBs.Step2.SOS.Canonical492
import NoFourMUBs.Step2.SOS.Canonical493
import NoFourMUBs.Step2.SOS.Canonical494
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections033
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.OldProjections041
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions070
import NoFourMUBs.Step2.SOS.Reductions071
import NoFourMUBs.Step2.SOS.Reductions072
import NoFourMUBs.Step2.SOS.Reductions074
import NoFourMUBs.Step2.SOS.Reductions078
import NoFourMUBs.Step2.SOS.Reductions135
import NoFourMUBs.Step2.SOS.Reductions233
import NoFourMUBs.Step2.SOS.Reductions267
import NoFourMUBs.Step2.SOS.Reductions268
import NoFourMUBs.Step2.SOS.Reductions307
import NoFourMUBs.Step2.SOS.Reductions309
import NoFourMUBs.Step2.SOS.Reductions314
import NoFourMUBs.Step2.SOS.Reductions317
import NoFourMUBs.Step2.SOS.Reductions333
import NoFourMUBs.Step2.SOS.Reductions334
import NoFourMUBs.Step2.SOS.Reductions335
import NoFourMUBs.Step2.SOS.Reductions336
import NoFourMUBs.Step2.SOS.Reductions345
import NoFourMUBs.Step2.SOS.Reductions346
import NoFourMUBs.Step2.SOS.Reductions347
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical309

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput456 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, -1, 3, -1], ![1, 3, -1, -3]]

theorem rowSound456 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 456) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row456 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row456 H]
  have hshape : boundaryInput456 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput456 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 720, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput456 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9828, reductionProjection9834, reductionProjection9834, reductionProjection9889, reductionProjection4320, reductionProjection11091] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput456 (0 : Fin 6)) = canonicalInput17197.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput456 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9828 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput456 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9828 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17197 hH))).trans (reductionSound9828 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput456 (1 : Fin 6)) = canonicalInput25449.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput456 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9834 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput456 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9834 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25449 hH))).trans (reductionSound9834 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput456 (2 : Fin 6)) = canonicalInput25831.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput456 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9834 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput456 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9834 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25831 hH))).trans (reductionSound9834 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput456 (3 : Fin 6)) = canonicalInput25874.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput456 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9889 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput456 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9889 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25874 hH))).trans (reductionSound9889 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput456 (4 : Fin 6)) = canonicalInput25899.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput456 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4320 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput456 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4320 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25899 hH))).trans (reductionSound4320 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput456 (5 : Fin 6)) = canonicalInput25901.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput456 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11091 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput456 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11091 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25901 hH))).trans (reductionSound11091 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput456 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 720, 288] ![-1440, -1440, -1440, -1440, -2880, -7200] (extendRow Arithmetic.row456) ![reductionProjection9828, reductionProjection9834, reductionProjection9834, reductionProjection9889, reductionProjection4320, reductionProjection11091]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput469 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 2, -3, 1], ![2, 1, 1, -4]]

theorem rowSound469 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 469) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row469 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row469 H]
  have hshape : boundaryInput469 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput469 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput469 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection2246, reductionProjection2250, reductionProjection2269, reductionProjection2269, reductionProjection2315, reductionProjection11090] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput469 (0 : Fin 6)) = canonicalInput7394.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput469 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2246 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput469 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2246 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7394 hH))).trans (reductionSound2246 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput469 (1 : Fin 6)) = canonicalInput20710.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput469 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2250 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput469 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2250 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20710 hH))).trans (reductionSound2250 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput469 (2 : Fin 6)) = canonicalInput20821.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput469 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2269 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput469 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2269 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20821 hH))).trans (reductionSound2269 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput469 (3 : Fin 6)) = canonicalInput20836.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput469 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2269 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput469 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2269 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20836 hH))).trans (reductionSound2269 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput469 (4 : Fin 6)) = canonicalInput20840.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput469 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2315 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput469 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2315 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20840 hH))).trans (reductionSound2315 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput469 (5 : Fin 6)) = canonicalInput20842.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput469 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11090 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput469 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11090 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20842 hH))).trans (reductionSound11090 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput469 (j : Fin 6)))
    1440 1440 ![288, 1440, 1440, 1440, 1440, 1440] ![-7200, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row469) ![reductionProjection2246, reductionProjection2250, reductionProjection2269, reductionProjection2269, reductionProjection2315, reductionProjection11090]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput470 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![1, 1, -3, 1], ![1, 2, 1, -4]]

theorem rowSound470 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 470) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row470 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row470 H]
  have hshape : boundaryInput470 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput470 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput470 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7474, reductionProjection10056, reductionProjection10061, reductionProjection10061, reductionProjection10144, reductionProjection11091] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput470 (0 : Fin 6)) = (normalNode3851).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput470 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7474 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput470 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7474 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7474 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput470 (1 : Fin 6)) = canonicalInput20711.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput470 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10056 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput470 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10056 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20711 hH))).trans (reductionSound10056 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput470 (2 : Fin 6)) = canonicalInput20822.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput470 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10061 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput470 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10061 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20822 hH))).trans (reductionSound10061 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput470 (3 : Fin 6)) = canonicalInput20837.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput470 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10061 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput470 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10061 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20837 hH))).trans (reductionSound10061 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput470 (4 : Fin 6)) = canonicalInput20841.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput470 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10144 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput470 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10144 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20841 hH))).trans (reductionSound10144 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput470 (5 : Fin 6)) = canonicalInput20844.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput470 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11091 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput470 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11091 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20844 hH))).trans (reductionSound11091 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput470 (j : Fin 6)))
    1440 1440 ![1440, 288, 1440, 1440, 1440, 288] ![-1440, -7200, -1440, -1440, -1440, -7200] (extendRow Arithmetic.row470) ![reductionProjection7474, reductionProjection10056, reductionProjection10061, reductionProjection10061, reductionProjection10144, reductionProjection11091]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput478 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 1, 0], ![0, -1, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 2, -3, 1], ![2, 1, 1, -4]]

theorem rowSound478 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 478) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row478 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row478 H]
  have hshape : boundaryInput478 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput478 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 720, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput478 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection2255, reductionProjection2263, reductionProjection2263, reductionProjection2273, reductionProjection2387, reductionProjection11091] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput478 (0 : Fin 6)) = canonicalInput8400.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput478 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2255 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput478 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2255 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8400 hH))).trans (reductionSound2255 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput478 (1 : Fin 6)) = canonicalInput21703.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput478 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2263 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput478 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2263 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21703 hH))).trans (reductionSound2263 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput478 (2 : Fin 6)) = canonicalInput21747.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput478 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2263 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput478 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2263 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21747 hH))).trans (reductionSound2263 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput478 (3 : Fin 6)) = canonicalInput21748.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput478 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2273 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput478 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2273 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21748 hH))).trans (reductionSound2273 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput478 (4 : Fin 6)) = canonicalInput21749.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput478 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2387 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput478 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2387 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21749 hH))).trans (reductionSound2387 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput478 (5 : Fin 6)) = canonicalInput21750.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput478 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11091 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput478 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11091 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21750 hH))).trans (reductionSound11091 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput478 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 720, 288] ![-1440, -1440, -1440, -1440, -2880, -7200] (extendRow Arithmetic.row478) ![reductionProjection2255, reductionProjection2263, reductionProjection2263, reductionProjection2273, reductionProjection2387, reductionProjection11091]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1084 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![-1, 1, 2, -2]]

theorem rowSound1084 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1084) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1084 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1084 H]
  have hshape : boundaryInput1084 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1084 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 288, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1084 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1739, oldProjection3368, reductionProjection11046, reductionProjection11075, reductionProjection10759, oldProjection3354] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1084 (0 : Fin 6)) = canonicalInput30191.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1084 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1739 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1084 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1739 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30191 hH))).trans (oldProjectionSound1739 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1084 (1 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9904 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1084 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3368 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1084 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3368 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9904 hH))).trans (oldProjectionSound3368 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1084 (2 : Fin 6)) = canonicalInput31513.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1084 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11046 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1084 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11046 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31513 hH))).trans (reductionSound11046 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1084 (3 : Fin 6)) = canonicalInput31558.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1084 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11075 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1084 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11075 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31558 hH))).trans (reductionSound11075 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1084 (4 : Fin 6)) = canonicalInput31564.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1084 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10759 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1084 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10759 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31564 hH))).trans (reductionSound10759 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1084 (5 : Fin 6)) = canonicalInput31565.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1084 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3354 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1084 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3354 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31565 hH))).trans (oldProjectionSound3354 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1084 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 288, 720] ![-1440, -1440, -1440, -1440, -7200, -2880] (extendRow Arithmetic.row1084) ![oldProjection1739, oldProjection3368, reductionProjection11046, reductionProjection11075, reductionProjection10759, oldProjection3354]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1179 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, 1, 1, -1], ![1, -1, 1, -1], ![-1, -1, -1, 3]]

theorem rowSound1179 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1179) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1179 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1179 H]
  have hshape : boundaryInput1179 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1179 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1179 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection2512, reductionProjection11086, reductionProjection11085, oldProjection3356, oldProjection3354, reductionProjection10767] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1179 (0 : Fin 6)) = canonicalInput30213.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1179 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection2512 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1179 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection2512 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30213 hH))).trans (oldProjectionSound2512 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1179 (1 : Fin 6)) = canonicalInput31462.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1179 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11086 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1179 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11086 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31462 hH))).trans (reductionSound11086 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1179 (2 : Fin 6)) = canonicalInput31602.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1179 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11085 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1179 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11085 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31602 hH))).trans (reductionSound11085 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1179 (3 : Fin 6)) = canonicalInput31640.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1179 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3356 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1179 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3356 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31640 hH))).trans (oldProjectionSound3356 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1179 (4 : Fin 6)) = canonicalInput31641.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1179 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3354 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1179 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3354 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31641 hH))).trans (oldProjectionSound3354 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1179 (5 : Fin 6)) = canonicalInput31642.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1179 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10767 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1179 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10767 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31642 hH))).trans (reductionSound10767 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1179 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 720, 1440] ![-1440, -1440, -1440, -1440, -2880, -1440] (extendRow Arithmetic.row1179) ![oldProjection2512, reductionProjection11086, reductionProjection11085, oldProjection3356, oldProjection3354, reductionProjection10767]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput164 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, -1, 3], ![2, -1, 2, -3]]

theorem rowSound164 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 164) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row164 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row164 H]
  have hshape : boundaryInput164 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput164 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 720, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput164 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8557, reductionProjection8558, reductionProjection8592, oldProjection3226, reductionProjection2505, reductionProjection11121] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput164 (0 : Fin 6)) = canonicalInput20273.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput164 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8557 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput164 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8557 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20273 hH))).trans (reductionSound8557 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput164 (1 : Fin 6)) = canonicalInput28005.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput164 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8558 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput164 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8558 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28005 hH))).trans (reductionSound8558 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput164 (2 : Fin 6)) = canonicalInput28813.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput164 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8592 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput164 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8592 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28813 hH))).trans (reductionSound8592 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput164 (3 : Fin 6)) = canonicalInput28963.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput164 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3226 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput164 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3226 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28963 hH))).trans (oldProjectionSound3226 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput164 (4 : Fin 6)) = canonicalInput28990.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput164 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2505 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput164 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2505 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28990 hH))).trans (reductionSound2505 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput164 (5 : Fin 6)) = canonicalInput28993.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput164 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11121 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput164 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11121 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28993 hH))).trans (reductionSound11121 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput164 (j : Fin 6)))
    1440 1440 ![288, 1440, 720, 1440, 1440, 1440] ![-7200, -1440, -2880, -1440, -1440, -1440] (extendRow Arithmetic.row164) ![reductionProjection8557, reductionProjection8558, reductionProjection8592, oldProjection3226, reductionProjection2505, reductionProjection11121]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput167 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, -1, 3], ![1, 1, 2, -4]]

theorem rowSound167 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 167) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row167 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row167 H]
  have hshape : boundaryInput167 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput167 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 288, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput167 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10686, reductionProjection10689, reductionProjection10748, reductionProjection10773, reductionProjection2510, reductionProjection11123] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput167 (0 : Fin 6)) = canonicalInput20276.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput167 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10686 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput167 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10686 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20276 hH))).trans (reductionSound10686 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput167 (1 : Fin 6)) = canonicalInput28007.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput167 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10689 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput167 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10689 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28007 hH))).trans (reductionSound10689 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput167 (2 : Fin 6)) = canonicalInput28815.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput167 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10748 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput167 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10748 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28815 hH))).trans (reductionSound10748 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput167 (3 : Fin 6)) = canonicalInput28977.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput167 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10773 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput167 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10773 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28977 hH))).trans (reductionSound10773 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput167 (4 : Fin 6)) = canonicalInput29000.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput167 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2510 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput167 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2510 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29000 hH))).trans (reductionSound2510 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput167 (5 : Fin 6)) = canonicalInput29004.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput167 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11123 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput167 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11123 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29004 hH))).trans (reductionSound11123 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput167 (j : Fin 6)))
    288 1440 ![720, 288, 1440, 1440, 288, 1440] ![-576, -1440, -288, -288, -1440, -288] (extendRow Arithmetic.row167) ![reductionProjection10686, reductionProjection10689, reductionProjection10748, reductionProjection10773, reductionProjection2510, reductionProjection11123]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

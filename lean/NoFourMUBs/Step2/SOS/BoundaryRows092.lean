import NoFourMUBs.Step2.SOS.Canonical267
import NoFourMUBs.Step2.SOS.Canonical284
import NoFourMUBs.Step2.SOS.Canonical285
import NoFourMUBs.Step2.SOS.Canonical317
import NoFourMUBs.Step2.SOS.Canonical397
import NoFourMUBs.Step2.SOS.Canonical401
import NoFourMUBs.Step2.SOS.Canonical402
import NoFourMUBs.Step2.SOS.Canonical416
import NoFourMUBs.Step2.SOS.Canonical418
import NoFourMUBs.Step2.SOS.Canonical437
import NoFourMUBs.Step2.SOS.Canonical438
import NoFourMUBs.Step2.SOS.Canonical450
import NoFourMUBs.Step2.SOS.Canonical457
import NoFourMUBs.Step2.SOS.Canonical459
import NoFourMUBs.Step2.SOS.Canonical461
import NoFourMUBs.Step2.SOS.Canonical464
import NoFourMUBs.Step2.SOS.Canonical465
import NoFourMUBs.Step2.SOS.Canonical466
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections033
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.OldProjections041
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions073
import NoFourMUBs.Step2.SOS.Reductions074
import NoFourMUBs.Step2.SOS.Reductions075
import NoFourMUBs.Step2.SOS.Reductions078
import NoFourMUBs.Step2.SOS.Reductions079
import NoFourMUBs.Step2.SOS.Reductions202
import NoFourMUBs.Step2.SOS.Reductions317
import NoFourMUBs.Step2.SOS.Reductions341
import NoFourMUBs.Step2.SOS.Reductions345
import NoFourMUBs.Step2.SOS.Reductions346
import NoFourMUBs.Step2.SOS.Reductions347
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical298
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical302

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput171 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![0, 2, 2, -4]]

theorem rowSound171 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 171) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row171 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row171 H]
  have hshape : boundaryInput171 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput171 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![360, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput171 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6479, reductionProjection6493, reductionProjection11093, reductionProjection11116, reductionProjection2519, oldProjection3226] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput171 (0 : Fin 6)) = canonicalInput20289.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput171 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6479 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput171 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6479 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20289 hH))).trans (reductionSound6479 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput171 (1 : Fin 6)) = canonicalInput28017.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput171 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6493 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput171 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6493 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28017 hH))).trans (reductionSound6493 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput171 (2 : Fin 6)) = canonicalInput28824.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput171 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11093 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput171 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11093 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28824 hH))).trans (reductionSound11093 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput171 (3 : Fin 6)) = canonicalInput29253.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput171 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11116 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput171 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11116 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29253 hH))).trans (reductionSound11116 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput171 (4 : Fin 6)) = canonicalInput29273.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput171 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2519 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput171 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2519 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29273 hH))).trans (reductionSound2519 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput171 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9536 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput171 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3226 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput171 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3226 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9536 hH))).trans (oldProjectionSound3226 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput171 (j : Fin 6)))
    720 1440 ![360, 1440, 1440, 1440, 1440, 1440] ![-2880, -720, -720, -720, -720, -720] (extendRow Arithmetic.row171) ![reductionProjection6479, reductionProjection6493, reductionProjection11093, reductionProjection11116, reductionProjection2519, oldProjection3226]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput173 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![1, -1, 3, -3]]

theorem rowSound173 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 173) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row173 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row173 H]
  have hshape : boundaryInput173 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput173 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput173 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10929, oldProjection3367, oldProjection3367, reductionProjection11117, reductionProjection2538, reductionProjection11113] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput173 (0 : Fin 6)) = canonicalInput20340.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput173 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10929 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput173 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10929 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20340 hH))).trans (reductionSound10929 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput173 (1 : Fin 6)) = canonicalInput28046.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput173 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3367 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput173 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3367 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28046 hH))).trans (oldProjectionSound3367 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput173 (2 : Fin 6)) = canonicalInput29734.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput173 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection3367 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput173 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection3367 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29734 hH))).trans (oldProjectionSound3367 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput173 (3 : Fin 6)) = canonicalInput29811.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput173 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11117 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput173 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11117 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29811 hH))).trans (reductionSound11117 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput173 (4 : Fin 6)) = canonicalInput29829.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput173 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2538 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput173 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2538 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29829 hH))).trans (reductionSound2538 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput173 (5 : Fin 6)) = canonicalInput29836.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput173 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11113 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput173 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11113 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29836 hH))).trans (reductionSound11113 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput173 (j : Fin 6)))
    288 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-288, -288, -288, -288, -288, -288] (extendRow Arithmetic.row173) ![reductionProjection10929, oldProjection3367, oldProjection3367, reductionProjection11117, reductionProjection2538, reductionProjection11113]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput178 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![0, 1, 3, -4]]

theorem rowSound178 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 178) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row178 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row178 H]
  have hshape : boundaryInput178 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput178 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput178 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10930, reductionProjection11065, reductionProjection11098, reductionProjection11118, reductionProjection2541, oldProjection3366] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput178 (0 : Fin 6)) = canonicalInput20349.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput178 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10930 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput178 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10930 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20349 hH))).trans (reductionSound10930 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput178 (1 : Fin 6)) = canonicalInput28052.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput178 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11065 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput178 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11065 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28052 hH))).trans (reductionSound11065 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput178 (2 : Fin 6)) = canonicalInput29741.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput178 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11098 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput178 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11098 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29741 hH))).trans (reductionSound11098 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput178 (3 : Fin 6)) = canonicalInput29876.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput178 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11118 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput178 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11118 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29876 hH))).trans (reductionSound11118 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput178 (4 : Fin 6)) = canonicalInput29887.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput178 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2541 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput178 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2541 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29887 hH))).trans (reductionSound2541 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput178 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9667 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput178 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3366 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput178 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3366 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9667 hH))).trans (oldProjectionSound3366 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput178 (j : Fin 6)))
    1440 1440 ![288, 1440, 1440, 1440, 1440, 288] ![-7200, -1440, -1440, -1440, -1440, -7200] (extendRow Arithmetic.row178) ![reductionProjection10930, reductionProjection11065, reductionProjection11098, reductionProjection11118, reductionProjection2541, oldProjection3366]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput180 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-1, -1, -1, 3], ![1, -1, 3, -3]]

theorem rowSound180 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 180) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row180 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row180 H]
  have hshape : boundaryInput180 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput180 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput180 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10922, reductionProjection11041, oldProjection3366, oldProjection2548, reductionProjection2528, reductionProjection11112] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput180 (0 : Fin 6)) = canonicalInput20328.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput180 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10922 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput180 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10922 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20328 hH))).trans (reductionSound10922 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput180 (1 : Fin 6)) = canonicalInput28038.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput180 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11041 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput180 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11041 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28038 hH))).trans (reductionSound11041 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput180 (2 : Fin 6)) = canonicalInput29402.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput180 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection3366 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput180 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection3366 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29402 hH))).trans (oldProjectionSound3366 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput180 (3 : Fin 6)) = canonicalInput29509.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput180 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2548 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput180 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2548 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29509 hH))).trans (oldProjectionSound2548 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput180 (4 : Fin 6)) = canonicalInput29538.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput180 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2528 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput180 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2528 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29538 hH))).trans (reductionSound2528 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput180 (5 : Fin 6)) = canonicalInput29543.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput180 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11112 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput180 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11112 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29543 hH))).trans (reductionSound11112 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput180 (j : Fin 6)))
    1440 1440 ![1440, 1440, 288, 1440, 1440, 1440] ![-1440, -1440, -7200, -1440, -1440, -1440] (extendRow Arithmetic.row180) ![reductionProjection10922, reductionProjection11041, oldProjection3366, oldProjection2548, reductionProjection2528, reductionProjection11112]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput182 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, -1, -1, 3], ![1, 0, 3, -4]]

theorem rowSound182 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 182) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row182 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row182 H]
  have hshape : boundaryInput182 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput182 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput182 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10917, reductionProjection11040, reductionProjection11065, reductionProjection11095, reductionProjection2524, reductionProjection11126] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput182 (0 : Fin 6)) = canonicalInput20325.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput182 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10917 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput182 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10917 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20325 hH))).trans (reductionSound10917 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput182 (1 : Fin 6)) = canonicalInput28035.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput182 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11040 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput182 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11040 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28035 hH))).trans (reductionSound11040 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput182 (2 : Fin 6)) = canonicalInput29399.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput182 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11065 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput182 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11065 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29399 hH))).trans (reductionSound11065 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput182 (3 : Fin 6)) = canonicalInput29506.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput182 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11095 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput182 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11095 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29506 hH))).trans (reductionSound11095 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput182 (4 : Fin 6)) = canonicalInput29518.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput182 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2524 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput182 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2524 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29518 hH))).trans (reductionSound2524 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput182 (5 : Fin 6)) = canonicalInput29523.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput182 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11126 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput182 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11126 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29523 hH))).trans (reductionSound11126 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput182 (j : Fin 6)))
    1440 1440 ![288, 1440, 1440, 1440, 1440, 1440] ![-7200, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row182) ![reductionProjection10917, reductionProjection11040, reductionProjection11065, reductionProjection11095, reductionProjection2524, reductionProjection11126]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput203 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, 0, -2, 3], ![2, 1, 1, -4]]

theorem rowSound203 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 203) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row203 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row203 H]
  have hshape : boundaryInput203 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput203 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 1440, 144, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput203 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection2368, reductionProjection2373, reductionProjection2421, reductionProjection2526, reductionProjection2360, reductionProjection11110] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput203 (0 : Fin 6)) = canonicalInput17130.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput203 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2368 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput203 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2368 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17130 hH))).trans (reductionSound2368 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput203 (1 : Fin 6)) = canonicalInput25419.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput203 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2373 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput203 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2373 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25419 hH))).trans (reductionSound2373 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput203 (2 : Fin 6)) = canonicalInput25700.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput203 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2421 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput203 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2421 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25700 hH))).trans (reductionSound2421 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput203 (3 : Fin 6)) = canonicalInput25745.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput203 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2526 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput203 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2526 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25745 hH))).trans (reductionSound2526 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput203 (4 : Fin 6)) = canonicalInput25750.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput203 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2360 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput203 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2360 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25750 hH))).trans (reductionSound2360 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput203 (5 : Fin 6)) = canonicalInput25751.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput203 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11110 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput203 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11110 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25751 hH))).trans (reductionSound11110 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput203 (j : Fin 6)))
    1440 1440 ![1440, 1440, 288, 1440, 144, 720] ![-1440, -1440, -7200, -1440, -14400, -2880] (extendRow Arithmetic.row203) ![reductionProjection2368, reductionProjection2373, reductionProjection2421, reductionProjection2526, reductionProjection2360, reductionProjection11110]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput216 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, -1, -1, 3], ![2, 1, 1, -4]]

theorem rowSound216 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 216) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row216 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row216 H]
  have hshape : boundaryInput216 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput216 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 144, 144, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput216 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection2357, reductionProjection2364, reductionProjection2400, reductionProjection2512, reductionProjection2348, reductionProjection11107] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput216 (0 : Fin 6)) = canonicalInput18237.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput216 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2357 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput216 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2357 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18237 hH))).trans (reductionSound2357 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput216 (1 : Fin 6)) = canonicalInput26681.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput216 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2364 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput216 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2364 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26681 hH))).trans (reductionSound2364 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput216 (2 : Fin 6)) = canonicalInput26785.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput216 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2400 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput216 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2400 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26785 hH))).trans (reductionSound2400 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput216 (3 : Fin 6)) = canonicalInput26798.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput216 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2512 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput216 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2512 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26798 hH))).trans (reductionSound2512 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput216 (4 : Fin 6)) = canonicalInput26801.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput216 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2348 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput216 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2348 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26801 hH))).trans (reductionSound2348 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput216 (5 : Fin 6)) = canonicalInput26802.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput216 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11107 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput216 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11107 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26802 hH))).trans (reductionSound11107 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput216 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 144, 144, 288] ![-1440, -1440, -1440, -14400, -14400, -7200] (extendRow Arithmetic.row216) ![reductionProjection2357, reductionProjection2364, reductionProjection2400, reductionProjection2512, reductionProjection2348, reductionProjection11107]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput217 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![1, 2, 1, -4]]

theorem rowSound217 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 217) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row217 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row217 H]
  have hshape : boundaryInput217 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput217 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput217 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection2357, reductionProjection2376, reductionProjection2400, reductionProjection10146, reductionProjection2353, reductionProjection11108] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput217 (0 : Fin 6)) = canonicalInput18240.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput217 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2357 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput217 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2357 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18240 hH))).trans (reductionSound2357 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput217 (1 : Fin 6)) = canonicalInput26683.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput217 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2376 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput217 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2376 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26683 hH))).trans (reductionSound2376 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput217 (2 : Fin 6)) = canonicalInput26787.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput217 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2400 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput217 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2400 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26787 hH))).trans (reductionSound2400 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput217 (3 : Fin 6)) = canonicalInput26800.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput217 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10146 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput217 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10146 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26800 hH))).trans (reductionSound10146 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput217 (4 : Fin 6)) = canonicalInput26804.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput217 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2353 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput217 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2353 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26804 hH))).trans (reductionSound2353 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput217 (5 : Fin 6)) = canonicalInput26805.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput217 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11108 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput217 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11108 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26805 hH))).trans (reductionSound11108 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput217 (j : Fin 6)))
    1440 1440 ![1440, 288, 1440, 1440, 1440, 288] ![-1440, -7200, -1440, -1440, -1440, -7200] (extendRow Arithmetic.row217) ![reductionProjection2357, reductionProjection2376, reductionProjection2400, reductionProjection10146, reductionProjection2353, reductionProjection11108]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

import NoFourMUBs.Step2.SOS.Canonical268
import NoFourMUBs.Step2.SOS.Canonical269
import NoFourMUBs.Step2.SOS.Canonical293
import NoFourMUBs.Step2.SOS.Canonical316
import NoFourMUBs.Step2.SOS.Canonical387
import NoFourMUBs.Step2.SOS.Canonical397
import NoFourMUBs.Step2.SOS.Canonical398
import NoFourMUBs.Step2.SOS.Canonical403
import NoFourMUBs.Step2.SOS.Canonical404
import NoFourMUBs.Step2.SOS.Canonical405
import NoFourMUBs.Step2.SOS.Canonical406
import NoFourMUBs.Step2.SOS.Canonical407
import NoFourMUBs.Step2.SOS.Canonical420
import NoFourMUBs.Step2.SOS.Canonical437
import NoFourMUBs.Step2.SOS.Canonical439
import NoFourMUBs.Step2.SOS.Canonical440
import NoFourMUBs.Step2.SOS.Canonical441
import NoFourMUBs.Step2.SOS.Canonical445
import NoFourMUBs.Step2.SOS.Canonical447
import NoFourMUBs.Step2.SOS.Canonical450
import NoFourMUBs.Step2.SOS.Canonical452
import NoFourMUBs.Step2.SOS.Canonical453
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.OldProjections041
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions265
import NoFourMUBs.Step2.SOS.Reductions268
import NoFourMUBs.Step2.SOS.Reductions270
import NoFourMUBs.Step2.SOS.Reductions272
import NoFourMUBs.Step2.SOS.Reductions288
import NoFourMUBs.Step2.SOS.Reductions289
import NoFourMUBs.Step2.SOS.Reductions290
import NoFourMUBs.Step2.SOS.Reductions293
import NoFourMUBs.Step2.SOS.Reductions294
import NoFourMUBs.Step2.SOS.Reductions302
import NoFourMUBs.Step2.SOS.Reductions359
import NoFourMUBs.Step2.SOS.Reductions360
import NoFourMUBs.Step2.SOS.Reductions367
import NoFourMUBs.Step2.SOS.Reductions368
import NoFourMUBs.Step2.SOS.Reductions369
import NoFourMUBs.Step2.SOS.Reductions371
import NoFourMUBs.Step2.SOS.Reductions372
import NoFourMUBs.Step2.SOS.Reductions373
import NoFourMUBs.Step2.SOS.Reductions376
import NoFourMUBs.Step2.SOS.Reductions378
import NoFourMUBs.Step2.SOS.Reductions379
import NoFourMUBs.Step2.SOS.Reductions380
import NoFourMUBs.Step2.SOS.Reductions383
import NoFourMUBs.Step2.SOS.Reductions384
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical293

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput658 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 1, 0, 0], ![0, -1, 1, 0, 0], ![1, -1, 0, 0, 0], ![1, 0, -1, 0, 0], ![-1, 2, -1, 0, 0], ![0, 0, 0, -3, 3], ![0, 0, 0, 3, -3]]

theorem rowSound658 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 658) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row658 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row658 H]
  have hshape : boundaryInput658 0 = Pi.single (2 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput658 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![36, 144, 144, 144, 288, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput658 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9415, reductionProjection11764, reductionProjection9400, reductionProjection12280, reductionProjection9412, reductionProjection9412] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput658 (0 : Fin 6)) = canonicalInput18805.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput658 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9415 (Normalization.momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst boundaryInput658 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9415 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18805 hH))).trans (reductionSound9415 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput658 (1 : Fin 6)) = canonicalInput26923.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput658 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11764 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput658 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11764 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound26923 hH))).trans (reductionSound11764 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput658 (2 : Fin 6)) = canonicalInput26939.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput658 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9400 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput658 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9400 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound26939 hH))).trans (reductionSound9400 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput658 (3 : Fin 6)) = canonicalInput26940.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput658 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12280 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput658 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12280 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound26940 hH))).trans (reductionSound12280 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput658 (4 : Fin 6)) = canonicalInput26941.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput658 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9412 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput658 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9412 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound26941 hH))).trans (reductionSound9412 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput658 (5 : Fin 6)) = canonicalInput26942.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput658 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9412 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput658 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9412 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound26942 hH))).trans (reductionSound9412 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput658 (j : Fin 6)))
    144 288 ![36, 144, 144, 144, 288, 288] ![-1152, -288, -288, -288, -144, -144] (extendRow Arithmetic.row658) ![reductionProjection9415, reductionProjection11764, reductionProjection9400, reductionProjection12280, reductionProjection9412, reductionProjection9412]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput854 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 1, 1, 0], ![0, 1, 2, -3]]

theorem rowSound854 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 854) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row854 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row854 H]
  have hshape : boundaryInput854 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput854 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput854 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9230, reductionProjection9230, reductionProjection9265, reductionProjection9286, oldProjection3417, reductionProjection12261] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput854 (0 : Fin 6)) = canonicalInput24794.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput854 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9230 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput854 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9230 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24794 hH))).trans (reductionSound9230 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput854 (1 : Fin 6)) = canonicalInput28101.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput854 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9230 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput854 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9230 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28101 hH))).trans (reductionSound9230 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput854 (2 : Fin 6)) = canonicalInput28489.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput854 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9265 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput854 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9265 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28489 hH))).trans (reductionSound9265 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput854 (3 : Fin 6)) = canonicalInput28613.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput854 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9286 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput854 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9286 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28613 hH))).trans (reductionSound9286 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput854 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9380 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput854 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3417 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput854 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3417 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9380 hH))).trans (oldProjectionSound3417 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput854 (5 : Fin 6)) = canonicalInput28629.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput854 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12261 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput854 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12261 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28629 hH))).trans (reductionSound12261 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput854 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-1440, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row854) ![reductionProjection9230, reductionProjection9230, reductionProjection9265, reductionProjection9286, oldProjection3417, reductionProjection12261]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput92 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 2, 0, -1], ![2, -1, 3, -4]]

theorem rowSound92 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 92) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row92 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row92 H]
  have hshape : boundaryInput92 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput92 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![480, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput92 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8483, reductionProjection8486, reductionProjection8486, reductionProjection8486, oldProjection3223, reductionProjection12309] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput92 (0 : Fin 6)) = canonicalInput17194.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput92 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8483 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput92 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8483 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17194 hH))).trans (reductionSound8483 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput92 (1 : Fin 6)) = canonicalInput25445.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput92 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8486 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput92 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8486 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25445 hH))).trans (reductionSound8486 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput92 (2 : Fin 6)) = canonicalInput25827.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput92 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8486 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput92 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8486 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25827 hH))).trans (reductionSound8486 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput92 (3 : Fin 6)) = canonicalInput25869.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput92 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8486 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput92 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8486 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25869 hH))).trans (reductionSound8486 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput92 (4 : Fin 6)) = canonicalInput25880.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput92 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3223 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput92 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3223 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25880 hH))).trans (oldProjectionSound3223 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput92 (5 : Fin 6)) = canonicalInput25884.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput92 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12309 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput92 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12309 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25884 hH))).trans (reductionSound12309 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput92 (j : Fin 6)))
    1440 1440 ![480, 1440, 1440, 1440, 1440, 1440] ![-4320, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row92) ![reductionProjection8483, reductionProjection8486, reductionProjection8486, reductionProjection8486, oldProjection3223, reductionProjection12309]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput190 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 1, -2, 2], ![1, 0, 3, -4]]

theorem rowSound190 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 190) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row190 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row190 H]
  have hshape : boundaryInput190 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput190 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 720, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput190 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11507, reductionProjection11794, reductionProjection11817, reductionProjection11837, reductionProjection8598, reductionProjection12318] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput190 (0 : Fin 6)) = canonicalInput17220.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput190 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11507 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput190 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11507 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17220 hH))).trans (reductionSound11507 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput190 (1 : Fin 6)) = canonicalInput25468.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput190 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11794 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput190 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11794 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25468 hH))).trans (reductionSound11794 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput190 (2 : Fin 6)) = canonicalInput25851.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput190 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11817 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput190 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11817 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25851 hH))).trans (reductionSound11817 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput190 (3 : Fin 6)) = canonicalInput25970.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput190 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11837 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput190 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11837 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25970 hH))).trans (reductionSound11837 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput190 (4 : Fin 6)) = canonicalInput25976.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput190 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8598 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput190 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8598 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25976 hH))).trans (reductionSound8598 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput190 (5 : Fin 6)) = canonicalInput25977.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput190 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12318 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput190 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12318 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25977 hH))).trans (reductionSound12318 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput190 (j : Fin 6)))
    288 1440 ![288, 720, 1440, 1440, 1440, 1440] ![-1440, -576, -288, -288, -288, -288] (extendRow Arithmetic.row190) ![reductionProjection11507, reductionProjection11794, reductionProjection11817, reductionProjection11837, reductionProjection8598, reductionProjection12318]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput289 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![2, -2, 1, -1], ![-1, 1, 3, -3]]

theorem rowSound289 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 289) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row289 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row289 H]
  have hshape : boundaryInput289 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput289 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput289 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9673, reductionProjection9673, reductionProjection9673, reductionProjection9690, reductionProjection12309, oldProjection3241] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput289 (0 : Fin 6)) = canonicalInput20232.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput289 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9673 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput289 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9673 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20232 hH))).trans (reductionSound9673 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput289 (1 : Fin 6)) = canonicalInput27970.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput289 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9673 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput289 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9673 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27970 hH))).trans (reductionSound9673 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput289 (2 : Fin 6)) = canonicalInput28193.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput289 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9673 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput289 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9673 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28193 hH))).trans (reductionSound9673 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput289 (3 : Fin 6)) = canonicalInput28245.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput289 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9690 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput289 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9690 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28245 hH))).trans (reductionSound9690 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput289 (4 : Fin 6)) = canonicalInput28261.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput289 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12309 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput289 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12309 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28261 hH))).trans (reductionSound12309 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput289 (5 : Fin 6)) = canonicalInput28262.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput289 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3241 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput289 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3241 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28262 hH))).trans (oldProjectionSound3241 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput289 (j : Fin 6)))
    288 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-288, -288, -288, -288, -288, -288] (extendRow Arithmetic.row289) ![reductionProjection9673, reductionProjection9673, reductionProjection9673, reductionProjection9690, reductionProjection12309, oldProjection3241]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput305 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, -2, 2], ![-1, 1, 3, -3]]

theorem rowSound305 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 305) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row305 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row305 H]
  have hshape : boundaryInput305 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput305 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 1440, 1440, 288, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput305 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection12036, reductionProjection12121, reductionProjection12292, reductionProjection12298, reductionProjection12307, reductionProjection8711] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput305 (0 : Fin 6)) = canonicalInput20277.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput305 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12036 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput305 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12036 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20277 hH))).trans (reductionSound12036 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput305 (1 : Fin 6)) = canonicalInput28008.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput305 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12121 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput305 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12121 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28008 hH))).trans (reductionSound12121 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput305 (2 : Fin 6)) = canonicalInput28816.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput305 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12292 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput305 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12292 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28816 hH))).trans (reductionSound12292 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput305 (3 : Fin 6)) = canonicalInput28978.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput305 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12298 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput305 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12298 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28978 hH))).trans (reductionSound12298 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput305 (4 : Fin 6)) = canonicalInput29005.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput305 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12307 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput305 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12307 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29005 hH))).trans (reductionSound12307 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput305 (5 : Fin 6)) = canonicalInput29007.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput305 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8711 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput305 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8711 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29007 hH))).trans (reductionSound8711 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput305 (j : Fin 6)))
    1440 1440 ![1440, 288, 1440, 1440, 288, 288] ![-1440, -7200, -1440, -1440, -7200, -7200] (extendRow Arithmetic.row305) ![reductionProjection12036, reductionProjection12121, reductionProjection12292, reductionProjection12298, reductionProjection12307, reductionProjection8711]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput328 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -3, 2], ![-1, 1, 3, -3]]

theorem rowSound328 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 328) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row328 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row328 H]
  have hshape : boundaryInput328 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput328 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 720, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput328 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11536, reductionProjection11903, reductionProjection11919, reductionProjection11966, reductionProjection12305, reductionProjection8647] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput328 (0 : Fin 6)) = canonicalInput17261.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput328 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11536 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput328 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11536 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17261 hH))).trans (reductionSound11536 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput328 (1 : Fin 6)) = canonicalInput25486.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput328 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11903 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput328 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11903 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25486 hH))).trans (reductionSound11903 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput328 (2 : Fin 6)) = canonicalInput26010.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput328 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11919 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput328 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11919 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26010 hH))).trans (reductionSound11919 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput328 (3 : Fin 6)) = canonicalInput26030.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput328 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11966 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput328 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11966 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26030 hH))).trans (reductionSound11966 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput328 (4 : Fin 6)) = canonicalInput26035.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput328 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12305 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput328 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12305 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26035 hH))).trans (reductionSound12305 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput328 (5 : Fin 6)) = canonicalInput26036.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput328 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8647 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput328 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8647 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26036 hH))).trans (reductionSound8647 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput328 (j : Fin 6)))
    1440 1440 ![1440, 720, 1440, 1440, 1440, 288] ![-1440, -2880, -1440, -1440, -1440, -7200] (extendRow Arithmetic.row328) ![reductionProjection11536, reductionProjection11903, reductionProjection11919, reductionProjection11966, reductionProjection12305, reductionProjection8647]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput330 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![0, 1, -3, 2], ![-1, 1, 3, -3]]

theorem rowSound330 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 330) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row330 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row330 H]
  have hshape : boundaryInput330 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput330 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput330 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11539, reductionProjection11932, reductionProjection12167, reductionProjection12302, reductionProjection12134, reductionProjection8652] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput330 (0 : Fin 6)) = canonicalInput17272.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput330 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11539 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput330 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11539 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17272 hH))).trans (reductionSound11539 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput330 (1 : Fin 6)) = canonicalInput25494.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput330 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11932 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput330 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11932 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25494 hH))).trans (reductionSound11932 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput330 (2 : Fin 6)) = canonicalInput26016.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput330 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12167 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput330 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12167 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26016 hH))).trans (reductionSound12167 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput330 (3 : Fin 6)) = canonicalInput26061.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput330 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12302 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput330 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12302 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26061 hH))).trans (reductionSound12302 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput330 (4 : Fin 6)) = canonicalInput26067.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput330 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12134 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput330 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12134 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26067 hH))).trans (reductionSound12134 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput330 (5 : Fin 6)) = canonicalInput26068.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput330 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8652 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput330 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8652 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26068 hH))).trans (reductionSound8652 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput330 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 720] ![-1440, -1440, -1440, -1440, -1440, -2880] (extendRow Arithmetic.row330) ![reductionProjection11539, reductionProjection11932, reductionProjection12167, reductionProjection12302, reductionProjection12134, reductionProjection8652]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

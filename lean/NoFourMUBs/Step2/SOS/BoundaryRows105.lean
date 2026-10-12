import NoFourMUBs.Step2.SOS.Canonical248
import NoFourMUBs.Step2.SOS.Canonical269
import NoFourMUBs.Step2.SOS.Canonical291
import NoFourMUBs.Step2.SOS.Canonical387
import NoFourMUBs.Step2.SOS.Canonical390
import NoFourMUBs.Step2.SOS.Canonical395
import NoFourMUBs.Step2.SOS.Canonical397
import NoFourMUBs.Step2.SOS.Canonical398
import NoFourMUBs.Step2.SOS.Canonical403
import NoFourMUBs.Step2.SOS.Canonical404
import NoFourMUBs.Step2.SOS.Canonical405
import NoFourMUBs.Step2.SOS.Canonical406
import NoFourMUBs.Step2.SOS.Canonical412
import NoFourMUBs.Step2.SOS.Canonical413
import NoFourMUBs.Step2.SOS.Canonical414
import NoFourMUBs.Step2.SOS.Canonical420
import NoFourMUBs.Step2.SOS.Canonical439
import NoFourMUBs.Step2.SOS.Canonical447
import NoFourMUBs.Step2.SOS.Canonical448
import NoFourMUBs.Step2.SOS.Canonical470
import NoFourMUBs.Step2.SOS.Canonical494
import NoFourMUBs.Step2.SOS.Canonical495
import NoFourMUBs.Step2.SOS.Canonical496
import NoFourMUBs.Step2.SOS.Canonical498
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections032
import NoFourMUBs.Step2.SOS.OldProjections035
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.OldProjections041
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions028
import NoFourMUBs.Step2.SOS.Reductions029
import NoFourMUBs.Step2.SOS.Reductions031
import NoFourMUBs.Step2.SOS.Reductions178
import NoFourMUBs.Step2.SOS.Reductions192
import NoFourMUBs.Step2.SOS.Reductions203
import NoFourMUBs.Step2.SOS.Reductions211
import NoFourMUBs.Step2.SOS.Reductions212
import NoFourMUBs.Step2.SOS.Reductions213
import NoFourMUBs.Step2.SOS.Reductions267
import NoFourMUBs.Step2.SOS.Reductions270
import NoFourMUBs.Step2.SOS.Reductions283
import NoFourMUBs.Step2.SOS.Reductions287
import NoFourMUBs.Step2.SOS.Reductions304
import NoFourMUBs.Step2.SOS.Reductions320
import NoFourMUBs.Step2.SOS.Reductions328
import NoFourMUBs.Step2.SOS.Reductions333
import NoFourMUBs.Step2.SOS.Reductions334
import NoFourMUBs.Step2.SOS.Reductions340
import NoFourMUBs.Step2.SOS.Reductions343
import NoFourMUBs.Step2.SOS.Reductions366
import NoFourMUBs.Step2.SOS.Reductions367
import NoFourMUBs.Step2.SOS.Reductions369
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical264
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical292

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput1013 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -1, 1, 1], ![-1, 2, 2, -3]]

theorem rowSound1013 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1013) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1013 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1013 H]
  have hshape : boundaryInput1013 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1013 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 720, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1013 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8559, reductionProjection8559, oldProjection3224, oldProjection3230, reductionProjection5703, reductionProjection11722] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1013 (0 : Fin 6)) = canonicalInput24804.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1013 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8559 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1013 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8559 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24804 hH))).trans (reductionSound8559 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1013 (1 : Fin 6)) = canonicalInput28111.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1013 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8559 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1013 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8559 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28111 hH))).trans (reductionSound8559 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1013 (2 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9357 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1013 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection3224 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1013 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection3224 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9357 hH))).trans (oldProjectionSound3224 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1013 (3 : Fin 6)) = canonicalInput28668.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1013 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3230 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1013 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3230 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28668 hH))).trans (oldProjectionSound3230 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1013 (4 : Fin 6)) = canonicalInput28677.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1013 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5703 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1013 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5703 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28677 hH))).trans (reductionSound5703 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1013 (5 : Fin 6)) = canonicalInput28680.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1013 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11722 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1013 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11722 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28680 hH))).trans (reductionSound11722 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1013 (j : Fin 6)))
    288 1440 ![1440, 1440, 720, 1440, 1440, 1440] ![-288, -288, -576, -288, -288, -288] (extendRow Arithmetic.row1013) ![reductionProjection8559, reductionProjection8559, oldProjection3224, oldProjection3230, reductionProjection5703, reductionProjection11722]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1054 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, -1, 1, 1], ![1, 1, 2, -4]]

theorem rowSound1054 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1054) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1054 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1054 H]
  have hshape : boundaryInput1054 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1054 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1054 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10669, oldProjection3341, reductionProjection10690, oldProjection3347, oldProjection3021, reductionProjection11713] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1054 (0 : Fin 6)) = canonicalInput17219.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1054 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10669 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1054 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10669 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17219 hH))).trans (reductionSound10669 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1054 (1 : Fin 6)) = canonicalInput25467.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1054 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3341 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1054 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3341 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25467 hH))).trans (oldProjectionSound3341 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1054 (2 : Fin 6)) = canonicalInput25850.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1054 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10690 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1054 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10690 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25850 hH))).trans (reductionSound10690 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1054 (3 : Fin 6)) = canonicalInput25944.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1054 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3347 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1054 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3347 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25944 hH))).trans (oldProjectionSound3347 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1054 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8455 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1054 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3021 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1054 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3021 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8455 hH))).trans (oldProjectionSound3021 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1054 (5 : Fin 6)) = canonicalInput25969.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1054 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11713 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1054 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11713 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25969 hH))).trans (reductionSound11713 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1054 (j : Fin 6)))
    144 1440 ![1440, 1440, 288, 1440, 1440, 288] ![-144, -144, -720, -144, -144, -720] (extendRow Arithmetic.row1054) ![reductionProjection10669, oldProjection3341, reductionProjection10690, oldProjection3347, oldProjection3021, reductionProjection11713]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput24 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![1, -1, 0], ![-1, -1, 2], ![0, 5, -5]]

theorem rowSound24 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 24) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row24 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row24 H]
  have hshape : boundaryInput24 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput24 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![48, 48, 480, 480, 96, 480] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput24 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11743, reductionProjection11743, reductionProjection11753, reductionProjection11753, reductionProjection6151, reductionProjection9749] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput24 (0 : Fin 6)) = canonicalInput18653.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput24 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11743 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput24 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11743 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound18653 hH))).trans (reductionSound11743 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput24 (1 : Fin 6)) = canonicalInput26393.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput24 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11743 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput24 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11743 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26393 hH))).trans (reductionSound11743 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput24 (2 : Fin 6)) = canonicalInput26470.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput24 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11753 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput24 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11753 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26470 hH))).trans (reductionSound11753 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput24 (3 : Fin 6)) = canonicalInput26525.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput24 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11753 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput24 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11753 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26525 hH))).trans (reductionSound11753 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput24 (4 : Fin 6)) = canonicalInput26530.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput24 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6151 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput24 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6151 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26530 hH))).trans (reductionSound6151 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput24 (5 : Fin 6)) = canonicalInput26531.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput24 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9749 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput24 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9749 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26531 hH))).trans (reductionSound9749 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput24 (j : Fin 6)))
    480 480 ![48, 48, 480, 480, 96, 480] ![-4800, -4800, -480, -480, -2400, -480] (extendRow Arithmetic.row24) ![reductionProjection11743, reductionProjection11743, reductionProjection11753, reductionProjection11753, reductionProjection6151, reductionProjection9749]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput539 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -1, 2, 0], ![-1, 3, 0, -2], ![0, -1, -2, 3]]

theorem rowSound539 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 539) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row539 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row539 H]
  have hshape : boundaryInput539 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput539 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 720, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput539 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10246, reductionProjection11760, reductionProjection10244, reductionProjection10508, reductionProjection9072, reductionProjection11757] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput539 (0 : Fin 6)) = canonicalInput26912.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput539 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10246 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput539 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10246 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26912 hH))).trans (reductionSound10246 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput539 (1 : Fin 6)) = canonicalInput31686.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput539 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11760 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput539 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11760 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31686 hH))).trans (reductionSound11760 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput539 (2 : Fin 6)) = canonicalInput31734.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput539 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10244 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput539 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10244 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31734 hH))).trans (reductionSound10244 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput539 (3 : Fin 6)) = canonicalInput31742.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput539 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10508 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput539 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10508 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31742 hH))).trans (reductionSound10508 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput539 (4 : Fin 6)) = canonicalInput31745.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput539 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9072 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput539 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9072 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31745 hH))).trans (reductionSound9072 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput539 (5 : Fin 6)) = canonicalInput31746.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput539 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11757 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput539 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11757 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31746 hH))).trans (reductionSound11757 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput539 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 720, 288, 1440] ![-1440, -1440, -1440, -2880, -7200, -1440] (extendRow Arithmetic.row539) ![reductionProjection10246, reductionProjection11760, reductionProjection10244, reductionProjection10508, reductionProjection9072, reductionProjection11757]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput541 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 0, 2, -1], ![-1, 3, -1, -1], ![0, -1, -2, 3]]

theorem rowSound541 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 541) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row541 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row541 H]
  have hshape : boundaryInput541 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput541 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 720, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput541 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10891, reductionProjection11769, reductionProjection10882, reductionProjection11000, reductionProjection9205, reductionProjection11767] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput541 (0 : Fin 6)) = canonicalInput26906.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput541 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10891 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput541 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10891 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26906 hH))).trans (reductionSound10891 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput541 (1 : Fin 6)) = canonicalInput31678.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput541 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11769 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput541 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11769 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31678 hH))).trans (reductionSound11769 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput541 (2 : Fin 6)) = canonicalInput31697.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput541 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10882 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput541 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10882 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31697 hH))).trans (reductionSound10882 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput541 (3 : Fin 6)) = canonicalInput31716.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput541 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11000 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput541 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11000 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31716 hH))).trans (reductionSound11000 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput541 (4 : Fin 6)) = canonicalInput31721.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput541 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9205 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput541 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9205 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31721 hH))).trans (reductionSound9205 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput541 (5 : Fin 6)) = canonicalInput31722.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput541 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11767 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput541 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11767 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31722 hH))).trans (reductionSound11767 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput541 (j : Fin 6)))
    1440 1440 ![1440, 720, 1440, 1440, 1440, 1440] ![-1440, -2880, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row541) ![reductionProjection10891, reductionProjection11769, reductionProjection10882, reductionProjection11000, reductionProjection9205, reductionProjection11767]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput634 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 0, 1, -1], ![0, 0, -1, -1, 2], ![2, -1, 0, 0, -1], ![-1, 2, 2, -1, -2]]

theorem rowSound634 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 634) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row634 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row634 H]
  have hshape : boundaryInput634 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput634 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 2880, 1440, 2880, 2880, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput634 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection907, reductionProjection939, reductionProjection943, reductionProjection924, reductionProjection11766, reductionProjection1016] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput634 (0 : Fin 6)) = canonicalInput15895.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput634 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection907 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput634 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection907 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15895 hH))).trans (reductionSound907 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput634 (1 : Fin 6)) = canonicalInput24992.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput634 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection939 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput634 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection939 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24992 hH))).trans (reductionSound939 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput634 (2 : Fin 6)) = canonicalInput25291.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput634 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection943 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput634 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection943 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25291 hH))).trans (reductionSound943 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput634 (3 : Fin 6)) = canonicalInput25311.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput634 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection924 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput634 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection924 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25311 hH))).trans (reductionSound924 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput634 (4 : Fin 6)) = canonicalInput25321.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput634 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11766 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput634 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11766 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25321 hH))).trans (reductionSound11766 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput634 (5 : Fin 6)) = canonicalInput25322.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput634 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1016 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput634 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1016 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25322 hH))).trans (reductionSound1016 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput634 (j : Fin 6)))
    2880 2880 ![2880, 2880, 1440, 2880, 2880, 2880] ![-2880, -2880, -5760, -2880, -2880, -2880] (extendRow Arithmetic.row634) ![reductionProjection907, reductionProjection939, reductionProjection943, reductionProjection924, reductionProjection11766, reductionProjection1016]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput918 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, 1, -1], ![1, -1, 0], ![1, 0, -1], ![-1, -1, 2], ![-1, -1, 2], ![0, 3, -3]]

theorem rowSound918 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 918) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row918 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row918 H]
  have hshape : boundaryInput918 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput918 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![240, 120, 48, 480, 480, 48] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput918 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1132, reductionProjection11744, reductionProjection11745, oldProjection2457, oldProjection2457, oldProjection2652] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput918 (0 : Fin 6)) = canonicalInput30094.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput918 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1132 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput918 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1132 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound30094 hH))).trans (oldProjectionSound1132 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput918 (1 : Fin 6)) = canonicalInput31890.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((120 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput918 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11744 (Normalization.momentVector H)
      have hh : (120 : ℝ) * injectiveMoment H (mergeFirst boundaryInput918 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11744 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31890 hH))).trans (reductionSound11744 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput918 (2 : Fin 6)) = canonicalInput31896.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput918 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11745 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput918 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11745 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31896 hH))).trans (reductionSound11745 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput918 (3 : Fin 6)) = canonicalInput31908.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput918 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2457 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput918 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2457 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31908 hH))).trans (oldProjectionSound2457 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput918 (4 : Fin 6)) = canonicalInput31909.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput918 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2457 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput918 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2457 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31909 hH))).trans (oldProjectionSound2457 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput918 (5 : Fin 6)) = canonicalInput31910.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput918 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2652 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput918 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2652 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31910 hH))).trans (oldProjectionSound2652 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput918 (j : Fin 6)))
    240 480 ![240, 120, 48, 480, 480, 48] ![-480, -960, -2400, -240, -240, -2400] (extendRow Arithmetic.row918) ![oldProjection1132, reductionProjection11744, reductionProjection11745, oldProjection2457, oldProjection2457, oldProjection2652]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput320 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 2, -3, 1], ![-1, 0, 4, -3]]

theorem rowSound320 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 320) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row320 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row320 H]
  have hshape : boundaryInput320 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput320 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 720, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput320 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6811, reductionProjection6840, reductionProjection11839, reductionProjection6769, reductionProjection8654, reductionProjection6503] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput320 (0 : Fin 6)) = canonicalInput17233.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput320 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6811 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput320 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6811 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17233 hH))).trans (reductionSound6811 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput320 (1 : Fin 6)) = canonicalInput25476.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput320 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6840 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput320 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6840 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25476 hH))).trans (reductionSound6840 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput320 (2 : Fin 6)) = canonicalInput25865.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput320 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11839 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput320 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11839 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25865 hH))).trans (reductionSound11839 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput320 (3 : Fin 6)) = canonicalInput25991.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput320 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6769 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput320 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6769 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25991 hH))).trans (reductionSound6769 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput320 (4 : Fin 6)) = canonicalInput25998.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput320 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8654 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput320 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8654 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25998 hH))).trans (reductionSound8654 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput320 (5 : Fin 6)) = canonicalInput25999.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput320 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6503 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput320 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6503 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25999 hH))).trans (reductionSound6503 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput320 (j : Fin 6)))
    1440 1440 ![1440, 1440, 720, 1440, 1440, 288] ![-1440, -1440, -2880, -1440, -1440, -7200] (extendRow Arithmetic.row320) ![reductionProjection6811, reductionProjection6840, reductionProjection11839, reductionProjection6769, reductionProjection8654, reductionProjection6503]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

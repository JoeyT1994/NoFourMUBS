import NoFourMUBs.Step2.SOS.Canonical267
import NoFourMUBs.Step2.SOS.Canonical268
import NoFourMUBs.Step2.SOS.Canonical269
import NoFourMUBs.Step2.SOS.Canonical271
import NoFourMUBs.Step2.SOS.Canonical291
import NoFourMUBs.Step2.SOS.Canonical377
import NoFourMUBs.Step2.SOS.Canonical387
import NoFourMUBs.Step2.SOS.Canonical396
import NoFourMUBs.Step2.SOS.Canonical397
import NoFourMUBs.Step2.SOS.Canonical398
import NoFourMUBs.Step2.SOS.Canonical399
import NoFourMUBs.Step2.SOS.Canonical400
import NoFourMUBs.Step2.SOS.Canonical402
import NoFourMUBs.Step2.SOS.Canonical403
import NoFourMUBs.Step2.SOS.Canonical405
import NoFourMUBs.Step2.SOS.Canonical406
import NoFourMUBs.Step2.SOS.Canonical407
import NoFourMUBs.Step2.SOS.Canonical408
import NoFourMUBs.Step2.SOS.Canonical412
import NoFourMUBs.Step2.SOS.Canonical413
import NoFourMUBs.Step2.SOS.Canonical415
import NoFourMUBs.Step2.SOS.Canonical439
import NoFourMUBs.Step2.SOS.Canonical456
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.OldProjections032
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.OldProjections041
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions018
import NoFourMUBs.Step2.SOS.Reductions042
import NoFourMUBs.Step2.SOS.Reductions043
import NoFourMUBs.Step2.SOS.Reductions044
import NoFourMUBs.Step2.SOS.Reductions046
import NoFourMUBs.Step2.SOS.Reductions050
import NoFourMUBs.Step2.SOS.Reductions051
import NoFourMUBs.Step2.SOS.Reductions054
import NoFourMUBs.Step2.SOS.Reductions270
import NoFourMUBs.Step2.SOS.Reductions309
import NoFourMUBs.Step2.SOS.Reductions310
import NoFourMUBs.Step2.SOS.Reductions311
import NoFourMUBs.Step2.SOS.Reductions312
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical274

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput555 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, -2, 1, 1], ![2, 0, -2, 0], ![-2, 2, 2, -2]]

theorem rowSound555 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 555) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row555 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row555 H]
  have hshape : boundaryInput555 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput555 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 1440, 96, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput555 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1378, reductionProjection1488, reductionProjection1486, reductionProjection1373, reductionProjection1494, reductionProjection9910] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput555 (0 : Fin 6)) = canonicalInput17365.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput555 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1378 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput555 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1378 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17365 hH))).trans (reductionSound1378 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput555 (1 : Fin 6)) = canonicalInput25526.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput555 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1488 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput555 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1488 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25526 hH))).trans (reductionSound1488 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput555 (2 : Fin 6)) = canonicalInput26134.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput555 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1486 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput555 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1486 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26134 hH))).trans (reductionSound1486 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput555 (3 : Fin 6)) = canonicalInput26149.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput555 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1373 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput555 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1373 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26149 hH))).trans (reductionSound1373 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput555 (4 : Fin 6)) = canonicalInput26150.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput555 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1494 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput555 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1494 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26150 hH))).trans (reductionSound1494 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput555 (5 : Fin 6)) = canonicalInput26151.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput555 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9910 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput555 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9910 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26151 hH))).trans (reductionSound9910 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput555 (j : Fin 6)))
    1440 1440 ![720, 720, 1440, 96, 288, 1440] ![-2880, -2880, -1440, -21600, -7200, -1440] (extendRow Arithmetic.row555) ![reductionProjection1378, reductionProjection1488, reductionProjection1486, reductionProjection1373, reductionProjection1494, reductionProjection9910]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput548 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 1, -1], ![2, -1, -1, 0], ![-2, 2, 2, -2]]

theorem rowSound548 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 548) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row548 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row548 H]
  have hshape : boundaryInput548 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput548 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![360, 1440, 1440, 288, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput548 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1393, reductionProjection1389, reductionProjection1400, oldProjection2893, reductionProjection1638, reductionProjection9922] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput548 (0 : Fin 6)) = canonicalInput17216.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput548 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1393 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput548 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1393 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17216 hH))).trans (reductionSound1393 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput548 (1 : Fin 6)) = canonicalInput25464.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput548 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1389 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput548 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1389 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25464 hH))).trans (reductionSound1389 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput548 (2 : Fin 6)) = canonicalInput25847.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput548 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1400 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput548 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1400 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25847 hH))).trans (reductionSound1400 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput548 (3 : Fin 6)) = canonicalInput25940.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput548 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2893 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput548 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2893 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25940 hH))).trans (oldProjectionSound2893 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput548 (4 : Fin 6)) = canonicalInput25962.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput548 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1638 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput548 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1638 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25962 hH))).trans (reductionSound1638 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput548 (5 : Fin 6)) = canonicalInput25963.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput548 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9922 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput548 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9922 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25963 hH))).trans (reductionSound9922 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput548 (j : Fin 6)))
    1440 1440 ![360, 1440, 1440, 288, 1440, 1440] ![-5760, -1440, -1440, -7200, -1440, -1440] (extendRow Arithmetic.row548) ![reductionProjection1393, reductionProjection1389, reductionProjection1400, oldProjection2893, reductionProjection1638, reductionProjection9922]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput492 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![-1, 0, 2, -1], ![1, 3, -2, -2]]

theorem rowSound492 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 492) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row492 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row492 H]
  have hshape : boundaryInput492 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput492 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 720, 1440, 144, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput492 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9946, reductionProjection9942, reductionProjection9970, reductionProjection9935, reductionProjection9937, oldProjection3064] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput492 (0 : Fin 6)) = canonicalInput24822.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput492 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9946 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput492 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9946 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24822 hH))).trans (reductionSound9946 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput492 (1 : Fin 6)) = canonicalInput28122.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput492 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9942 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput492 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9942 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28122 hH))).trans (reductionSound9942 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput492 (2 : Fin 6)) = canonicalInput29185.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput492 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9970 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput492 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9970 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29185 hH))).trans (reductionSound9970 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput492 (3 : Fin 6)) = canonicalInput29225.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput492 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9935 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput492 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9935 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29225 hH))).trans (reductionSound9935 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput492 (4 : Fin 6)) = canonicalInput29228.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput492 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9937 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput492 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9937 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29228 hH))).trans (reductionSound9937 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput492 (5 : Fin 6)) = canonicalInput29230.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput492 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3064 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput492 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3064 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29230 hH))).trans (oldProjectionSound3064 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput492 (j : Fin 6)))
    1440 1440 ![1440, 1440, 720, 1440, 144, 1440] ![-1440, -1440, -2880, -1440, -14400, -1440] (extendRow Arithmetic.row492) ![reductionProjection9946, reductionProjection9942, reductionProjection9970, reductionProjection9935, reductionProjection9937, oldProjection3064]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput503 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-1, 0, 2, -1], ![1, 1, 0, -2], ![-1, 2, -3, 2]]

theorem rowSound503 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 503) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row503 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row503 H]
  have hshape : boundaryInput503 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput503 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput503 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9969, reductionProjection9966, reductionProjection9971, reductionProjection9961, reductionProjection8668, oldProjection3386] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput503 (0 : Fin 6)) = canonicalInput24150.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput503 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9969 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput503 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9969 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24150 hH))).trans (reductionSound9969 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput503 (1 : Fin 6)) = canonicalInput25783.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput503 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9966 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput503 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9966 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25783 hH))).trans (reductionSound9966 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput503 (2 : Fin 6)) = canonicalInput26047.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput503 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9971 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput503 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9971 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26047 hH))).trans (reductionSound9971 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput503 (3 : Fin 6)) = canonicalInput26057.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput503 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9961 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput503 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9961 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26057 hH))).trans (reductionSound9961 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput503 (4 : Fin 6)) = canonicalInput26058.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput503 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8668 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput503 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8668 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26058 hH))).trans (reductionSound8668 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput503 (5 : Fin 6)) = canonicalInput26059.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput503 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3386 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput503 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3386 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26059 hH))).trans (oldProjectionSound3386 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput503 (j : Fin 6)))
    1440 1440 ![1440, 1440, 288, 1440, 1440, 1440] ![-1440, -1440, -7200, -1440, -1440, -1440] (extendRow Arithmetic.row503) ![reductionProjection9969, reductionProjection9966, reductionProjection9971, reductionProjection9961, reductionProjection8668, oldProjection3386]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput549 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -2, 1, 0], ![2, 0, -1, -1], ![-2, 2, 2, -2]]

theorem rowSound549 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 549) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row549 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row549 H]
  have hshape : boundaryInput549 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput549 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 720, 1440, 144, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput549 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1416, reductionProjection1421, reductionProjection1406, reductionProjection1632, reductionProjection1639, reductionProjection9963] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput549 (0 : Fin 6)) = canonicalInput17213.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput549 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1416 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput549 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1416 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17213 hH))).trans (reductionSound1416 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput549 (1 : Fin 6)) = canonicalInput25462.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput549 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1421 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput549 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1421 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25462 hH))).trans (reductionSound1421 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput549 (2 : Fin 6)) = canonicalInput25845.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput549 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1406 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput549 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1406 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25845 hH))).trans (reductionSound1406 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput549 (3 : Fin 6)) = canonicalInput25938.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput549 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1632 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput549 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1632 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25938 hH))).trans (reductionSound1632 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput549 (4 : Fin 6)) = canonicalInput25955.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput549 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1639 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput549 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1639 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25955 hH))).trans (reductionSound1639 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput549 (5 : Fin 6)) = canonicalInput25956.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput549 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9963 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput549 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9963 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25956 hH))).trans (reductionSound9963 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput549 (j : Fin 6)))
    72 1440 ![1440, 720, 1440, 144, 288, 1440] ![-72, -144, -72, -720, -360, -72] (extendRow Arithmetic.row549) ![reductionProjection1416, reductionProjection1421, reductionProjection1406, reductionProjection1632, reductionProjection1639, reductionProjection9963]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput552 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![1, 1, -2, 0], ![2, 0, -1, -1], ![-2, 2, 2, -2]]

theorem rowSound552 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 552) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row552 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row552 H]
  have hshape : boundaryInput552 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput552 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput552 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1413, reductionProjection1413, reductionProjection1396, reductionProjection1629, reductionProjection1631, reductionProjection9965] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput552 (0 : Fin 6)) = canonicalInput17095.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput552 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1413 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput552 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1413 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17095 hH))).trans (reductionSound1413 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput552 (1 : Fin 6)) = canonicalInput25386.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput552 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1413 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput552 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1413 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25386 hH))).trans (reductionSound1413 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput552 (2 : Fin 6)) = canonicalInput25567.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput552 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1396 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput552 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1396 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25567 hH))).trans (reductionSound1396 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput552 (3 : Fin 6)) = canonicalInput25595.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput552 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1629 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput552 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1629 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25595 hH))).trans (reductionSound1629 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput552 (4 : Fin 6)) = canonicalInput25600.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput552 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1631 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput552 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1631 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25600 hH))).trans (reductionSound1631 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput552 (5 : Fin 6)) = canonicalInput25601.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput552 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9965 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput552 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9965 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25601 hH))).trans (reductionSound9965 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput552 (j : Fin 6)))
    720 1440 ![720, 720, 1440, 1440, 288, 1440] ![-1440, -1440, -720, -720, -3600, -720] (extendRow Arithmetic.row552) ![reductionProjection1413, reductionProjection1413, reductionProjection1396, reductionProjection1629, reductionProjection1631, reductionProjection9965]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput18 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![1, 0, -1], ![-1, -2, 3], ![1, 3, -4]]

theorem rowSound18 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 18) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row18 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row18 H]
  have hshape : boundaryInput18 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput18 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![480, 480, 480, 480, 480, 96] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput18 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10007, reductionProjection10007, reductionProjection10009, oldProjection746, reductionProjection1735, oldProjection2477] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput18 (0 : Fin 6)) = canonicalInput18645.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput18 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10007 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput18 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10007 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound18645 hH))).trans (reductionSound10007 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput18 (1 : Fin 6)) = canonicalInput26386.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput18 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10007 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput18 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10007 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26386 hH))).trans (reductionSound10007 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput18 (2 : Fin 6)) = canonicalInput26430.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput18 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10009 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput18 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10009 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26430 hH))).trans (reductionSound10009 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput18 (3 : Fin 6)) = canonicalInput26480.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput18 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection746 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput18 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection746 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26480 hH))).trans (oldProjectionSound746 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput18 (4 : Fin 6)) = canonicalInput26488.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput18 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1735 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput18 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1735 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26488 hH))).trans (reductionSound1735 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput18 (5 : Fin 6)) = canonicalInput26489.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput18 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2477 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput18 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2477 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26489 hH))).trans (oldProjectionSound2477 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput18 (j : Fin 6)))
    480 480 ![480, 480, 480, 480, 480, 96] ![-480, -480, -480, -480, -480, -2400] (extendRow Arithmetic.row18) ![reductionProjection10007, reductionProjection10007, reductionProjection10009, oldProjection746, reductionProjection1735, oldProjection2477]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput19 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![0, -1, 1], ![0, 1, -1], ![1, 0, -1], ![1, 0, -1], ![0, 3, -3], ![-1, -3, 4]]

theorem rowSound19 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 19) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row19 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row19 H]
  have hshape : boundaryInput19 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput19 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![96, 96, 96, 96, 480, 48] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput19 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9999, reductionProjection10013, oldProjection747, oldProjection747, oldProjection2383, reductionProjection601] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput19 (0 : Fin 6)) = canonicalInput18659.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput19 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9999 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput19 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9999 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound18659 hH))).trans (reductionSound9999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput19 (1 : Fin 6)) = canonicalInput26399.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput19 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10013 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput19 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10013 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26399 hH))).trans (reductionSound10013 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput19 (2 : Fin 6)) = canonicalInput26560.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput19 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection747 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput19 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection747 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26560 hH))).trans (oldProjectionSound747 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput19 (3 : Fin 6)) = canonicalInput26604.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput19 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection747 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput19 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection747 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26604 hH))).trans (oldProjectionSound747 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput19 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8777 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput19 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2383 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput19 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2383 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8777 hH))).trans (oldProjectionSound2383 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput19 (5 : Fin 6)) = canonicalInput26610.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput19 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection601 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput19 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection601 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26610 hH))).trans (reductionSound601 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput19 (j : Fin 6)))
    480 480 ![96, 96, 96, 96, 480, 48] ![-2400, -2400, -2400, -2400, -480, -4800] (extendRow Arithmetic.row19) ![reductionProjection9999, reductionProjection10013, oldProjection747, oldProjection747, oldProjection2383, reductionProjection601]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

import NoFourMUBs.Step2.SOS.Canonical119
import NoFourMUBs.Step2.SOS.Canonical248
import NoFourMUBs.Step2.SOS.Canonical250
import NoFourMUBs.Step2.SOS.Canonical267
import NoFourMUBs.Step2.SOS.Canonical269
import NoFourMUBs.Step2.SOS.Canonical270
import NoFourMUBs.Step2.SOS.Canonical316
import NoFourMUBs.Step2.SOS.Canonical324
import NoFourMUBs.Step2.SOS.Canonical327
import NoFourMUBs.Step2.SOS.Canonical390
import NoFourMUBs.Step2.SOS.Canonical395
import NoFourMUBs.Step2.SOS.Canonical396
import NoFourMUBs.Step2.SOS.Canonical397
import NoFourMUBs.Step2.SOS.Canonical398
import NoFourMUBs.Step2.SOS.Canonical401
import NoFourMUBs.Step2.SOS.Canonical402
import NoFourMUBs.Step2.SOS.Canonical406
import NoFourMUBs.Step2.SOS.Canonical407
import NoFourMUBs.Step2.SOS.Canonical408
import NoFourMUBs.Step2.SOS.Canonical437
import NoFourMUBs.Step2.SOS.Canonical450
import NoFourMUBs.Step2.SOS.Canonical452
import NoFourMUBs.Step2.SOS.Canonical453
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions075
import NoFourMUBs.Step2.SOS.Reductions109
import NoFourMUBs.Step2.SOS.Reductions110
import NoFourMUBs.Step2.SOS.Reductions154
import NoFourMUBs.Step2.SOS.Reductions158
import NoFourMUBs.Step2.SOS.Reductions197
import NoFourMUBs.Step2.SOS.Reductions199
import NoFourMUBs.Step2.SOS.Reductions200
import NoFourMUBs.Step2.SOS.Reductions201
import NoFourMUBs.Step2.SOS.Reductions203
import NoFourMUBs.Step2.SOS.Reductions212
import NoFourMUBs.Step2.SOS.Reductions224
import NoFourMUBs.Step2.SOS.Reductions225
import NoFourMUBs.Step2.SOS.Reductions226
import NoFourMUBs.Step2.SOS.Reductions264
import NoFourMUBs.Step2.SOS.Reductions267
import NoFourMUBs.Step2.SOS.Reductions269
import NoFourMUBs.Step2.SOS.Reductions270
import NoFourMUBs.Step2.SOS.Reductions298
import NoFourMUBs.Step2.SOS.Reductions299
import NoFourMUBs.Step2.SOS.Reductions300
import NoFourMUBs.Step2.SOS.Reductions351
import NoFourMUBs.Step2.SOS.Reductions352
import NoFourMUBs.Step2.SOS.Reductions356
import NoFourMUBs.Step2.SOS.Reductions368
import NoFourMUBs.Step2.SOS.Reductions369
import NoFourMUBs.Step2.SOS.Reductions374

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput202 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 1, 0, -1], ![-1, 1, -2, 2], ![2, 0, 2, -4]]

theorem rowSound202 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 202) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row202 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row202 H]
  have hshape : boundaryInput202 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput202 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput202 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6402, reductionProjection6403, reductionProjection6420, oldProjection3122, reductionProjection6389, reductionProjection11968] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput202 (0 : Fin 6)) = canonicalInput17128.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput202 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6402 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput202 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6402 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17128 hH))).trans (reductionSound6402 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput202 (1 : Fin 6)) = canonicalInput25417.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput202 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6403 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput202 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6403 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25417 hH))).trans (reductionSound6403 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput202 (2 : Fin 6)) = canonicalInput25698.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput202 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6420 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput202 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6420 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25698 hH))).trans (reductionSound6420 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput202 (3 : Fin 6)) = canonicalInput25725.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput202 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3122 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput202 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3122 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25725 hH))).trans (oldProjectionSound3122 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput202 (4 : Fin 6)) = canonicalInput25734.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput202 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6389 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput202 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6389 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25734 hH))).trans (reductionSound6389 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput202 (5 : Fin 6)) = canonicalInput25735.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput202 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11968 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput202 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11968 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25735 hH))).trans (reductionSound11968 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput202 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 720] ![-1440, -1440, -1440, -1440, -1440, -2880] (extendRow Arithmetic.row202) ![reductionProjection6402, reductionProjection6403, reductionProjection6420, oldProjection3122, reductionProjection6389, reductionProjection11968]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput209 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 0, -2, 3], ![1, 0, 3, -4]]

theorem rowSound209 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 209) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row209 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row209 H]
  have hshape : boundaryInput209 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput209 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 288, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput209 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11419, reductionProjection11790, reductionProjection11804, reductionProjection11836, reductionProjection6415, reductionProjection11972] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput209 (0 : Fin 6)) = canonicalInput17334.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput209 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11419 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput209 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11419 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17334 hH))).trans (reductionSound11419 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput209 (1 : Fin 6)) = canonicalInput25518.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput209 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11790 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput209 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11790 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25518 hH))).trans (reductionSound11790 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput209 (2 : Fin 6)) = canonicalInput26108.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput209 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11804 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput209 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11804 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26108 hH))).trans (reductionSound11804 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput209 (3 : Fin 6)) = canonicalInput26120.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput209 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11836 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput209 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11836 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26120 hH))).trans (reductionSound11836 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput209 (4 : Fin 6)) = canonicalInput26121.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput209 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6415 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput209 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6415 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26121 hH))).trans (reductionSound6415 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput209 (5 : Fin 6)) = canonicalInput26122.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput209 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11972 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput209 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11972 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26122 hH))).trans (reductionSound11972 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput209 (j : Fin 6)))
    1440 1440 ![288, 1440, 288, 1440, 288, 1440] ![-7200, -1440, -7200, -1440, -7200, -1440] (extendRow Arithmetic.row209) ![reductionProjection11419, reductionProjection11790, reductionProjection11804, reductionProjection11836, reductionProjection6415, reductionProjection11972]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput303 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, 3, -2], ![2, -2, -2, 2]]

theorem rowSound303 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 303) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row303 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row303 H]
  have hshape : boundaryInput303 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput303 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 1440, 1440, 144, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput303 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9558, reductionProjection9572, reductionProjection9603, oldProjection3307, oldProjection3131, reductionProjection11981] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput303 (0 : Fin 6)) = canonicalInput20274.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput303 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9558 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput303 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9558 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20274 hH))).trans (reductionSound9558 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput303 (1 : Fin 6)) = canonicalInput28006.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput303 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9572 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput303 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9572 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28006 hH))).trans (reductionSound9572 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput303 (2 : Fin 6)) = canonicalInput28814.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput303 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9603 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput303 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9603 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28814 hH))).trans (reductionSound9603 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput303 (3 : Fin 6)) = canonicalInput28964.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput303 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3307 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput303 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3307 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28964 hH))).trans (oldProjectionSound3307 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput303 (4 : Fin 6)) = canonicalInput28992.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput303 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3131 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput303 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3131 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28992 hH))).trans (oldProjectionSound3131 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput303 (5 : Fin 6)) = canonicalInput28994.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput303 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11981 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput303 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11981 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28994 hH))).trans (reductionSound11981 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput303 (j : Fin 6)))
    288 1440 ![720, 1440, 1440, 144, 1440, 1440] ![-576, -288, -288, -2880, -288, -288] (extendRow Arithmetic.row303) ![reductionProjection9558, reductionProjection9572, reductionProjection9603, oldProjection3307, oldProjection3131, reductionProjection11981]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput327 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, 3, -2], ![2, -1, -3, 2]]

theorem rowSound327 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 327) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row327 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row327 H]
  have hshape : boundaryInput327 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput327 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 1440, 288, 288, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput327 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8564, reductionProjection8573, reductionProjection8666, reductionProjection8616, reductionProjection6807, reductionProjection11978] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput327 (0 : Fin 6)) = canonicalInput17259.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput327 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8564 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput327 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8564 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17259 hH))).trans (reductionSound8564 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput327 (1 : Fin 6)) = canonicalInput25484.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput327 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8573 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput327 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8573 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25484 hH))).trans (reductionSound8573 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput327 (2 : Fin 6)) = canonicalInput26008.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput327 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8666 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput327 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8666 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26008 hH))).trans (reductionSound8666 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput327 (3 : Fin 6)) = canonicalInput26028.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput327 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8616 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput327 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8616 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26028 hH))).trans (reductionSound8616 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput327 (4 : Fin 6)) = canonicalInput26031.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput327 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6807 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput327 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6807 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26031 hH))).trans (reductionSound6807 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput327 (5 : Fin 6)) = canonicalInput26032.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput327 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11978 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput327 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11978 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26032 hH))).trans (reductionSound11978 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput327 (j : Fin 6)))
    1440 1440 ![720, 1440, 288, 288, 720, 1440] ![-2880, -1440, -7200, -7200, -2880, -1440] (extendRow Arithmetic.row327) ![reductionProjection8564, reductionProjection8573, reductionProjection8666, reductionProjection8616, reductionProjection6807, reductionProjection11978]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput329 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 0, 3, -2], ![0, 2, -4, 2]]

theorem rowSound329 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 329) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row329 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row329 H]
  have hshape : boundaryInput329 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput329 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput329 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6501, reductionProjection6525, reductionProjection11976, reductionProjection6404, reductionProjection6503, reductionProjection8470] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput329 (0 : Fin 6)) = canonicalInput17273.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput329 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6501 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput329 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6501 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17273 hH))).trans (reductionSound6501 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput329 (1 : Fin 6)) = canonicalInput25495.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput329 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6525 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput329 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6525 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25495 hH))).trans (reductionSound6525 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput329 (2 : Fin 6)) = canonicalInput26017.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput329 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11976 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput329 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11976 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26017 hH))).trans (reductionSound11976 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput329 (3 : Fin 6)) = canonicalInput26062.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput329 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6404 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput329 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6404 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26062 hH))).trans (reductionSound6404 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput329 (4 : Fin 6)) = canonicalInput26069.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput329 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6503 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput329 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6503 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26069 hH))).trans (reductionSound6503 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput329 (5 : Fin 6)) = canonicalInput26071.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput329 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8470 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput329 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8470 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26071 hH))).trans (reductionSound8470 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput329 (j : Fin 6)))
    288 1440 ![1440, 1440, 1440, 1440, 288, 1440] ![-288, -288, -288, -288, -1440, -288] (extendRow Arithmetic.row329) ![reductionProjection6501, reductionProjection6525, reductionProjection11976, reductionProjection6404, reductionProjection6503, reductionProjection8470]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput340 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, -3, 1], ![0, -2, 4, -2]]

theorem rowSound340 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 340) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row340 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row340 H]
  have hshape : boundaryInput340 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput340 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![144, 288, 288, 288, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput340 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6320, reductionProjection6462, reductionProjection6503, reductionProjection6503, reductionProjection11976, reductionProjection2413] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput340 (0 : Fin 6)) = canonicalInput7645.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput340 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6320 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput340 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6320 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7645 hH))).trans (reductionSound6320 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput340 (1 : Fin 6)) = canonicalInput20749.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput340 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6462 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput340 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6462 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20749 hH))).trans (reductionSound6462 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput340 (2 : Fin 6)) = canonicalInput20929.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput340 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6503 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput340 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6503 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20929 hH))).trans (reductionSound6503 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput340 (3 : Fin 6)) = canonicalInput20969.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput340 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6503 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput340 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6503 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20969 hH))).trans (reductionSound6503 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput340 (4 : Fin 6)) = canonicalInput20970.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput340 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11976 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput340 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11976 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20970 hH))).trans (reductionSound11976 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput340 (5 : Fin 6)) = canonicalInput20971.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput340 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2413 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput340 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2413 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20971 hH))).trans (reductionSound2413 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput340 (j : Fin 6)))
    720 1440 ![144, 288, 288, 288, 1440, 720] ![-7200, -3600, -3600, -3600, -720, -1440] (extendRow Arithmetic.row340) ![reductionProjection6320, reductionProjection6462, reductionProjection6503, reductionProjection6503, reductionProjection11976, reductionProjection2413]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput566 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, 0, 1, -1], ![0, 1, -1, 0, 0], ![-1, 1, -1, 1, 0], ![0, 0, 2, -2, 0], ![2, -1, 0, 0, -1]]

theorem rowSound566 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 566) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row566 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row566 H]
  have hshape : boundaryInput566 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput566 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 2880, 2880, 2880, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput566 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7195, reductionProjection11256, reductionProjection7184, reductionProjection4956, reductionProjection3535, reductionProjection11999] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput566 (0 : Fin 6)) = canonicalInput16003.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput566 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7195 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput566 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7195 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16003 hH))).trans (reductionSound7195 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput566 (1 : Fin 6)) = canonicalInput25002.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput566 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11256 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput566 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11256 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25002 hH))).trans (reductionSound11256 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput566 (2 : Fin 6)) = canonicalInput25345.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput566 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7184 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput566 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7184 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25345 hH))).trans (reductionSound7184 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput566 (3 : Fin 6)) = canonicalInput25357.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput566 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4956 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput566 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4956 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25357 hH))).trans (reductionSound4956 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput566 (4 : Fin 6)) = canonicalInput25359.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput566 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3535 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput566 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3535 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25359 hH))).trans (reductionSound3535 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput566 (5 : Fin 6)) = canonicalInput25360.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput566 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11999 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput566 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11999 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25360 hH))).trans (reductionSound11999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput566 (j : Fin 6)))
    2880 2880 ![720, 2880, 2880, 2880, 1440, 1440] ![-11520, -2880, -2880, -2880, -5760, -5760] (extendRow Arithmetic.row566) ![reductionProjection7195, reductionProjection11256, reductionProjection7184, reductionProjection4956, reductionProjection3535, reductionProjection11999]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput569 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 0, 1, -1], ![-1, 0, 2, -1, 0], ![0, 2, -1, -1, 0], ![2, -1, 0, 0, -1]]

theorem rowSound569 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 569) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row569 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row569 H]
  have hshape : boundaryInput569 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput569 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 2880, 1440, 720, 576, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput569 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7223, reductionProjection7253, reductionProjection11272, reductionProjection3517, reductionProjection5060, reductionProjection11993] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput569 (0 : Fin 6)) = canonicalInput15891.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput569 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7223 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput569 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7223 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15891 hH))).trans (reductionSound7223 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput569 (1 : Fin 6)) = canonicalInput24988.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput569 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7253 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput569 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7253 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24988 hH))).trans (reductionSound7253 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput569 (2 : Fin 6)) = canonicalInput25287.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput569 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11272 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput569 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11272 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25287 hH))).trans (reductionSound11272 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput569 (3 : Fin 6)) = canonicalInput25307.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput569 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3517 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput569 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3517 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25307 hH))).trans (reductionSound3517 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput569 (4 : Fin 6)) = canonicalInput25312.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput569 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5060 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput569 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5060 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25312 hH))).trans (reductionSound5060 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput569 (5 : Fin 6)) = canonicalInput25313.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput569 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11993 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput569 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11993 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25313 hH))).trans (reductionSound11993 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput569 (j : Fin 6)))
    2880 2880 ![1440, 2880, 1440, 720, 576, 2880] ![-5760, -2880, -5760, -11520, -14400, -2880] (extendRow Arithmetic.row569) ![reductionProjection7223, reductionProjection7253, reductionProjection11272, reductionProjection3517, reductionProjection5060, reductionProjection11993]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

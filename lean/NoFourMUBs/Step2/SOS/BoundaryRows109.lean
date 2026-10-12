import NoFourMUBs.Step2.SOS.Canonical116
import NoFourMUBs.Step2.SOS.Canonical267
import NoFourMUBs.Step2.SOS.Canonical269
import NoFourMUBs.Step2.SOS.Canonical271
import NoFourMUBs.Step2.SOS.Canonical317
import NoFourMUBs.Step2.SOS.Canonical323
import NoFourMUBs.Step2.SOS.Canonical326
import NoFourMUBs.Step2.SOS.Canonical397
import NoFourMUBs.Step2.SOS.Canonical398
import NoFourMUBs.Step2.SOS.Canonical401
import NoFourMUBs.Step2.SOS.Canonical402
import NoFourMUBs.Step2.SOS.Canonical406
import NoFourMUBs.Step2.SOS.Canonical408
import NoFourMUBs.Step2.SOS.Canonical438
import NoFourMUBs.Step2.SOS.Canonical464
import NoFourMUBs.Step2.SOS.Canonical465
import NoFourMUBs.Step2.SOS.Canonical471
import NoFourMUBs.Step2.SOS.Canonical491
import NoFourMUBs.Step2.SOS.Canonical492
import NoFourMUBs.Step2.SOS.Canonical493
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections035
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.OldProjections041
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions199
import NoFourMUBs.Step2.SOS.Reductions200
import NoFourMUBs.Step2.SOS.Reductions203
import NoFourMUBs.Step2.SOS.Reductions205
import NoFourMUBs.Step2.SOS.Reductions332
import NoFourMUBs.Step2.SOS.Reductions333
import NoFourMUBs.Step2.SOS.Reductions334
import NoFourMUBs.Step2.SOS.Reductions336
import NoFourMUBs.Step2.SOS.Reductions356
import NoFourMUBs.Step2.SOS.Reductions368
import NoFourMUBs.Step2.SOS.Reductions370
import NoFourMUBs.Step2.SOS.Reductions372
import NoFourMUBs.Step2.SOS.Reductions373
import NoFourMUBs.Step2.SOS.Reductions374

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput205 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, 0, -2, 3], ![1, 1, 2, -4]]

theorem rowSound205 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 205) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row205 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row205 H]
  have hshape : boundaryInput205 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput205 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 288, 1440, 144, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput205 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10653, reductionProjection10655, reductionProjection10692, reductionProjection10769, reductionProjection6382, reductionProjection11955] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput205 (0 : Fin 6)) = canonicalInput17136.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput205 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10653 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput205 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10653 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17136 hH))).trans (reductionSound10653 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput205 (1 : Fin 6)) = canonicalInput25427.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput205 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10655 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput205 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10655 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25427 hH))).trans (reductionSound10655 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput205 (2 : Fin 6)) = canonicalInput25706.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput205 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10692 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput205 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10692 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25706 hH))).trans (reductionSound10692 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput205 (3 : Fin 6)) = canonicalInput25766.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput205 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10769 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput205 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10769 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25766 hH))).trans (reductionSound10769 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput205 (4 : Fin 6)) = canonicalInput25772.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput205 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6382 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput205 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6382 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25772 hH))).trans (reductionSound6382 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput205 (5 : Fin 6)) = canonicalInput25773.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput205 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11955 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput205 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11955 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25773 hH))).trans (reductionSound11955 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput205 (j : Fin 6)))
    1440 1440 ![720, 720, 288, 1440, 144, 1440] ![-2880, -2880, -7200, -1440, -14400, -1440] (extendRow Arithmetic.row205) ![reductionProjection10653, reductionProjection10655, reductionProjection10692, reductionProjection10769, reductionProjection6382, reductionProjection11955]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput206 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, -2, 3], ![2, 0, 2, -4]]

theorem rowSound206 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 206) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row206 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row206 H]
  have hshape : boundaryInput206 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput206 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 1440, 72, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput206 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6378, reductionProjection6383, reductionProjection6418, reductionProjection6521, reductionProjection6369, reductionProjection11949] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput206 (0 : Fin 6)) = canonicalInput17132.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput206 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6378 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput206 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6378 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17132 hH))).trans (reductionSound6378 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput206 (1 : Fin 6)) = canonicalInput25422.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput206 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6383 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput206 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6383 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25422 hH))).trans (reductionSound6383 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput206 (2 : Fin 6)) = canonicalInput25702.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput206 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6418 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput206 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6418 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25702 hH))).trans (reductionSound6418 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput206 (3 : Fin 6)) = canonicalInput25754.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput206 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6521 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput206 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6521 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25754 hH))).trans (reductionSound6521 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput206 (4 : Fin 6)) = canonicalInput25757.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput206 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6369 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput206 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6369 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25757 hH))).trans (reductionSound6369 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput206 (5 : Fin 6)) = canonicalInput25758.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput206 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11949 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput206 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11949 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25758 hH))).trans (reductionSound11949 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput206 (j : Fin 6)))
    288 1440 ![1440, 1440, 288, 1440, 72, 1440] ![-288, -288, -1440, -288, -5760, -288] (extendRow Arithmetic.row206) ![reductionProjection6378, reductionProjection6383, reductionProjection6418, reductionProjection6521, reductionProjection6369, reductionProjection11949]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput208 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, 0, -2, 3], ![0, 1, 3, -4]]

theorem rowSound208 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 208) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row208 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row208 H]
  have hshape : boundaryInput208 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput208 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 1440, 1440, 144, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput208 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11423, reductionProjection11805, reductionProjection11944, reductionProjection11964, reductionProjection6431, reductionProjection11932] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput208 (0 : Fin 6)) = canonicalInput17362.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput208 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11423 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput208 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11423 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17362 hH))).trans (reductionSound11423 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput208 (1 : Fin 6)) = canonicalInput25524.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput208 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11805 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput208 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11805 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25524 hH))).trans (reductionSound11805 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput208 (2 : Fin 6)) = canonicalInput26132.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput208 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11944 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput208 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11944 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26132 hH))).trans (reductionSound11944 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput208 (3 : Fin 6)) = canonicalInput26140.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput208 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11964 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput208 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11964 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26140 hH))).trans (reductionSound11964 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput208 (4 : Fin 6)) = canonicalInput26143.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput208 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6431 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput208 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6431 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26143 hH))).trans (reductionSound6431 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput208 (5 : Fin 6)) = canonicalInput26144.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput208 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11932 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput208 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11932 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26144 hH))).trans (reductionSound11932 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput208 (j : Fin 6)))
    1440 1440 ![288, 288, 1440, 1440, 144, 1440] ![-7200, -7200, -1440, -1440, -14400, -1440] (extendRow Arithmetic.row208) ![reductionProjection11423, reductionProjection11805, reductionProjection11944, reductionProjection11964, reductionProjection6431, reductionProjection11932]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput214 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 0, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, -2, 3], ![2, 0, 2, -4]]

theorem rowSound214 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 214) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row214 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row214 H]
  have hshape : boundaryInput214 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput214 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput214 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6372, reductionProjection6387, reductionProjection6426, reductionProjection6522, reductionProjection6376, reductionProjection11950] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput214 (0 : Fin 6)) = canonicalInput7468.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput214 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6372 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput214 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6372 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7468 hH))).trans (reductionSound6372 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput214 (1 : Fin 6)) = canonicalInput20725.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput214 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6387 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput214 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6387 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20725 hH))).trans (reductionSound6387 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput214 (2 : Fin 6)) = canonicalInput20867.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput214 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6426 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput214 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6426 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20867 hH))).trans (reductionSound6426 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput214 (3 : Fin 6)) = canonicalInput20884.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput214 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6522 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput214 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6522 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20884 hH))).trans (reductionSound6522 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput214 (4 : Fin 6)) = canonicalInput20887.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput214 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6376 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput214 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6376 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20887 hH))).trans (reductionSound6376 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput214 (5 : Fin 6)) = canonicalInput20888.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput214 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11950 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput214 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11950 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20888 hH))).trans (reductionSound11950 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput214 (j : Fin 6)))
    1440 1440 ![288, 1440, 1440, 1440, 1440, 1440] ![-7200, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row214) ![reductionProjection6372, reductionProjection6387, reductionProjection6426, reductionProjection6522, reductionProjection6376, reductionProjection11950]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput265 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 0, 3, -2], ![-1, 1, -3, 3]]

theorem rowSound265 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 265) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row265 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row265 H]
  have hshape : boundaryInput265 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput265 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 720, 1440, 1440, 720, 144] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput265 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection2695, reductionProjection11936, reductionProjection11935, reductionProjection11935, oldProjection3418, reductionProjection11937] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput265 (0 : Fin 6)) = canonicalInput30189.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput265 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection2695 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput265 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection2695 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30189 hH))).trans (oldProjectionSound2695 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput265 (1 : Fin 6)) = canonicalInput31437.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput265 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11936 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput265 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11936 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31437 hH))).trans (reductionSound11936 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput265 (2 : Fin 6)) = canonicalInput31511.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput265 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11935 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput265 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11935 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31511 hH))).trans (reductionSound11935 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput265 (3 : Fin 6)) = canonicalInput31549.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput265 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11935 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput265 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11935 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31549 hH))).trans (reductionSound11935 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput265 (4 : Fin 6)) = canonicalInput31553.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput265 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3418 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput265 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3418 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31553 hH))).trans (oldProjectionSound3418 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput265 (5 : Fin 6)) = canonicalInput31554.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput265 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11937 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput265 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11937 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31554 hH))).trans (reductionSound11937 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput265 (j : Fin 6)))
    288 1440 ![288, 720, 1440, 1440, 720, 144] ![-1440, -576, -288, -288, -576, -2880] (extendRow Arithmetic.row265) ![oldProjection2695, reductionProjection11936, reductionProjection11935, reductionProjection11935, oldProjection3418, reductionProjection11937]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput332 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-1, 0, 3, -2], ![1, 1, -4, 2]]

theorem rowSound332 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 332) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row332 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row332 H]
  have hshape : boundaryInput332 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput332 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 1440, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput332 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10674, reductionProjection10671, reductionProjection10692, reductionProjection10646, oldProjection3124, reductionProjection11953] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput332 (0 : Fin 6)) = canonicalInput17138.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput332 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10674 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput332 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10674 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17138 hH))).trans (reductionSound10674 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput332 (1 : Fin 6)) = canonicalInput25429.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput332 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10671 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput332 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10671 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25429 hH))).trans (reductionSound10671 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput332 (2 : Fin 6)) = canonicalInput25708.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput332 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10692 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput332 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10692 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25708 hH))).trans (reductionSound10692 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput332 (3 : Fin 6)) = canonicalInput25768.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput332 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10646 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput332 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10646 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25768 hH))).trans (reductionSound10646 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput332 (4 : Fin 6)) = canonicalInput25776.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput332 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3124 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput332 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3124 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25776 hH))).trans (oldProjectionSound3124 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput332 (5 : Fin 6)) = canonicalInput25777.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput332 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11953 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput332 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11953 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25777 hH))).trans (reductionSound11953 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput332 (j : Fin 6)))
    1440 1440 ![1440, 1440, 288, 1440, 1440, 720] ![-1440, -1440, -7200, -1440, -1440, -2880] (extendRow Arithmetic.row332) ![reductionProjection10674, reductionProjection10671, reductionProjection10692, reductionProjection10646, oldProjection3124, reductionProjection11953]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput174 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 0, -2, 3], ![1, -1, 3, -3]]

theorem rowSound174 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 174) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row174 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row174 H]
  have hshape : boundaryInput174 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput174 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput174 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11866, reductionProjection11914, reductionProjection11914, reductionProjection11962, reductionProjection6588, reductionProjection11979] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput174 (0 : Fin 6)) = canonicalInput20338.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput174 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11866 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput174 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11866 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20338 hH))).trans (reductionSound11866 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput174 (1 : Fin 6)) = canonicalInput28044.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput174 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11914 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput174 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11914 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28044 hH))).trans (reductionSound11914 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput174 (2 : Fin 6)) = canonicalInput29732.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput174 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11914 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput174 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11914 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29732 hH))).trans (reductionSound11914 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput174 (3 : Fin 6)) = canonicalInput29809.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput174 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11962 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput174 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11962 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29809 hH))).trans (reductionSound11962 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput174 (4 : Fin 6)) = canonicalInput29817.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput174 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6588 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput174 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6588 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29817 hH))).trans (reductionSound6588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput174 (5 : Fin 6)) = canonicalInput29818.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput174 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11979 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput174 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11979 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29818 hH))).trans (reductionSound11979 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput174 (j : Fin 6)))
    288 1440 ![1440, 1440, 1440, 1440, 1440, 288] ![-288, -288, -288, -288, -288, -1440] (extendRow Arithmetic.row174) ![reductionProjection11866, reductionProjection11914, reductionProjection11914, reductionProjection11962, reductionProjection6588, reductionProjection11979]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput198 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, 0, -2, 3], ![1, 1, 2, -4]]

theorem rowSound198 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 198) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row198 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row198 H]
  have hshape : boundaryInput198 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput198 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput198 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10688, reductionProjection10693, reductionProjection10753, reductionProjection10774, reductionProjection6396, reductionProjection11971] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput198 (0 : Fin 6)) = canonicalInput17260.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput198 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10688 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput198 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10688 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17260 hH))).trans (reductionSound10688 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput198 (1 : Fin 6)) = canonicalInput25485.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput198 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10693 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput198 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10693 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25485 hH))).trans (reductionSound10693 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput198 (2 : Fin 6)) = canonicalInput26009.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput198 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10753 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput198 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10753 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26009 hH))).trans (reductionSound10753 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput198 (3 : Fin 6)) = canonicalInput26029.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput198 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10774 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput198 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10774 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26029 hH))).trans (reductionSound10774 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput198 (4 : Fin 6)) = canonicalInput26033.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput198 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6396 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput198 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6396 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26033 hH))).trans (reductionSound6396 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput198 (5 : Fin 6)) = canonicalInput26034.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput198 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11971 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput198 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11971 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26034 hH))).trans (reductionSound11971 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput198 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 288] ![-1440, -1440, -1440, -1440, -1440, -7200] (extendRow Arithmetic.row198) ![reductionProjection10688, reductionProjection10693, reductionProjection10753, reductionProjection10774, reductionProjection6396, reductionProjection11971]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

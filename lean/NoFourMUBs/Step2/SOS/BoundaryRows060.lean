import NoFourMUBs.Step2.SOS.Canonical433
import NoFourMUBs.Step2.SOS.Canonical434
import NoFourMUBs.Step2.SOS.Canonical435
import NoFourMUBs.Step2.SOS.Canonical436
import NoFourMUBs.Step2.SOS.Canonical449
import NoFourMUBs.Step2.SOS.Canonical452
import NoFourMUBs.Step2.SOS.Canonical454
import NoFourMUBs.Step2.SOS.Canonical456
import NoFourMUBs.Step2.SOS.Canonical458
import NoFourMUBs.Step2.SOS.Canonical459
import NoFourMUBs.Step2.SOS.Canonical460
import NoFourMUBs.Step2.SOS.Canonical461
import NoFourMUBs.Step2.SOS.Canonical462
import NoFourMUBs.Step2.SOS.Canonical463
import NoFourMUBs.Step2.SOS.Canonical464
import NoFourMUBs.Step2.SOS.Canonical467
import NoFourMUBs.Step2.SOS.Canonical468
import NoFourMUBs.Step2.SOS.Canonical469
import NoFourMUBs.Step2.SOS.Canonical472
import NoFourMUBs.Step2.SOS.Canonical510
import NoFourMUBs.Step2.SOS.Canonical511
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections030
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions167
import NoFourMUBs.Step2.SOS.Reductions213
import NoFourMUBs.Step2.SOS.Reductions229
import NoFourMUBs.Step2.SOS.Reductions239
import NoFourMUBs.Step2.SOS.Reductions243
import NoFourMUBs.Step2.SOS.Reductions244
import NoFourMUBs.Step2.SOS.Reductions251
import NoFourMUBs.Step2.SOS.Reductions252
import NoFourMUBs.Step2.SOS.Reductions255
import NoFourMUBs.Step2.SOS.Reductions272
import NoFourMUBs.Step2.SOS.Reductions278
import NoFourMUBs.Step2.SOS.Reductions279
import NoFourMUBs.Step2.SOS.Reductions281
import NoFourMUBs.Step2.SOS.Reductions287
import NoFourMUBs.Step2.SOS.Reductions288

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput1274 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, 2, -1, 0], ![2, -1, 0, -1], ![-1, -2, 2, 1]]

theorem rowSound1274 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1274) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1274 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1274 H]
  have hshape : boundaryInput1274 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1274 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 144, 1440, 1440, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1274 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8065, oldProjection1818, reductionProjection9201, reductionProjection8058, reductionProjection8088, reductionProjection8061] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1274 (0 : Fin 6)) = canonicalInput27756.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1274 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8065 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1274 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8065 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27756 hH))).trans (reductionSound8065 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1274 (1 : Fin 6)) = canonicalInput28753.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1274 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1818 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1274 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1818 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28753 hH))).trans (oldProjectionSound1818 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1274 (2 : Fin 6)) = canonicalInput28966.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1274 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9201 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1274 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9201 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28966 hH))).trans (reductionSound9201 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1274 (3 : Fin 6)) = canonicalInput29103.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1274 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8058 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1274 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8058 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29103 hH))).trans (reductionSound8058 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1274 (4 : Fin 6)) = canonicalInput29104.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1274 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8088 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1274 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8088 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29104 hH))).trans (reductionSound8088 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1274 (5 : Fin 6)) = canonicalInput29105.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1274 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8061 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1274 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8061 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29105 hH))).trans (reductionSound8061 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1274 (j : Fin 6)))
    1440 1440 ![1440, 144, 1440, 1440, 1440, 720] ![-1440, -14400, -1440, -1440, -1440, -2880] (extendRow Arithmetic.row1274) ![reductionProjection8065, oldProjection1818, reductionProjection9201, reductionProjection8058, reductionProjection8088, reductionProjection8061]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1284 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 1, 1, 0], ![0, -2, 1, 1], ![1, 2, -1, -2]]

theorem rowSound1284 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1284) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1284 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1284 H]
  have hshape : boundaryInput1284 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1284 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 72, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1284 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8086, oldProjection1784, reductionProjection8080, reductionProjection8083, reductionProjection9206, reductionProjection8083] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1284 (0 : Fin 6)) = canonicalInput27788.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1284 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8086 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1284 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8086 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27788 hH))).trans (reductionSound8086 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1284 (1 : Fin 6)) = canonicalInput28783.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1284 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1784 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1284 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1784 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28783 hH))).trans (oldProjectionSound1784 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1284 (2 : Fin 6)) = canonicalInput29193.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1284 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8080 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1284 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8080 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29193 hH))).trans (reductionSound8080 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1284 (3 : Fin 6)) = canonicalInput29222.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1284 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8083 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1284 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8083 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29222 hH))).trans (reductionSound8083 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1284 (4 : Fin 6)) = canonicalInput29223.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1284 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9206 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1284 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9206 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29223 hH))).trans (reductionSound9206 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1284 (5 : Fin 6)) = canonicalInput29224.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1284 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8083 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1284 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8083 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29224 hH))).trans (reductionSound8083 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1284 (j : Fin 6)))
    720 1440 ![1440, 72, 1440, 1440, 288, 1440] ![-720, -14400, -720, -720, -3600, -720] (extendRow Arithmetic.row1284) ![reductionProjection8086, oldProjection1784, reductionProjection8080, reductionProjection8083, reductionProjection9206, reductionProjection8083]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1287 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 1, 1, 0], ![1, 1, -1, -1], ![0, -3, 2, 1]]

theorem rowSound1287 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1287) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1287 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1287 H]
  have hshape : boundaryInput1287 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1287 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 720, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1287 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8095, reductionProjection8174, reductionProjection8089, reductionProjection6829, reductionProjection8091, reductionProjection9195] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1287 (0 : Fin 6)) = canonicalInput27922.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1287 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8095 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1287 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8095 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27922 hH))).trans (reductionSound8095 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1287 (1 : Fin 6)) = canonicalInput29718.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1287 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8174 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1287 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8174 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29718 hH))).trans (reductionSound8174 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1287 (2 : Fin 6)) = canonicalInput29919.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1287 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8089 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1287 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8089 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29919 hH))).trans (reductionSound8089 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1287 (3 : Fin 6)) = canonicalInput29956.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1287 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6829 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1287 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6829 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29956 hH))).trans (reductionSound6829 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1287 (4 : Fin 6)) = canonicalInput29957.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1287 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8091 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1287 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8091 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29957 hH))).trans (reductionSound8091 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1287 (5 : Fin 6)) = canonicalInput29958.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1287 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9195 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1287 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9195 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29958 hH))).trans (reductionSound9195 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1287 (j : Fin 6)))
    288 1440 ![288, 1440, 720, 1440, 1440, 1440] ![-1440, -288, -576, -288, -288, -288] (extendRow Arithmetic.row1287) ![reductionProjection8095, reductionProjection8174, reductionProjection8089, reductionProjection6829, reductionProjection8091, reductionProjection9195]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1293 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![2, -1, 0, -1], ![0, -2, 3, -1]]

theorem rowSound1293 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1293) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1293 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1293 H]
  have hshape : boundaryInput1293 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1293 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 720, 36, 1440, 36, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1293 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7806, reductionProjection7805, reductionProjection9197, reductionProjection5346, reductionProjection8053, reductionProjection7353] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1293 (0 : Fin 6)) = canonicalInput27826.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1293 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7806 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1293 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7806 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27826 hH))).trans (reductionSound7806 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1293 (1 : Fin 6)) = canonicalInput29347.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1293 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7805 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1293 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7805 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29347 hH))).trans (reductionSound7805 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1293 (2 : Fin 6)) = canonicalInput29428.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1293 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9197 (Normalization.momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1293 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9197 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29428 hH))).trans (reductionSound9197 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1293 (3 : Fin 6)) = canonicalInput29469.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1293 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5346 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1293 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5346 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29469 hH))).trans (reductionSound5346 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1293 (4 : Fin 6)) = canonicalInput29473.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1293 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8053 (Normalization.momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1293 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8053 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29473 hH))).trans (reductionSound8053 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1293 (5 : Fin 6)) = canonicalInput29474.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1293 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7353 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1293 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7353 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29474 hH))).trans (reductionSound7353 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1293 (j : Fin 6)))
    1440 1440 ![1440, 720, 36, 1440, 36, 288] ![-1440, -2880, -57600, -1440, -57600, -7200] (extendRow Arithmetic.row1293) ![reductionProjection7806, reductionProjection7805, reductionProjection9197, reductionProjection5346, reductionProjection8053, reductionProjection7353]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput377 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 1, 1, 0], ![0, 0, 3, -3], ![1, -2, -1, 2]]

theorem rowSound377 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 377) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row377 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row377 H]
  have hshape : boundaryInput377 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput377 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 720, 288, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput377 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8947, reductionProjection9239, reductionProjection8995, reductionProjection8997, reductionProjection8992, reductionProjection8722] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput377 (0 : Fin 6)) = canonicalInput27911.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput377 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8947 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput377 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8947 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27911 hH))).trans (reductionSound8947 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput377 (1 : Fin 6)) = canonicalInput29686.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput377 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9239 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput377 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9239 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29686 hH))).trans (reductionSound9239 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput377 (2 : Fin 6)) = canonicalInput29903.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput377 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8995 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput377 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8995 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29903 hH))).trans (reductionSound8995 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput377 (3 : Fin 6)) = canonicalInput29914.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput377 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8997 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput377 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8997 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29914 hH))).trans (reductionSound8997 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput377 (4 : Fin 6)) = canonicalInput29917.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput377 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8992 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput377 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8992 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29917 hH))).trans (reductionSound8992 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput377 (5 : Fin 6)) = canonicalInput29918.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput377 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8722 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput377 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8722 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29918 hH))).trans (reductionSound8722 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput377 (j : Fin 6)))
    1440 1440 ![1440, 720, 288, 1440, 1440, 1440] ![-1440, -2880, -7200, -1440, -1440, -1440] (extendRow Arithmetic.row377) ![reductionProjection8947, reductionProjection9239, reductionProjection8995, reductionProjection8997, reductionProjection8992, reductionProjection8722]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput546 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 1, 0, 1], ![0, -1, 3, -2], ![0, 1, -3, 2]]

theorem rowSound546 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 546) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row546 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row546 H]
  have hshape : boundaryInput546 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput546 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 720, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput546 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection2262, reductionProjection7816, reductionProjection7817, reductionProjection7656, reductionProjection7813, reductionProjection9234] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput546 (0 : Fin 6)) = canonicalInput30226.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput546 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection2262 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput546 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection2262 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30226 hH))).trans (oldProjectionSound2262 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput546 (1 : Fin 6)) = canonicalInput32684.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput546 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7816 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput546 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7816 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32684 hH))).trans (reductionSound7816 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput546 (2 : Fin 6)) = canonicalInput32689.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput546 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7817 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput546 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7817 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32689 hH))).trans (reductionSound7817 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput546 (3 : Fin 6)) = canonicalInput32706.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput546 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7656 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput546 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7656 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32706 hH))).trans (reductionSound7656 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput546 (4 : Fin 6)) = canonicalInput32707.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput546 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7813 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput546 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7813 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32707 hH))).trans (reductionSound7813 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput546 (5 : Fin 6)) = canonicalInput32708.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput546 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9234 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput546 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9234 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32708 hH))).trans (reductionSound9234 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput546 (j : Fin 6)))
    1440 1440 ![1440, 1440, 720, 1440, 288, 1440] ![-1440, -1440, -2880, -1440, -7200, -1440] (extendRow Arithmetic.row546) ![oldProjection2262, reductionProjection7816, reductionProjection7817, reductionProjection7656, reductionProjection7813, reductionProjection9234]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput880 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![0, -1, 2, -1], ![1, 0, 1, -2]]

theorem rowSound880 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 880) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row880 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row880 H]
  have hshape : boundaryInput880 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput880 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 360] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput880 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9221, reductionProjection9226, reductionProjection9227, reductionProjection8901, oldProjection3198, oldProjection3200] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput880 (0 : Fin 6)) = canonicalInput27849.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput880 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9221 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput880 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9221 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27849 hH))).trans (reductionSound9221 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput880 (1 : Fin 6)) = canonicalInput29370.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput880 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9226 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput880 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9226 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29370 hH))).trans (reductionSound9226 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput880 (2 : Fin 6)) = canonicalInput29558.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput880 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9227 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput880 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9227 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29558 hH))).trans (reductionSound9227 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput880 (3 : Fin 6)) = canonicalInput29601.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput880 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8901 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput880 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8901 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29601 hH))).trans (reductionSound8901 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput880 (4 : Fin 6)) = canonicalInput29606.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput880 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3198 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput880 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3198 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29606 hH))).trans (oldProjectionSound3198 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput880 (5 : Fin 6)) = canonicalInput29607.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput880 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3200 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput880 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3200 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29607 hH))).trans (oldProjectionSound3200 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput880 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 360] ![-1440, -1440, -1440, -1440, -1440, -5760] (extendRow Arithmetic.row880) ![reductionProjection9221, reductionProjection9226, reductionProjection9227, reductionProjection8901, oldProjection3198, oldProjection3200]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput884 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 1, 0, 1], ![0, -1, 2, -1], ![0, 1, 1, -2]]

theorem rowSound884 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 884) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row884 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row884 H]
  have hshape : boundaryInput884 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput884 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 720, 288, 720, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput884 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9224, reductionProjection9228, reductionProjection9229, reductionProjection8903, oldProjection3210, oldProjection3206] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput884 (0 : Fin 6)) = canonicalInput27937.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput884 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9224 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput884 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9224 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27937 hH))).trans (reductionSound9224 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput884 (1 : Fin 6)) = canonicalInput29989.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput884 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9228 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput884 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9228 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29989 hH))).trans (reductionSound9228 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput884 (2 : Fin 6)) = canonicalInput30027.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput884 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9229 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput884 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9229 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30027 hH))).trans (reductionSound9229 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput884 (3 : Fin 6)) = canonicalInput30039.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput884 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8903 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput884 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8903 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30039 hH))).trans (reductionSound8903 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput884 (4 : Fin 6)) = canonicalInput30040.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput884 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3210 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput884 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3210 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30040 hH))).trans (oldProjectionSound3210 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput884 (5 : Fin 6)) = canonicalInput30041.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput884 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3206 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput884 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3206 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30041 hH))).trans (oldProjectionSound3206 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput884 (j : Fin 6)))
    1440 1440 ![1440, 720, 288, 720, 288, 1440] ![-1440, -2880, -7200, -2880, -7200, -1440] (extendRow Arithmetic.row884) ![reductionProjection9224, reductionProjection9228, reductionProjection9229, reductionProjection8903, oldProjection3210, oldProjection3206]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

import NoFourMUBs.Step2.SOS.Canonical145
import NoFourMUBs.Step2.SOS.Canonical291
import NoFourMUBs.Step2.SOS.Canonical337
import NoFourMUBs.Step2.SOS.Canonical338
import NoFourMUBs.Step2.SOS.Canonical412
import NoFourMUBs.Step2.SOS.Canonical413
import NoFourMUBs.Step2.SOS.Canonical414
import NoFourMUBs.Step2.SOS.Canonical415
import NoFourMUBs.Step2.SOS.Canonical416
import NoFourMUBs.Step2.SOS.Canonical434
import NoFourMUBs.Step2.SOS.Canonical435
import NoFourMUBs.Step2.SOS.Canonical458
import NoFourMUBs.Step2.SOS.Canonical459
import NoFourMUBs.Step2.SOS.Canonical460
import NoFourMUBs.Step2.SOS.Canonical461
import NoFourMUBs.Step2.SOS.Canonical462
import NoFourMUBs.Step2.SOS.Canonical463
import NoFourMUBs.Step2.SOS.Canonical465
import NoFourMUBs.Step2.SOS.Canonical466
import NoFourMUBs.Step2.SOS.Canonical472
import NoFourMUBs.Step2.SOS.Canonical491
import NoFourMUBs.Step2.SOS.Canonical493
import NoFourMUBs.Step2.SOS.Canonical494
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections009
import NoFourMUBs.Step2.SOS.OldProjections020
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions010
import NoFourMUBs.Step2.SOS.Reductions176
import NoFourMUBs.Step2.SOS.Reductions234
import NoFourMUBs.Step2.SOS.Reductions254
import NoFourMUBs.Step2.SOS.Reductions255
import NoFourMUBs.Step2.SOS.Reductions256
import NoFourMUBs.Step2.SOS.Reductions258
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical270
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical274
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical299

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput827 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![1, -2, 2, -1]]

theorem rowSound827 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 827) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row827 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row827 H]
  have hshape : boundaryInput827 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput827 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 720, 720, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput827 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8136, oldProjection3079, oldProjection3079, reductionProjection8185, oldProjection3099, oldProjection3217] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput827 (0 : Fin 6)) = canonicalInput27892.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput827 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8136 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput827 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8136 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27892 hH))).trans (reductionSound8136 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput827 (1 : Fin 6)) = canonicalInput29531.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput827 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3079 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput827 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3079 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29531 hH))).trans (oldProjectionSound3079 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput827 (2 : Fin 6)) = canonicalInput29768.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput827 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection3079 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput827 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection3079 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29768 hH))).trans (oldProjectionSound3079 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput827 (3 : Fin 6)) = canonicalInput29826.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput827 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8185 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput827 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8185 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29826 hH))).trans (reductionSound8185 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput827 (4 : Fin 6)) = canonicalInput29832.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput827 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3099 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput827 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3099 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29832 hH))).trans (oldProjectionSound3099 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput827 (5 : Fin 6)) = canonicalInput29833.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput827 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3217 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput827 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3217 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29833 hH))).trans (oldProjectionSound3217 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput827 (j : Fin 6)))
    1440 1440 ![1440, 720, 720, 1440, 1440, 1440] ![-1440, -2880, -2880, -1440, -1440, -1440] (extendRow Arithmetic.row827) ![reductionProjection8136, oldProjection3079, oldProjection3079, reductionProjection8185, oldProjection3099, oldProjection3217]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput835 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![1, -1, 2, -2]]

theorem rowSound835 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 835) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row835 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row835 H]
  have hshape : boundaryInput835 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput835 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 720, 1440, 288, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput835 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8131, reductionProjection8156, oldProjection3045, reductionProjection8170, oldProjection3041, oldProjection3216] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput835 (0 : Fin 6)) = canonicalInput27837.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput835 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8131 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput835 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8131 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27837 hH))).trans (reductionSound8131 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput835 (1 : Fin 6)) = canonicalInput29358.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput835 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8156 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput835 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8156 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29358 hH))).trans (reductionSound8156 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput835 (2 : Fin 6)) = canonicalInput29446.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput835 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection3045 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput835 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection3045 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29446 hH))).trans (oldProjectionSound3045 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput835 (3 : Fin 6)) = canonicalInput29517.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput835 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8170 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput835 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8170 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29517 hH))).trans (reductionSound8170 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput835 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9574 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput835 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3041 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput835 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3041 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9574 hH))).trans (oldProjectionSound3041 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput835 (5 : Fin 6)) = canonicalInput29521.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput835 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3216 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput835 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3216 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29521 hH))).trans (oldProjectionSound3216 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput835 (j : Fin 6)))
    720 1440 ![288, 288, 720, 1440, 288, 720] ![-3600, -3600, -1440, -720, -3600, -1440] (extendRow Arithmetic.row835) ![reductionProjection8131, reductionProjection8156, oldProjection3045, reductionProjection8170, oldProjection3041, oldProjection3216]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput837 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, 1, 2, -3]]

theorem rowSound837 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 837) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row837 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row837 H]
  have hshape : boundaryInput837 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput837 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![144, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput837 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8133, reductionProjection8158, reductionProjection8174, reductionProjection8174, oldProjection3017, oldProjection3217] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput837 (0 : Fin 6)) = canonicalInput27868.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput837 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8133 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput837 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8133 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27868 hH))).trans (reductionSound8133 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput837 (1 : Fin 6)) = canonicalInput29389.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput837 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8158 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput837 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8158 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29389 hH))).trans (reductionSound8158 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput837 (2 : Fin 6)) = canonicalInput29580.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput837 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8174 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput837 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8174 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29580 hH))).trans (reductionSound8174 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput837 (3 : Fin 6)) = canonicalInput29664.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput837 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8174 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput837 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8174 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29664 hH))).trans (reductionSound8174 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput837 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9591 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput837 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3017 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput837 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3017 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9591 hH))).trans (oldProjectionSound3017 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput837 (5 : Fin 6)) = canonicalInput29666.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput837 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3217 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput837 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3217 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29666 hH))).trans (oldProjectionSound3217 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput837 (j : Fin 6)))
    1440 1440 ![144, 1440, 1440, 1440, 1440, 1440] ![-14400, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row837) ![reductionProjection8133, reductionProjection8158, reductionProjection8174, reductionProjection8174, oldProjection3017, oldProjection3217]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput879 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, 1, 1, -2], ![1, -1, 1, -1]]

theorem rowSound879 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 879) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row879 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row879 H]
  have hshape : boundaryInput879 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput879 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 720, 1440, 180, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput879 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8132, reductionProjection8157, reductionProjection8173, reductionProjection7488, oldProjection3216, oldProjection3217] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput879 (0 : Fin 6)) = canonicalInput27845.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput879 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8132 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput879 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8132 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27845 hH))).trans (reductionSound8132 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput879 (1 : Fin 6)) = canonicalInput29366.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput879 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8157 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput879 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8157 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29366 hH))).trans (reductionSound8157 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput879 (2 : Fin 6)) = canonicalInput29554.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput879 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8173 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput879 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8173 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29554 hH))).trans (reductionSound8173 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput879 (3 : Fin 6)) = canonicalInput29588.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput879 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7488 (Normalization.momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst boundaryInput879 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7488 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29588 hH))).trans (reductionSound7488 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput879 (4 : Fin 6)) = canonicalInput29593.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput879 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3216 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput879 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3216 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29593 hH))).trans (oldProjectionSound3216 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput879 (5 : Fin 6)) = canonicalInput29594.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput879 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3217 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput879 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3217 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29594 hH))).trans (oldProjectionSound3217 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput879 (j : Fin 6)))
    1440 1440 ![1440, 720, 1440, 180, 720, 1440] ![-1440, -2880, -1440, -11520, -2880, -1440] (extendRow Arithmetic.row879) ![reductionProjection8132, reductionProjection8157, reductionProjection8173, reductionProjection7488, oldProjection3216, oldProjection3217]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1175 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, -2, 1, 1], ![1, 0, 1, -2], ![-2, 1, -1, 2]]

theorem rowSound1175 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1175) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1175 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1175 H]
  have hshape : boundaryInput1175 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1175 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![72, 720, 1440, 360, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1175 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1784, oldProjection3215, reductionProjection8192, reductionProjection5649, oldProjection3079, reductionProjection8198] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1175 (0 : Fin 6)) = canonicalInput30214.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1175 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1784 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1175 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1784 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30214 hH))).trans (oldProjectionSound1784 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1175 (1 : Fin 6)) = canonicalInput31463.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1175 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3215 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1175 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3215 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31463 hH))).trans (oldProjectionSound3215 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1175 (2 : Fin 6)) = canonicalInput31603.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1175 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8192 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1175 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8192 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31603 hH))).trans (reductionSound8192 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1175 (3 : Fin 6)) = canonicalInput31643.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1175 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5649 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1175 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5649 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31643 hH))).trans (reductionSound5649 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1175 (4 : Fin 6)) = canonicalInput31644.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1175 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3079 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1175 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3079 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31644 hH))).trans (oldProjectionSound3079 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1175 (5 : Fin 6)) = canonicalInput31645.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1175 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8198 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1175 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8198 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31645 hH))).trans (reductionSound8198 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1175 (j : Fin 6)))
    1440 1440 ![72, 720, 1440, 360, 720, 1440] ![-28800, -2880, -1440, -5760, -2880, -1440] (extendRow Arithmetic.row1175) ![oldProjection1784, oldProjection3215, reductionProjection8192, reductionProjection5649, oldProjection3079, reductionProjection8198]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput43 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![1, -1, 0], ![-2, 0, 2], ![1, 4, -5]]

theorem rowSound43 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 43) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row43 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row43 H]
  have hshape : boundaryInput43 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput43 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![96, 96, 480, 480, 96, 240] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput43 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8256, reductionProjection8256, oldProjection2123, oldProjection2123, reductionProjection324, oldProjection2134] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput43 (0 : Fin 6)) = canonicalInput18652.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput43 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8256 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput43 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8256 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound18652 hH))).trans (reductionSound8256 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput43 (1 : Fin 6)) = canonicalInput26392.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput43 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8256 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput43 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8256 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26392 hH))).trans (reductionSound8256 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput43 (2 : Fin 6)) = canonicalInput26469.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput43 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection2123 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput43 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection2123 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26469 hH))).trans (oldProjectionSound2123 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput43 (3 : Fin 6)) = canonicalInput26524.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput43 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2123 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput43 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2123 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26524 hH))).trans (oldProjectionSound2123 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput43 (4 : Fin 6)) = canonicalInput26528.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput43 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection324 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput43 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection324 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26528 hH))).trans (reductionSound324 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput43 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8652 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput43 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2134 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput43 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2134 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8652 hH))).trans (oldProjectionSound2134 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput43 (j : Fin 6)))
    480 480 ![96, 96, 480, 480, 96, 240] ![-2400, -2400, -480, -480, -2400, -960] (extendRow Arithmetic.row43) ![reductionProjection8256, reductionProjection8256, oldProjection2123, oldProjection2123, reductionProjection324, oldProjection2134]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput937 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![0, -1, 1], ![1, -1, 0], ![1, -1, 0], ![1, -1, 0], ![-2, 0, 2], ![0, 4, -4]]

theorem rowSound937 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 937) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row937 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row937 H]
  have hshape : boundaryInput937 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput937 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![48, 240, 240, 240, 96, 480] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput937 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8259, oldProjection2134, oldProjection2134, oldProjection2134, reductionProjection334, oldProjection1388] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput937 (0 : Fin 6)) = canonicalInput18666.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput937 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8259 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput937 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8259 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound18666 hH))).trans (reductionSound8259 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput937 (1 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8652 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput937 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection2134 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput937 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection2134 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8652 hH))).trans (oldProjectionSound2134 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput937 (2 : Fin 6)) = canonicalInput26615.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput937 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection2134 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput937 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection2134 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26615 hH))).trans (oldProjectionSound2134 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput937 (3 : Fin 6)) = canonicalInput26628.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput937 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2134 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput937 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2134 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26628 hH))).trans (oldProjectionSound2134 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput937 (4 : Fin 6)) = canonicalInput26630.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput937 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection334 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput937 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection334 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26630 hH))).trans (reductionSound334 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput937 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8785 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput937 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection1388 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput937 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection1388 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8785 hH))).trans (oldProjectionSound1388 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput937 (j : Fin 6)))
    480 480 ![48, 240, 240, 240, 96, 480] ![-4800, -960, -960, -960, -2400, -480] (extendRow Arithmetic.row937) ![reductionProjection8259, oldProjection2134, oldProjection2134, oldProjection2134, reductionProjection334, oldProjection1388]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput938 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![-1, 0, 1], ![0, -1, 1], ![0, -1, 1], ![1, 0, -1], ![2, -2, 0], ![-1, 4, -3]]

theorem rowSound938 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 938) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row938 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row938 H]
  have hshape : boundaryInput938 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput938 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![480, 480, 480, 480, 240, 480] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput938 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8268, reductionProjection8270, reductionProjection8270, oldProjection653, oldProjection2379, oldProjection1529] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput938 (0 : Fin 6)) = canonicalInput9293.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput938 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8268 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput938 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8268 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9293 hH))).trans (reductionSound8268 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput938 (1 : Fin 6)) = canonicalInput21580.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput938 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8270 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput938 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8270 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21580 hH))).trans (reductionSound8270 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput938 (2 : Fin 6)) = canonicalInput21621.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput938 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8270 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput938 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8270 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21621 hH))).trans (reductionSound8270 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput938 (3 : Fin 6)) = canonicalInput21627.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput938 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection653 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput938 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection653 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21627 hH))).trans (oldProjectionSound653 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput938 (4 : Fin 6)) = canonicalInput21631.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput938 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2379 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput938 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2379 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21631 hH))).trans (oldProjectionSound2379 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput938 (5 : Fin 6)) = canonicalInput21632.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput938 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection1529 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput938 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection1529 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21632 hH))).trans (oldProjectionSound1529 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput938 (j : Fin 6)))
    480 480 ![480, 480, 480, 480, 240, 480] ![-480, -480, -480, -480, -960, -480] (extendRow Arithmetic.row938) ![reductionProjection8268, reductionProjection8270, reductionProjection8270, oldProjection653, oldProjection2379, oldProjection1529]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

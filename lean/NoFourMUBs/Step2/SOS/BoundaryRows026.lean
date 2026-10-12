import NoFourMUBs.Step2.SOS.Canonical119
import NoFourMUBs.Step2.SOS.Canonical267
import NoFourMUBs.Step2.SOS.Canonical268
import NoFourMUBs.Step2.SOS.Canonical324
import NoFourMUBs.Step2.SOS.Canonical326
import NoFourMUBs.Step2.SOS.Canonical327
import NoFourMUBs.Step2.SOS.Canonical376
import NoFourMUBs.Step2.SOS.Canonical396
import NoFourMUBs.Step2.SOS.Canonical397
import NoFourMUBs.Step2.SOS.Canonical399
import NoFourMUBs.Step2.SOS.Canonical400
import NoFourMUBs.Step2.SOS.Canonical401
import NoFourMUBs.Step2.SOS.Canonical402
import NoFourMUBs.Step2.SOS.Canonical403
import NoFourMUBs.Step2.SOS.Canonical405
import NoFourMUBs.Step2.SOS.Canonical420
import NoFourMUBs.Step2.SOS.Canonical470
import NoFourMUBs.Step2.SOS.Canonical486
import NoFourMUBs.Step2.SOS.Canonical487
import NoFourMUBs.Step2.SOS.Canonical488
import NoFourMUBs.Step2.SOS.Canonical494
import NoFourMUBs.Step2.SOS.Canonical495
import NoFourMUBs.Step2.SOS.Canonical500
import NoFourMUBs.Step2.SOS.Canonical508
import NoFourMUBs.Step2.SOS.Canonical509
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections020
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.OldProjections041
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions022
import NoFourMUBs.Step2.SOS.Reductions032
import NoFourMUBs.Step2.SOS.Reductions035
import NoFourMUBs.Step2.SOS.Reductions074
import NoFourMUBs.Step2.SOS.Reductions131
import NoFourMUBs.Step2.SOS.Reductions192
import NoFourMUBs.Step2.SOS.Reductions193
import NoFourMUBs.Step2.SOS.Reductions194
import NoFourMUBs.Step2.SOS.Reductions195
import NoFourMUBs.Step2.SOS.Reductions196
import NoFourMUBs.Step2.SOS.Reductions197
import NoFourMUBs.Step2.SOS.Reductions201
import NoFourMUBs.Step2.SOS.Reductions202
import NoFourMUBs.Step2.SOS.Reductions204
import NoFourMUBs.Step2.SOS.Reductions205
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical307

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput96 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-1, -1, 0, 2], ![2, 0, 3, -5]]

theorem rowSound96 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 96) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row96 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row96 H]
  have hshape : boundaryInput96 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput96 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 1440, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput96 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6178, reductionProjection6187, reductionProjection6226, reductionProjection6226, reductionProjection4206, oldProjection3387] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput96 (0 : Fin 6)) = canonicalInput17209.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput96 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6178 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput96 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6178 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17209 hH))).trans (reductionSound6178 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput96 (1 : Fin 6)) = canonicalInput25459.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput96 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6187 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput96 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6187 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25459 hH))).trans (reductionSound6187 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput96 (2 : Fin 6)) = canonicalInput25842.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput96 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6226 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput96 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6226 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25842 hH))).trans (reductionSound6226 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput96 (3 : Fin 6)) = canonicalInput25929.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput96 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6226 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput96 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6226 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25929 hH))).trans (reductionSound6226 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput96 (4 : Fin 6)) = canonicalInput25946.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput96 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4206 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput96 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4206 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25946 hH))).trans (reductionSound4206 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput96 (5 : Fin 6)) = canonicalInput25949.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput96 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3387 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput96 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3387 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25949 hH))).trans (oldProjectionSound3387 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput96 (j : Fin 6)))
    72 1440 ![720, 1440, 1440, 1440, 288, 1440] ![-144, -72, -72, -72, -360, -72] (extendRow Arithmetic.row96) ![reductionProjection6178, reductionProjection6187, reductionProjection6226, reductionProjection6226, reductionProjection4206, oldProjection3387]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput116 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, -2, 0, 2], ![2, 0, 3, -5]]

theorem rowSound116 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 116) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row116 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row116 H]
  have hshape : boundaryInput116 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput116 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![36, 720, 1440, 1440, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput116 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6175, reductionProjection6195, reductionProjection6238, reductionProjection6238, reductionProjection4218, oldProjection3412] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput116 (0 : Fin 6)) = canonicalInput7635.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput116 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6175 (Normalization.momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst boundaryInput116 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6175 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7635 hH))).trans (reductionSound6175 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput116 (1 : Fin 6)) = canonicalInput20743.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput116 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6195 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput116 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6195 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20743 hH))).trans (reductionSound6195 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput116 (2 : Fin 6)) = canonicalInput20925.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput116 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6238 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput116 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6238 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20925 hH))).trans (reductionSound6238 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput116 (3 : Fin 6)) = canonicalInput20956.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput116 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6238 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput116 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6238 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20956 hH))).trans (reductionSound6238 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput116 (4 : Fin 6)) = canonicalInput20960.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput116 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4218 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput116 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4218 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20960 hH))).trans (reductionSound4218 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput116 (5 : Fin 6)) = canonicalInput20961.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput116 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3412 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput116 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3412 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20961 hH))).trans (oldProjectionSound3412 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput116 (j : Fin 6)))
    1440 1440 ![36, 720, 1440, 1440, 720, 1440] ![-57600, -2880, -1440, -1440, -2880, -1440] (extendRow Arithmetic.row116) ![reductionProjection6175, reductionProjection6195, reductionProjection6238, reductionProjection6238, reductionProjection4218, oldProjection3412]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput141 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, -2, 1, -1], ![-2, 0, -2, 4]]

theorem rowSound141 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 141) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row141 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row141 H]
  have hshape : boundaryInput141 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput141 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 288, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput141 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1459, oldProjection1459, oldProjection3118, oldProjection3118, oldProjection2876, reductionProjection6261] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput141 (0 : Fin 6)) = canonicalInput30142.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput141 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1459 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput141 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1459 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30142 hH))).trans (oldProjectionSound1459 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput141 (1 : Fin 6)) = canonicalInput31161.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput141 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1459 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput141 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1459 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31161 hH))).trans (oldProjectionSound1459 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput141 (2 : Fin 6)) = canonicalInput31207.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput141 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection3118 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput141 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection3118 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31207 hH))).trans (oldProjectionSound3118 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput141 (3 : Fin 6)) = canonicalInput31230.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput141 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3118 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput141 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3118 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31230 hH))).trans (oldProjectionSound3118 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput141 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9834 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput141 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2876 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput141 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2876 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9834 hH))).trans (oldProjectionSound2876 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput141 (5 : Fin 6)) = canonicalInput31232.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput141 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6261 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput141 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6261 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31232 hH))).trans (reductionSound6261 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput141 (j : Fin 6)))
    288 1440 ![1440, 1440, 288, 288, 720, 1440] ![-288, -288, -1440, -1440, -576, -288] (extendRow Arithmetic.row141) ![oldProjection1459, oldProjection1459, oldProjection3118, oldProjection3118, oldProjection2876, reductionProjection6261]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput100 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 2, -1, 0], ![2, 0, 3, -5]]

theorem rowSound100 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 100) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row100 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row100 H]
  have hshape : boundaryInput100 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput100 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 360, 360, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput100 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6265, reductionProjection6265, reductionProjection6278, reductionProjection6278, reductionProjection6261, oldProjection3414] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput100 (0 : Fin 6)) = canonicalInput17097.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput100 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6265 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput100 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6265 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17097 hH))).trans (reductionSound6265 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput100 (1 : Fin 6)) = canonicalInput25388.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput100 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6265 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput100 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6265 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25388 hH))).trans (reductionSound6265 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput100 (2 : Fin 6)) = canonicalInput25569.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput100 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6278 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput100 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6278 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25569 hH))).trans (reductionSound6278 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput100 (3 : Fin 6)) = canonicalInput25605.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput100 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6278 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput100 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6278 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25605 hH))).trans (reductionSound6278 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput100 (4 : Fin 6)) = canonicalInput25608.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput100 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6261 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput100 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6261 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25608 hH))).trans (reductionSound6261 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput100 (5 : Fin 6)) = canonicalInput25611.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput100 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3414 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput100 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3414 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25611 hH))).trans (oldProjectionSound3414 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput100 (j : Fin 6)))
    1440 1440 ![1440, 1440, 360, 360, 1440, 288] ![-1440, -1440, -5760, -5760, -1440, -7200] (extendRow Arithmetic.row100) ![reductionProjection6265, reductionProjection6265, reductionProjection6278, reductionProjection6278, reductionProjection6261, oldProjection3414]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput343 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 0, 1], ![0, 0, -1, 1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![0, 2, -3, 1], ![0, -2, 4, -2]]

theorem rowSound343 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 343) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row343 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row343 H]
  have hshape : boundaryInput343 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput343 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 288, 288, 144, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput343 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6313, reductionProjection6461, reductionProjection6440, reductionProjection6440, reductionProjection6489, reductionProjection2395] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput343 (0 : Fin 6)) = canonicalInput7663.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput343 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6313 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput343 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6313 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7663 hH))).trans (reductionSound6313 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput343 (1 : Fin 6)) = canonicalInput20756.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput343 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6461 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput343 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6461 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20756 hH))).trans (reductionSound6461 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput343 (2 : Fin 6)) = canonicalInput20954.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput343 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6440 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput343 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6440 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20954 hH))).trans (reductionSound6440 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput343 (3 : Fin 6)) = canonicalInput20977.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput343 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6440 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput343 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6440 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20977 hH))).trans (reductionSound6440 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput343 (4 : Fin 6)) = canonicalInput20978.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput343 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6489 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput343 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6489 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20978 hH))).trans (reductionSound6489 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput343 (5 : Fin 6)) = canonicalInput20979.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput343 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2395 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput343 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2395 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20979 hH))).trans (reductionSound2395 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput343 (j : Fin 6)))
    144 288 ![288, 288, 288, 288, 144, 288] ![-144, -144, -144, -144, -288, -144] (extendRow Arithmetic.row343) ![reductionProjection6313, reductionProjection6461, reductionProjection6440, reductionProjection6440, reductionProjection6489, reductionProjection2395]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput429 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-2, 2, -1, 1], ![2, 0, 2, -4]]

theorem rowSound429 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 429) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row429 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row429 H]
  have hshape : boundaryInput429 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput429 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 1440, 288, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput429 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection729, reductionProjection732, reductionProjection718, oldProjection3118, reductionProjection6490, reductionProjection1033] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput429 (0 : Fin 6)) = canonicalInput24102.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput429 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection729 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput429 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection729 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24102 hH))).trans (reductionSound729 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput429 (1 : Fin 6)) = canonicalInput25540.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput429 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection732 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput429 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection732 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25540 hH))).trans (reductionSound732 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput429 (2 : Fin 6)) = canonicalInput25710.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput429 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection718 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput429 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection718 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25710 hH))).trans (reductionSound718 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput429 (3 : Fin 6)) = canonicalInput25727.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput429 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3118 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput429 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3118 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25727 hH))).trans (oldProjectionSound3118 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput429 (4 : Fin 6)) = canonicalInput25731.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput429 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6490 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput429 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6490 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25731 hH))).trans (reductionSound6490 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput429 (5 : Fin 6)) = canonicalInput25732.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput429 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1033 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput429 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1033 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25732 hH))).trans (reductionSound1033 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput429 (j : Fin 6)))
    1440 1440 ![1440, 288, 1440, 288, 288, 1440] ![-1440, -7200, -1440, -7200, -7200, -1440] (extendRow Arithmetic.row429) ![reductionProjection729, reductionProjection732, reductionProjection718, oldProjection3118, reductionProjection6490, reductionProjection1033]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput505 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, 2, -1], ![0, 2, -1, -1], ![-2, 1, -2, 3]]

theorem rowSound505 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 505) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row505 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row505 H]
  have hshape : boundaryInput505 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput505 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 288, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput505 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1130, reductionProjection1142, reductionProjection1144, reductionProjection1135, oldProjection3232, reductionProjection6532] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput505 (0 : Fin 6)) = canonicalInput26909.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput505 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1130 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput505 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1130 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26909 hH))).trans (reductionSound1130 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput505 (1 : Fin 6)) = canonicalInput31679.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput505 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1142 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput505 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1142 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31679 hH))).trans (reductionSound1142 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput505 (2 : Fin 6)) = canonicalInput31698.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput505 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1144 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput505 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1144 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31698 hH))).trans (reductionSound1144 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput505 (3 : Fin 6)) = canonicalInput31727.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput505 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1135 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput505 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1135 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31727 hH))).trans (reductionSound1135 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput505 (4 : Fin 6)) = canonicalInput31729.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput505 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3232 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput505 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3232 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31729 hH))).trans (oldProjectionSound3232 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput505 (5 : Fin 6)) = canonicalInput31731.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput505 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6532 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput505 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6532 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31731 hH))).trans (reductionSound6532 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput505 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 288, 1440, 1440] ![-1440, -1440, -1440, -7200, -1440, -1440] (extendRow Arithmetic.row505) ![reductionProjection1130, reductionProjection1142, reductionProjection1144, reductionProjection1135, oldProjection3232, reductionProjection6532]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput153 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, 3, -2], ![-2, 0, -2, 4]]

theorem rowSound153 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 153) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row153 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row153 H]
  have hshape : boundaryInput153 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput153 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 1440, 1440, 288, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput153 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection3116, oldProjection3116, reductionProjection6573, reductionProjection6574, oldProjection2873, reductionProjection6259] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput153 (0 : Fin 6)) = canonicalInput32028.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput153 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection3116 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput153 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection3116 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32028 hH))).trans (oldProjectionSound3116 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput153 (1 : Fin 6)) = canonicalInput32531.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput153 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3116 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput153 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3116 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32531 hH))).trans (oldProjectionSound3116 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput153 (2 : Fin 6)) = canonicalInput32569.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput153 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6573 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput153 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6573 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32569 hH))).trans (reductionSound6573 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput153 (3 : Fin 6)) = canonicalInput32592.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput153 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6574 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput153 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6574 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32592 hH))).trans (reductionSound6574 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput153 (4 : Fin 6)) = canonicalInput32598.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput153 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2873 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput153 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2873 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32598 hH))).trans (oldProjectionSound2873 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput153 (5 : Fin 6)) = canonicalInput32599.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput153 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6259 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput153 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6259 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32599 hH))).trans (reductionSound6259 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput153 (j : Fin 6)))
    288 1440 ![720, 720, 1440, 1440, 288, 288] ![-576, -576, -288, -288, -1440, -1440] (extendRow Arithmetic.row153) ![oldProjection3116, oldProjection3116, reductionProjection6573, reductionProjection6574, oldProjection2873, reductionProjection6259]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

import NoFourMUBs.Step2.SOS.Canonical244
import NoFourMUBs.Step2.SOS.Canonical247
import NoFourMUBs.Step2.SOS.Canonical248
import NoFourMUBs.Step2.SOS.Canonical389
import NoFourMUBs.Step2.SOS.Canonical390
import NoFourMUBs.Step2.SOS.Canonical391
import NoFourMUBs.Step2.SOS.Canonical392
import NoFourMUBs.Step2.SOS.Canonical393
import NoFourMUBs.Step2.SOS.Canonical394
import NoFourMUBs.Step2.SOS.Canonical395
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions088
import NoFourMUBs.Step2.SOS.Reductions089
import NoFourMUBs.Step2.SOS.Reductions090
import NoFourMUBs.Step2.SOS.Reductions091
import NoFourMUBs.Step2.SOS.Reductions092
import NoFourMUBs.Step2.SOS.Reductions094
import NoFourMUBs.Step2.SOS.Reductions096
import NoFourMUBs.Step2.SOS.Reductions097
import NoFourMUBs.Step2.SOS.Reductions099
import NoFourMUBs.Step2.SOS.Reductions109
import NoFourMUBs.Step2.SOS.Reductions111
import NoFourMUBs.Step2.SOS.Reductions114
import NoFourMUBs.Step2.SOS.Reductions119
import NoFourMUBs.Step2.SOS.Reductions121
import NoFourMUBs.Step2.SOS.Reductions122
import NoFourMUBs.Step2.SOS.Reductions124
import NoFourMUBs.Step2.SOS.Reductions125
import NoFourMUBs.Step2.SOS.Reductions126
import NoFourMUBs.Step2.SOS.Reductions223
import NoFourMUBs.Step2.SOS.Reductions224
import NoFourMUBs.Step2.SOS.Reductions317
import NoFourMUBs.Step2.SOS.Reductions348
import NoFourMUBs.Step2.SOS.Reductions350
import NoFourMUBs.Step2.SOS.Reductions351

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput603 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, -1, 0, 2, 0], ![1, 1, 0, 0, -2], ![1, 0, 2, -2, -1]]

theorem rowSound603 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 603) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row603 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row603 H]
  have hshape : boundaryInput603 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput603 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 2880, 2880, 2880, 576, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput603 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection3920, reductionProjection3895, reductionProjection3899, reductionProjection3906, reductionProjection10171, reductionProjection11217] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput603 (0 : Fin 6)) = canonicalInput15873.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput603 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3920 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput603 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3920 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15873 hH))).trans (reductionSound3920 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput603 (1 : Fin 6)) = canonicalInput24976.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput603 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3895 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput603 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3895 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24976 hH))).trans (reductionSound3895 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput603 (2 : Fin 6)) = canonicalInput25146.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput603 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3899 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput603 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3899 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25146 hH))).trans (reductionSound3899 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput603 (3 : Fin 6)) = canonicalInput25247.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput603 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3906 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput603 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3906 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25247 hH))).trans (reductionSound3906 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput603 (4 : Fin 6)) = canonicalInput25257.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput603 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10171 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput603 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10171 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25257 hH))).trans (reductionSound10171 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput603 (5 : Fin 6)) = canonicalInput25263.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput603 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11217 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput603 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11217 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25263 hH))).trans (reductionSound11217 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput603 (j : Fin 6)))
    2880 2880 ![2880, 2880, 2880, 2880, 576, 2880] ![-2880, -2880, -2880, -2880, -14400, -2880] (extendRow Arithmetic.row603) ![reductionProjection3920, reductionProjection3895, reductionProjection3899, reductionProjection3906, reductionProjection10171, reductionProjection11217]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput604 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, -1, 0, 2, 0], ![1, 1, 0, -2, 0], ![1, 0, 2, 0, -3]]

theorem rowSound604 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 604) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row604 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row604 H]
  have hshape : boundaryInput604 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput604 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 1440, 2880, 2880, 2880, 360] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput604 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection2866, reductionProjection2824, reductionProjection2830, reductionProjection2850, reductionProjection10169, reductionProjection11209] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput604 (0 : Fin 6)) = canonicalInput15872.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput604 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2866 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput604 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2866 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15872 hH))).trans (reductionSound2866 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput604 (1 : Fin 6)) = canonicalInput24975.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput604 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2824 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput604 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2824 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24975 hH))).trans (reductionSound2824 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput604 (2 : Fin 6)) = canonicalInput25145.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput604 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2830 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput604 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2830 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25145 hH))).trans (reductionSound2830 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput604 (3 : Fin 6)) = canonicalInput25246.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput604 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2850 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput604 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2850 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25246 hH))).trans (reductionSound2850 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput604 (4 : Fin 6)) = canonicalInput25256.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput604 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10169 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput604 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10169 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25256 hH))).trans (reductionSound10169 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput604 (5 : Fin 6)) = canonicalInput25262.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput604 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11209 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput604 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11209 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25262 hH))).trans (reductionSound11209 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput604 (j : Fin 6)))
    576 2880 ![2880, 1440, 2880, 2880, 2880, 360] ![-576, -1152, -576, -576, -576, -4608] (extendRow Arithmetic.row604) ![reductionProjection2866, reductionProjection2824, reductionProjection2830, reductionProjection2850, reductionProjection10169, reductionProjection11209]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput624 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, -1, 0, 0], ![-1, -1, 0, 1, 1], ![0, 0, 2, -2, 0], ![2, 1, 0, 0, -3]]

theorem rowSound624 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 624) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row624 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row624 H]
  have hshape : boundaryInput624 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput624 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 2880, 576, 2880, 360, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput624 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection2892, reductionProjection2911, reductionProjection2917, reductionProjection2888, reductionProjection2905, reductionProjection11211] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput624 (0 : Fin 6)) = canonicalInput15914.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput624 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2892 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput624 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2892 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15914 hH))).trans (reductionSound2892 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput624 (1 : Fin 6)) = canonicalInput24994.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput624 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2911 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput624 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2911 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24994 hH))).trans (reductionSound2911 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput624 (2 : Fin 6)) = canonicalInput25293.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput624 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2917 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput624 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2917 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25293 hH))).trans (reductionSound2917 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput624 (3 : Fin 6)) = canonicalInput25325.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput624 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2888 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput624 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2888 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25325 hH))).trans (reductionSound2888 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput624 (4 : Fin 6)) = canonicalInput25328.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput624 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2905 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput624 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2905 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25328 hH))).trans (reductionSound2905 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput624 (5 : Fin 6)) = canonicalInput25330.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput624 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11211 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput624 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11211 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25330 hH))).trans (reductionSound11211 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput624 (j : Fin 6)))
    1440 2880 ![2880, 2880, 576, 2880, 360, 2880] ![-1440, -1440, -7200, -1440, -11520, -1440] (extendRow Arithmetic.row624) ![reductionProjection2892, reductionProjection2911, reductionProjection2917, reductionProjection2888, reductionProjection2905, reductionProjection11211]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput571 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, -1, 1, 0], ![-1, 2, 0, 0, -1], ![0, 0, 2, -2, 0], ![2, -1, 0, 0, -1]]

theorem rowSound571 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 571) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row571 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row571 H]
  have hshape : boundaryInput571 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput571 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![240, 1440, 1440, 576, 2880, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput571 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7145, reductionProjection7190, reductionProjection7190, reductionProjection11242, reductionProjection3509, reductionProjection11159] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput571 (0 : Fin 6)) = canonicalInput15889.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput571 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7145 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput571 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7145 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15889 hH))).trans (reductionSound7145 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput571 (1 : Fin 6)) = canonicalInput24986.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput571 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7190 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput571 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7190 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24986 hH))).trans (reductionSound7190 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput571 (2 : Fin 6)) = canonicalInput25285.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput571 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7190 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput571 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7190 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25285 hH))).trans (reductionSound7190 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput571 (3 : Fin 6)) = canonicalInput25299.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput571 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11242 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput571 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11242 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25299 hH))).trans (reductionSound11242 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput571 (4 : Fin 6)) = canonicalInput25303.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput571 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3509 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput571 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3509 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25303 hH))).trans (reductionSound3509 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput571 (5 : Fin 6)) = canonicalInput25304.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput571 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11159 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput571 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11159 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25304 hH))).trans (reductionSound11159 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput571 (j : Fin 6)))
    288 2880 ![240, 1440, 1440, 576, 2880, 288] ![-3456, -576, -576, -1440, -288, -2880] (extendRow Arithmetic.row571) ![reductionProjection7145, reductionProjection7190, reductionProjection7190, reductionProjection11242, reductionProjection3509, reductionProjection11159]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput577 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![-1, -1, 1, 1, 0], ![0, 2, 0, 0, -2], ![2, 0, 1, -2, -1]]

theorem rowSound577 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 577) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row577 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row577 H]
  have hshape : boundaryInput577 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput577 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 2880, 2880, 2880, 72, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput577 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4035, reductionProjection4028, reductionProjection4033, reductionProjection4020, reductionProjection3660, reductionProjection11245] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput577 (0 : Fin 6)) = canonicalInput15837.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput577 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4035 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput577 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4035 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15837 hH))).trans (reductionSound4035 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput577 (1 : Fin 6)) = canonicalInput24942.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput577 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4028 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput577 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4028 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24942 hH))).trans (reductionSound4028 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput577 (2 : Fin 6)) = canonicalInput25112.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput577 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4033 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput577 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4033 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25112 hH))).trans (reductionSound4033 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput577 (3 : Fin 6)) = canonicalInput25156.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput577 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4020 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput577 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4020 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25156 hH))).trans (reductionSound4020 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput577 (4 : Fin 6)) = canonicalInput25162.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput577 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3660 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput577 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3660 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25162 hH))).trans (reductionSound3660 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput577 (5 : Fin 6)) = canonicalInput25164.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput577 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11245 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput577 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11245 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25164 hH))).trans (reductionSound11245 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput577 (j : Fin 6)))
    2880 2880 ![1440, 2880, 2880, 2880, 72, 2880] ![-5760, -2880, -2880, -2880, -115200, -2880] (extendRow Arithmetic.row577) ![reductionProjection4035, reductionProjection4028, reductionProjection4033, reductionProjection4020, reductionProjection3660, reductionProjection11245]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput578 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![-1, -1, 1, 1, 0], ![0, 2, 0, -2, 0], ![2, 0, 1, 0, -3]]

theorem rowSound578 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 578) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row578 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row578 H]
  have hshape : boundaryInput578 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput578 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![576, 720, 2880, 2880, 2880, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput578 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection2949, reductionProjection2939, reductionProjection2946, reductionProjection2930, reductionProjection3023, reductionProjection11252] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput578 (0 : Fin 6)) = canonicalInput15836.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput578 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2949 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput578 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2949 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15836 hH))).trans (reductionSound2949 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput578 (1 : Fin 6)) = canonicalInput24941.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput578 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2939 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput578 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2939 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24941 hH))).trans (reductionSound2939 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput578 (2 : Fin 6)) = canonicalInput25111.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput578 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2946 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput578 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2946 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25111 hH))).trans (reductionSound2946 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput578 (3 : Fin 6)) = canonicalInput25155.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput578 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2930 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput578 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2930 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25155 hH))).trans (reductionSound2930 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput578 (4 : Fin 6)) = canonicalInput25161.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput578 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3023 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput578 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3023 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25161 hH))).trans (reductionSound3023 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput578 (5 : Fin 6)) = canonicalInput25163.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput578 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11252 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput578 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11252 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25163 hH))).trans (reductionSound11252 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput578 (j : Fin 6)))
    2880 2880 ![576, 720, 2880, 2880, 2880, 2880] ![-14400, -11520, -2880, -2880, -2880, -2880] (extendRow Arithmetic.row578) ![reductionProjection2949, reductionProjection2939, reductionProjection2946, reductionProjection2930, reductionProjection3023, reductionProjection11252]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput609 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 0, 2, 0, -1], ![0, 1, -1, 1, -1], ![2, 1, 0, -2, -1]]

theorem rowSound609 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 609) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row609 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row609 H]
  have hshape : boundaryInput609 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput609 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 2880, 720, 2880, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput609 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection3971, reductionProjection3971, reductionProjection4000, reductionProjection3564, reductionProjection3668, reductionProjection11233] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput609 (0 : Fin 6)) = canonicalInput15674.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput609 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3971 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput609 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3971 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15674 hH))).trans (reductionSound3971 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput609 (1 : Fin 6)) = canonicalInput24920.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput609 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3971 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput609 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3971 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24920 hH))).trans (reductionSound3971 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput609 (2 : Fin 6)) = canonicalInput25017.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput609 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4000 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput609 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4000 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25017 hH))).trans (reductionSound4000 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput609 (3 : Fin 6)) = canonicalInput25035.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput609 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3564 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput609 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3564 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25035 hH))).trans (reductionSound3564 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput609 (4 : Fin 6)) = canonicalInput25044.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput609 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3668 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput609 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3668 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25044 hH))).trans (reductionSound3668 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput609 (5 : Fin 6)) = canonicalInput25047.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput609 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11233 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput609 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11233 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25047 hH))).trans (reductionSound11233 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput609 (j : Fin 6)))
    2880 2880 ![2880, 2880, 720, 2880, 1440, 720] ![-2880, -2880, -11520, -2880, -5760, -11520] (extendRow Arithmetic.row609) ![reductionProjection3971, reductionProjection3971, reductionProjection4000, reductionProjection3564, reductionProjection3668, reductionProjection11233]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput610 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 0, 2, 0, -1], ![0, 2, 0, -2, 0], ![2, 0, -1, 1, -2]]

theorem rowSound610 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 610) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row610 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row610 H]
  have hshape : boundaryInput610 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput610 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 2880, 288, 2880, 1440, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput610 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection3175, reductionProjection3175, reductionProjection3814, reductionProjection3079, reductionProjection3106, reductionProjection11248] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput610 (0 : Fin 6)) = canonicalInput15675.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput610 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3175 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput610 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3175 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15675 hH))).trans (reductionSound3175 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput610 (1 : Fin 6)) = canonicalInput24921.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput610 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3175 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput610 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3175 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24921 hH))).trans (reductionSound3175 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput610 (2 : Fin 6)) = canonicalInput25018.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput610 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3814 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput610 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3814 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25018 hH))).trans (reductionSound3814 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput610 (3 : Fin 6)) = canonicalInput25036.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput610 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3079 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput610 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3079 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25036 hH))).trans (reductionSound3079 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput610 (4 : Fin 6)) = canonicalInput25045.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput610 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3106 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput610 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3106 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25045 hH))).trans (reductionSound3106 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput610 (5 : Fin 6)) = canonicalInput25049.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput610 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11248 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput610 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11248 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25049 hH))).trans (reductionSound11248 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput610 (j : Fin 6)))
    2880 2880 ![2880, 2880, 288, 2880, 1440, 2880] ![-2880, -2880, -28800, -2880, -5760, -2880] (extendRow Arithmetic.row610) ![reductionProjection3175, reductionProjection3175, reductionProjection3814, reductionProjection3079, reductionProjection3106, reductionProjection11248]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

import NoFourMUBs.Step2.SOS.Canonical144
import NoFourMUBs.Step2.SOS.Canonical169
import NoFourMUBs.Step2.SOS.Canonical170
import NoFourMUBs.Step2.SOS.Canonical188
import NoFourMUBs.Step2.SOS.Canonical189
import NoFourMUBs.Step2.SOS.Canonical336
import NoFourMUBs.Step2.SOS.Canonical337
import NoFourMUBs.Step2.SOS.Canonical356
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections009
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions007
import NoFourMUBs.Step2.SOS.Reductions012
import NoFourMUBs.Step2.SOS.Reductions013
import NoFourMUBs.Step2.SOS.Reductions017
import NoFourMUBs.Step2.SOS.Reductions054
import NoFourMUBs.Step2.SOS.Reductions062
import NoFourMUBs.Step2.SOS.Reductions191
import NoFourMUBs.Step2.SOS.Reductions199
import NoFourMUBs.Step2.SOS.Reductions207
import NoFourMUBs.Step2.SOS.Reductions221
import NoFourMUBs.Step2.SOS.Reductions259
import NoFourMUBs.Step2.SOS.Reductions290
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical121
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical152
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical153
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical155
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical230
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes5
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection9312 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 480), (94, -30), (682, 240), (697, 480), (698, -160), (1221, 240), (1227, -160), (1250, -60), (1251, 85), (1389, 480)]

def reductionPivot9312 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-2, 1, 1], ![-1, -1, 2], ![0, 1, -1], ![1, 1, -2], ![2, -1, -1]]

theorem reductionSound9312 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode5559).moment H =
      Integer.Sparse.eval reductionProjection9312 (momentVector H) := by
  have heq : reductionPivot9312 = (fun u v => (normalNode5559).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5559).moment H = injectiveMoment H reductionPivot9312 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5559).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9312 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9312 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![160, 2, 1, 480, 480] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9312 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1136, oldProjection539, oldProjection276, oldProjection1141, oldProjection626] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9312 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3896 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((160 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9312 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1136 (momentVector H)
      have hh : (160 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9312 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1136 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (160 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3896 hH))).trans (oldProjectionSound1136 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9312 (1 : Fin 5)) = canonicalInput10865.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9312 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection539 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9312 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection539 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10865 hH))).trans (oldProjectionSound539 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9312 (2 : Fin 5)) = canonicalInput10875.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9312 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection276 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9312 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection276 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10875 hH))).trans (oldProjectionSound276 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9312 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4869 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9312 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1141 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9312 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1141 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4869 hH))).trans (oldProjectionSound1141 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9312 (4 : Fin 5)) = canonicalInput10876.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9312 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection626 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9312 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection626 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10876 hH))).trans (oldProjectionSound626 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5559).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9312 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5559).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9312 (j : Fin 5)))
      1 480 480 1 ![160, 2, 1, 480, 480] ![3, 240, 480, 1, 1] reductionProjection9312 ![oldProjection1136, oldProjection539, oldProjection276, oldProjection1141, oldProjection626]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9313 : Integer.Sparse (Fin 1613) := [(0, -1), (67, 96), (81, -384), (94, 18), (228, -96), (681, 192), (682, -96), (697, -192), (698, 192), (1034, 288), (1210, 192), (1212, 192), (1220, 96), (1221, -192), (1226, 48), (1227, 128), (1250, 24), (1251, -37), (1389, -384)]

def reductionPivot9313 : Matrix (Fin 6) (Fin 3) ℤ := ![![-2, 1, 1], ![-1, -1, 2], ![-1, 2, -1], ![1, -2, 1], ![1, 1, -2], ![2, -1, -1]]

theorem reductionSound9313 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode5557).moment H =
      Integer.Sparse.eval reductionProjection9313 (momentVector H) := by
  have heq : reductionPivot9313 = (fun u v => (normalNode5557).entries (OAI.MUB6.Certificate.PairSemantics.permutation151 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5557).moment H = injectiveMoment H reductionPivot9313 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5557).entries OAI.MUB6.Certificate.PairSemantics.permutation151)).symm
  have hr := six_row_reduction hH reductionPivot9313 1 0 (by decide)
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![240, 480, 240, 160, 480] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst (splitFirst reductionPivot9313 (Pi.single (1 : Fin 3) 1 - Pi.single 0 1)) (j : Fin 5).succ)) j =
        Integer.Sparse.eval (![reductionProjection9309, reductionProjection391, reductionProjection9310, reductionProjection9311, reductionProjection9312] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst (splitFirst reductionPivot9313 (Pi.single (1 : Fin 3) 1 - Pi.single 0 1)) (0 : Fin 5).succ) = canonicalInput21559.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot9313 (Pi.single (1 : Fin 3) 1 - Pi.single 0 1)) (0 : Fin 5).succ) =
        Integer.Sparse.eval reductionProjection9309 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot9313 (Pi.single (1 : Fin 3) 1 - Pi.single 0 1)) (0 : Fin 5).succ) =
          Integer.Sparse.eval reductionProjection9309 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21559 hH))).trans (reductionSound9309 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst (splitFirst reductionPivot9313 (Pi.single (1 : Fin 3) 1 - Pi.single 0 1)) (1 : Fin 5).succ) = canonicalInput21573.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot9313 (Pi.single (1 : Fin 3) 1 - Pi.single 0 1)) (1 : Fin 5).succ) =
        Integer.Sparse.eval reductionProjection391 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot9313 (Pi.single (1 : Fin 3) 1 - Pi.single 0 1)) (1 : Fin 5).succ) =
          Integer.Sparse.eval reductionProjection391 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21573 hH))).trans (reductionSound391 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst (splitFirst reductionPivot9313 (Pi.single (1 : Fin 3) 1 - Pi.single 0 1)) (2 : Fin 5).succ) = canonicalInput21574.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot9313 (Pi.single (1 : Fin 3) 1 - Pi.single 0 1)) (2 : Fin 5).succ) =
        Integer.Sparse.eval reductionProjection9310 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot9313 (Pi.single (1 : Fin 3) 1 - Pi.single 0 1)) (2 : Fin 5).succ) =
          Integer.Sparse.eval reductionProjection9310 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21574 hH))).trans (reductionSound9310 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst (splitFirst reductionPivot9313 (Pi.single (1 : Fin 3) 1 - Pi.single 0 1)) (3 : Fin 5).succ) = canonicalInput21575.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((160 : ℤ) : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot9313 (Pi.single (1 : Fin 3) 1 - Pi.single 0 1)) (3 : Fin 5).succ) =
        Integer.Sparse.eval reductionProjection9311 (momentVector H)
      have hh : (160 : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot9313 (Pi.single (1 : Fin 3) 1 - Pi.single 0 1)) (3 : Fin 5).succ) =
          Integer.Sparse.eval reductionProjection9311 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (160 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21575 hH))).trans (reductionSound9311 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst (splitFirst reductionPivot9313 (Pi.single (1 : Fin 3) 1 - Pi.single 0 1)) (4 : Fin 5).succ) = canonicalInput21576.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot9313 (Pi.single (1 : Fin 3) 1 - Pi.single 0 1)) (4 : Fin 5).succ) =
        Integer.Sparse.eval reductionProjection9312 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot9313 (Pi.single (1 : Fin 3) 1 - Pi.single 0 1)) (4 : Fin 5).succ) =
          Integer.Sparse.eval reductionProjection9312 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21576 hH))).trans (reductionSound9312 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5557).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst (splitFirst reductionPivot9313 (Pi.single (1 : Fin 3) 1 - Pi.single 0 1)) (j : Fin 5).succ)) j = 0 := by
    linarith [hr]
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5557).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst (splitFirst reductionPivot9313 (Pi.single (1 : Fin 3) 1 - Pi.single 0 1)) (j : Fin 5).succ))
      1 96 480 5 ![240, 480, 240, 160, 480] ![2, 1, 2, 3, 1] reductionProjection9313 ![reductionProjection9309, reductionProjection391, reductionProjection9310, reductionProjection9311, reductionProjection9312]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9314 : Integer.Sparse (Fin 1613) := [(19, 4), (94, 1), (102, -24), (1223, -48), (1251, 1)]

def reductionPivot9314 : Matrix (Fin 5) (Fin 3) ℤ := ![![1, 0, -1], ![-2, 1, 1], ![0, -2, 2], ![0, -2, 2], ![1, 3, -4]]

theorem reductionSound9314 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode5595).moment H =
      Integer.Sparse.eval reductionProjection9314 (momentVector H) := by
  have heq : reductionPivot9314 = (fun u v => (normalNode5595).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5595).moment H = injectiveMoment H reductionPivot9314 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5595).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot9314 0 = Pi.single (0 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9314 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![24, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9314 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection256, oldProjection225, oldProjection225, oldProjection125] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9314 (0 : Fin 4)) = canonicalInput22822.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9314 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection256 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9314 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection256 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound22822 hH))).trans (oldProjectionSound256 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9314 (1 : Fin 4)) = canonicalInput10937.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9314 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection225 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9314 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection225 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10937 hH))).trans (oldProjectionSound225 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9314 (2 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node225⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9314 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection225 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9314 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection225 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound225 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9314 (3 : Fin 4)) = canonicalInput10901.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9314 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection125 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9314 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection125 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10901 hH))).trans (oldProjectionSound125 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5595).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9314 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5595).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9314 (j : Fin 4)))
      2 48 48 2 ![24, 1, 1, 1] ![2, 48, 48, 48] reductionProjection9314 ![oldProjection256, oldProjection225, oldProjection225, oldProjection125]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9315 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 1), (94, 2), (101, -48), (243, 32), (686, -48), (1225, 16), (1226, 16), (1251, 1)]

def reductionPivot9315 : Matrix (Fin 5) (Fin 3) ℤ := ![![1, 0, -1], ![-2, 1, 1], ![-1, -1, 2], ![1, -3, 2], ![1, 3, -4]]

theorem reductionSound9315 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode5565).moment H =
      Integer.Sparse.eval reductionProjection9315 (momentVector H) := by
  have heq : reductionPivot9315 = (fun u v => (normalNode5565).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5565).moment H = injectiveMoment H reductionPivot9315 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5565).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot9315 0 = Pi.single (0 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9315 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![48, 3, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9315 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection247, oldProjection228, oldProjection161, reductionProjection575] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9315 (0 : Fin 4)) = canonicalInput22814.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9315 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection247 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9315 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection247 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound22814 hH))).trans (oldProjectionSound247 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9315 (1 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node228⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9315 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection228 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9315 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection228 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound228 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9315 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4879 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9315 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection161 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9315 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection161 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4879 hH))).trans (oldProjectionSound161 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9315 (3 : Fin 4)) = canonicalInput10879.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9315 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection575 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9315 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection575 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10879 hH))).trans (reductionSound575 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5565).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9315 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5565).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9315 (j : Fin 4)))
      2 96 96 2 ![48, 3, 1, 1] ![2, 32, 96, 96] reductionProjection9315 ![oldProjection247, oldProjection228, oldProjection161, reductionProjection575]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9316 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -2), (23, 48), (94, -5), (101, 48), (102, 48), (104, -16), (108, -16), (228, 48), (241, -32), (243, -48), (247, -16), (686, 48), (698, -16), (704, -16), (1208, -96), (1223, 96), (1225, -16), (1226, -16), (1251, -3)]

def reductionPivot9316 : Matrix (Fin 6) (Fin 3) ℤ := ![![1, -1, 0], ![-2, 1, 1], ![-1, -1, 2], ![0, -2, 2], ![1, 0, -1], ![1, 3, -4]]

theorem reductionSound9316 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode5558).moment H =
      Integer.Sparse.eval reductionProjection9316 (momentVector H) := by
  have heq : reductionPivot9316 = (fun u v => (normalNode5558).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5558).moment H = injectiveMoment H reductionPivot9316 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5558).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot9316 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9316 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 48, 96, 1, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9316 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection243, reductionProjection9314, reductionProjection9315, reductionProjection1993, oldProjection417] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9316 (0 : Fin 5)) = canonicalInput21577.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9316 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection243 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9316 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection243 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21577 hH))).trans (reductionSound243 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9316 (1 : Fin 5)) = (normalNode5595).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9316 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9314 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9316 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9314 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9314 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9316 (2 : Fin 5)) = (normalNode5565).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9316 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9315 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9316 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9315 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9315 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9316 (3 : Fin 5)) = canonicalInput10874.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9316 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1993 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9316 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1993 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10874 hH))).trans (reductionSound1993 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9316 (4 : Fin 5)) = canonicalInput10873.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9316 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection417 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9316 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection417 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10873 hH))).trans (oldProjectionSound417 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5558).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9316 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5558).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9316 (j : Fin 5)))
      1 96 96 1 ![96, 48, 96, 1, 96] ![1, 2, 1, 96, 1] reductionProjection9316 ![reductionProjection243, reductionProjection9314, reductionProjection9315, reductionProjection1993, oldProjection417]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9317 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 100), (20, -15), (23, 240), (38, 240), (81, 240), (94, -70), (100, 240), (101, 240), (228, 480), (243, -240), (686, 480), (698, -240), (704, -320), (1040, 240), (1223, 480), (1225, -80), (1226, -160), (1227, -80), (1251, -60)]

def reductionPivot9317 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-2, 1, 1], ![-1, -1, 2], ![1, -2, 1], ![1, 0, -1], ![1, 3, -4]]

theorem reductionSound9317 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode5560).moment H =
      Integer.Sparse.eval reductionProjection9317 (momentVector H) := by
  have heq : reductionPivot9317 = (fun u v => (normalNode5560).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5560).moment H = injectiveMoment H reductionPivot9317 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5560).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9317 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9317 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 96, 96, 96, 480] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9317 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection308, reductionProjection9305, reductionProjection9315, oldProjection695, oldProjection535] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9317 (0 : Fin 5)) = canonicalInput9254.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9317 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection308 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9317 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection308 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9254 hH))).trans (oldProjectionSound308 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9317 (1 : Fin 5)) = (normalNode5556).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9317 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9305 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9317 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9305 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9305 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9317 (2 : Fin 5)) = (normalNode5565).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9317 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9315 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9317 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9315 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9315 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9317 (3 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node695⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9317 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection695 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9317 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection695 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound695 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9317 (4 : Fin 5)) = canonicalInput10880.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9317 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection535 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9317 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection535 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10880 hH))).trans (oldProjectionSound535 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5560).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9317 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5560).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9317 (j : Fin 5)))
      1 480 480 1 ![96, 96, 96, 96, 480] ![5, 5, 5, 5, 1] reductionProjection9317 ![oldProjection308, reductionProjection9305, reductionProjection9315, oldProjection695, oldProjection535]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9318 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (58, 120), (81, 120), (94, -5), (228, 120), (243, -40), (686, 120), (698, -160), (700, -120), (704, -80), (1052, 120), (1210, -240), (1219, 120), (1223, 120), (1226, -40), (1227, -40), (1251, -10)]

def reductionPivot9318 : Matrix (Fin 6) (Fin 3) ℤ := ![![1, -1, 0], ![-2, 1, 1], ![-1, -1, 2], ![0, 3, -3], ![1, -2, 1], ![1, 0, -1]]

theorem reductionSound9318 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * (normalNode5564).moment H =
      Integer.Sparse.eval reductionProjection9318 (momentVector H) := by
  have heq : reductionPivot9318 = (fun u v => (normalNode5564).entries (OAI.MUB6.Certificate.PairSemantics.permutation258 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5564).moment H = injectiveMoment H reductionPivot9318 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5564).entries OAI.MUB6.Certificate.PairSemantics.permutation258)).symm
  have hshape : reductionPivot9318 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9318 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![480, 96, 480, 48, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9318 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1138, oldProjection698, oldProjection535, reductionProjection6126, reductionProjection389] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9318 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw7374 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9318 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1138 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9318 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1138 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7374 hH))).trans (oldProjectionSound1138 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9318 (1 : Fin 5)) = canonicalInput10904.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9318 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection698 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9318 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection698 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10904 hH))).trans (oldProjectionSound698 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9318 (2 : Fin 5)) = canonicalInput10883.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9318 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection535 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9318 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection535 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10883 hH))).trans (oldProjectionSound535 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9318 (3 : Fin 5)) = canonicalInput10878.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9318 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6126 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9318 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6126 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10878 hH))).trans (reductionSound6126 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9318 (4 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1210).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9318 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection389 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9318 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection389 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound389 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5564).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9318 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5564).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9318 (j : Fin 5)))
      1 240 480 2 ![480, 96, 480, 48, 1] ![1, 5, 1, 10, 480] reductionProjection9318 ![oldProjection1138, oldProjection698, oldProjection535, reductionProjection6126, reductionProjection389]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9319 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 4), (20, 4), (26, -16), (70, 48), (86, -16), (88, -16), (91, -16), (94, 5), (105, -32), (106, -32), (243, -96), (703, -16), (1209, 48), (1217, 48), (1225, -48), (1226, -32), (1251, -3)]

def reductionPivot9319 : Matrix (Fin 6) (Fin 3) ℤ := ![![-1, 0, 1], ![-2, 1, 1], ![0, -3, 3], ![1, -1, 0], ![1, 0, -1], ![1, 3, -4]]

theorem reductionSound9319 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode5566).moment H =
      Integer.Sparse.eval reductionProjection9319 (momentVector H) := by
  have heq : reductionPivot9319 = (fun u v => (normalNode5566).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5566).moment H = injectiveMoment H reductionPivot9319 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5566).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9319 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9319 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 24, 96, 48, 48] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9319 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection395, reductionProjection9304, reductionProjection8307, oldProjection221, oldProjection700] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9319 (0 : Fin 5)) = (normalNode192).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9319 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection395 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9319 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection395 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound395 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9319 (1 : Fin 5)) = (normalNode5551).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9319 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9304 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9319 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9304 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9304 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9319 (2 : Fin 5)) = (normalNode5590).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9319 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8307 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9319 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8307 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound8307 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9319 (3 : Fin 5)) = canonicalInput10899.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9319 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection221 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9319 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection221 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10899 hH))).trans (oldProjectionSound221 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9319 (4 : Fin 5)) = canonicalInput10900.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9319 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection700 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9319 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection700 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10900 hH))).trans (oldProjectionSound700 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5566).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9319 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5566).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9319 (j : Fin 5)))
      1 96 96 1 ![96, 24, 96, 48, 48] ![1, 4, 1, 2, 2] reductionProjection9319 ![reductionProjection395, reductionProjection9304, reductionProjection8307, oldProjection221, oldProjection700]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9320 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -1), (26, -16), (42, -16), (86, -16), (88, -32), (90, -16), (91, -32), (94, 14), (101, 48), (105, -16), (106, -16), (243, -128), (686, 48), (698, -16), (700, -16), (1225, -48), (1226, -48), (1251, -1)]

def reductionPivot9320 : Matrix (Fin 6) (Fin 3) ℤ := ![![-1, 0, 1], ![-2, 1, 1], ![0, -1, 1], ![1, -3, 2], ![1, 0, -1], ![1, 3, -4]]

theorem reductionSound9320 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode5567).moment H =
      Integer.Sparse.eval reductionProjection9320 (momentVector H) := by
  have heq : reductionPivot9320 = (fun u v => (normalNode5567).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5567).moment H = injectiveMoment H reductionPivot9320 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5567).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9320 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9320 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![6, 96, 96, 3, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9320 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection413, reductionProjection9315, reductionProjection8307, oldProjection228, oldProjection696] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9320 (0 : Fin 5)) = (normalNode212).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9320 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection413 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9320 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection413 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound413 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9320 (1 : Fin 5)) = (normalNode5565).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9320 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9315 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9320 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9315 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9315 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9320 (2 : Fin 5)) = canonicalInput10905.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9320 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8307 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9320 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8307 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10905 hH))).trans (reductionSound8307 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9320 (3 : Fin 5)) = canonicalInput10910.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9320 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection228 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9320 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection228 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10910 hH))).trans (oldProjectionSound228 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9320 (4 : Fin 5)) = canonicalInput10911.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9320 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection696 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9320 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection696 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10911 hH))).trans (oldProjectionSound696 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5567).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9320 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5567).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9320 (j : Fin 5)))
      1 96 96 1 ![6, 96, 96, 3, 96] ![16, 1, 1, 32, 1] reductionProjection9320 ![reductionProjection413, reductionProjection9315, reductionProjection8307, oldProjection228, oldProjection696]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9321 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (20, -5), (42, -80), (88, -80), (89, 240), (90, -80), (91, -80), (94, -5), (228, 240), (241, -80), (243, -560), (686, 240), (698, -480), (700, -80), (704, -240), (1219, 240), (1223, 720), (1225, -160), (1226, -400), (1227, -160), (1251, -5)]

def reductionPivot9321 : Matrix (Fin 6) (Fin 3) ℤ := ![![-1, 0, 1], ![-2, 1, 1], ![0, -1, 1], ![1, -2, 1], ![1, -1, 0], ![1, 3, -4]]

theorem reductionSound9321 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode5568).moment H =
      Integer.Sparse.eval reductionProjection9321 (momentVector H) := by
  have heq : reductionPivot9321 = (fun u v => (normalNode5568).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5568).moment H = injectiveMoment H reductionPivot9321 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5568).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9321 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9321 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![6, 96, 96, 6, 480] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9321 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection370, oldProjection695, oldProjection701, oldProjection707, oldProjection697] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9321 (0 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node370⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9321 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection370 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9321 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection370 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound370 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9321 (1 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node695⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9321 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection695 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9321 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection695 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound695 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9321 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4926 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9321 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection701 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9321 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection701 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4926 hH))).trans (oldProjectionSound701 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9321 (3 : Fin 5)) = canonicalInput10912.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9321 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection707 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9321 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection707 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10912 hH))).trans (oldProjectionSound707 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9321 (4 : Fin 5)) = canonicalInput10914.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9321 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection697 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9321 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection697 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10914 hH))).trans (oldProjectionSound697 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5568).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9321 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5568).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9321 (j : Fin 5)))
      1 480 480 1 ![6, 96, 96, 6, 480] ![80, 5, 5, 80, 1] reductionProjection9321 ![oldProjection370, oldProjection695, oldProjection701, oldProjection707, oldProjection697]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9322 : Integer.Sparse (Fin 1613) := [(20, -1), (94, -1), (106, 2), (243, 2), (1045, -6), (1225, 4)]

def reductionPivot9322 : Matrix (Fin 5) (Fin 3) ℤ := ![![1, 0, -1], ![-2, 1, 1], ![0, -4, 4], ![0, 3, -3], ![1, 0, -1]]

theorem reductionSound9322 {H : CMatrix} (hH : IsHadamard H) :
    (12 : ℝ) * (normalNode5580).moment H =
      Integer.Sparse.eval reductionProjection9322 (momentVector H) := by
  have heq : reductionPivot9322 = (fun u v => (normalNode5580).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5580).moment H = injectiveMoment H reductionPivot9322 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5580).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot9322 0 = Pi.single (0 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9322 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![8, 48, 48, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9322 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection290, oldProjection221, reductionProjection8306, oldProjection193] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9322 (0 : Fin 4)) = canonicalInput22820.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((8 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9322 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection290 (momentVector H)
      have hh : (8 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9322 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection290 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (8 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound22820 hH))).trans (oldProjectionSound290 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9322 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4962 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9322 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection221 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9322 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection221 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4962 hH))).trans (oldProjectionSound221 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9322 (2 : Fin 4)) = canonicalInput10893.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9322 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8306 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9322 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8306 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10893 hH))).trans (reductionSound8306 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9322 (3 : Fin 4)) = canonicalInput10891.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9322 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection193 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9322 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection193 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10891 hH))).trans (oldProjectionSound193 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5580).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9322 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5580).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9322 (j : Fin 4)))
      2 12 48 8 ![8, 48, 48, 1] ![6, 1, 1, 48] reductionProjection9322 ![oldProjection290, oldProjection221, reductionProjection8306, oldProjection193]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9323 : Integer.Sparse (Fin 1613) := [(19, 8), (20, 8), (42, -16), (83, 48), (86, -16), (91, -32), (94, 1), (106, -16), (243, -16), (704, -16), (1040, 48), (1045, 48), (1225, -16), (1251, -3)]

def reductionPivot9323 : Matrix (Fin 6) (Fin 3) ℤ := ![![-1, 0, 1], ![-2, 1, 1], ![0, 3, -3], ![1, -4, 3], ![1, 0, -1], ![1, 0, -1]]

theorem reductionSound9323 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode5571).moment H =
      Integer.Sparse.eval reductionProjection9323 (momentVector H) := by
  have heq : reductionPivot9323 = (fun u v => (normalNode5571).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5571).moment H = injectiveMoment H reductionPivot9323 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5571).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9323 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9323 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 96, 12, 48, 48] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9323 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection442, oldProjection694, reductionProjection9322, oldProjection221, oldProjection221] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9323 (0 : Fin 5)) = (normalNode238).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9323 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection442 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9323 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection442 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound442 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9323 (1 : Fin 5)) = canonicalInput10888.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9323 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection694 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9323 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection694 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10888 hH))).trans (oldProjectionSound694 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9323 (2 : Fin 5)) = canonicalInput10923.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9323 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9322 (momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9323 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9322 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10923 hH))).trans (reductionSound9322 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9323 (3 : Fin 5)) = canonicalInput10924.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9323 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection221 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9323 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection221 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10924 hH))).trans (oldProjectionSound221 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9323 (4 : Fin 5)) = canonicalInput10926.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9323 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection221 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9323 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection221 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10926 hH))).trans (oldProjectionSound221 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5571).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9323 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5571).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9323 (j : Fin 5)))
      1 96 96 1 ![96, 96, 12, 48, 48] ![1, 1, 8, 2, 2] reductionProjection9323 ![reductionProjection442, oldProjection694, reductionProjection9322, oldProjection221, oldProjection221]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9324 : Integer.Sparse (Fin 1613) := [(85, -3), (243, 1), (1214, -3), (1223, -3), (1225, 1), (1226, 1)]

def reductionPivot9324 : Matrix (Fin 5) (Fin 3) ℤ := ![![-1, 0, 1], ![-2, 1, 1], ![1, -4, 3], ![1, 1, -2], ![1, 2, -3]]

theorem reductionSound9324 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode5572).moment H =
      Integer.Sparse.eval reductionProjection9324 (momentVector H) := by
  have heq : reductionPivot9324 = (fun u v => (normalNode5572).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5572).moment H = injectiveMoment H reductionPivot9324 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5572).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9324 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9324 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 3, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9324 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection396, oldProjection219, oldProjection228, oldProjection225] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9324 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code85).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9324 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection396 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9324 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection396 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound396 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9324 (1 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node219⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9324 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection219 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9324 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection219 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound219 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9324 (2 : Fin 4)) = canonicalInput10932.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9324 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection228 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9324 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection228 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10932 hH))).trans (oldProjectionSound228 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9324 (3 : Fin 4)) = canonicalInput10933.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9324 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection225 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9324 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection225 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10933 hH))).trans (oldProjectionSound225 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5572).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9324 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5572).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9324 (j : Fin 4)))
      2 6 6 2 ![1, 1, 3, 1] ![6, 6, 2, 6] reductionProjection9324 ![reductionProjection396, oldProjection219, oldProjection228, oldProjection225]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9325 : Integer.Sparse (Fin 1613) := [(1224, 1)]

theorem reductionSound9325 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1224).moment H =
      Integer.Sparse.eval reductionProjection9325 (momentVector H) := by
  have hc : coordinates (1224 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1224) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection9325, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection9326 : Integer.Sparse (Fin 1613) := [(4, -1), (20, 3), (106, -16), (1224, -16)]

def reductionPivot9326 : Matrix (Fin 4) (Fin 3) ℤ := ![![1, -1, 0], ![-2, 1, 1], ![0, -4, 4], ![1, 4, -5]]

theorem reductionSound9326 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode5582).moment H =
      Integer.Sparse.eval reductionProjection9326 (momentVector H) := by
  have heq : reductionPivot9326 = (fun u v => (normalNode5582).entries (OAI.MUB6.Certificate.PairSemantics.permutation21 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5582).moment H = injectiveMoment H reductionPivot9326 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5582).entries OAI.MUB6.Certificate.PairSemantics.permutation21)).symm
  have hshape : reductionPivot9326 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot9326 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![16, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9326 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection50, reductionProjection9325, oldProjection29] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9326 (0 : Fin 3)) = canonicalInput21614.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9326 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection50 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9326 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection50 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21614 hH))).trans (oldProjectionSound50 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9326 (1 : Fin 3)) = (NoFourMUBs.Step2.SOS.Semantics.code1224).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9326 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection9325 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9326 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection9325 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9325 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9326 (2 : Fin 3)) = canonicalInput10894.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9326 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection29 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9326 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection29 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10894 hH))).trans (oldProjectionSound29 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode5582).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9326 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5582).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9326 (j : Fin 3)))
      3 48 48 3 ![16, 1, 1] ![3, 48, 48] reductionProjection9326 ![oldProjection50, reductionProjection9325, oldProjection29]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9327 : Integer.Sparse (Fin 1613) := [(1213, 1)]

theorem reductionSound9327 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1213).moment H =
      Integer.Sparse.eval reductionProjection9327 (momentVector H) := by
  have hc : coordinates (1213 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1213) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection9327, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection9328 : Integer.Sparse (Fin 1613) := [(4, 1), (20, 2), (94, 1), (106, 16), (1213, -24), (1224, 8), (1225, 8)]

def reductionPivot9328 : Matrix (Fin 5) (Fin 3) ℤ := ![![1, -1, 0], ![-2, 1, 1], ![0, -4, 4], ![0, 4, -4], ![1, 0, -1]]

theorem reductionSound9328 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode5581).moment H =
      Integer.Sparse.eval reductionProjection9328 (momentVector H) := by
  have heq : reductionPivot9328 = (fun u v => (normalNode5581).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5581).moment H = injectiveMoment H reductionPivot9328 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5581).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot9328 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9328 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![48, 48, 48, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9328 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6635, reductionProjection9326, reductionProjection8306, reductionProjection9327] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9328 (0 : Fin 4)) = (normalNode10777).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9328 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6635 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9328 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6635 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound6635 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9328 (1 : Fin 4)) = canonicalInput10931.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9328 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9326 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9328 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9326 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10931 hH))).trans (reductionSound9326 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9328 (2 : Fin 4)) = canonicalInput10893.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9328 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8306 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9328 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8306 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10893 hH))).trans (reductionSound8306 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9328 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1213).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9328 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9327 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9328 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9327 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9327 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5581).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9328 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5581).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9328 (j : Fin 4)))
      2 48 48 2 ![48, 48, 48, 1] ![1, 1, 1, 48] reductionProjection9328 ![reductionProjection6635, reductionProjection9326, reductionProjection8306, reductionProjection9327]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9329 : Integer.Sparse (Fin 1613) := [(3, -2), (19, -2), (20, -1), (94, -1), (1045, -24), (1214, -24), (1218, -24)]

def reductionPivot9329 : Matrix (Fin 5) (Fin 3) ℤ := ![![1, -1, 0], ![-2, 1, 1], ![0, -4, 4], ![0, 3, -3], ![1, 1, -2]]

theorem reductionSound9329 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode5579).moment H =
      Integer.Sparse.eval reductionProjection9329 (momentVector H) := by
  have heq : reductionPivot9329 = (fun u v => (normalNode5579).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5579).moment H = injectiveMoment H reductionPivot9329 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5579).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot9329 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9329 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![24, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9329 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection278, reductionProjection6392, oldProjection219, oldProjection193] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9329 (0 : Fin 4)) = canonicalInput21613.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9329 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection278 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9329 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection278 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21613 hH))).trans (oldProjectionSound278 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9329 (1 : Fin 4)) = canonicalInput10930.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9329 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6392 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9329 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6392 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10930 hH))).trans (reductionSound6392 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9329 (2 : Fin 4)) = canonicalInput10892.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9329 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection219 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9329 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection219 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10892 hH))).trans (oldProjectionSound219 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9329 (3 : Fin 4)) = canonicalInput10891.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9329 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection193 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9329 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection193 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10891 hH))).trans (oldProjectionSound193 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5579).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9329 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5579).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9329 (j : Fin 4)))
      2 48 48 2 ![24, 1, 1, 1] ![2, 48, 48, 48] reductionProjection9329 ![oldProjection278, reductionProjection6392, oldProjection219, oldProjection193]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9330 : Integer.Sparse (Fin 1613) := [(3, 4), (4, -1), (19, 4), (20, 4), (94, 4), (105, -8), (106, -32), (243, -32), (244, -8), (1045, 72), (1213, 24), (1214, 24), (1217, 24), (1218, 24), (1224, -8), (1225, -32), (1226, -8), (1251, -1)]

def reductionPivot9330 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, 1, -1], ![-2, 1, 1], ![0, -4, 4], ![0, 3, -3], ![1, -1, 0], ![1, 0, -1]]

theorem reductionSound9330 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode5575).moment H =
      Integer.Sparse.eval reductionProjection9330 (momentVector H) := by
  have heq : reductionPivot9330 = (fun u v => (normalNode5575).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5575).moment H = injectiveMoment H reductionPivot9330 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5575).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9330 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9330 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![24, 48, 48, 12, 48] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9330 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection637, oldProjection700, reductionProjection9328, reductionProjection9322, reductionProjection9329] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9330 (0 : Fin 5)) = canonicalInput12094.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9330 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection637 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9330 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection637 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12094 hH))).trans (oldProjectionSound637 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9330 (1 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node700⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9330 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection700 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9330 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection700 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound700 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9330 (2 : Fin 5)) = (normalNode5581).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9330 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9328 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9330 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9328 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9328 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9330 (3 : Fin 5)) = (normalNode5580).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9330 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9322 (momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9330 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9322 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9322 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9330 (4 : Fin 5)) = (normalNode5579).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9330 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9329 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9330 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9329 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9329 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5575).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9330 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5575).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9330 (j : Fin 5)))
      1 48 48 1 ![24, 48, 48, 12, 48] ![2, 1, 1, 4, 1] reductionProjection9330 ![oldProjection637, oldProjection700, reductionProjection9328, reductionProjection9322, reductionProjection9329]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9331 : Integer.Sparse (Fin 1613) := [(4, 1), (20, -8), (94, -1), (106, 48), (243, 16), (244, 16), (1224, 16), (1225, 32)]

def reductionPivot9331 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, 1, -1], ![-2, 1, 1], ![0, -4, 4], ![1, -1, 0], ![1, 3, -4]]

theorem reductionSound9331 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode5576).moment H =
      Integer.Sparse.eval reductionProjection9331 (momentVector H) := by
  have heq : reductionPivot9331 = (fun u v => (normalNode5576).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5576).moment H = injectiveMoment H reductionPivot9331 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5576).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9331 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9331 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![48, 48, 48, 48] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9331 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection216, oldProjection221, reductionProjection8306, reductionProjection9326] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9331 (0 : Fin 4)) = canonicalInput12095.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9331 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection216 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9331 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection216 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12095 hH))).trans (oldProjectionSound216 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9331 (1 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node221⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9331 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection221 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9331 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection221 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound221 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9331 (2 : Fin 4)) = (normalNode5583).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9331 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8306 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9331 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8306 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound8306 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9331 (3 : Fin 4)) = (normalNode5582).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9331 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9326 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9331 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9326 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9326 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5576).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9331 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5576).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9331 (j : Fin 4)))
      2 96 96 2 ![48, 48, 48, 48] ![2, 2, 2, 2] reductionProjection9331 ![oldProjection216, oldProjection221, reductionProjection8306, reductionProjection9326]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9332 : Integer.Sparse (Fin 1613) := [(19, -4), (20, -2), (94, -1), (106, 16), (243, 32), (244, 16), (1214, -48), (1225, 16), (1226, 16), (1251, 1)]

def reductionPivot9332 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, 1, -1], ![-2, 1, 1], ![0, -4, 4], ![1, 0, -1], ![1, 2, -3]]

theorem reductionSound9332 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode5577).moment H =
      Integer.Sparse.eval reductionProjection9332 (momentVector H) := by
  have heq : reductionPivot9332 = (fun u v => (normalNode5577).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5577).moment H = injectiveMoment H reductionPivot9332 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5577).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9332 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9332 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![48, 48, 1, 48] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9332 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection217, oldProjection222, oldProjection219, reductionProjection8306] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9332 (0 : Fin 4)) = canonicalInput12096.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9332 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection217 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9332 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection217 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12096 hH))).trans (oldProjectionSound217 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9332 (1 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node222⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9332 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection222 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9332 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection222 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound222 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9332 (2 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node219⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9332 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection219 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9332 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection219 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound219 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9332 (3 : Fin 4)) = (normalNode5583).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9332 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8306 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9332 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8306 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound8306 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5577).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9332 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5577).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9332 (j : Fin 4)))
      2 96 96 2 ![48, 48, 1, 48] ![2, 2, 96, 2] reductionProjection9332 ![oldProjection217, oldProjection222, oldProjection219, reductionProjection8306]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9333 : Integer.Sparse (Fin 1613) := [(3, -4), (19, 8), (20, 1), (94, 1), (692, -48), (1214, -48), (1222, -48)]

def reductionPivot9333 : Matrix (Fin 5) (Fin 3) ℤ := ![![1, -1, 0], ![-2, 1, 1], ![0, -4, 4], ![0, 2, -2], ![1, 2, -3]]

theorem reductionSound9333 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode5578).moment H =
      Integer.Sparse.eval reductionProjection9333 (momentVector H) := by
  have heq : reductionPivot9333 = (fun u v => (normalNode5578).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5578).moment H = injectiveMoment H reductionPivot9333 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5578).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot9333 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9333 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![48, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9333 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection266, reductionProjection1759, oldProjection219, oldProjection164] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9333 (0 : Fin 4)) = canonicalInput21612.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9333 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection266 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9333 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection266 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21612 hH))).trans (oldProjectionSound266 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9333 (1 : Fin 4)) = canonicalInput10929.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9333 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1759 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9333 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1759 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10929 hH))).trans (reductionSound1759 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9333 (2 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node219⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9333 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection219 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9333 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection219 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound219 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9333 (3 : Fin 4)) = canonicalInput10890.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9333 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection164 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9333 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection164 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10890 hH))).trans (oldProjectionSound164 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5578).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9333 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5578).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9333 (j : Fin 4)))
      2 96 96 2 ![48, 1, 1, 1] ![2, 96, 96, 96] reductionProjection9333 ![oldProjection266, reductionProjection1759, oldProjection219, oldProjection164]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9334 : Integer.Sparse (Fin 1613) := [(20, 1), (94, -3), (243, 16), (1060, -48), (1218, -48), (1223, -48), (1225, 16)]

def reductionPivot9334 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, 1, -1], ![-2, 1, 1], ![0, -3, 3], ![1, -2, 1], ![1, 3, -4]]

theorem reductionSound9334 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode5593).moment H =
      Integer.Sparse.eval reductionProjection9334 (momentVector H) := by
  have heq : reductionPivot9334 = (fun u v => (normalNode5593).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5593).moment H = injectiveMoment H reductionPivot9334 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5593).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9334 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9334 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 48, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9334 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection213, oldProjection225, oldProjection221, reductionProjection6392] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9334 (0 : Fin 4)) = canonicalInput12100.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9334 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection213 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9334 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection213 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12100 hH))).trans (oldProjectionSound213 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9334 (1 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node225⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9334 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection225 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9334 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection225 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound225 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9334 (2 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node221⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9334 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection221 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9334 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection221 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound221 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9334 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1218).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9334 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6392 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9334 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6392 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound6392 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5593).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9334 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5593).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9334 (j : Fin 4)))
      2 96 96 2 ![1, 1, 48, 1] ![96, 96, 2, 96] reductionProjection9334 ![oldProjection213, oldProjection225, oldProjection221, reductionProjection6392]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9335 : Integer.Sparse (Fin 1613) := [(3, 4), (4, -1), (19, 4), (20, 5), (94, 10), (105, -32), (106, -64), (241, -16), (243, -96), (244, -16), (698, -16), (700, -16), (1060, 48), (1218, 48), (1223, 48), (1224, -16), (1225, -48), (1226, -32)]

def reductionPivot9335 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-2, 1, 1], ![0, -3, 3], ![0, 1, -1], ![1, -1, 0], ![1, 3, -4]]

theorem reductionSound9335 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode5584).moment H =
      Integer.Sparse.eval reductionProjection9335 (momentVector H) := by
  have heq : reductionPivot9335 = (fun u v => (normalNode5584).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5584).moment H = injectiveMoment H reductionPivot9335 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5584).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9335 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9335 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 96, 48, 96, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9335 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection632, reductionProjection9331, oldProjection221, reductionProjection9334, oldProjection696] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9335 (0 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node632⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9335 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection632 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9335 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection632 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound632 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9335 (1 : Fin 5)) = (normalNode5576).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9335 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9331 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9335 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9331 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9331 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9335 (2 : Fin 5)) = canonicalInput10895.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9335 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection221 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9335 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection221 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10895 hH))).trans (oldProjectionSound221 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9335 (3 : Fin 5)) = (normalNode5593).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9335 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9334 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9335 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9334 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9334 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9335 (4 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node696⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9335 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection696 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9335 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection696 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound696 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5584).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9335 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5584).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9335 (j : Fin 5)))
      1 96 96 1 ![96, 96, 48, 96, 96] ![1, 1, 2, 1, 1] reductionProjection9335 ![oldProjection632, reductionProjection9331, oldProjection221, reductionProjection9334, oldProjection696]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9336 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (94, 45), (105, -80), (106, -80), (241, -80), (243, -480), (244, -80), (698, -320), (700, -160), (1047, 240), (1214, 240), (1219, 240), (1225, -160), (1226, -240), (1227, -80), (1251, 20)]

def reductionPivot9336 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-2, 1, 1], ![0, -3, 3], ![0, 1, -1], ![1, 0, -1], ![1, 2, -3]]

theorem reductionSound9336 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode5585).moment H =
      Integer.Sparse.eval reductionProjection9336 (momentVector H) := by
  have heq : reductionPivot9336 = (fun u v => (normalNode5585).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5585).moment H = injectiveMoment H reductionPivot9336 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5585).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9336 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9336 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 96, 48, 96, 480] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9336 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection633, reductionProjection9332, oldProjection222, oldProjection696, oldProjection697] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9336 (0 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node633⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9336 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection633 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9336 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection633 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound633 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9336 (1 : Fin 5)) = (normalNode5577).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9336 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9332 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9336 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9332 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9332 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9336 (2 : Fin 5)) = canonicalInput10896.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9336 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection222 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9336 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection222 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10896 hH))).trans (oldProjectionSound222 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9336 (3 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node696⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9336 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection696 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9336 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection696 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound696 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9336 (4 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node697⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9336 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection697 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9336 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection697 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound697 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5585).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9336 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5585).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9336 (j : Fin 5)))
      1 480 480 1 ![96, 96, 48, 96, 480] ![5, 5, 10, 5, 1] reductionProjection9336 ![oldProjection633, reductionProjection9332, oldProjection222, oldProjection696, oldProjection697]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9337 : Integer.Sparse (Fin 1613) := [(3, 2), (20, -1), (93, -6), (94, 3), (243, -24), (691, 24), (692, 24), (698, -8), (700, -8), (1047, 24), (1052, 24), (1057, 24), (1214, 24), (1215, -48), (1219, 24), (1222, 24), (1223, 24), (1225, -8), (1226, -16)]

def reductionPivot9337 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-2, 1, 1], ![0, -3, 3], ![0, 2, -2], ![1, -1, 0], ![1, 2, -3]]

theorem reductionSound9337 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode5586).moment H =
      Integer.Sparse.eval reductionProjection9337 (momentVector H) := by
  have heq : reductionPivot9337 = (fun u v => (normalNode5586).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5586).moment H = injectiveMoment H reductionPivot9337 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5586).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9337 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9337 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![48, 96, 96, 1, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9337 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection7096, reductionProjection9333, oldProjection696, reductionProjection7095, oldProjection698] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9337 (0 : Fin 5)) = (normalNode4615).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9337 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7096 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9337 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7096 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound7096 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9337 (1 : Fin 5)) = (normalNode5578).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9337 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9333 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9337 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9333 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9333 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9337 (2 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node696⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9337 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection696 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9337 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection696 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound696 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9337 (3 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1215).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9337 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7095 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9337 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7095 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound7095 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9337 (4 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node698⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9337 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection698 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9337 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection698 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound698 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5586).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9337 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5586).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9337 (j : Fin 5)))
      1 48 96 2 ![48, 96, 96, 1, 96] ![2, 1, 1, 96, 1] reductionProjection9337 ![reductionProjection7096, reductionProjection9333, oldProjection696, reductionProjection7095, oldProjection698]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9338 : Integer.Sparse (Fin 1613) := [(1216, 1)]

theorem reductionSound9338 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1216).moment H =
      Integer.Sparse.eval reductionProjection9338 (momentVector H) := by
  have hc : coordinates (1216 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1216) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection9338, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection9339 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 8), (20, -1), (93, -12), (94, 1), (243, -32), (1044, 48), (1045, 48), (1047, 48), (1052, 48), (1060, 48), (1214, 48), (1216, -96), (1217, 48), (1218, 48), (1219, 48), (1223, 48), (1225, -16), (1226, -16), (1251, -2)]

def reductionPivot9339 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-2, 1, 1], ![0, -3, 3], ![0, 3, -3], ![1, -1, 0], ![1, 1, -2]]

theorem reductionSound9339 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode5587).moment H =
      Integer.Sparse.eval reductionProjection9339 (momentVector H) := by
  have heq : reductionPivot9339 = (fun u v => (normalNode5587).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5587).moment H = injectiveMoment H reductionPivot9339 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5587).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9339 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9339 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 48, 96, 1, 48] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9339 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8288, reductionProjection9329, oldProjection698, reductionProjection9338, oldProjection700] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9339 (0 : Fin 5)) = (normalNode4616).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9339 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8288 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9339 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8288 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound8288 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9339 (1 : Fin 5)) = (normalNode5579).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9339 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9329 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9339 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9329 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9329 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9339 (2 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node698⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9339 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection698 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9339 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection698 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound698 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9339 (3 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1216).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9339 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9338 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9339 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9338 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9338 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9339 (4 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node700⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9339 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection700 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9339 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection700 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound700 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5587).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9339 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5587).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9339 (j : Fin 5)))
      1 96 96 1 ![96, 48, 96, 1, 48] ![1, 2, 1, 96, 2] reductionProjection9339 ![reductionProjection8288, reductionProjection9329, oldProjection698, reductionProjection9338, oldProjection700]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9340 : Integer.Sparse (Fin 1613) := [(20, 1), (94, 2), (105, -8), (106, -8), (243, -64), (698, -8), (700, -8), (1044, 24), (1045, 24), (1052, 24), (1217, 48), (1225, -32), (1226, -32), (1251, 1)]

def reductionPivot9340 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-2, 1, 1], ![0, -3, 3], ![0, 3, -3], ![1, 0, -1], ![1, 0, -1]]

theorem reductionSound9340 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode5588).moment H =
      Integer.Sparse.eval reductionProjection9340 (momentVector H) := by
  have heq : reductionPivot9340 = (fun u v => (normalNode5588).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5588).moment H = injectiveMoment H reductionPivot9340 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5588).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9340 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9340 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![48, 12, 12, 48, 48] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9340 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection636, reductionProjection9322, oldProjection699, oldProjection700, oldProjection700] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9340 (0 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node636⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9340 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection636 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9340 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection636 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound636 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9340 (1 : Fin 5)) = (normalNode5580).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9340 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9322 (momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9340 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9322 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9322 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9340 (2 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node699⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9340 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection699 (momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9340 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection699 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound699 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9340 (3 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node700⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9340 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection700 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9340 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection700 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound700 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9340 (4 : Fin 5)) = canonicalInput10898.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9340 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection700 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9340 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection700 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10898 hH))).trans (oldProjectionSound700 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5588).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9340 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5588).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9340 (j : Fin 5)))
      1 48 48 1 ![48, 12, 12, 48, 48] ![1, 4, 4, 1, 1] reductionProjection9340 ![oldProjection636, reductionProjection9322, oldProjection699, oldProjection700, oldProjection700]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9341 : Integer.Sparse (Fin 1613) := [(3, -4), (4, 1), (20, -1), (94, -2), (105, 16), (106, 32), (243, 16), (1218, -48), (1224, 16), (1225, 16)]

def reductionPivot9341 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, -1, 1], ![-2, 1, 1], ![0, -3, 3], ![1, -1, 0], ![1, 4, -5]]

theorem reductionSound9341 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode5589).moment H =
      Integer.Sparse.eval reductionProjection9341 (momentVector H) := by
  have heq : reductionPivot9341 = (fun u v => (normalNode5589).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5589).moment H = injectiveMoment H reductionPivot9341 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5589).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9341 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9341 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![48, 48, 1, 48] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9341 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection194, reductionProjection9326, reductionProjection6392, oldProjection221] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9341 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node194⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9341 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection194 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9341 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection194 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound194 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9341 (1 : Fin 4)) = (normalNode5582).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9341 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9326 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9341 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9326 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9326 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9341 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1218).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9341 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6392 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9341 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6392 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound6392 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9341 (3 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node221⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9341 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection221 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9341 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection221 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound221 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5589).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9341 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5589).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9341 (j : Fin 4)))
      2 96 96 2 ![48, 48, 1, 48] ![2, 2, 96, 2] reductionProjection9341 ![oldProjection194, reductionProjection9326, reductionProjection6392, oldProjection221]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9342 : Integer.Sparse (Fin 1613) := [(0, 1), (243, -80), (698, -240), (700, -240), (1052, 720), (1059, -240), (1217, 240), (1221, 360), (1251, 55)]

def reductionPivot9342 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, 1, -1], ![-2, 1, 1], ![0, -3, 3], ![0, 1, -1], ![0, 1, -1], ![2, -1, -1]]

theorem reductionSound9342 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * (normalNode5591).moment H =
      Integer.Sparse.eval reductionProjection9342 (momentVector H) := by
  have heq : reductionPivot9342 = (fun u v => (normalNode5591).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5591).moment H = injectiveMoment H reductionPivot9342 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5591).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9342 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9342 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![480, 6, 2, 2, 480] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9342 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection651, oldProjection704, reductionProjection1992, reductionProjection1992, oldProjection651] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9342 (0 : Fin 5)) = canonicalInput12098.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9342 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection651 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9342 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection651 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12098 hH))).trans (oldProjectionSound651 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9342 (1 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node704⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9342 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection704 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9342 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection704 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound704 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9342 (2 : Fin 5)) = canonicalInput10897.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9342 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1992 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9342 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1992 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10897 hH))).trans (reductionSound1992 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9342 (3 : Fin 5)) = (normalNode5592).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9342 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1992 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9342 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1992 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound1992 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9342 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4895 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9342 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection651 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9342 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection651 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4895 hH))).trans (oldProjectionSound651 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5591).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9342 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5591).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9342 (j : Fin 5)))
      1 240 480 2 ![480, 6, 2, 2, 480] ![1, 80, 240, 240, 1] reductionProjection9342 ![oldProjection651, oldProjection704, reductionProjection1992, reductionProjection1992, oldProjection651]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9343 : Integer.Sparse (Fin 1613) := [(3, -1), (19, 1), (102, -6), (1222, -12)]

def reductionPivot9343 : Matrix (Fin 5) (Fin 3) ℤ := ![![1, -1, 0], ![-2, 1, 1], ![0, -2, 2], ![0, -2, 2], ![1, 4, -5]]

theorem reductionSound9343 {H : CMatrix} (hH : IsHadamard H) :
    (12 : ℝ) * (normalNode5594).moment H =
      Integer.Sparse.eval reductionProjection9343 (momentVector H) := by
  have heq : reductionPivot9343 = (fun u v => (normalNode5594).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5594).moment H = injectiveMoment H reductionPivot9343 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5594).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot9343 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9343 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![6, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9343 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection240, reductionProjection1759, reductionProjection1759, oldProjection125] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9343 (0 : Fin 4)) = canonicalInput21618.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9343 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection240 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9343 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection240 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21618 hH))).trans (oldProjectionSound240 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9343 (1 : Fin 4)) = canonicalInput10934.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9343 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1759 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9343 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1759 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10934 hH))).trans (reductionSound1759 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9343 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1222).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9343 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1759 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9343 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1759 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound1759 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9343 (3 : Fin 4)) = canonicalInput10901.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9343 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection125 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9343 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection125 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10901 hH))).trans (oldProjectionSound125 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5594).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9343 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5594).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9343 (j : Fin 4)))
      2 12 12 2 ![6, 1, 1, 1] ![2, 12, 12, 12] reductionProjection9343 ![oldProjection240, reductionProjection1759, reductionProjection1759, oldProjection125]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

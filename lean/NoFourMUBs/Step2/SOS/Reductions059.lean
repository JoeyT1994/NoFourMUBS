import NoFourMUBs.Step2.SOS.Canonical036
import NoFourMUBs.Step2.SOS.Canonical037
import NoFourMUBs.Step2.SOS.Canonical038
import NoFourMUBs.Step2.SOS.Canonical039
import NoFourMUBs.Step2.SOS.Canonical093
import NoFourMUBs.Step2.SOS.Canonical171
import NoFourMUBs.Step2.SOS.Canonical219
import NoFourMUBs.Step2.SOS.Canonical239
import NoFourMUBs.Step2.SOS.Canonical241
import NoFourMUBs.Step2.SOS.Canonical291
import NoFourMUBs.Step2.SOS.Canonical292
import NoFourMUBs.Step2.SOS.Canonical315
import NoFourMUBs.Step2.SOS.Canonical318
import NoFourMUBs.Step2.SOS.Canonical339
import NoFourMUBs.Step2.SOS.Canonical364
import NoFourMUBs.Step2.SOS.Canonical374
import NoFourMUBs.Step2.SOS.Canonical380
import NoFourMUBs.Step2.SOS.Canonical381
import NoFourMUBs.Step2.SOS.Canonical386
import NoFourMUBs.Step2.SOS.Canonical427
import NoFourMUBs.Step2.SOS.Canonical486
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections020
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions017
import NoFourMUBs.Step2.SOS.Reductions019
import NoFourMUBs.Step2.SOS.Reductions020
import NoFourMUBs.Step2.SOS.Reductions054
import NoFourMUBs.Step2.SOS.Reductions055
import NoFourMUBs.Step2.SOS.Reductions056
import NoFourMUBs.Step2.SOS.Reductions057
import NoFourMUBs.Step2.SOS.Reductions058
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical211
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical48
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical49
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical50
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical51
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical52
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical53
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical93
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection1888 : Integer.Sparse (Fin 1613) := [(23, 3), (26, -2), (101, 3), (104, -2), (105, -4), (228, 3), (241, -4), (243, -4), (248, -9), (698, -2)]

def reductionPivot1888 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -2, 5], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 2, -1, -2]]

theorem reductionSound1888 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode1081).moment H =
      Integer.Sparse.eval reductionProjection1888 (momentVector H) := by
  have heq : reductionPivot1888 = (fun u v => (normalNode1081).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1081).moment H = injectiveMoment H reductionPivot1888 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1081).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1888 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1888 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1888 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1234, reductionProjection1887, reductionProjection1750, oldProjection1233] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1888 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1639 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1888 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1234 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1888 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1234 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1639 hH))).trans (oldProjectionSound1234 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1888 (1 : Fin 4)) = canonicalInput2417.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1888 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1887 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1888 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1887 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2417 hH))).trans (reductionSound1887 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1888 (2 : Fin 4)) = canonicalInput2408.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1888 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1750 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1888 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1750 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2408 hH))).trans (reductionSound1750 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1888 (3 : Fin 4)) = canonicalInput2407.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1888 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1233 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1888 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1233 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2407 hH))).trans (oldProjectionSound1233 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1081).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1888 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1081).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1888 (j : Fin 4)))
      2 18 18 2 ![9, 9, 1, 9] ![2, 2, 18, 2] reductionProjection1888 ![oldProjection1234, reductionProjection1887, reductionProjection1750, oldProjection1233]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1889 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -16), (19, -56), (20, 6), (23, -288), (26, 64), (94, 23), (101, -144), (104, 96), (105, 160), (228, -288), (241, 192), (243, 160), (248, 432), (698, 144), (704, 96), (1251, 14), (1278, -144)]

def reductionPivot1889 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 2, -1, -2]]

theorem reductionSound1889 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1067).moment H =
      Integer.Sparse.eval reductionProjection1889 (momentVector H) := by
  have heq : reductionPivot1889 = (fun u v => (normalNode1067).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1067).moment H = injectiveMoment H reductionPivot1889 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1067).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1889 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1889 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 18, 18, 1440, 72] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1889 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1585, reductionProjection1888, reductionProjection1888, reductionProjection1773, oldProjection1453] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1889 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1585⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1889 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1585 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1889 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1585 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1585 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1889 (1 : Fin 5)) = canonicalInput2393.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1889 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1888 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1889 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1888 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2393 hH))).trans (reductionSound1888 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1889 (2 : Fin 5)) = (normalNode1081).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1889 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1888 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1889 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1888 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1888 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1889 (3 : Fin 5)) = (normalNode1077).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1889 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1773 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1889 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1773 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1773 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1889 (4 : Fin 5)) = canonicalInput2355.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1889 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1453 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1889 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1453 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2355 hH))).trans (oldProjectionSound1453 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1067).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1889 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1067).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1889 (j : Fin 5)))
      1 288 1440 5 ![720, 18, 18, 1440, 72] ![2, 80, 80, 1, 20] reductionProjection1889 ![oldProjection1585, reductionProjection1888, reductionProjection1888, reductionProjection1773, oldProjection1453]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1890 : Integer.Sparse (Fin 1613) := [(3, 2), (19, 12), (23, 48), (94, -3), (102, 24), (104, -40), (105, -16), (108, -32), (241, -40), (243, -8), (247, -16), (698, -8), (1251, -1)]

def reductionPivot1890 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -2, 5], ![0, 1, -1, 0], ![0, 1, 1, -2], ![2, -1, 1, -2]]

theorem reductionSound1890 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode1086).moment H =
      Integer.Sparse.eval reductionProjection1890 (momentVector H) := by
  have heq : reductionPivot1890 = (fun u v => (normalNode1086).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1086).moment H = injectiveMoment H reductionPivot1890 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1086).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1890 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1890 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 72, 9, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1890 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1113, oldProjection752, reductionProjection1858, reductionProjection1786] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1890 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1659 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1890 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1113 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1890 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1113 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1659 hH))).trans (oldProjectionSound1113 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1890 (1 : Fin 4)) = canonicalInput2443.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1890 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection752 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1890 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection752 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2443 hH))).trans (oldProjectionSound752 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1890 (2 : Fin 4)) = canonicalInput2430.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1890 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1858 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1890 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1858 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2430 hH))).trans (reductionSound1858 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1890 (3 : Fin 4)) = canonicalInput2429.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1890 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1786 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1890 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1786 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2429 hH))).trans (reductionSound1786 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1086).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1890 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1086).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1890 (j : Fin 4)))
      2 144 144 2 ![144, 72, 9, 144] ![1, 2, 16, 1] reductionProjection1890 ![oldProjection1113, oldProjection752, reductionProjection1858, reductionProjection1786]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1891 : Integer.Sparse (Fin 1613) := [(0, -3), (3, -120), (19, -160), (20, 25), (23, -1200), (94, 70), (102, -960), (104, 880), (105, 400), (108, 800), (241, 1040), (243, 320), (247, 480), (256, 720), (698, 400), (1222, -240), (1223, -480), (1226, 80)]

def reductionPivot1891 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, 1, -2]]

theorem reductionSound1891 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1068).moment H =
      Integer.Sparse.eval reductionProjection1891 (momentVector H) := by
  have heq : reductionPivot1891 = (fun u v => (normalNode1068).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1068).moment H = injectiveMoment H reductionPivot1891 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1068).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1891 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1891 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 1440, 144, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1891 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1548, reductionProjection1833, oldProjection1440, reductionProjection1890, reductionProjection1788] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1891 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1564 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1891 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1548 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1891 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1548 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1564 hH))).trans (oldProjectionSound1548 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1891 (1 : Fin 5)) = (normalNode1102).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1891 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1833 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1891 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1833 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1833 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1891 (2 : Fin 5)) = canonicalInput2364.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1891 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1440 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1891 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1440 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2364 hH))).trans (oldProjectionSound1440 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1891 (3 : Fin 5)) = (normalNode1086).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1891 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1890 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1891 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1890 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1890 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1891 (4 : Fin 5)) = (normalNode1085).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1891 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1788 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1891 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1788 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1788 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1068).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1891 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1068).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1891 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 1440, 144, 288] ![1, 5, 1, 10, 5] reductionProjection1891 ![oldProjection1548, reductionProjection1833, oldProjection1440, reductionProjection1890, reductionProjection1788]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1892 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -8), (94, 1), (104, -16), (108, 32), (1251, 1)]

def reductionPivot1892 : Matrix (Fin 4) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-1, -1, -1, 3], ![0, 0, -2, 2], ![0, 2, 3, -5]]

theorem reductionSound1892 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode7940).moment H =
      Integer.Sparse.eval reductionProjection1892 (momentVector H) := by
  have heq : reductionPivot1892 = (fun u v => (normalNode7940).entries (OAI.MUB6.Certificate.PairSemantics.permutation27 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7940).moment H = injectiveMoment H reductionPivot1892 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7940).entries OAI.MUB6.Certificate.PairSemantics.permutation27)).symm
  have hshape : reductionPivot1892 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1892 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 3, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1892 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection27, oldProjection78, oldProjection119] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1892 (0 : Fin 3)) = canonicalInput23995.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1892 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection27 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1892 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection27 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23995 hH))).trans (oldProjectionSound27 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1892 (1 : Fin 3)) = canonicalInput15479.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1892 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection78 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1892 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection78 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15479 hH))).trans (oldProjectionSound78 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1892 (2 : Fin 3)) = canonicalInput15331.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1892 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection119 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1892 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection119 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15331 hH))).trans (oldProjectionSound119 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7940).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1892 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7940).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1892 (j : Fin 3)))
      3 144 144 3 ![1, 3, 48] ![144, 48, 3] reductionProjection1892 ![oldProjection27, oldProjection78, oldProjection119]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1893 : Integer.Sparse (Fin 1613) := [(3, 8), (19, 20), (23, 48), (94, -3), (104, -64), (105, -48), (108, -144), (241, -48), (247, -48), (1251, -3)]

def reductionPivot1893 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, -2, 5], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 1, 1, -3]]

theorem reductionSound1893 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1103).moment H =
      Integer.Sparse.eval reductionProjection1893 (momentVector H) := by
  have heq : reductionPivot1893 = (fun u v => (normalNode1103).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1103).moment H = injectiveMoment H reductionPivot1893 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1103).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1893 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1893 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1893 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1892, oldProjection1240, reductionProjection646, oldProjection1233] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1893 (0 : Fin 4)) = canonicalInput6002.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1893 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1892 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1893 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1892 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6002 hH))).trans (reductionSound1892 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1893 (1 : Fin 4)) = canonicalInput2461.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1893 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1240 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1893 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1240 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2461 hH))).trans (oldProjectionSound1240 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1893 (2 : Fin 4)) = canonicalInput2409.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1893 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection646 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1893 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection646 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2409 hH))).trans (reductionSound646 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1893 (3 : Fin 4)) = canonicalInput2407.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1893 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1233 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1893 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1233 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2407 hH))).trans (oldProjectionSound1233 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1103).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1893 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1103).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1893 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 9] ![2, 2, 2, 32] reductionProjection1893 ![reductionProjection1892, oldProjection1240, reductionProjection646, oldProjection1233]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1894 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 80), (19, 180), (20, -15), (23, 240), (94, -70), (104, -80), (108, -560), (247, -320), (704, -80), (1251, -60), (1278, 480)]

def reductionPivot1894 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -2, 5], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 1, 1, -3]]

theorem reductionSound1894 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1089).moment H =
      Integer.Sparse.eval reductionProjection1894 (momentVector H) := by
  have heq : reductionPivot1894 = (fun u v => (normalNode1089).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1089).moment H = injectiveMoment H reductionPivot1894 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1089).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1894 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1894 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 72, 9, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1894 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1341, reductionProjection640, reductionProjection1792, reductionProjection1861] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1894 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1665 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1894 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1341 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1894 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1341 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1665 hH))).trans (oldProjectionSound1341 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1894 (1 : Fin 4)) = canonicalInput2449.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1894 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection640 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1894 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection640 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2449 hH))).trans (reductionSound640 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1894 (2 : Fin 4)) = canonicalInput2433.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1894 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1792 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1894 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1792 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2433 hH))).trans (reductionSound1792 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1894 (3 : Fin 4)) = canonicalInput2432.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1894 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1861 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1894 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1861 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2432 hH))).trans (reductionSound1861 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1089).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1894 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1089).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1894 (j : Fin 4)))
      2 1440 1440 2 ![720, 72, 9, 144] ![2, 20, 160, 10] reductionProjection1894 ![oldProjection1341, reductionProjection640, reductionProjection1792, reductionProjection1861]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1895 : Integer.Sparse (Fin 1613) := [(3, -8), (4, -1), (20, -2), (94, -1)]

def reductionPivot1895 : Matrix (Fin 4) (Fin 3) ℤ := ![![1, -1, 0], ![-1, -1, 2], ![0, -3, 3], ![0, 5, -5]]

theorem reductionSound1895 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode9524).moment H =
      Integer.Sparse.eval reductionProjection1895 (momentVector H) := by
  have heq : reductionPivot1895 = (fun u v => (normalNode9524).entries (OAI.MUB6.Certificate.PairSemantics.permutation27 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9524).moment H = injectiveMoment H reductionPivot1895 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9524).entries OAI.MUB6.Certificate.PairSemantics.permutation27)).symm
  have hshape : reductionPivot1895 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1895 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 16, 16] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1895 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection7, oldProjection55, oldProjection49] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1895 (0 : Fin 3)) = canonicalInput24377.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1895 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection7 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1895 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection7 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound24377 hH))).trans (oldProjectionSound7 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1895 (1 : Fin 3)) = canonicalInput18663.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1895 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection55 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1895 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection55 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound18663 hH))).trans (oldProjectionSound55 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1895 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6773 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1895 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection49 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1895 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection49 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6773 hH))).trans (oldProjectionSound49 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9524).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1895 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9524).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1895 (j : Fin 3)))
      3 48 48 3 ![1, 16, 16] ![48, 3, 3] reductionProjection1895 ![oldProjection7, oldProjection55, oldProjection49]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1896 : Integer.Sparse (Fin 1613) := [(3, -10), (4, 1), (19, -6), (20, 2), (94, 1)]

def reductionPivot1896 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, 1, -1], ![-2, 5, -2, -1], ![3, -5, 1, 1]]

theorem reductionSound1896 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode9977).moment H =
      Integer.Sparse.eval reductionProjection1896 (momentVector H) := by
  have heq : reductionPivot1896 = (fun u v => (normalNode9977).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9977).moment H = injectiveMoment H reductionPivot1896 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9977).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9977).entries)).symm
  have hshape : reductionPivot1896 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1896 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 48, 6] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1896 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection648, reductionProjection1895, oldProjection282] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1896 (0 : Fin 3)) = canonicalInput21701.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1896 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection648 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1896 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection648 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21701 hH))).trans (reductionSound648 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1896 (1 : Fin 3)) = canonicalInput31114.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1896 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1895 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1896 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1895 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31114 hH))).trans (reductionSound1895 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1896 (2 : Fin 3)) = canonicalInput31118.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1896 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection282 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1896 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection282 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31118 hH))).trans (oldProjectionSound282 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9977).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1896 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9977).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1896 (j : Fin 3)))
      3 72 144 6 ![48, 48, 6] ![3, 3, 24] reductionProjection1896 ![reductionProjection648, reductionProjection1895, oldProjection282]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1897 : Integer.Sparse (Fin 1613) := [(3, 60), (4, -2), (19, 40), (20, -13), (94, -19), (108, -16), (1251, -8), (1278, 48)]

def reductionPivot1897 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -2, 5], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, 2, -4]]

theorem reductionSound1897 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1088).moment H =
      Integer.Sparse.eval reductionProjection1897 (momentVector H) := by
  have heq : reductionPivot1897 = (fun u v => (normalNode1088).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1088).moment H = injectiveMoment H reductionPivot1897 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1088).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1897 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1897 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 72, 144, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1897 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1272, oldProjection1161, reductionProjection1861, reductionProjection1896] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1897 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1664 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1897 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1272 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1897 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1272 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1664 hH))).trans (oldProjectionSound1272 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1897 (1 : Fin 4)) = canonicalInput2448.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1897 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1161 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1897 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1161 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2448 hH))).trans (oldProjectionSound1161 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1897 (2 : Fin 4)) = canonicalInput2432.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1897 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1861 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1897 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1861 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2432 hH))).trans (reductionSound1861 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1897 (3 : Fin 4)) = canonicalInput2431.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1897 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1896 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1897 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1896 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2431 hH))).trans (reductionSound1896 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1088).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1897 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1088).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1897 (j : Fin 4)))
      2 288 288 2 ![144, 72, 144, 72] ![2, 4, 2, 4] reductionProjection1897 ![oldProjection1272, oldProjection1161, reductionProjection1861, reductionProjection1896]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1898 : Integer.Sparse (Fin 1613) := [(0, -4), (3, -270), (4, 5), (19, -410), (20, 75), (23, -240), (94, 170), (104, 240), (105, 120), (108, 960), (241, 120), (247, 480), (704, 80), (1251, 120), (1278, -480)]

def reductionPivot1898 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, 1, -3]]

theorem reductionSound1898 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode1069).moment H =
      Integer.Sparse.eval reductionProjection1898 (momentVector H) := by
  have heq : reductionPivot1898 = (fun u v => (normalNode1069).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1069).moment H = injectiveMoment H reductionPivot1898 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1069).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1898 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1898 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 1440, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1898 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1558, reductionProjection1893, oldProjection1443, reductionProjection1894, reductionProjection1897] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1898 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1566 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1898 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1558 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1898 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1558 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1566 hH))).trans (oldProjectionSound1558 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1898 (1 : Fin 5)) = (normalNode1103).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1898 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1893 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1898 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1893 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1893 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1898 (2 : Fin 5)) = canonicalInput2366.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1898 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1443 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1898 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1443 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2366 hH))).trans (oldProjectionSound1443 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1898 (3 : Fin 5)) = (normalNode1089).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1898 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1894 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1898 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1894 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1894 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1898 (4 : Fin 5)) = (normalNode1088).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1898 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1897 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1898 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1897 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1897 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1069).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1898 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1069).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1898 (j : Fin 5)))
      1 720 1440 2 ![288, 288, 1440, 1440, 288] ![5, 5, 1, 1, 5] reductionProjection1898 ![oldProjection1558, reductionProjection1893, oldProjection1443, reductionProjection1894, reductionProjection1897]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1899 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -20), (19, -128), (20, 5), (23, -192), (94, 61), (101, -48), (104, 160), (105, 48), (108, 320), (119, 288), (228, -96), (241, 112), (247, 256), (248, 144), (698, 16), (704, 64), (1251, 50), (1278, -144)]

def reductionPivot1899 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 1, 0, -2]]

theorem reductionSound1899 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1070).moment H =
      Integer.Sparse.eval reductionProjection1899 (momentVector H) := by
  have heq : reductionPivot1899 = (fun u v => (normalNode1070).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1070).moment H = injectiveMoment H reductionPivot1899 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1070).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1899 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1899 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1899 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1559, reductionProjection1836, reductionProjection663, reductionProjection1793, reductionProjection1894] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1899 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1567 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1899 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1559 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1899 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1559 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1567 hH))).trans (oldProjectionSound1559 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1899 (1 : Fin 5)) = (normalNode1104).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1899 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1836 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1899 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1836 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1836 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1899 (2 : Fin 5)) = canonicalInput2367.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1899 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection663 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1899 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection663 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2367 hH))).trans (reductionSound663 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1899 (3 : Fin 5)) = (normalNode1090).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1899 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1793 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1899 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1793 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1793 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1899 (4 : Fin 5)) = (normalNode1089).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1899 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1894 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1899 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1894 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1894 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1070).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1899 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1070).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1899 (j : Fin 5)))
      1 288 1440 5 ![288, 288, 1440, 1440, 1440] ![5, 5, 1, 1, 1] reductionProjection1899 ![oldProjection1559, reductionProjection1836, reductionProjection663, reductionProjection1793, reductionProjection1894]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1900 : Integer.Sparse (Fin 1613) := [(260, 1)]

theorem reductionSound1900 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code260).moment H =
      Integer.Sparse.eval reductionProjection1900 (momentVector H) := by
  have hc : coordinates (260 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code260) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1900, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1901 : Integer.Sparse (Fin 1613) := [(19, 4), (23, 48), (94, -1), (102, 48), (238, 48), (241, -48), (243, -32), (247, -16), (257, -144), (260, -144), (698, -32), (1251, -1)]

def reductionPivot1901 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, -2, 5], ![0, 0, 2, -2], ![0, 1, 1, -2], ![2, -1, -1, 0]]

theorem reductionSound1901 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1106).moment H =
      Integer.Sparse.eval reductionProjection1901 (momentVector H) := by
  have heq : reductionPivot1901 = (fun u v => (normalNode1106).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1106).moment H = injectiveMoment H reductionPivot1901 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1106).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1901 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1901 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1901 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1257, reductionProjection1900, reductionProjection1881, oldProjection753] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1901 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2980 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1901 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1257 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1901 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1257 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2980 hH))).trans (oldProjectionSound1257 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1901 (1 : Fin 4)) = canonicalInput2469.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1901 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1900 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1901 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1900 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2469 hH))).trans (reductionSound1900 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1901 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code257).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1901 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1881 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1901 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1881 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1881 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1901 (3 : Fin 4)) = canonicalInput2403.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1901 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection753 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1901 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection753 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2403 hH))).trans (oldProjectionSound753 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1106).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1901 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1106).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1901 (j : Fin 4)))
      2 288 288 2 ![144, 1, 1, 9] ![2, 288, 288, 32] reductionProjection1901 ![oldProjection1257, reductionProjection1900, reductionProjection1881, oldProjection753]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1902 : Integer.Sparse (Fin 1613) := [(113, -1), (130, -1), (260, -2)]

def reductionPivot1902 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -2, 5], ![0, 1, 1, -2], ![0, 1, 1, -2], ![2, -1, -1, 0]]

theorem reductionSound1902 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode1094).moment H =
      Integer.Sparse.eval reductionProjection1902 (momentVector H) := by
  have heq : reductionPivot1902 = (fun u v => (normalNode1094).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1094).moment H = injectiveMoment H reductionPivot1902 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1094).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1902 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1902 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1902 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection398, reductionProjection1900, reductionProjection1900, oldProjection392] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1902 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1697 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1902 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection398 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1902 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection398 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1697 hH))).trans (oldProjectionSound398 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1902 (1 : Fin 4)) = canonicalInput2469.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1902 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1900 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1902 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1900 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2469 hH))).trans (reductionSound1900 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1902 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code260).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1902 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1900 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1902 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1900 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1900 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1902 (3 : Fin 4)) = canonicalInput2460.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1902 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection392 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1902 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection392 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2460 hH))).trans (oldProjectionSound392 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1094).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1902 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1094).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1902 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection1902 ![oldProjection398, reductionProjection1900, reductionProjection1900, oldProjection392]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1903 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (94, 1), (106, 16), (243, 32), (244, 16), (703, 16), (1062, -48)]

def reductionPivot1903 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 2, -1], ![-4, 3, 0, 1], ![5, -2, -2, -1]]

theorem reductionSound1903 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9593).moment H =
      Integer.Sparse.eval reductionProjection1903 (momentVector H) := by
  have heq : reductionPivot1903 = (fun u v => (normalNode9593).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9593).moment H = injectiveMoment H reductionPivot1903 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9593).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9593).entries)).symm
  have hshape : reductionPivot1903 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1903 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 1, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1903 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection205, reductionProjection1883, oldProjection217] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1903 (0 : Fin 3)) = canonicalInput18697.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1903 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection205 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1903 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection205 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18697 hH))).trans (oldProjectionSound205 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1903 (1 : Fin 3)) = canonicalInput27379.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1903 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1883 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1903 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1883 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27379 hH))).trans (reductionSound1883 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1903 (2 : Fin 3)) = canonicalInput27382.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1903 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection217 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1903 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection217 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27382 hH))).trans (oldProjectionSound217 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9593).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1903 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9593).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1903 (j : Fin 3)))
      3 144 144 3 ![3, 1, 48] ![48, 144, 3] reductionProjection1903 ![oldProjection205, reductionProjection1883, oldProjection217]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1904 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -1), (94, -4), (104, -16), (105, -16), (106, -16), (241, -32), (243, -64), (244, -16), (260, -144), (698, -32), (700, -16), (703, -16), (704, -16), (1054, 48), (1061, 48), (1062, 48), (1251, -3)]

def reductionPivot1904 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -2, 5], ![0, 1, 0, -1], ![0, 1, 2, -3], ![2, -1, -1, 0]]

theorem reductionSound1904 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1092).moment H =
      Integer.Sparse.eval reductionProjection1904 (momentVector H) := by
  have heq : reductionPivot1904 = (fun u v => (normalNode1092).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1092).moment H = injectiveMoment H reductionPivot1904 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1092).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1904 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1904 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1904 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1173, reductionProjection1900, reductionProjection1903, reductionProjection631] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1904 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1685 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1904 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1173 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1904 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1173 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1685 hH))).trans (oldProjectionSound1173 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1904 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code260).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1904 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1900 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1904 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1900 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1900 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1904 (2 : Fin 4)) = canonicalInput2447.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1904 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1903 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1904 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1903 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2447 hH))).trans (reductionSound1903 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1904 (3 : Fin 4)) = canonicalInput2446.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1904 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection631 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1904 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection631 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2446 hH))).trans (reductionSound631 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1092).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1904 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1092).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1904 (j : Fin 4)))
      2 288 288 2 ![72, 1, 144, 144] ![4, 288, 2, 2] reductionProjection1904 ![oldProjection1173, reductionProjection1900, reductionProjection1903, reductionProjection631]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1905 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -32), (20, 1), (23, -96), (94, 22), (102, -48), (104, 48), (105, 32), (106, 16), (108, 16), (113, 288), (130, 288), (238, -48), (241, 160), (243, 160), (244, 16), (247, 32), (257, 144), (260, 576), (698, 192), (700, 48), (703, 16), (704, 64), (1054, -96), (1059, 16), (1061, -96), (1062, -48), (1251, -2)]

def reductionPivot1905 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, -1, -1, 0]]

theorem reductionSound1905 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1071).moment H =
      Integer.Sparse.eval reductionProjection1905 (momentVector H) := by
  have heq : reductionPivot1905 = (fun u v => (normalNode1071).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1071).moment H = injectiveMoment H reductionPivot1905 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1071).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1905 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1905 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 288, 2, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1905 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1590, reductionProjection1901, reductionProjection1902, reductionProjection1904, oldProjection1445] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1905 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1590⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1905 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1590 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1905 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1590 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1590 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1905 (1 : Fin 5)) = (normalNode1106).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1905 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1901 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1905 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1901 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1901 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1905 (2 : Fin 5)) = (normalNode1094).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1905 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1902 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1905 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1902 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1902 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1905 (3 : Fin 5)) = (normalNode1092).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1905 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1904 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1905 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1904 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1904 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1905 (4 : Fin 5)) = canonicalInput2365.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1905 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1445 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1905 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1445 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2365 hH))).trans (oldProjectionSound1445 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1071).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1905 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1071).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1905 (j : Fin 5)))
      1 288 1440 5 ![720, 288, 2, 288, 1440] ![2, 5, 720, 5, 1] reductionProjection1905 ![oldProjection1590, reductionProjection1901, reductionProjection1902, reductionProjection1904, oldProjection1445]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1906 : Integer.Sparse (Fin 1613) := [(0, -9), (3, -20), (19, -380), (20, 15), (23, -720), (94, 245), (101, -240), (104, 240), (108, 400), (119, 1440), (228, -480), (241, 480), (243, 160), (247, 640), (248, 720), (261, 1440), (262, 1440), (326, 1440), (698, 320), (703, 80), (704, 320), (1251, 155), (1278, -240)]

def reductionPivot1906 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 1, -1, -1]]

theorem reductionSound1906 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1072).moment H =
      Integer.Sparse.eval reductionProjection1906 (momentVector H) := by
  have heq : reductionPivot1906 = (fun u v => (normalNode1072).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1072).moment H = injectiveMoment H reductionPivot1906 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1072).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1906 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1906 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 2, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1906 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1592, reductionProjection1843, reductionProjection1813, reductionProjection1802, reductionProjection663] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1906 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1592⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1906 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1592 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1906 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1592 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1592 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1906 (1 : Fin 5)) = (normalNode1107).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1906 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1843 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1906 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1843 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1843 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1906 (2 : Fin 5)) = (normalNode1095).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1906 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1813 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1906 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1813 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1813 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1906 (3 : Fin 5)) = (normalNode1093).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1906 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1802 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1906 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1802 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1802 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1906 (4 : Fin 5)) = canonicalInput2367.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1906 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection663 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1906 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection663 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2367 hH))).trans (reductionSound663 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1072).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1906 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1072).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1906 (j : Fin 5)))
      1 1440 1440 1 ![288, 288, 2, 1440, 1440] ![5, 5, 720, 1, 1] reductionProjection1906 ![oldProjection1592, reductionProjection1843, reductionProjection1813, reductionProjection1802, reductionProjection663]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1907 : Integer.Sparse (Fin 1613) := [(19, 4), (23, 36), (94, -1), (102, 12), (104, -8), (108, -8), (241, -12), (243, -4), (247, -8), (261, -36), (698, -4), (1251, -1)]

def reductionPivot1907 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, -1, -2, 5], ![0, 0, 2, -2], ![0, 1, 1, -2], ![1, 1, -1, -1]]

theorem reductionSound1907 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode1108).moment H =
      Integer.Sparse.eval reductionProjection1907 (momentVector H) := by
  have heq : reductionPivot1907 = (fun u v => (normalNode1108).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1108).moment H = injectiveMoment H reductionPivot1907 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1108).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot1907 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1907 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 72, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1907 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection752, reductionProjection1800, oldProjection752, oldProjection753] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1907 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node752⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1907 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection752 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1907 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection752 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound752 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1907 (1 : Fin 4)) = canonicalInput2491.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1907 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1800 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1907 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1800 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2491 hH))).trans (reductionSound1800 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1907 (2 : Fin 4)) = canonicalInput2410.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1907 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection752 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1907 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection752 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2410 hH))).trans (oldProjectionSound752 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1907 (3 : Fin 4)) = canonicalInput2403.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1907 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection753 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1907 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection753 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2403 hH))).trans (oldProjectionSound753 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1108).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1907 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1108).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1907 (j : Fin 4)))
      2 72 72 2 ![72, 1, 72, 9] ![1, 72, 1, 8] reductionProjection1907 ![oldProjection752, reductionProjection1800, oldProjection752, oldProjection753]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1908 : Integer.Sparse (Fin 1613) := [(3, -2), (19, -2), (20, 1), (94, 1), (106, 4), (243, 4), (703, 12)]

def reductionPivot1908 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 1, 1, -1], ![0, -3, 4, -1], ![2, 2, -5, 1]]

theorem reductionSound1908 {H : CMatrix} (hH : IsHadamard H) :
    (36 : ℝ) * (normalNode9127).moment H =
      Integer.Sparse.eval reductionProjection1908 (momentVector H) := by
  have heq : reductionPivot1908 = (fun u v => (normalNode9127).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9127).moment H = injectiveMoment H reductionPivot1908 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9127).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9127).entries)).symm
  have hshape : reductionPivot1908 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1908 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 24, 24] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1908 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection205, oldProjection235, oldProjection235] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1908 (0 : Fin 3)) = canonicalInput10988.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1908 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection205 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1908 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection205 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10988 hH))).trans (oldProjectionSound205 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1908 (1 : Fin 3)) = canonicalInput23337.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1908 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection235 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1908 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection235 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23337 hH))).trans (oldProjectionSound235 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1908 (2 : Fin 3)) = canonicalInput23344.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1908 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection235 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1908 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection235 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23344 hH))).trans (oldProjectionSound235 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9127).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1908 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9127).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1908 (j : Fin 3)))
      3 36 72 6 ![3, 24, 24] ![24, 3, 3] reductionProjection1908 ![oldProjection205, oldProjection235, oldProjection235]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1909 : Integer.Sparse (Fin 1613) := [(3, 2), (19, 6), (20, -1), (94, -3), (104, -12), (105, -4), (106, -4), (108, -8), (241, -4), (243, -8), (262, -36), (698, -4), (703, -12), (704, -12), (1251, -2)]

def reductionPivot1909 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -2, 5], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 1, -1, -1]]

theorem reductionSound1909 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode1096).moment H =
      Integer.Sparse.eval reductionProjection1909 (momentVector H) := by
  have heq : reductionPivot1909 = (fun u v => (normalNode1096).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1096).moment H = injectiveMoment H reductionPivot1909 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1096).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1909 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1909 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 36, 1, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1909 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1080, reductionProjection1908, reductionProjection1812, oldProjection1038] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1909 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1705 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1909 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1080 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1909 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1080 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1705 hH))).trans (oldProjectionSound1080 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1909 (1 : Fin 4)) = canonicalInput2474.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1909 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1908 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1909 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1908 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2474 hH))).trans (reductionSound1908 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1909 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code262).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1909 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1812 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1909 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1812 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1812 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1909 (3 : Fin 4)) = canonicalInput2470.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1909 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1038 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1909 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1038 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2470 hH))).trans (oldProjectionSound1038 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1096).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1909 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1096).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1909 (j : Fin 4)))
      2 72 72 2 ![72, 36, 1, 72] ![1, 2, 72, 1] reductionProjection1909 ![oldProjection1080, reductionProjection1908, reductionProjection1812, oldProjection1038]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1910 : Integer.Sparse (Fin 1613) := [(0, -9), (3, -40), (19, -420), (20, 20), (23, -720), (94, 225), (102, -240), (104, 720), (105, 160), (106, 80), (108, 880), (119, 1440), (241, 560), (243, 320), (247, 640), (261, 1440), (262, 1440), (326, 1440), (698, 320), (703, 240), (704, 480), (1251, 150)]

def reductionPivot1910 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 1, -1, -1]]

theorem reductionSound1910 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1073).moment H =
      Integer.Sparse.eval reductionProjection1910 (momentVector H) := by
  have heq : reductionPivot1910 = (fun u v => (normalNode1073).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1073).moment H = injectiveMoment H reductionPivot1910 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1073).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1910 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1910 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 72, 72, 2, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1910 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1595, reductionProjection1907, reductionProjection1909, reductionProjection1813, oldProjection1452] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1910 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1595⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1910 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1595 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1910 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1595 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1595 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1910 (1 : Fin 5)) = (normalNode1108).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1910 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1907 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1910 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1907 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1907 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1910 (2 : Fin 5)) = (normalNode1096).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1910 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1909 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1910 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1909 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1909 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1910 (3 : Fin 5)) = (normalNode1095).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1910 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1813 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1910 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1813 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1813 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1910 (4 : Fin 5)) = canonicalInput2371.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1910 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1452 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1910 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1452 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2371 hH))).trans (oldProjectionSound1452 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1073).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1910 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1073).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1910 (j : Fin 5)))
      1 1440 1440 1 ![1440, 72, 72, 2, 1440] ![1, 20, 20, 720, 1] reductionProjection1910 ![oldProjection1595, reductionProjection1907, reductionProjection1909, reductionProjection1813, oldProjection1452]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1911 : Integer.Sparse (Fin 1613) := [(94, -1), (241, -16), (243, -16), (248, -144), (256, -144), (263, -144), (698, -32), (1223, 48), (1226, -16), (1251, 3)]

def reductionPivot1911 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, -1, -2, 5], ![0, 0, 2, -2], ![0, 2, -1, -1], ![1, -1, 1, -1]]

theorem reductionSound1911 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1109).moment H =
      Integer.Sparse.eval reductionProjection1911 (momentVector H) := by
  have heq : reductionPivot1911 = (fun u v => (normalNode1109).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1109).moment H = injectiveMoment H reductionPivot1911 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1109).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot1911 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1911 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1911 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection917, reductionProjection1817, reductionProjection1750, reductionProjection1758] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1911 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node917⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1911 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection917 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1911 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection917 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound917 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1911 (1 : Fin 4)) = canonicalInput2499.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1911 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1817 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1911 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1817 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2499 hH))).trans (reductionSound1817 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1911 (2 : Fin 4)) = canonicalInput2412.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1911 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1750 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1911 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1750 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2412 hH))).trans (reductionSound1750 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1911 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code256).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1911 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1758 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1911 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1758 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1758 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1109).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1911 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1109).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1911 (j : Fin 4)))
      2 288 288 2 ![144, 1, 1, 1] ![2, 288, 288, 288] reductionProjection1911 ![oldProjection917, reductionProjection1817, reductionProjection1750, reductionProjection1758]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1912 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -60), (23, -720), (94, 80), (101, -240), (102, -480), (113, 1440), (228, -480), (241, 400), (243, 480), (248, 720), (256, 720), (263, 1440), (264, 1440), (294, 1440), (698, 960), (704, 240), (1222, -240), (1223, -720), (1225, 80), (1226, 400), (1227, 240), (1251, -35), (1278, -240)]

def reductionPivot1912 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 2, -1, -1], ![1, -1, 1, -1], ![1, 0, 0, -1]]

theorem reductionSound1912 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1074).moment H =
      Integer.Sparse.eval reductionProjection1912 (momentVector H) := by
  have heq : reductionPivot1912 = (fun u v => (normalNode1074).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1074).moment H = injectiveMoment H reductionPivot1912 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1074).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1912 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1912 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![72, 288, 1440, 18, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1912 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1576, reductionProjection1911, oldProjection1449, reductionProjection1820, reductionProjection1818] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1912 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1595 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1912 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1576 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1912 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1576 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1595 hH))).trans (oldProjectionSound1576 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1912 (1 : Fin 5)) = (normalNode1109).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1912 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1911 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1912 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1911 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1911 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1912 (2 : Fin 5)) = canonicalInput2377.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1912 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1449 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1912 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1449 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2377 hH))).trans (oldProjectionSound1449 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1912 (3 : Fin 5)) = (normalNode1098).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1912 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1820 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1912 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1820 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1820 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1912 (4 : Fin 5)) = (normalNode1097).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1912 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1818 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1912 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1818 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1818 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1074).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1912 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1074).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1912 (j : Fin 5)))
      1 1440 1440 1 ![72, 288, 1440, 18, 2] ![20, 5, 1, 80, 720] reductionProjection1912 ![oldProjection1576, reductionProjection1911, oldProjection1449, reductionProjection1820, reductionProjection1818]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1913 : Integer.Sparse (Fin 1613) := [(3, 12), (19, 20), (20, -9), (26, -48), (94, 4), (101, 48), (105, -48), (106, -16), (243, -64), (703, -64), (1251, -3)]

def reductionPivot1913 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, -2, 5], ![0, 0, 3, -3], ![1, -1, 0, 0], ![1, 1, -1, -1]]

theorem reductionSound1913 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1114).moment H =
      Integer.Sparse.eval reductionProjection1913 (momentVector H) := by
  have heq : reductionPivot1913 = (fun u v => (normalNode1114).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1114).moment H = injectiveMoment H reductionPivot1913 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1114).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1913 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1913 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 36, 144, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1913 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1075, reductionProjection1908, reductionProjection670, reductionProjection1887] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1913 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2990 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1913 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1075 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1913 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1075 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2990 hH))).trans (oldProjectionSound1075 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1913 (1 : Fin 4)) = canonicalInput2474.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1913 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1908 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1913 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1908 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2474 hH))).trans (reductionSound1908 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1913 (2 : Fin 4)) = canonicalInput2419.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1913 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection670 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1913 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection670 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2419 hH))).trans (reductionSound670 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1913 (3 : Fin 4)) = canonicalInput2417.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1913 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1887 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1913 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1887 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2417 hH))).trans (reductionSound1887 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1114).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1913 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1114).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1913 (j : Fin 4)))
      2 288 288 2 ![72, 36, 144, 9] ![4, 8, 2, 32] reductionProjection1913 ![oldProjection1075, reductionProjection1908, reductionProjection670, reductionProjection1887]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1914 : Integer.Sparse (Fin 1613) := [(0, -3), (3, -60), (19, -440), (20, 45), (23, -1200), (26, 240), (94, 135), (101, -240), (102, -240), (104, 800), (105, 560), (106, 80), (108, 480), (228, -240), (241, 1120), (243, 800), (247, 400), (248, 720), (261, 720), (262, 720), (698, 480), (703, 320), (704, 320), (1251, 45)]

def reductionPivot1914 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -2, 5], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -1, -1]]

theorem reductionSound1914 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1078).moment H =
      Integer.Sparse.eval reductionProjection1914 (momentVector H) := by
  have heq : reductionPivot1914 = (fun u v => (normalNode1078).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1078).moment H = injectiveMoment H reductionPivot1914 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1078).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1914 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1914 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 72, 288, 36] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1914 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1603, reductionProjection1913, reductionProjection1907, reductionProjection1843, oldProjection1442] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1914 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1624 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1914 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1603 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1914 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1603 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1624 hH))).trans (oldProjectionSound1603 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1914 (1 : Fin 5)) = (normalNode1114).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1914 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1913 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1914 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1913 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1913 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1914 (2 : Fin 5)) = (normalNode1108).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1914 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1907 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1914 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1907 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1907 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1914 (3 : Fin 5)) = (normalNode1107).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1914 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1843 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1914 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1843 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1843 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1914 (4 : Fin 5)) = canonicalInput2399.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1914 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1442 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1914 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1442 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2399 hH))).trans (oldProjectionSound1442 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1078).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1914 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1078).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1914 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 72, 288, 36] ![1, 5, 20, 5, 40] reductionProjection1914 ![oldProjection1603, reductionProjection1913, reductionProjection1907, reductionProjection1843, oldProjection1442]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1915 : Integer.Sparse (Fin 1613) := [(101, -3), (102, -3), (105, 1), (106, 1), (243, 1)]

def reductionPivot1915 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -2, 2, 0], ![-1, 1, 3, -3], ![2, 1, -5, 2]]

theorem reductionSound1915 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode10231).moment H =
      Integer.Sparse.eval reductionProjection1915 (momentVector H) := by
  have heq : reductionPivot1915 = (fun u v => (normalNode10231).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10231).moment H = injectiveMoment H reductionPivot1915 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode10231).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode10231).entries)).symm
  have hshape : reductionPivot1915 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1915 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1915 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection575, oldProjection125, oldProjection121] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1915 (0 : Fin 3)) = canonicalInput14043.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1915 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection575 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1915 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection575 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14043 hH))).trans (reductionSound575 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1915 (1 : Fin 3)) = canonicalInput24431.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1915 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection125 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1915 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection125 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24431 hH))).trans (oldProjectionSound125 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1915 (2 : Fin 3)) = canonicalInput24435.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1915 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection121 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1915 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection121 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24435 hH))).trans (oldProjectionSound121 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode10231).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1915 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10231).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1915 (j : Fin 3)))
      3 9 9 3 ![1, 1, 3] ![9, 9, 3] reductionProjection1915 ![reductionProjection575, oldProjection125, oldProjection121]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1916 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 4), (20, -2), (26, -32), (94, 1), (101, 48), (102, 48), (104, -32), (105, -32), (106, -16), (108, -16), (241, -16), (243, -48), (259, -144), (1251, -1)]

def reductionPivot1916 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, -1, -2, 5], ![0, 0, 3, -3], ![0, 2, 0, -2], ![1, 0, -1, 0]]

theorem reductionSound1916 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1116).moment H =
      Integer.Sparse.eval reductionProjection1916 (momentVector H) := by
  have heq : reductionPivot1916 = (fun u v => (normalNode1116).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1116).moment H = injectiveMoment H reductionPivot1916 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1116).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot1916 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1916 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1916 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection665, reductionProjection1915, reductionProjection1805, reductionProjection1880] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1916 (0 : Fin 4)) = (normalNode6332).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1916 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection665 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1916 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection665 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound665 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1916 (1 : Fin 4)) = canonicalInput2496.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1916 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1915 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1916 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1915 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2496 hH))).trans (reductionSound1915 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1916 (2 : Fin 4)) = canonicalInput2421.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1916 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1805 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1916 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1805 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2421 hH))).trans (reductionSound1805 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1916 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code259).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1916 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1880 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1916 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1880 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1880 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1116).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1916 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1116).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1916 (j : Fin 4)))
      2 288 288 2 ![9, 9, 144, 1] ![32, 32, 2, 288] reductionProjection1916 ![reductionProjection665, reductionProjection1915, reductionProjection1805, reductionProjection1880]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1917 : Integer.Sparse (Fin 1613) := [(3, 2), (19, 6), (23, 48), (94, -1), (104, -16), (105, -16), (108, -24), (241, -16), (247, -8), (257, -72), (703, -8), (704, -8), (1251, -1)]

def reductionPivot1917 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, -1, -2, 5], ![0, 0, 2, -2], ![0, 2, 1, -3], ![1, 0, -1, 0]]

theorem reductionSound1917 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode1111).moment H =
      Integer.Sparse.eval reductionProjection1917 (momentVector H) := by
  have heq : reductionPivot1917 = (fun u v => (normalNode1111).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1111).moment H = injectiveMoment H reductionPivot1917 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1111).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot1917 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1917 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1917 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection667, reductionProjection1827, reductionProjection646, reductionProjection1881] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1917 (0 : Fin 4)) = (normalNode6325).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1917 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection667 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1917 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection667 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound667 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1917 (1 : Fin 4)) = canonicalInput2494.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1917 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1827 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1917 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1827 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2494 hH))).trans (reductionSound1827 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1917 (2 : Fin 4)) = canonicalInput2411.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1917 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection646 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1917 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection646 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2411 hH))).trans (reductionSound646 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1917 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code257).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1917 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1881 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1917 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1881 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1881 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1111).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1917 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1111).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1917 (j : Fin 4)))
      2 144 144 2 ![144, 9, 144, 1] ![1, 16, 1, 144] reductionProjection1917 ![reductionProjection667, reductionProjection1827, reductionProjection646, reductionProjection1881]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1918 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -40), (19, -200), (20, 10), (23, -720), (26, 160), (94, 55), (101, -240), (102, -480), (104, 720), (105, 640), (106, 80), (108, 400), (111, 1440), (113, 720), (127, 720), (228, -240), (241, 800), (243, 720), (247, 160), (248, 720), (257, 720), (259, 720), (698, 400), (703, 80), (704, 80), (1054, -240), (1251, 10)]

def reductionPivot1918 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -2, 5], ![0, 0, 2, -2], ![0, 2, 0, -2], ![1, -1, 0, 0], ![1, 0, -1, 0]]

theorem reductionSound1918 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1079).moment H =
      Integer.Sparse.eval reductionProjection1918 (momentVector H) := by
  have heq : reductionPivot1918 = (fun u v => (normalNode1079).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1079).moment H = injectiveMoment H reductionPivot1918 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1079).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1918 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1918 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 144, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1918 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1613, reductionProjection1916, reductionProjection1917, reductionProjection1847, oldProjection1446] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1918 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1613⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1918 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1613 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1918 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1613 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1613 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1918 (1 : Fin 5)) = (normalNode1116).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1918 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1916 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1918 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1916 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1916 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1918 (2 : Fin 5)) = (normalNode1111).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1918 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1917 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1918 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1917 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1917 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1918 (3 : Fin 5)) = (normalNode1110).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1918 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1847 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1918 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1847 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1847 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1918 (4 : Fin 5)) = canonicalInput2404.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1918 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1446 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1918 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1446 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2404 hH))).trans (oldProjectionSound1446 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1079).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1918 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1079).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1918 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 144, 288, 288] ![1, 5, 10, 5, 5] reductionProjection1918 ![oldProjection1613, reductionProjection1916, reductionProjection1917, reductionProjection1847, oldProjection1446]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1919 : Integer.Sparse (Fin 1613) := [(3, -8), (19, -8), (20, 1), (94, 2), (104, 16), (108, -16), (1251, 1)]

def reductionPivot1919 : Matrix (Fin 4) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-1, 0, -1, 2], ![0, -1, -2, 3], ![0, 2, 3, -5]]

theorem reductionSound1919 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode10247).moment H =
      Integer.Sparse.eval reductionProjection1919 (momentVector H) := by
  have heq : reductionPivot1919 = (fun u v => (normalNode10247).entries (OAI.MUB6.Certificate.PairSemantics.permutation27 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10247).moment H = injectiveMoment H reductionPivot1919 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10247).entries OAI.MUB6.Certificate.PairSemantics.permutation27)).symm
  have hshape : reductionPivot1919 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1919 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 12, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1919 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection30, oldProjection126, oldProjection123] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1919 (0 : Fin 3)) = canonicalInput24724.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1919 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection30 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1919 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection30 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24724 hH))).trans (oldProjectionSound30 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1919 (1 : Fin 3)) = canonicalInput20364.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1919 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection126 (momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1919 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection126 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20364 hH))).trans (oldProjectionSound126 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1919 (2 : Fin 3)) = canonicalInput20186.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1919 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection123 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1919 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection123 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20186 hH))).trans (oldProjectionSound123 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode10247).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1919 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10247).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1919 (j : Fin 3)))
      3 144 144 3 ![1, 12, 48] ![144, 12, 3] reductionProjection1919 ![oldProjection30, oldProjection126, oldProjection123]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

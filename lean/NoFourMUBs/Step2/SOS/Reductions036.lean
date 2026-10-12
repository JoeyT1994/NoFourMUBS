import NoFourMUBs.Step2.SOS.Canonical000
import NoFourMUBs.Step2.SOS.Canonical008
import NoFourMUBs.Step2.SOS.Canonical010
import NoFourMUBs.Step2.SOS.Canonical012
import NoFourMUBs.Step2.SOS.Canonical023
import NoFourMUBs.Step2.SOS.Canonical025
import NoFourMUBs.Step2.SOS.Canonical026
import NoFourMUBs.Step2.SOS.Canonical029
import NoFourMUBs.Step2.SOS.Canonical031
import NoFourMUBs.Step2.SOS.Canonical035
import NoFourMUBs.Step2.SOS.Canonical060
import NoFourMUBs.Step2.SOS.Canonical061
import NoFourMUBs.Step2.SOS.Canonical076
import NoFourMUBs.Step2.SOS.Canonical080
import NoFourMUBs.Step2.SOS.Canonical147
import NoFourMUBs.Step2.SOS.Canonical148
import NoFourMUBs.Step2.SOS.Canonical298
import NoFourMUBs.Step2.SOS.Canonical340
import NoFourMUBs.Step2.SOS.Canonical350
import NoFourMUBs.Step2.SOS.Canonical428
import NoFourMUBs.Step2.SOS.Canonical486
import NoFourMUBs.Step2.SOS.Canonical492
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions012
import NoFourMUBs.Step2.SOS.Reductions016
import NoFourMUBs.Step2.SOS.Reductions032
import NoFourMUBs.Step2.SOS.Reductions035
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical130
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical181
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical209
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical309
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical56
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical69
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection1152 : Integer.Sparse (Fin 1613) := [(75, -3), (102, -3), (104, 1), (105, 1), (241, 1)]

def reductionPivot1152 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, 0, 2, 0], ![1, -2, 3, -2], ![2, 2, -5, 1]]

theorem reductionSound1152 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode6980).moment H =
      Integer.Sparse.eval reductionProjection1152 (momentVector H) := by
  have heq : reductionPivot1152 = (fun u v => (normalNode6980).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6980).moment H = injectiveMoment H reductionPivot1152 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6980).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6980).entries)).symm
  have hshape : reductionPivot1152 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1152 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 3, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1152 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection399, oldProjection120, oldProjection125] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1152 (0 : Fin 3)) = canonicalInput571.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1152 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection399 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1152 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection399 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound571 hH))).trans (reductionSound399 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1152 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw4183 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1152 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection120 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1152 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection120 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4183 hH))).trans (oldProjectionSound120 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1152 (2 : Fin 3)) = canonicalInput9463.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1152 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection125 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1152 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection125 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9463 hH))).trans (oldProjectionSound125 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6980).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1152 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6980).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1152 (j : Fin 3)))
      3 9 9 3 ![1, 3, 1] ![9, 3, 9] reductionProjection1152 ![reductionProjection399, oldProjection120, oldProjection125]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1153 : Integer.Sparse (Fin 1613) := [(19, -4), (20, -1), (75, 48), (82, 48), (94, -1), (102, 96), (104, -16), (105, -16), (238, 48), (241, -48), (243, -32), (698, -32), (1223, 96)]

def reductionPivot1153 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 1, 3], ![0, 0, -2, 2], ![0, 1, -1, 0], ![2, 1, 1, -4]]

theorem reductionSound1153 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode567).moment H =
      Integer.Sparse.eval reductionProjection1153 (momentVector H) := by
  have heq : reductionPivot1153 = (fun u v => (normalNode567).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode567).moment H = injectiveMoment H reductionPivot1153 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode567).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1153 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1153 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 144, 9, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1153 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1148, oldProjection1108, oldProjection1254, reductionProjection1152] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1153 (0 : Fin 4)) = canonicalInput1872.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1153 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1148 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1153 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1148 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1872 hH))).trans (reductionSound1148 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1153 (1 : Fin 4)) = canonicalInput1521.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1153 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1108 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1153 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1108 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1521 hH))).trans (oldProjectionSound1108 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1153 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1172 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1153 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1254 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1153 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1254 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1172 hH))).trans (oldProjectionSound1254 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1153 (3 : Fin 4)) = canonicalInput1499.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1153 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1152 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1153 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1152 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1499 hH))).trans (reductionSound1152 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode567).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1153 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode567).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1153 (j : Fin 4)))
      2 288 288 2 ![9, 144, 9, 9] ![32, 2, 32, 32] reductionProjection1153 ![reductionProjection1148, oldProjection1108, oldProjection1254, reductionProjection1152]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1154 : Integer.Sparse (Fin 1613) := [(0, -4), (19, 100), (20, 10), (56, -240), (75, -240), (82, -480), (94, 15), (102, -720), (104, 80), (105, 80), (152, 720), (153, 1440), (159, 720), (238, -960), (241, 400), (243, 320), (690, -240), (695, -240), (698, 560), (700, 240), (1044, -240), (1050, -240), (1058, -960), (1059, 240), (1223, -960), (1250, 120), (1251, -55)]

def reductionPivot1154 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 1, 3], ![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, 1, 0, -3]]

theorem reductionSound1154 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode563).moment H =
      Integer.Sparse.eval reductionProjection1154 (momentVector H) := by
  have heq : reductionPivot1154 = (fun u v => (normalNode563).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode563).moment H = injectiveMoment H reductionPivot1154 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode563).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot1154 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1154 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 6, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1154 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1149, oldProjection1492, reductionProjection1151, oldProjection1488, reductionProjection1153] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1154 (0 : Fin 5)) = (normalNode797).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1154 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1149 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1154 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1149 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1149 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1154 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1492⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1154 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1492 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1154 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1492 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1492 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1154 (2 : Fin 5)) = (normalNode570).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1154 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1151 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1154 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1151 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1151 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1154 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1488⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1154 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1488 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1154 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1488 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1488 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1154 (4 : Fin 5)) = (normalNode567).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1154 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1153 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1154 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1153 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1153 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode563).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1154 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode563).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1154 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 6, 1440, 288] ![1, 1, 240, 1, 5] reductionProjection1154 ![reductionProjection1149, oldProjection1492, reductionProjection1151, oldProjection1488, reductionProjection1153]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1155 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 20), (94, -25), (197, -720), (238, 240), (695, 240), (697, 240), (698, -160), (700, -160), (1058, 240), (1059, -160), (1250, -120), (1251, 20)]

def reductionPivot1155 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 2, 2], ![0, 0, -2, 2], ![0, 1, 0, -1], ![2, 1, -1, -2]]

theorem reductionSound1155 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode800).moment H =
      Integer.Sparse.eval reductionProjection1155 (momentVector H) := by
  have heq : reductionPivot1155 = (fun u v => (normalNode800).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode800).moment H = injectiveMoment H reductionPivot1155 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode800).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1155 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1155 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 720, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1155 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1256, oldProjection1253, oldProjection410, oldProjection1255] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1155 (0 : Fin 4)) = canonicalInput2240.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1155 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1256 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1155 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1256 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2240 hH))).trans (oldProjectionSound1256 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1155 (1 : Fin 4)) = canonicalInput1918.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1155 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1253 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1155 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1253 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1918 hH))).trans (oldProjectionSound1253 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1155 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node410⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1155 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection410 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1155 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection410 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound410 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1155 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1278 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1155 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1255 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1155 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1255 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1278 hH))).trans (oldProjectionSound1255 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode800).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1155 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode800).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1155 (j : Fin 4)))
      2 1440 1440 2 ![9, 720, 1, 9] ![160, 2, 1440, 160] reductionProjection1155 ![oldProjection1256, oldProjection1253, oldProjection410, oldProjection1255]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1156 : Integer.Sparse (Fin 1613) := [(154, 1)]

theorem reductionSound1156 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code154).moment H =
      Integer.Sparse.eval reductionProjection1156 (momentVector H) := by
  have hc : coordinates (154 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code154) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1156, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1157 : Integer.Sparse (Fin 1613) := [(72, 1), (152, -3), (154, -3), (160, -3), (1050, 1), (1221, 1)]

def reductionPivot1157 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -2, 1, 3], ![0, 0, -2, 2], ![0, 0, 2, -2], ![2, 1, -1, -2]]

theorem reductionSound1157 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode571).moment H =
      Integer.Sparse.eval reductionProjection1157 (momentVector H) := by
  have heq : reductionPivot1157 = (fun u v => (normalNode571).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode571).moment H = injectiveMoment H reductionPivot1157 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode571).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot1157 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1157 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1157 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection825, oldProjection407, reductionProjection1156, reductionProjection1150] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1157 (0 : Fin 4)) = canonicalInput4918.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1157 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection825 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1157 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection825 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4918 hH))).trans (oldProjectionSound825 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1157 (1 : Fin 4)) = canonicalInput1632.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1157 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection407 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1157 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection407 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1632 hH))).trans (oldProjectionSound407 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1157 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code154).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1157 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1156 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1157 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1156 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1156 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1157 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code152).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1157 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1150 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1157 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1150 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1150 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode571).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1157 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode571).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1157 (j : Fin 4)))
      2 6 6 2 ![3, 1, 1, 1] ![2, 6, 6, 6] reductionProjection1157 ![oldProjection825, oldProjection407, reductionProjection1156, reductionProjection1150]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1158 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (94, -20), (153, -720), (154, -720), (197, -720), (241, -80), (247, -80), (697, 240), (1251, -5)]

def reductionPivot1158 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 1, 3], ![0, 0, -2, 2], ![0, 1, 1, -2], ![2, 1, -1, -2]]

theorem reductionSound1158 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode569).moment H =
      Integer.Sparse.eval reductionProjection1158 (momentVector H) := by
  have heq : reductionPivot1158 = (fun u v => (normalNode569).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode569).moment H = injectiveMoment H reductionPivot1158 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode569).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1158 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1158 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1158 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection410, oldProjection1351, reductionProjection1156, oldProjection405] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1158 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node410⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1158 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection410 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1158 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection410 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound410 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1158 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1191 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1158 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1351 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1158 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1351 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1191 hH))).trans (oldProjectionSound1351 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1158 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code154).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1158 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1156 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1158 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1156 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1156 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1158 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node405⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1158 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection405 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1158 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection405 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound405 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode569).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1158 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode569).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1158 (j : Fin 4)))
      2 1440 1440 2 ![1, 720, 1, 1] ![1440, 2, 1440, 1440] reductionProjection1158 ![oldProjection410, oldProjection1351, reductionProjection1156, oldProjection405]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1159 : Integer.Sparse (Fin 1613) := [(0, -7), (19, -20), (72, -240), (94, 35), (102, -240), (152, 720), (153, 1440), (154, 1440), (160, 720), (197, 1440), (238, -480), (241, 240), (243, 80), (247, 160), (695, -240), (697, -720), (698, 320), (700, 240), (1050, -240), (1058, -480), (1059, 240), (1221, -240), (1223, -240), (1250, 240), (1251, -70)]

def reductionPivot1159 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 1, 3], ![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, 1, -1, -2]]

theorem reductionSound1159 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode564).moment H =
      Integer.Sparse.eval reductionProjection1159 (momentVector H) := by
  have heq : reductionPivot1159 = (fun u v => (normalNode564).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode564).moment H = injectiveMoment H reductionPivot1159 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode564).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot1159 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1159 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 6, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1159 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1155, oldProjection1493, reductionProjection1157, reductionProjection1158, oldProjection1488] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1159 (0 : Fin 5)) = (normalNode800).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1159 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1155 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1159 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1155 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1155 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1159 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1493⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1159 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1493 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1159 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1493 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1493 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1159 (2 : Fin 5)) = (normalNode571).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1159 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1157 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1159 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1157 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1157 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1159 (3 : Fin 5)) = (normalNode569).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1159 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1158 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1159 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1158 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1158 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1159 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1488⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1159 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1488 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1159 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1488 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1488 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode564).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1159 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode564).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1159 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 6, 1440, 1440] ![1, 1, 240, 1, 1] reductionProjection1159 ![reductionProjection1155, oldProjection1493, reductionProjection1157, reductionProjection1158, oldProjection1488]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1160 : Integer.Sparse (Fin 1613) := [(79, -3), (82, -3), (90, 1), (698, 1), (700, 1)]

def reductionPivot1160 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-3, 1, 2, 0], ![2, -3, 0, 1], ![2, 2, -2, -2]]

theorem reductionSound1160 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode6245).moment H =
      Integer.Sparse.eval reductionProjection1160 (momentVector H) := by
  have heq : reductionPivot1160 = (fun u v => (normalNode6245).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6245).moment H = injectiveMoment H reductionPivot1160 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6245).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6245).entries)).symm
  have hshape : reductionPivot1160 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1160 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1160 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection112, oldProjection110, oldProjection107] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1160 (0 : Fin 3)) = canonicalInput55.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1160 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection112 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1160 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection112 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound55 hH))).trans (oldProjectionSound112 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1160 (1 : Fin 3)) = canonicalInput771.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1160 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection110 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1160 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection110 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound771 hH))).trans (oldProjectionSound110 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1160 (2 : Fin 3)) = canonicalInput778.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1160 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection107 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1160 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection107 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound778 hH))).trans (oldProjectionSound107 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6245).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1160 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6245).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1160 (j : Fin 3)))
      3 9 9 3 ![1, 1, 3] ![9, 9, 3] reductionProjection1160 ![oldProjection112, oldProjection110, oldProjection107]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1161 : Integer.Sparse (Fin 1613) := [(79, 48), (82, 48), (90, -16), (94, -1), (200, -144), (238, 48), (241, -16), (243, -16), (698, -16), (700, -32), (1058, 48), (1059, -16), (1226, -16), (1251, 3)]

def reductionPivot1161 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 2, 2], ![0, 0, -2, 2], ![0, 1, 0, -1], ![2, 0, 1, -3]]

theorem reductionSound1161 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode809).moment H =
      Integer.Sparse.eval reductionProjection1161 (momentVector H) := by
  have heq : reductionPivot1161 = (fun u v => (normalNode809).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode809).moment H = injectiveMoment H reductionPivot1161 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode809).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1161 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1161 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1161 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection832, reductionProjection1160, oldProjection411, oldProjection1255] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1161 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2216 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1161 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection832 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1161 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection832 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2216 hH))).trans (oldProjectionSound832 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1161 (1 : Fin 4)) = canonicalInput2027.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1161 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1160 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1161 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1160 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2027 hH))).trans (reductionSound1160 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1161 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node411⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1161 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection411 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1161 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection411 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound411 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1161 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1278 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1161 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1255 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1161 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1255 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1278 hH))).trans (oldProjectionSound1255 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode809).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1161 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode809).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1161 (j : Fin 4)))
      2 288 288 2 ![144, 9, 1, 9] ![2, 32, 288, 32] reductionProjection1161 ![oldProjection832, reductionProjection1160, oldProjection411, oldProjection1255]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1162 : Integer.Sparse (Fin 1613) := [(94, -1), (153, -144), (156, -144), (164, -144), (241, -16), (690, 48), (698, -16), (1047, 48), (1251, 3)]

def reductionPivot1162 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 1, 3], ![0, 0, -2, 2], ![0, 1, 1, -2], ![2, 0, 1, -3]]

theorem reductionSound1162 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode574).moment H =
      Integer.Sparse.eval reductionProjection1162 (momentVector H) := by
  have heq : reductionPivot1162 = (fun u v => (normalNode574).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode574).moment H = injectiveMoment H reductionPivot1162 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode574).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1162 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1162 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1162 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection794, reductionProjection524, oldProjection406, oldProjection405] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1162 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1810 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1162 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection794 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1162 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection794 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1810 hH))).trans (oldProjectionSound794 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1162 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code164).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1162 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection524 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1162 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection524 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound524 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1162 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node406⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1162 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection406 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1162 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection406 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound406 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1162 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node405⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1162 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection405 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1162 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection405 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound405 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode574).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1162 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode574).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1162 (j : Fin 4)))
      2 288 288 2 ![144, 1, 1, 1] ![2, 288, 288, 288] reductionProjection1162 ![oldProjection794, reductionProjection524, oldProjection406, oldProjection405]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1163 : Integer.Sparse (Fin 1613) := [(75, -3), (77, -3), (88, 1), (241, 1), (243, 1)]

def reductionPivot1163 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 3, -2], ![0, -2, -2, 4], ![2, 2, -1, -3]]

theorem reductionSound1163 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode9066).moment H =
      Integer.Sparse.eval reductionProjection1163 (momentVector H) := by
  have heq : reductionPivot1163 = (fun u v => (normalNode9066).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9066).moment H = injectiveMoment H reductionPivot1163 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9066).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9066).entries)).symm
  have hshape : reductionPivot1163 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1163 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1163 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection104, reductionProjection399, oldProjection102] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1163 (0 : Fin 3)) = canonicalInput9519.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1163 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection104 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1163 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection104 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9519 hH))).trans (oldProjectionSound104 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1163 (1 : Fin 3)) = canonicalInput22426.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1163 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection399 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1163 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection399 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22426 hH))).trans (reductionSound399 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1163 (2 : Fin 3)) = canonicalInput22437.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1163 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection102 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1163 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection102 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22437 hH))).trans (oldProjectionSound102 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9066).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1163 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9066).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1163 (j : Fin 3)))
      3 9 9 3 ![1, 1, 3] ![9, 9, 3] reductionProjection1163 ![oldProjection104, reductionProjection399, oldProjection102]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1164 : Integer.Sparse (Fin 1613) := [(155, 1)]

theorem reductionSound1164 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code155).moment H =
      Integer.Sparse.eval reductionProjection1164 (momentVector H) := by
  have hc : coordinates (155 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code155) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1164, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1165 : Integer.Sparse (Fin 1613) := [(19, 4), (75, 48), (77, 48), (88, -16), (94, -1), (102, 48), (104, -16), (105, -16), (155, -144), (241, -16), (243, -48), (698, -16), (1223, 48), (1251, -1)]

def reductionPivot1165 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 1, 3], ![0, 0, -2, 2], ![0, 1, 0, -1], ![2, 0, 2, -4]]

theorem reductionSound1165 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode573).moment H =
      Integer.Sparse.eval reductionProjection1165 (momentVector H) := by
  have heq : reductionPivot1165 = (fun u v => (normalNode573).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode573).moment H = injectiveMoment H reductionPivot1165 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode573).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1165 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1165 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1165 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection795, reductionProjection1163, reductionProjection1164, oldProjection1254] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1165 (0 : Fin 4)) = canonicalInput3899.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1165 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection795 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1165 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection795 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3899 hH))).trans (oldProjectionSound795 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1165 (1 : Fin 4)) = canonicalInput1625.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1165 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1163 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1165 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1163 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1625 hH))).trans (reductionSound1163 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1165 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code155).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1165 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1164 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1165 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1164 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1164 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1165 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1172 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1165 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1254 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1165 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1254 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1172 hH))).trans (oldProjectionSound1254 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode573).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1165 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode573).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1165 (j : Fin 4)))
      2 288 288 2 ![144, 9, 1, 9] ![2, 32, 288, 32] reductionProjection1165 ![oldProjection795, reductionProjection1163, reductionProjection1164, oldProjection1254]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1166 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -40), (20, 5), (75, -240), (77, -240), (79, -240), (82, -240), (88, 80), (90, 80), (94, -15), (102, -480), (104, 80), (105, 80), (153, 720), (155, 720), (156, 1440), (164, 720), (200, 720), (238, -240), (241, 560), (243, 560), (690, -240), (698, 480), (700, 160), (1047, -240), (1052, -720), (1058, -240), (1059, 80), (1223, -960), (1226, 320), (1251, -95)]

def reductionPivot1166 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 1, 3], ![0, 0, -2, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, 1, -3]]

theorem reductionSound1166 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode565).moment H =
      Integer.Sparse.eval reductionProjection1166 (momentVector H) := by
  have heq : reductionPivot1166 = (fun u v => (normalNode565).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode565).moment H = injectiveMoment H reductionPivot1166 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode565).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot1166 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1166 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 144, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1166 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1161, oldProjection1495, oldProjection1489, reductionProjection1162, reductionProjection1165] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1166 (0 : Fin 5)) = (normalNode809).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1166 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1161 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1166 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1161 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1161 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1166 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1495⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1166 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1495 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1166 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1495 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1495 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1166 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1489⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1166 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1489 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1166 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1489 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1489 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1166 (3 : Fin 5)) = (normalNode574).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1166 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1162 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1166 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1162 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1162 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1166 (4 : Fin 5)) = (normalNode573).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1166 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1165 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1166 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1165 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1165 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode565).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1166 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode565).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1166 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 144, 288, 288] ![5, 1, 10, 5, 5] reductionProjection1166 ![reductionProjection1161, oldProjection1495, oldProjection1489, reductionProjection1162, reductionProjection1165]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1167 : Integer.Sparse (Fin 1613) := [(82, -3), (87, -3), (90, 1), (698, 1), (1226, 1)]

def reductionPivot1167 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-3, 1, 1, 1], ![2, -3, 1, 0], ![2, 2, -2, -2]]

theorem reductionSound1167 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode6243).moment H =
      Integer.Sparse.eval reductionProjection1167 (momentVector H) := by
  have heq : reductionPivot1167 = (fun u v => (normalNode6243).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6243).moment H = injectiveMoment H reductionPivot1167 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6243).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6243).entries)).symm
  have hshape : reductionPivot1167 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1167 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1167 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection112, oldProjection114, oldProjection109] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1167 (0 : Fin 3)) = canonicalInput46.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1167 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection112 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1167 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection112 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound46 hH))).trans (oldProjectionSound112 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1167 (1 : Fin 3)) = canonicalInput696.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1167 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection114 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1167 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection114 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound696 hH))).trans (oldProjectionSound114 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1167 (2 : Fin 3)) = canonicalInput701.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1167 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection109 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1167 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection109 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound701 hH))).trans (oldProjectionSound109 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6243).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1167 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6243).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1167 (j : Fin 3)))
      3 9 9 3 ![1, 1, 3] ![9, 9, 3] reductionProjection1167 ![oldProjection112, oldProjection114, oldProjection109]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1168 : Integer.Sparse (Fin 1613) := [(204, 1)]

theorem reductionSound1168 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code204).moment H =
      Integer.Sparse.eval reductionProjection1168 (momentVector H) := by
  have hc : coordinates (204 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code204) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1168, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1169 : Integer.Sparse (Fin 1613) := [(0, 1), (82, 240), (87, 240), (90, -80), (94, -5), (204, -720), (238, 240), (241, -80), (243, -80), (698, -400), (700, -80), (1058, 240), (1059, -80), (1226, -160), (1227, -80), (1251, 30)]

def reductionPivot1169 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 2, 2], ![0, 0, -2, 2], ![1, 0, 0, -1], ![1, 1, 1, -3]]

theorem reductionSound1169 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode816).moment H =
      Integer.Sparse.eval reductionProjection1169 (momentVector H) := by
  have heq : reductionPivot1169 = (fun u v => (normalNode816).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode816).moment H = injectiveMoment H reductionPivot1169 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode816).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1169 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1169 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 9, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1169 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection827, reductionProjection1167, reductionProjection1168, oldProjection1255] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1169 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2230 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1169 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection827 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1169 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection827 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2230 hH))).trans (oldProjectionSound827 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1169 (1 : Fin 4)) = canonicalInput2030.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1169 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1167 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1169 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1167 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2030 hH))).trans (reductionSound1167 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1169 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code204).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1169 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1168 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1169 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1168 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1168 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1169 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1284 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1169 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1255 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1169 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1255 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1284 hH))).trans (oldProjectionSound1255 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode816).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1169 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode816).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1169 (j : Fin 4)))
      2 1440 1440 2 ![720, 9, 1, 9] ![2, 160, 1440, 160] reductionProjection1169 ![oldProjection827, reductionProjection1167, reductionProjection1168, oldProjection1255]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1170 : Integer.Sparse (Fin 1613) := [(158, 1)]

theorem reductionSound1170 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code158).moment H =
      Integer.Sparse.eval reductionProjection1170 (momentVector H) := by
  have hc : coordinates (158 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code158) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1170, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1171 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (102, 240), (158, -720), (241, -160), (243, -160), (698, -400), (1219, 240), (1223, 480), (1226, -160), (1227, -160), (1251, 30)]

def reductionPivot1171 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -2, 1, 3], ![0, 0, -2, 2], ![1, 0, 0, -1], ![1, 1, 1, -3]]

theorem reductionSound1171 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode579).moment H =
      Integer.Sparse.eval reductionProjection1171 (momentVector H) := by
  have heq : reductionPivot1171 = (fun u v => (normalNode579).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode579).moment H = injectiveMoment H reductionPivot1171 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode579).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1171 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1171 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 9, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1171 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection827, oldProjection1239, reductionProjection1170, oldProjection1254] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1171 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2230 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1171 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection827 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1171 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection827 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2230 hH))).trans (oldProjectionSound827 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1171 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1235 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1171 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1239 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1171 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1239 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1235 hH))).trans (oldProjectionSound1239 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1171 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code158).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1171 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1170 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1171 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1170 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1170 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1171 (3 : Fin 4)) = canonicalInput1507.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1171 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1254 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1171 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1254 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1507 hH))).trans (oldProjectionSound1254 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode579).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1171 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode579).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1171 (j : Fin 4)))
      2 1440 1440 2 ![720, 9, 1, 9] ![2, 160, 1440, 160] reductionProjection1171 ![oldProjection827, oldProjection1239, reductionProjection1170, oldProjection1254]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1172 : Integer.Sparse (Fin 1613) := [(166, 1)]

theorem reductionSound1172 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code166).moment H =
      Integer.Sparse.eval reductionProjection1172 (momentVector H) := by
  have hc : coordinates (166 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code166) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1172, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1173 : Integer.Sparse (Fin 1613) := [(153, -3), (158, -3), (166, -3), (694, 1), (1047, 1), (1055, 1)]

def reductionPivot1173 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 1, 3], ![0, 0, -2, 2], ![1, 0, 1, -2], ![1, 1, 1, -3]]

theorem reductionSound1173 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode577).moment H =
      Integer.Sparse.eval reductionProjection1173 (momentVector H) := by
  have heq : reductionPivot1173 = (fun u v => (normalNode577).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode577).moment H = injectiveMoment H reductionPivot1173 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode577).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1173 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1173 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1173 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection790, reductionProjection1172, reductionProjection1170, oldProjection405] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1173 (0 : Fin 4)) = canonicalInput3908.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1173 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection790 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1173 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection790 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3908 hH))).trans (oldProjectionSound790 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1173 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code166).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1173 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1172 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1173 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1172 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1172 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1173 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code158).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1173 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1170 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1173 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1170 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1170 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1173 (3 : Fin 4)) = canonicalInput1508.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1173 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection405 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1173 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection405 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1508 hH))).trans (oldProjectionSound405 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode577).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1173 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode577).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1173 (j : Fin 4)))
      2 6 6 2 ![3, 1, 1, 1] ![2, 6, 6, 6] reductionProjection1173 ![oldProjection790, reductionProjection1172, reductionProjection1170, oldProjection405]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1174 : Integer.Sparse (Fin 1613) := [(75, -3), (88, 1), (89, -3), (243, 1), (1226, 1)]

def reductionPivot1174 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 3, -2], ![-1, -1, -2, 4], ![2, 2, -1, -3]]

theorem reductionSound1174 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode10259).moment H =
      Integer.Sparse.eval reductionProjection1174 (momentVector H) := by
  have heq : reductionPivot1174 = (fun u v => (normalNode10259).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10259).moment H = injectiveMoment H reductionPivot1174 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode10259).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode10259).entries)).symm
  have hshape : reductionPivot1174 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1174 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1174 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection115, reductionProjection399, oldProjection106] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1174 (0 : Fin 3)) = canonicalInput19099.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1174 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection115 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1174 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection115 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19099 hH))).trans (oldProjectionSound115 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1174 (1 : Fin 3)) = canonicalInput27448.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1174 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection399 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1174 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection399 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27448 hH))).trans (reductionSound399 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1174 (2 : Fin 3)) = canonicalInput27450.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1174 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection106 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1174 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection106 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27450 hH))).trans (oldProjectionSound106 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode10259).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1174 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10259).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1174 (j : Fin 3)))
      3 9 9 3 ![1, 1, 3] ![9, 9, 3] reductionProjection1174 ![oldProjection115, reductionProjection399, oldProjection106]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1175 : Integer.Sparse (Fin 1613) := [(157, 1)]

theorem reductionSound1175 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code157).moment H =
      Integer.Sparse.eval reductionProjection1175 (momentVector H) := by
  have hc : coordinates (157 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code157) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1175, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1176 : Integer.Sparse (Fin 1613) := [(19, 2), (75, 24), (88, -8), (89, 24), (94, -1), (102, 24), (104, -8), (105, -8), (157, -72), (241, -24), (243, -24), (698, -16), (704, -8), (1223, 24), (1226, -8), (1251, 1)]

def reductionPivot1176 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 1, 3], ![0, 0, -2, 2], ![1, 0, 0, -1], ![1, 1, 2, -4]]

theorem reductionSound1176 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode576).moment H =
      Integer.Sparse.eval reductionProjection1176 (momentVector H) := by
  have heq : reductionPivot1176 = (fun u v => (normalNode576).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode576).moment H = injectiveMoment H reductionPivot1176 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode576).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1176 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1176 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 9, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1176 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection763, reductionProjection1174, reductionProjection1175, oldProjection1254] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1176 (0 : Fin 4)) = canonicalInput3907.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1176 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection763 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1176 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection763 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3907 hH))).trans (oldProjectionSound763 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1176 (1 : Fin 4)) = canonicalInput1627.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1176 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1174 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1176 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1174 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1627 hH))).trans (reductionSound1174 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1176 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code157).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1176 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1175 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1176 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1175 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1175 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1176 (3 : Fin 4)) = canonicalInput1507.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1176 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1254 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1176 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1254 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1507 hH))).trans (oldProjectionSound1254 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode576).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1176 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode576).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1176 (j : Fin 4)))
      2 144 144 2 ![72, 9, 1, 9] ![2, 16, 144, 16] reductionProjection1176 ![oldProjection763, reductionProjection1174, reductionProjection1175, oldProjection1254]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1177 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -60), (20, 5), (75, -240), (82, -240), (87, -240), (88, 80), (89, -240), (90, 80), (94, 35), (102, -480), (104, 80), (105, 80), (153, 720), (157, 720), (158, 1440), (166, 720), (204, 720), (238, -240), (241, 480), (243, 480), (247, 160), (694, -240), (698, 1040), (700, 80), (704, 80), (1047, -240), (1055, -240), (1058, -240), (1059, 80), (1219, -720), (1223, -960), (1226, 480), (1227, 320), (1251, -70)]

def reductionPivot1177 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 1, 3], ![0, 0, -2, 2], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, 1, -3]]

theorem reductionSound1177 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode566).moment H =
      Integer.Sparse.eval reductionProjection1177 (momentVector H) := by
  have heq : reductionPivot1177 = (fun u v => (normalNode566).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode566).moment H = injectiveMoment H reductionPivot1177 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode566).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot1177 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1177 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 6, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1177 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1169, oldProjection1498, reductionProjection1171, reductionProjection1173, reductionProjection1176] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1177 (0 : Fin 5)) = (normalNode816).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1177 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1169 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1177 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1169 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1169 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1177 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1498⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1177 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1498 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1177 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1498 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1498 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1177 (2 : Fin 5)) = (normalNode579).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1177 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1171 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1177 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1171 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1171 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1177 (3 : Fin 5)) = (normalNode577).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1177 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1173 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1177 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1173 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1173 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1177 (4 : Fin 5)) = (normalNode576).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1177 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1176 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1177 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1176 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1176 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode566).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1177 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode566).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1177 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 6, 144] ![1, 1, 1, 240, 10] reductionProjection1177 ![reductionProjection1169, oldProjection1498, reductionProjection1171, reductionProjection1173, reductionProjection1176]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1178 : Integer.Sparse (Fin 1613) := [(0, -3), (94, -10), (1251, 25)]

def reductionPivot1178 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, -2, -2, 3]]

theorem reductionSound1178 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode10724).moment H =
      Integer.Sparse.eval reductionProjection1178 (momentVector H) := by
  have heq : reductionPivot1178 = (fun u v => (normalNode10724).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10724).moment H = injectiveMoment H reductionPivot1178 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10724).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot1178 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1178 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 72, 720, 240] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1178 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1198, oldProjection1198, oldProjection964, oldProjection150] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1178 (0 : Fin 4)) = canonicalInput21803.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1178 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1198 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1178 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1198 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21803 hH))).trans (oldProjectionSound1198 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1178 (1 : Fin 4)) = canonicalInput31141.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1178 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1198 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1178 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1198 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31141 hH))).trans (oldProjectionSound1198 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1178 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw9911 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1178 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection964 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1178 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection964 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9911 hH))).trans (oldProjectionSound964 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1178 (3 : Fin 4)) = canonicalInput31501.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1178 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection150 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1178 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection150 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31501 hH))).trans (oldProjectionSound150 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10724).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1178 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10724).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1178 (j : Fin 4)))
      2 720 720 2 ![72, 72, 720, 240] ![10, 10, 1, 3] reductionProjection1178 ![oldProjection1198, oldProjection1198, oldProjection964, oldProjection150]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1179 : Integer.Sparse (Fin 1613) := [(0, 1), (153, -720), (158, -720), (174, -720), (698, -80), (1055, 240), (1058, 240), (1227, -80), (1251, 15)]

def reductionPivot1179 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -2, 1, 3], ![0, 0, -2, 2], ![1, 0, 1, -2], ![1, 1, 0, -2]]

theorem reductionSound1179 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode580).moment H =
      Integer.Sparse.eval reductionProjection1179 (momentVector H) := by
  have heq : reductionPivot1179 = (fun u v => (normalNode580).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode580).moment H = injectiveMoment H reductionPivot1179 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode580).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1179 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1179 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1179 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection828, oldProjection409, reductionProjection1170, oldProjection405] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1179 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2231 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1179 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection828 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1179 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection828 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2231 hH))).trans (oldProjectionSound828 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1179 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node409⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1179 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection409 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1179 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection409 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound409 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1179 (2 : Fin 4)) = canonicalInput1510.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1179 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1170 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1179 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1170 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1510 hH))).trans (reductionSound1170 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1179 (3 : Fin 4)) = canonicalInput1508.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1179 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection405 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1179 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection405 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1508 hH))).trans (oldProjectionSound405 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode580).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1179 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode580).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1179 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 1, 1] ![2, 1440, 1440, 1440] reductionProjection1179 ![oldProjection828, oldProjection409, reductionProjection1170, oldProjection405]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1180 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 25), (102, -240), (153, 1440), (158, 2160), (174, 1440), (205, 720), (238, -240), (241, 160), (243, 160), (698, 880), (700, 160), (1055, -720), (1058, -960), (1059, 240), (1219, -240), (1223, -480), (1226, 160), (1227, 480), (1251, -170)]

def reductionPivot1180 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 1, 3], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, 0, -2]]

theorem reductionSound1180 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode568).moment H =
      Integer.Sparse.eval reductionProjection1180 (momentVector H) := by
  have heq : reductionPivot1180 = (fun u v => (normalNode568).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode568).moment H = injectiveMoment H reductionPivot1180 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode568).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot1180 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1180 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![360, 720, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1180 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1516, reductionProjection1178, reductionProjection1179, reductionProjection1179, reductionProjection1171] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1180 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1516⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1180 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1516 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1180 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1516 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1516 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1180 (1 : Fin 5)) = canonicalInput1524.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1180 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1178 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1180 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1178 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1524 hH))).trans (reductionSound1178 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1180 (2 : Fin 5)) = canonicalInput1501.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1180 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1179 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1180 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1179 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1501 hH))).trans (reductionSound1179 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1180 (3 : Fin 5)) = (normalNode580).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1180 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1179 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1180 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1179 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1179 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1180 (4 : Fin 5)) = (normalNode579).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1180 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1171 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1180 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1171 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1171 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode568).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1180 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode568).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1180 (j : Fin 5)))
      1 1440 1440 1 ![360, 720, 1440, 1440, 1440] ![4, 2, 1, 1, 1] reductionProjection1180 ![oldProjection1516, reductionProjection1178, reductionProjection1179, reductionProjection1179, reductionProjection1171]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1181 : Integer.Sparse (Fin 1613) := [(88, 8), (90, 8), (94, -1), (241, 8), (243, 8), (698, 8), (1226, 16), (1251, -1)]

def reductionPivot1181 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -2, 1, 2], ![0, 1, 2, -3], ![1, 0, -3, 2]]

theorem reductionSound1181 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode7076).moment H =
      Integer.Sparse.eval reductionProjection1181 (momentVector H) := by
  have heq : reductionPivot1181 = (fun u v => (normalNode7076).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7076).moment H = injectiveMoment H reductionPivot1181 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7076).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot1181 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1181 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![24, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1181 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection263, oldProjection102, oldProjection109] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1181 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6704 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1181 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection263 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1181 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection263 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6704 hH))).trans (oldProjectionSound263 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1181 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5801 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1181 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection102 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1181 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection102 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5801 hH))).trans (oldProjectionSound102 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1181 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5795 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1181 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection109 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1181 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection109 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5795 hH))).trans (oldProjectionSound109 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7076).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1181 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7076).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1181 (j : Fin 3)))
      3 72 72 3 ![24, 3, 3] ![3, 24, 24] reductionProjection1181 ![oldProjection263, oldProjection102, oldProjection109]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1182 : Integer.Sparse (Fin 1613) := [(167, 1)]

theorem reductionSound1182 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code167).moment H =
      Integer.Sparse.eval reductionProjection1182 (momentVector H) := by
  have hc : coordinates (167 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code167) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1182, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1183 : Integer.Sparse (Fin 1613) := [(56, 24), (75, 24), (77, 24), (88, -16), (89, 24), (90, -16), (94, 1), (167, -72), (241, -8), (243, -16), (698, -16), (700, -8), (1226, -24), (1251, 1)]

def reductionPivot1183 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -2, 1, 3], ![0, 1, -3, 2], ![1, 0, 0, -1], ![1, 0, 2, -3]]

theorem reductionSound1183 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode689).moment H =
      Integer.Sparse.eval reductionProjection1183 (momentVector H) := by
  have heq : reductionPivot1183 = (fun u v => (normalNode689).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode689).moment H = injectiveMoment H reductionPivot1183 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode689).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1183 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1183 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 9, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1183 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1181, reductionProjection1043, reductionProjection1182, reductionProjection1174] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1183 (0 : Fin 4)) = canonicalInput5140.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1183 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1181 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1183 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1181 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5140 hH))).trans (reductionSound1181 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1183 (1 : Fin 4)) = canonicalInput1720.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1183 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1043 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1183 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1043 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1720 hH))).trans (reductionSound1043 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1183 (2 : Fin 4)) = canonicalInput1628.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1183 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1182 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1183 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1182 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1628 hH))).trans (reductionSound1182 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1183 (3 : Fin 4)) = canonicalInput1627.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1183 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1174 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1183 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1174 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1627 hH))).trans (reductionSound1174 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode689).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1183 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode689).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1183 (j : Fin 4)))
      2 144 144 2 ![72, 9, 1, 9] ![2, 16, 144, 16] reductionProjection1183 ![reductionProjection1181, reductionProjection1043, reductionProjection1182, reductionProjection1174]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

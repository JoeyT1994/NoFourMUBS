import NoFourMUBs.Step2.SOS.Canonical055
import NoFourMUBs.Step2.SOS.Canonical058
import NoFourMUBs.Step2.SOS.Canonical099
import NoFourMUBs.Step2.SOS.Canonical107
import NoFourMUBs.Step2.SOS.Canonical108
import NoFourMUBs.Step2.SOS.Canonical109
import NoFourMUBs.Step2.SOS.Canonical110
import NoFourMUBs.Step2.SOS.Canonical126
import NoFourMUBs.Step2.SOS.Canonical169
import NoFourMUBs.Step2.SOS.Canonical171
import NoFourMUBs.Step2.SOS.Canonical202
import NoFourMUBs.Step2.SOS.Canonical229
import NoFourMUBs.Step2.SOS.Canonical231
import NoFourMUBs.Step2.SOS.Canonical234
import NoFourMUBs.Step2.SOS.Canonical243
import NoFourMUBs.Step2.SOS.Canonical244
import NoFourMUBs.Step2.SOS.Canonical245
import NoFourMUBs.Step2.SOS.Canonical246
import NoFourMUBs.Step2.SOS.Canonical247
import NoFourMUBs.Step2.SOS.Canonical251
import NoFourMUBs.Step2.SOS.Canonical252
import NoFourMUBs.Step2.SOS.Canonical272
import NoFourMUBs.Step2.SOS.Canonical273
import NoFourMUBs.Step2.SOS.Canonical276
import NoFourMUBs.Step2.SOS.Canonical277
import NoFourMUBs.Step2.SOS.Canonical319
import NoFourMUBs.Step2.SOS.Canonical320
import NoFourMUBs.Step2.SOS.Canonical321
import NoFourMUBs.Step2.SOS.Canonical322
import NoFourMUBs.Step2.SOS.Canonical323
import NoFourMUBs.Step2.SOS.Canonical353
import NoFourMUBs.Step2.SOS.Canonical375
import NoFourMUBs.Step2.SOS.Canonical376
import NoFourMUBs.Step2.SOS.Canonical378
import NoFourMUBs.Step2.SOS.Canonical385
import NoFourMUBs.Step2.SOS.Canonical411
import NoFourMUBs.Step2.SOS.Canonical431
import NoFourMUBs.Step2.SOS.Canonical470
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections029
import NoFourMUBs.Step2.SOS.OldProjections034
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions028
import NoFourMUBs.Step2.SOS.Reductions030
import NoFourMUBs.Step2.SOS.Reductions035
import NoFourMUBs.Step2.SOS.Reductions063
import NoFourMUBs.Step2.SOS.Reductions064
import NoFourMUBs.Step2.SOS.Reductions066
import NoFourMUBs.Step2.SOS.Reductions067
import NoFourMUBs.Step2.SOS.Reductions068
import NoFourMUBs.Step2.SOS.Reductions084
import NoFourMUBs.Step2.SOS.Reductions088
import NoFourMUBs.Step2.SOS.Reductions096
import NoFourMUBs.Step2.SOS.Reductions098
import NoFourMUBs.Step2.SOS.Reductions104
import NoFourMUBs.Step2.SOS.Reductions105
import NoFourMUBs.Step2.SOS.Reductions106
import NoFourMUBs.Step2.SOS.Reductions107
import NoFourMUBs.Step2.SOS.Reductions109
import NoFourMUBs.Step2.SOS.Reductions112
import NoFourMUBs.Step2.SOS.Reductions114
import NoFourMUBs.Step2.SOS.Reductions118
import NoFourMUBs.Step2.SOS.Reductions124
import NoFourMUBs.Step2.SOS.Reductions125
import NoFourMUBs.Step2.SOS.Reductions149
import NoFourMUBs.Step2.SOS.Reductions152
import NoFourMUBs.Step2.SOS.Reductions153
import NoFourMUBs.Step2.SOS.Reductions156
import NoFourMUBs.Step2.SOS.Reductions162
import NoFourMUBs.Step2.SOS.Reductions218
import NoFourMUBs.Step2.SOS.Reductions222
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection7136 : Integer.Sparse (Fin 1613) := [(0, -1), (287, -72), (426, -576), (666, -144), (698, -160), (848, 144), (890, -288), (943, 288), (955, -144), (956, -144), (1015, -288), (1016, -288), (1226, -80), (1227, -24), (1251, 25)]

def reductionPivot7136 : Matrix (Fin 6) (Fin 5) ℤ := ![![-1, 0, 0, 1, 0], ![0, -2, 1, 0, 1], ![0, 0, 0, 1, -1], ![0, 1, -2, 0, 1], ![0, 1, 1, 0, -2], ![1, 0, 0, -2, 1]]

theorem reductionSound7136 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode10742).moment H =
      Integer.Sparse.eval reductionProjection7136 (momentVector H) := by
  have heq : reductionPivot7136 = (fun u v => (normalNode10742).entries (OAI.MUB6.Certificate.PairSemantics.permutation151 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10742).moment H = injectiveMoment H reductionPivot7136 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10742).entries OAI.MUB6.Certificate.PairSemantics.permutation151)).symm
  have hshape : reductionPivot7136 0 = Pi.single (3 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7136 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 720, 720, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7136 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection5011, reductionProjection7126, reductionProjection5011, reductionProjection7135, reductionProjection3416] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7136 (0 : Fin 5)) = (normalNode6837).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7136 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5011 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7136 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5011 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound5011 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7136 (1 : Fin 5)) = canonicalInput24221.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7136 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7126 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7136 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7126 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24221 hH))).trans (reductionSound7126 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7136 (2 : Fin 5)) = canonicalInput24230.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7136 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5011 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7136 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5011 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24230 hH))).trans (reductionSound5011 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7136 (3 : Fin 5)) = canonicalInput24231.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7136 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7135 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7136 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7135 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24231 hH))).trans (reductionSound7135 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7136 (4 : Fin 5)) = canonicalInput24232.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7136 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3416 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7136 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3416 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24232 hH))).trans (reductionSound3416 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode10742).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7136 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10742).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7136 (j : Fin 5)))
      1 288 1440 5 ![720, 1440, 720, 720, 720] ![2, 1, 2, 2, 2] reductionProjection7136 ![reductionProjection5011, reductionProjection7126, reductionProjection5011, reductionProjection7135, reductionProjection3416]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7137 : Integer.Sparse (Fin 1613) := [(828, 1)]

theorem reductionSound7137 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code828).moment H =
      Integer.Sparse.eval reductionProjection7137 (momentVector H) := by
  have hc : coordinates (828 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code828) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection7137, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection7138 : Integer.Sparse (Fin 1613) := [(0, -1), (287, -360), (367, -1440), (426, -1080), (698, -200), (828, -720), (848, 360), (850, 720), (956, -360), (1016, -360), (1226, -120), (1227, -40), (1251, 25)]

def reductionPivot7138 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-2, 0, 0, 1, 1], ![0, -2, 1, 0, 1], ![0, 1, 1, 0, -2], ![1, 0, 0, -2, 1], ![1, 1, -1, 1, -2]]

theorem reductionSound7138 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode3671).moment H =
      Integer.Sparse.eval reductionProjection7138 (momentVector H) := by
  have heq : reductionPivot7138 = (fun u v => (normalNode3671).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3671).moment H = injectiveMoment H reductionPivot7138 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3671).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot7138 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7138 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1, 36, 720, 1, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7138 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3779, reductionProjection2155, reductionProjection7135, reductionProjection3779, reductionProjection7137] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7138 (0 : Fin 5)) = canonicalInput6391.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7138 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3779 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7138 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3779 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6391 hH))).trans (reductionSound3779 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7138 (1 : Fin 5)) = canonicalInput6962.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7138 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2155 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7138 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2155 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6962 hH))).trans (reductionSound2155 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7138 (2 : Fin 5)) = canonicalInput6985.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7138 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7135 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7138 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7135 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6985 hH))).trans (reductionSound7135 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7138 (3 : Fin 5)) = canonicalInput6991.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7138 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3779 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7138 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3779 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6991 hH))).trans (reductionSound3779 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7138 (4 : Fin 5)) = canonicalInput6993.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7138 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7137 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7138 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7137 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6993 hH))).trans (reductionSound7137 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3671).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7138 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3671).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7138 (j : Fin 5)))
      1 720 720 1 ![1, 36, 720, 1, 1] ![720, 20, 1, 720, 720] reductionProjection7138 ![reductionProjection3779, reductionProjection2155, reductionProjection7135, reductionProjection3779, reductionProjection7137]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7139 : Integer.Sparse (Fin 1613) := [(0, 1), (87, 240), (94, -10), (169, -720), (602, -1440), (638, -720), (697, 240), (698, -1360), (848, 720), (890, -360), (1055, 240), (1058, 480), (1059, -160), (1212, -480), (1219, 480), (1220, -480), (1223, 240), (1226, -640), (1227, -520), (1251, 205)]

def reductionPivot7139 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 1, 0, 0, -1], ![-1, -1, 0, 0, 2], ![0, 0, -1, -1, 2], ![0, 0, -1, 2, -1], ![0, 0, 2, -1, -1], ![1, 0, 0, 0, -1]]

theorem reductionSound7139 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8310).moment H =
      Integer.Sparse.eval reductionProjection7139 (momentVector H) := by
  have heq : reductionPivot7139 = (fun u v => (normalNode8310).entries (OAI.MUB6.Certificate.PairSemantics.permutation258 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8310).moment H = injectiveMoment H reductionPivot7139 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8310).entries OAI.MUB6.Certificate.PairSemantics.permutation258)).symm
  have hshape : reductionPivot7139 0 = Pi.single (1 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7139 1 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 288, 2880, 2880, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7139 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3416, reductionProjection5198, reductionProjection897, reductionProjection897, reductionProjection3506] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7139 (0 : Fin 5)) = canonicalInput20668.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7139 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3416 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7139 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3416 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20668 hH))).trans (reductionSound3416 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7139 (1 : Fin 5)) = canonicalInput16157.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7139 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5198 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7139 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5198 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16157 hH))).trans (reductionSound5198 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7139 (2 : Fin 5)) = canonicalInput15831.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7139 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection897 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7139 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection897 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15831 hH))).trans (reductionSound897 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7139 (3 : Fin 5)) = canonicalInput15824.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7139 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection897 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7139 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection897 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15824 hH))).trans (reductionSound897 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7139 (4 : Fin 5)) = canonicalInput15823.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7139 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3506 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7139 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3506 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15823 hH))).trans (reductionSound3506 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8310).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7139 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8310).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7139 (j : Fin 5)))
      1 1440 2880 2 ![720, 288, 2880, 2880, 720] ![4, 10, 1, 1, 4] reductionProjection7139 ![reductionProjection3416, reductionProjection5198, reductionProjection897, reductionProjection897, reductionProjection3506]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7140 : Integer.Sparse (Fin 1613) := [(0, 3), (426, 720), (602, 720), (698, 160), (848, -720), (865, 720), (890, 1080), (1059, 80), (1227, 40), (1251, 5)]

def reductionPivot7140 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 2, -1], ![0, 2, 0, -1, -1], ![2, 0, -2, 0, 0], ![-1, -1, 2, -1, 1]]

theorem reductionSound7140 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10766).moment H =
      Integer.Sparse.eval reductionProjection7140 (momentVector H) := by
  have heq : reductionPivot7140 = (fun u v => (normalNode10766).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10766).moment H = injectiveMoment H reductionPivot7140 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode10766).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode10766).entries)).symm
  have hshape : reductionPivot7140 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7140 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 360, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7140 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3369, reductionProjection3369, reductionProjection2187, reductionProjection987] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7140 (0 : Fin 4)) = canonicalInput17716.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7140 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3369 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7140 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3369 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17716 hH))).trans (reductionSound3369 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7140 (1 : Fin 4)) = canonicalInput26321.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7140 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3369 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7140 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3369 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound26321 hH))).trans (reductionSound3369 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7140 (2 : Fin 4)) = canonicalInput26356.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7140 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2187 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7140 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2187 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound26356 hH))).trans (reductionSound2187 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7140 (3 : Fin 4)) = canonicalInput26357.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7140 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection987 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7140 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection987 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound26357 hH))).trans (reductionSound987 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10766).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7140 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10766).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7140 (j : Fin 4)))
      2 1440 1440 2 ![1440, 1440, 360, 1] ![1, 1, 4, 1440] reductionProjection7140 ![reductionProjection3369, reductionProjection3369, reductionProjection2187, reductionProjection987]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7141 : Integer.Sparse (Fin 1613) := [(0, -3), (169, -720), (426, -720), (602, -1440), (638, -720), (698, -480), (848, 1440), (857, 1440), (865, -720), (875, 1440), (890, -1080), (943, 1440), (1059, -80), (1226, -160), (1227, -200), (1251, 35)]

def reductionPivot7141 : Matrix (Fin 6) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -2, 0, 1, 1], ![0, 0, 2, 0, -2], ![0, 1, 0, -2, 1], ![0, 1, 0, 1, -2], ![1, 0, -2, 0, 1]]

theorem reductionSound7141 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10440).moment H =
      Integer.Sparse.eval reductionProjection7141 (momentVector H) := by
  have heq : reductionPivot7141 = (fun u v => (normalNode10440).entries (OAI.MUB6.Certificate.PairSemantics.permutation151 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10440).moment H = injectiveMoment H reductionPivot7141 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10440).entries OAI.MUB6.Certificate.PairSemantics.permutation151)).symm
  have hshape : reductionPivot7141 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7141 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 1440, 2880, 1440, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7141 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3367, reductionProjection7126, reductionProjection3367, reductionProjection7140, reductionProjection987] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7141 (0 : Fin 5)) = (normalNode6618).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7141 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3367 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7141 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3367 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound3367 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7141 (1 : Fin 5)) = canonicalInput24047.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7141 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7126 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7141 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7126 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24047 hH))).trans (reductionSound7126 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7141 (2 : Fin 5)) = canonicalInput24064.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7141 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3367 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7141 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3367 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24064 hH))).trans (reductionSound3367 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7141 (3 : Fin 5)) = canonicalInput24066.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7141 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7140 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7141 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7140 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24066 hH))).trans (reductionSound7140 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7141 (4 : Fin 5)) = canonicalInput24067.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7141 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection987 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7141 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection987 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24067 hH))).trans (reductionSound987 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode10440).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7141 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10440).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7141 (j : Fin 5)))
      1 1440 2880 2 ![2880, 1440, 2880, 1440, 1] ![1, 2, 1, 2, 2880] reductionProjection7141 ![reductionProjection3367, reductionProjection7126, reductionProjection3367, reductionProjection7140, reductionProjection987]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7142 : Integer.Sparse (Fin 1613) := [(0, 9), (87, -240), (94, 10), (145, 2880), (169, 1440), (287, 720), (366, 2880), (367, 2880), (426, 5040), (523, 2880), (602, 2880), (638, 1440), (666, 1440), (697, -240), (698, 2960), (828, 1440), (848, -4320), (850, -1440), (853, -1440), (854, -1440), (857, -1440), (865, 720), (875, -1440), (890, 3600), (943, -1440), (955, 720), (956, 720), (1015, 1440), (1016, 1440), (1055, -240), (1058, -480), (1059, 240), (1212, 480), (1219, -480), (1220, 480), (1223, -240), (1226, 1360), (1227, 960), (1251, -415)]

def reductionPivot7142 : Matrix (Fin 6) (Fin 5) ℤ := ![![-2, 0, 0, 1, 1], ![0, -2, 1, 0, 1], ![0, 1, -2, 0, 1], ![0, 1, 1, 0, -2], ![1, 0, 0, -2, 1], ![1, 0, 0, 1, -2]]

theorem reductionSound7142 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3674).moment H =
      Integer.Sparse.eval reductionProjection7142 (momentVector H) := by
  have heq : reductionPivot7142 = (fun u v => (normalNode3674).entries (OAI.MUB6.Certificate.PairSemantics.permutation151 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3674).moment H = injectiveMoment H reductionPivot7142 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3674).entries OAI.MUB6.Certificate.PairSemantics.permutation151)).symm
  have hr := six_row_reduction hH reductionPivot7142 3 0 (by decide)
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![576, 576, 720, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst (splitFirst reductionPivot7142 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (j : Fin 5).succ)) j =
        Integer.Sparse.eval (![reductionProjection5013, reductionProjection5013, reductionProjection7138, reductionProjection7139, reductionProjection7141] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst (splitFirst reductionPivot7142 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (0 : Fin 5).succ) = canonicalInput20567.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7142 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (0 : Fin 5).succ) =
        Integer.Sparse.eval reductionProjection5013 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7142 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (0 : Fin 5).succ) =
          Integer.Sparse.eval reductionProjection5013 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20567 hH))).trans (reductionSound5013 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst (splitFirst reductionPivot7142 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (1 : Fin 5).succ) = canonicalInput20596.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7142 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (1 : Fin 5).succ) =
        Integer.Sparse.eval reductionProjection5013 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7142 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (1 : Fin 5).succ) =
          Integer.Sparse.eval reductionProjection5013 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20596 hH))).trans (reductionSound5013 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst (splitFirst reductionPivot7142 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (2 : Fin 5).succ) = canonicalInput20598.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7142 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (2 : Fin 5).succ) =
        Integer.Sparse.eval reductionProjection7138 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7142 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (2 : Fin 5).succ) =
          Integer.Sparse.eval reductionProjection7138 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20598 hH))).trans (reductionSound7138 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst (splitFirst reductionPivot7142 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (3 : Fin 5).succ) = canonicalInput20599.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7142 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (3 : Fin 5).succ) =
        Integer.Sparse.eval reductionProjection7139 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7142 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (3 : Fin 5).succ) =
          Integer.Sparse.eval reductionProjection7139 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20599 hH))).trans (reductionSound7139 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst (splitFirst reductionPivot7142 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (4 : Fin 5).succ) = canonicalInput20600.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7142 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (4 : Fin 5).succ) =
        Integer.Sparse.eval reductionProjection7141 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7142 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (4 : Fin 5).succ) =
          Integer.Sparse.eval reductionProjection7141 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20600 hH))).trans (reductionSound7141 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3674).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst (splitFirst reductionPivot7142 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (j : Fin 5).succ)) j = 0 := by
    linarith [hr]
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3674).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst (splitFirst reductionPivot7142 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (j : Fin 5).succ))
      1 1440 2880 2 ![576, 576, 720, 1440, 1440] ![5, 5, 4, 2, 2] reductionProjection7142 ![reductionProjection5013, reductionProjection5013, reductionProjection7138, reductionProjection7139, reductionProjection7141]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7143 : Integer.Sparse (Fin 1613) := [(0, -71), (87, 240), (94, -110), (145, -2880), (169, -1440), (287, -360), (365, -5760), (366, -8640), (367, -2880), (426, -9360), (478, -2880), (483, -1440), (489, -1440), (515, -2880), (523, -8640), (524, -2880), (602, -11520), (610, -1440), (618, -1440), (638, -1440), (666, -6480), (668, -1440), (697, 240), (698, -7920), (821, 1440), (823, 2880), (826, 1440), (828, -1440), (829, -2880), (848, 2880), (850, 1440), (853, 1440), (854, 1440), (857, 1440), (865, -2160), (875, 1440), (890, -9360), (903, 2880), (936, 2880), (943, -1440), (952, 2880), (956, -2880), (973, 2880), (986, 2880), (1015, -1440), (1016, -4320), (1055, 1200), (1058, 480), (1059, -1040), (1171, 2880), (1190, 8640), (1212, -480), (1219, 480), (1220, -480), (1223, 240), (1226, -2160), (1227, -2200), (1251, 1705), (1389, 2400)]

def reductionPivot7143 : Matrix (Fin 6) (Fin 6) ℤ := ![![-1, 0, 0, 0, 0, 1], ![-1, 0, 0, 0, 2, -1], ![0, -1, -1, 2, 0, 0], ![0, -1, 2, -1, 0, 0], ![2, 0, 0, 0, -1, -1], ![0, 2, -1, -1, -1, 1]]

theorem reductionSound7143 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8459).moment H =
      Integer.Sparse.eval reductionProjection7143 (momentVector H) := by
  have heq : reductionPivot7143 = (fun u v => (normalNode8459).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation151 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8459).moment H = injectiveMoment H reductionPivot7143 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 6) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode8459).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation151)).trans (injectiveMoment_transpose H (normalNode8459).entries)).symm
  have hshape : reductionPivot7143 0 = Pi.single (5 : Fin 6) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7143 5 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 720, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7143 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection7127, reductionProjection7134, reductionProjection7134, reductionProjection7136, reductionProjection7142] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7143 (0 : Fin 5)) = canonicalInput6928.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7143 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7127 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7143 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7127 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound6928 hH))).trans (reductionSound7127 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7143 (1 : Fin 5)) = canonicalInput20690.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7143 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7134 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7143 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7134 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound20690 hH))).trans (reductionSound7134 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7143 (2 : Fin 5)) = canonicalInput20694.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7143 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7134 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7143 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7134 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound20694 hH))).trans (reductionSound7134 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7143 (3 : Fin 5)) = canonicalInput20695.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7143 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7136 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7143 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7136 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound20695 hH))).trans (reductionSound7136 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7143 (4 : Fin 5)) = canonicalInput20696.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7143 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7142 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7143 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7142 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound20696 hH))).trans (reductionSound7142 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8459).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7143 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8459).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7143 (j : Fin 5)))
      1 1440 1440 1 ![1440, 720, 720, 288, 1440] ![1, 2, 2, 5, 1] reductionProjection7143 ![reductionProjection7127, reductionProjection7134, reductionProjection7134, reductionProjection7136, reductionProjection7142]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7144 : Integer.Sparse (Fin 1613) := [(0, 1), (698, 160), (1226, 80), (1251, -25)]

def reductionPivot7144 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 1, 0, 0, 0], ![0, 0, -2, 1, 1], ![0, 0, 1, -2, 1], ![0, 0, 1, 1, -2], ![1, -1, 0, 0, 0]]

theorem reductionSound7144 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode11165).moment H =
      Integer.Sparse.eval reductionProjection7144 (momentVector H) := by
  have heq : reductionPivot7144 = (fun u v => (normalNode11165).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11165).moment H = injectiveMoment H reductionPivot7144 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11165).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot7144 0 = Pi.single (1 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7144 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7144 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3416, reductionProjection3416, reductionProjection3416, oldProjection44] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7144 (0 : Fin 4)) = canonicalInput22605.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7144 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3416 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7144 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3416 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound22605 hH))).trans (reductionSound3416 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7144 (1 : Fin 4)) = canonicalInput27595.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7144 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3416 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7144 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3416 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound27595 hH))).trans (reductionSound3416 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7144 (2 : Fin 4)) = canonicalInput27600.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7144 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3416 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7144 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3416 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound27600 hH))).trans (reductionSound3416 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7144 (3 : Fin 4)) = canonicalInput27602.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7144 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection44 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7144 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection44 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound27602 hH))).trans (oldProjectionSound44 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11165).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7144 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11165).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7144 (j : Fin 4)))
      2 480 1440 6 ![720, 720, 720, 1] ![2, 2, 2, 1440] reductionProjection7144 ![reductionProjection3416, reductionProjection3416, reductionProjection3416, oldProjection44]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7145 : Integer.Sparse (Fin 1613) := [(0, -1), (698, -160), (821, -240), (848, 360), (943, 720), (1226, -80), (1227, -120), (1251, 25)]

def reductionPivot7145 : Matrix (Fin 6) (Fin 5) ℤ := ![![1, 0, 0, 0, -1], ![-2, 0, 0, 0, 2], ![0, -2, 1, 1, 0], ![0, 1, -2, 1, 0], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1]]

theorem reductionSound7145 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * (normalNode3665).moment H =
      Integer.Sparse.eval reductionProjection7145 (momentVector H) := by
  have heq : reductionPivot7145 = (fun u v => (normalNode3665).entries (OAI.MUB6.Certificate.PairSemantics.permutation258 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3665).moment H = injectiveMoment H reductionPivot7145 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3665).entries OAI.MUB6.Certificate.PairSemantics.permutation258)).symm
  have hshape : reductionPivot7145 0 = Pi.single (0 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7145 0 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![480, 1440, 1440, 1440, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7145 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection7144, reductionProjection7126, reductionProjection7126, reductionProjection7126, reductionProjection6994] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7145 (0 : Fin 5)) = canonicalInput20609.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7145 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7144 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7145 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7144 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20609 hH))).trans (reductionSound7144 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7145 (1 : Fin 5)) = canonicalInput6925.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7145 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7126 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7145 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7126 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6925 hH))).trans (reductionSound7126 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7145 (2 : Fin 5)) = canonicalInput6906.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7145 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7126 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7145 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7126 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6906 hH))).trans (reductionSound7126 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7145 (3 : Fin 5)) = canonicalInput6889.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7145 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7126 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7145 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7126 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6889 hH))).trans (reductionSound7126 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7145 (4 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code821).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7145 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6994 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7145 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6994 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound6994 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3665).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7145 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3665).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7145 (j : Fin 5)))
      1 240 1440 6 ![480, 1440, 1440, 1440, 1] ![3, 1, 1, 1, 1440] reductionProjection7145 ![reductionProjection7144, reductionProjection7126, reductionProjection7126, reductionProjection7126, reductionProjection6994]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7146 : Integer.Sparse (Fin 1613) := [(0, 1), (287, 60), (426, 480), (666, 120), (698, 160), (821, 80), (848, -240), (890, 240), (943, -480), (955, 120), (956, 120), (1015, 240), (1016, 240), (1226, 80), (1227, 60), (1251, -25)]

def reductionPivot7146 : Matrix (Fin 6) (Fin 6) ℤ := ![![0, 1, 0, 0, 0, -1], ![-1, -1, 0, 0, 0, 2], ![0, 0, -1, -1, 2, 0], ![0, 0, -1, 2, -1, 0], ![0, 0, 2, -1, -1, 0], ![1, 0, 0, 0, 0, -1]]

theorem reductionSound7146 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * (normalNode8064).moment H =
      Integer.Sparse.eval reductionProjection7146 (momentVector H) := by
  have heq : reductionPivot7146 = (fun u v => (normalNode8064).entries (OAI.MUB6.Certificate.PairSemantics.permutation258 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8064).moment H = injectiveMoment H reductionPivot7146 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 6) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8064).entries OAI.MUB6.Certificate.PairSemantics.permutation258)).symm
  have hshape : reductionPivot7146 0 = Pi.single (1 : Fin 6) 1 - Pi.single 5 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7146 1 5 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![480, 288, 288, 288, 240] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7146 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection7144, reductionProjection7136, reductionProjection7136, reductionProjection7136, reductionProjection7145] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7146 (0 : Fin 5)) = canonicalInput20552.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7146 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7144 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7146 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7144 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound20552 hH))).trans (reductionSound7144 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7146 (1 : Fin 5)) = canonicalInput15621.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7146 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7136 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7146 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7136 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound15621 hH))).trans (reductionSound7136 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7146 (2 : Fin 5)) = canonicalInput15609.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7146 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7136 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7146 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7136 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound15609 hH))).trans (reductionSound7136 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7146 (3 : Fin 5)) = canonicalInput15604.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7146 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7136 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7146 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7136 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound15604 hH))).trans (reductionSound7136 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7146 (4 : Fin 5)) = canonicalInput15603.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7146 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7145 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7146 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7145 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound15603 hH))).trans (reductionSound7145 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8064).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7146 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8064).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7146 (j : Fin 5)))
      1 80 1440 18 ![480, 288, 288, 288, 240] ![3, 5, 5, 5, 6] reductionProjection7146 ![reductionProjection7144, reductionProjection7136, reductionProjection7136, reductionProjection7136, reductionProjection7145]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7147 : Integer.Sparse (Fin 1613) := [(0, 1), (698, 160), (821, 480), (823, 960), (826, 480), (848, -480), (943, -960), (1226, 80), (1227, 160), (1251, -25)]

def reductionPivot7147 : Matrix (Fin 6) (Fin 6) ℤ := ![![1, -1, 0, 0, 0, 0], ![-1, -1, 0, 0, 0, 2], ![0, 0, -1, -1, 2, 0], ![0, 0, -1, 2, -1, 0], ![0, 0, 2, -1, -1, 0], ![0, 2, 0, 0, 0, -2]]

theorem reductionSound7147 {H : CMatrix} (hH : IsHadamard H) :
    (160 : ℝ) * (normalNode8065).moment H =
      Integer.Sparse.eval reductionProjection7147 (momentVector H) := by
  have heq : reductionPivot7147 = (fun u v => (normalNode8065).entries (OAI.MUB6.Certificate.PairSemantics.permutation308 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8065).moment H = injectiveMoment H reductionPivot7147 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 6) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8065).entries OAI.MUB6.Certificate.PairSemantics.permutation308)).symm
  have hshape : reductionPivot7147 0 = Pi.single (0 : Fin 6) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7147 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1, 1440, 1440, 1440, 240] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7147 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6994, reductionProjection7127, reductionProjection7127, reductionProjection7127, reductionProjection7145] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7147 (0 : Fin 5)) = canonicalInput24026.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7147 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6994 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7147 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6994 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound24026 hH))).trans (reductionSound6994 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7147 (1 : Fin 5)) = canonicalInput15623.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7147 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7127 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7147 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7127 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound15623 hH))).trans (reductionSound7127 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7147 (2 : Fin 5)) = canonicalInput15610.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7147 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7127 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7147 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7127 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound15610 hH))).trans (reductionSound7127 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7147 (3 : Fin 5)) = canonicalInput15605.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7147 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7127 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7147 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7127 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound15605 hH))).trans (reductionSound7127 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7147 (4 : Fin 5)) = canonicalInput15603.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7147 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7145 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7147 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7145 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound15603 hH))).trans (reductionSound7145 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8065).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7147 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8065).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7147 (j : Fin 5)))
      1 160 1440 9 ![1, 1440, 1440, 1440, 240] ![1440, 1, 1, 1, 6] reductionProjection7147 ![reductionProjection6994, reductionProjection7127, reductionProjection7127, reductionProjection7127, reductionProjection7145]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7148 : Integer.Sparse (Fin 1613) := [(0, 31), (87, -120), (94, 55), (145, 1440), (169, 720), (365, 2880), (366, 4320), (367, 1440), (426, 3240), (478, 1440), (483, 720), (489, 720), (515, 1440), (523, 4320), (524, 1440), (602, 5760), (610, 720), (618, 720), (638, 720), (666, 2880), (668, 720), (697, -120), (698, 3240), (821, -1680), (823, -2880), (826, -1440), (828, 720), (829, 1440), (850, -720), (853, -720), (854, -720), (857, -720), (865, 1080), (875, -720), (890, 3960), (903, -1440), (936, -1440), (943, 3600), (952, -1440), (955, -360), (956, 1080), (973, -1440), (986, -1440), (1016, 1440), (1055, -600), (1058, -240), (1059, 520), (1171, -1440), (1190, -4320), (1212, 240), (1219, -240), (1220, 240), (1223, -120), (1226, 720), (1227, 680), (1251, -740), (1389, -1200)]

def reductionPivot7148 : Matrix (Fin 6) (Fin 6) ℤ := ![![-2, 0, 0, 0, 1, 1], ![0, -2, 1, 1, 0, 0], ![0, 1, -2, 1, 0, 0], ![0, 1, 1, -2, 0, 0], ![1, 0, 0, 0, -2, 1], ![1, 0, 0, 0, 1, -2]]

theorem reductionSound7148 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * (normalNode3656).moment H =
      Integer.Sparse.eval reductionProjection7148 (momentVector H) := by
  have heq : reductionPivot7148 = (fun u v => (normalNode3656).entries (OAI.MUB6.Certificate.PairSemantics.permutation151 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3656).moment H = injectiveMoment H reductionPivot7148 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 6) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3656).entries OAI.MUB6.Certificate.PairSemantics.permutation151)).symm
  have hr := six_row_reduction hH reductionPivot7148 4 0 (by decide)
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 80, 160] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst (splitFirst reductionPivot7148 (Pi.single (4 : Fin 6) 1 - Pi.single 0 1)) (j : Fin 5).succ)) j =
        Integer.Sparse.eval (![reductionProjection7143, reductionProjection7143, reductionProjection7143, reductionProjection7146, reductionProjection7147] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst (splitFirst reductionPivot7148 (Pi.single (4 : Fin 6) 1 - Pi.single 0 1)) (0 : Fin 5).succ) = canonicalInput20541.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7148 (Pi.single (4 : Fin 6) 1 - Pi.single 0 1)) (0 : Fin 5).succ) =
        Integer.Sparse.eval reductionProjection7143 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7148 (Pi.single (4 : Fin 6) 1 - Pi.single 0 1)) (0 : Fin 5).succ) =
          Integer.Sparse.eval reductionProjection7143 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound20541 hH))).trans (reductionSound7143 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst (splitFirst reductionPivot7148 (Pi.single (4 : Fin 6) 1 - Pi.single 0 1)) (1 : Fin 5).succ) = canonicalInput20543.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7148 (Pi.single (4 : Fin 6) 1 - Pi.single 0 1)) (1 : Fin 5).succ) =
        Integer.Sparse.eval reductionProjection7143 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7148 (Pi.single (4 : Fin 6) 1 - Pi.single 0 1)) (1 : Fin 5).succ) =
          Integer.Sparse.eval reductionProjection7143 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound20543 hH))).trans (reductionSound7143 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst (splitFirst reductionPivot7148 (Pi.single (4 : Fin 6) 1 - Pi.single 0 1)) (2 : Fin 5).succ) = canonicalInput20544.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7148 (Pi.single (4 : Fin 6) 1 - Pi.single 0 1)) (2 : Fin 5).succ) =
        Integer.Sparse.eval reductionProjection7143 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7148 (Pi.single (4 : Fin 6) 1 - Pi.single 0 1)) (2 : Fin 5).succ) =
          Integer.Sparse.eval reductionProjection7143 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound20544 hH))).trans (reductionSound7143 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst (splitFirst reductionPivot7148 (Pi.single (4 : Fin 6) 1 - Pi.single 0 1)) (3 : Fin 5).succ) = canonicalInput20545.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((80 : ℤ) : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7148 (Pi.single (4 : Fin 6) 1 - Pi.single 0 1)) (3 : Fin 5).succ) =
        Integer.Sparse.eval reductionProjection7146 (momentVector H)
      have hh : (80 : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7148 (Pi.single (4 : Fin 6) 1 - Pi.single 0 1)) (3 : Fin 5).succ) =
          Integer.Sparse.eval reductionProjection7146 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound20545 hH))).trans (reductionSound7146 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst (splitFirst reductionPivot7148 (Pi.single (4 : Fin 6) 1 - Pi.single 0 1)) (4 : Fin 5).succ) = canonicalInput20546.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((160 : ℤ) : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7148 (Pi.single (4 : Fin 6) 1 - Pi.single 0 1)) (4 : Fin 5).succ) =
        Integer.Sparse.eval reductionProjection7147 (momentVector H)
      have hh : (160 : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7148 (Pi.single (4 : Fin 6) 1 - Pi.single 0 1)) (4 : Fin 5).succ) =
          Integer.Sparse.eval reductionProjection7147 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (160 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound20546 hH))).trans (reductionSound7147 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3656).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst (splitFirst reductionPivot7148 (Pi.single (4 : Fin 6) 1 - Pi.single 0 1)) (j : Fin 5).succ)) j = 0 := by
    linarith [hr]
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3656).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst (splitFirst reductionPivot7148 (Pi.single (4 : Fin 6) 1 - Pi.single 0 1)) (j : Fin 5).succ))
      1 240 1440 6 ![1440, 1440, 1440, 80, 160] ![1, 1, 1, 18, 9] reductionProjection7148 ![reductionProjection7143, reductionProjection7143, reductionProjection7143, reductionProjection7146, reductionProjection7147]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7149 : Integer.Sparse (Fin 1613) := [(822, 1)]

theorem reductionSound7149 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code822).moment H =
      Integer.Sparse.eval reductionProjection7149 (momentVector H) := by
  have hc : coordinates (822 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code822) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection7149, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection7150 : Integer.Sparse (Fin 1613) := [(0, -1), (360, -2880), (698, -160), (821, -1440), (822, -1440), (848, 720), (943, 1440), (1226, -80), (1227, -240), (1251, 25)]

def reductionPivot7150 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-2, 0, 0, 1, 1], ![0, -2, 2, 0, 0], ![0, 2, -1, 0, -1], ![1, 0, 0, -2, 1], ![1, 0, 0, 1, -2]]

theorem reductionSound7150 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3677).moment H =
      Integer.Sparse.eval reductionProjection7150 (momentVector H) := by
  have heq : reductionPivot7150 = (fun u v => (normalNode3677).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3677).moment H = injectiveMoment H reductionPivot7150 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3677).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot7150 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7150 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1, 1440, 1, 1, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7150 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3415, reductionProjection7126, reductionProjection6994, reductionProjection3415, reductionProjection7149] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7150 (0 : Fin 5)) = canonicalInput6395.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7150 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3415 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7150 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3415 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6395 hH))).trans (reductionSound3415 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7150 (1 : Fin 5)) = canonicalInput6995.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7150 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7126 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7150 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7126 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6995 hH))).trans (reductionSound7126 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7150 (2 : Fin 5)) = canonicalInput7011.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7150 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6994 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7150 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6994 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound7011 hH))).trans (reductionSound6994 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7150 (3 : Fin 5)) = canonicalInput7012.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7150 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3415 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7150 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3415 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound7012 hH))).trans (reductionSound3415 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7150 (4 : Fin 5)) = canonicalInput7013.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7150 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7149 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7150 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7149 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound7013 hH))).trans (reductionSound7149 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3677).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7150 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3677).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7150 (j : Fin 5)))
      1 1440 1440 1 ![1, 1440, 1, 1, 1] ![1440, 1, 1440, 1440, 1440] reductionProjection7150 ![reductionProjection3415, reductionProjection7126, reductionProjection6994, reductionProjection3415, reductionProjection7149]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7151 : Integer.Sparse (Fin 1613) := [(0, 1), (426, 720), (666, 720), (698, 80), (890, 720), (938, -1440), (979, -1440), (1190, -1440), (1227, -80), (1251, -25)]

def reductionPivot7151 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, -1, 0, 2, 0], ![-1, 2, 0, -1, 0], ![1, -1, 2, 0, -2], ![2, 0, -2, -1, 1]]

theorem reductionSound7151 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode7578).moment H =
      Integer.Sparse.eval reductionProjection7151 (momentVector H) := by
  have heq : reductionPivot7151 = (fun u v => (normalNode7578).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7578).moment H = injectiveMoment H reductionPivot7151 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7578).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode7578).entries)).symm
  have hshape : reductionPivot7151 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7151 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1440, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7151 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3340, reductionProjection3083, oldProjection1996, reductionProjection2688] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7151 (0 : Fin 4)) = canonicalInput3530.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7151 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3340 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7151 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3340 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3530 hH))).trans (reductionSound3340 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7151 (1 : Fin 4)) = canonicalInput17419.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7151 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3083 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7151 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3083 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17419 hH))).trans (reductionSound3083 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7151 (2 : Fin 4)) = canonicalInput17510.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7151 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1996 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7151 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1996 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17510 hH))).trans (oldProjectionSound1996 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7151 (3 : Fin 4)) = canonicalInput17513.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7151 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2688 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7151 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2688 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17513 hH))).trans (reductionSound2688 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7578).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7151 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7578).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7151 (j : Fin 4)))
      2 2880 2880 2 ![1, 1, 1440, 1] ![2880, 2880, 2, 2880] reductionProjection7151 ![reductionProjection3340, reductionProjection3083, oldProjection1996, reductionProjection2688]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7152 : Integer.Sparse (Fin 1613) := [(0, 2), (81, -240), (94, 25), (426, 720), (563, 720), (602, 1440), (636, 720), (666, 720), (698, 880), (890, 720), (1058, -240), (1059, 80), (1226, 400), (1227, 160), (1251, -125), (1389, -240)]

def reductionPivot7152 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, -1, 1], ![-1, -1, -1, 1, 2], ![0, -1, 2, -1, 0], ![0, 2, -1, 0, -1], ![1, 0, 0, 1, -2]]

theorem reductionSound7152 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode7576).moment H =
      Integer.Sparse.eval reductionProjection7152 (momentVector H) := by
  have heq : reductionPivot7152 = (fun u v => (normalNode7576).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7576).moment H = injectiveMoment H reductionPivot7152 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7576).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot7152 0 = Pi.single (4 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7152 4 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1440, 360, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7152 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1655, reductionProjection1137, reductionProjection2187, reductionProjection3501] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7152 (0 : Fin 4)) = canonicalInput14707.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7152 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1655 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7152 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1655 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14707 hH))).trans (oldProjectionSound1655 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7152 (1 : Fin 4)) = canonicalInput14827.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7152 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1137 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7152 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1137 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14827 hH))).trans (reductionSound1137 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7152 (2 : Fin 4)) = canonicalInput14831.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7152 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2187 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7152 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2187 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14831 hH))).trans (reductionSound2187 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7152 (3 : Fin 4)) = canonicalInput14832.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7152 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3501 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7152 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3501 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14832 hH))).trans (reductionSound3501 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7576).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7152 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7576).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7152 (j : Fin 4)))
      2 2880 2880 2 ![72, 1440, 360, 1440] ![40, 2, 8, 2] reductionProjection7152 ![oldProjection1655, reductionProjection1137, reductionProjection2187, reductionProjection3501]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7153 : Integer.Sparse (Fin 1613) := [(0, -3), (81, 240), (94, -25), (361, -2880), (362, -2880), (426, -1440), (518, -2880), (563, -720), (602, -1440), (636, -720), (666, -1440), (698, -960), (890, -1440), (938, 1440), (979, 1440), (1058, 240), (1059, -80), (1190, 1440), (1226, -400), (1227, -80), (1251, 150), (1389, 240)]

def reductionPivot7153 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 1, 0, -1, 0], ![-2, 0, 1, 0, 1], ![0, -1, 0, -1, 2], ![0, -1, 0, 2, -1], ![1, 0, -2, 1, 0], ![1, 1, 1, -1, -2]]

theorem reductionSound7153 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode4138).moment H =
      Integer.Sparse.eval reductionProjection7153 (momentVector H) := by
  have heq : reductionPivot7153 = (fun u v => (normalNode4138).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4138).moment H = injectiveMoment H reductionPivot7153 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4138).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot7153 0 = Pi.single (1 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7153 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1, 2880, 2880, 1, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7153 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4921, reductionProjection7151, reductionProjection7152, reductionProjection3679, reductionProjection3431] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7153 (0 : Fin 5)) = canonicalInput10959.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7153 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4921 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7153 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4921 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound10959 hH))).trans (reductionSound4921 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7153 (1 : Fin 5)) = canonicalInput8122.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7153 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7151 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7153 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7151 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound8122 hH))).trans (reductionSound7151 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7153 (2 : Fin 5)) = canonicalInput8114.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7153 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7152 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7153 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7152 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound8114 hH))).trans (reductionSound7152 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7153 (3 : Fin 5)) = canonicalInput8112.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7153 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3679 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7153 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3679 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound8112 hH))).trans (reductionSound3679 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7153 (4 : Fin 5)) = canonicalInput8110.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7153 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3431 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7153 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3431 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound8110 hH))).trans (reductionSound3431 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4138).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7153 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4138).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7153 (j : Fin 5)))
      1 2880 2880 1 ![1, 2880, 2880, 1, 1] ![2880, 1, 1, 2880, 2880] reductionProjection7153 ![reductionProjection4921, reductionProjection7151, reductionProjection7152, reductionProjection3679, reductionProjection3431]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7154 : Integer.Sparse (Fin 1613) := [(831, 1)]

theorem reductionSound7154 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code831).moment H =
      Integer.Sparse.eval reductionProjection7154 (momentVector H) := by
  have hc : coordinates (831 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code831) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection7154, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection7155 : Integer.Sparse (Fin 1613) := [(0, -19), (94, -10), (362, -2880), (379, -2880), (602, -4320), (635, -1440), (698, -800), (831, -2880), (887, 1440), (890, -1440), (1027, -720), (1059, -240), (1190, 1440), (1221, 480), (1227, -240), (1251, 265), (1389, 480)]

def reductionPivot7155 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 1, 0, 0, -1], ![-2, 0, 0, 1, 1], ![0, -1, -1, 0, 2], ![0, -1, 2, 0, -1], ![1, 0, -1, 1, -1], ![1, 1, 0, -2, 0]]

theorem reductionSound7155 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode3680).moment H =
      Integer.Sparse.eval reductionProjection7155 (momentVector H) := by
  have heq : reductionPivot7155 = (fun u v => (normalNode3680).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3680).moment H = injectiveMoment H reductionPivot7155 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3680).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot7155 0 = Pi.single (1 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7155 1 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1, 2880, 2880, 1, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7155 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection7154, reductionProjection4876, reductionProjection3614, reductionProjection3679, reductionProjection3988] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7155 (0 : Fin 5)) = canonicalInput10849.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7155 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7154 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7155 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7154 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound10849 hH))).trans (reductionSound7154 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7155 (1 : Fin 5)) = canonicalInput7097.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7155 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4876 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7155 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4876 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound7097 hH))).trans (reductionSound4876 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7155 (2 : Fin 5)) = canonicalInput7024.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7155 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3614 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7155 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3614 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound7024 hH))).trans (reductionSound3614 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7155 (3 : Fin 5)) = canonicalInput7020.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7155 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3679 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7155 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3679 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound7020 hH))).trans (reductionSound3679 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7155 (4 : Fin 5)) = canonicalInput7018.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7155 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3988 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7155 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3988 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound7018 hH))).trans (reductionSound3988 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3680).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7155 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3680).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7155 (j : Fin 5)))
      1 2880 2880 1 ![1, 2880, 2880, 1, 1] ![2880, 1, 1, 2880, 2880] reductionProjection7155 ![reductionProjection7154, reductionProjection4876, reductionProjection3614, reductionProjection3679, reductionProjection3988]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7156 : Integer.Sparse (Fin 1613) := [(1228, 1)]

theorem reductionSound7156 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1228).moment H =
      Integer.Sparse.eval reductionProjection7156 (momentVector H) := by
  have hc : coordinates (1228 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1228) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection7156, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection7157 : Integer.Sparse (Fin 1613) := [(0, 1), (478, 720), (556, -1440), (602, 720), (666, 720), (698, 80), (1168, -1440), (1190, -1440), (1227, 160), (1251, -25), (1389, -240)]

def reductionPivot7157 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, -1, 0, 2, 0], ![2, -1, 0, -1, 0], ![-1, 1, 2, 0, -2], ![1, 1, -2, -1, 1]]

theorem reductionSound7157 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode9530).moment H =
      Integer.Sparse.eval reductionProjection7157 (momentVector H) := by
  have heq : reductionPivot7157 = (fun u v => (normalNode9530).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9530).moment H = injectiveMoment H reductionPivot7157 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9530).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode9530).entries)).symm
  have hshape : reductionPivot7157 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7157 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1440, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7157 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4015, reductionProjection3084, oldProjection2225, reductionProjection2688] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7157 (0 : Fin 4)) = canonicalInput3730.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7157 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4015 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7157 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4015 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3730 hH))).trans (reductionSound4015 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7157 (1 : Fin 4)) = canonicalInput17727.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7157 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3084 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7157 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3084 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17727 hH))).trans (reductionSound3084 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7157 (2 : Fin 4)) = canonicalInput17751.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7157 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2225 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7157 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2225 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17751 hH))).trans (oldProjectionSound2225 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7157 (3 : Fin 4)) = canonicalInput17752.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7157 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2688 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7157 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2688 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17752 hH))).trans (reductionSound2688 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9530).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7157 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9530).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7157 (j : Fin 4)))
      2 2880 2880 2 ![1, 1, 1440, 1] ![2880, 2880, 2, 2880] reductionProjection7157 ![reductionProjection4015, reductionProjection3084, oldProjection2225, reductionProjection2688]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7158 : Integer.Sparse (Fin 1613) := [(0, 9), (94, 10), (478, 360), (546, 360), (602, 360), (635, 720), (666, 360), (697, -120), (698, 240), (1027, 360), (1227, 160), (1251, -95), (1389, -480)]

def reductionPivot7158 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, -1, 0, 0, 1], ![-1, -1, -1, 2, 1], ![0, 0, 2, -1, -1], ![0, 1, -1, -1, 1], ![1, 1, 0, 0, -2]]

theorem reductionSound7158 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7636).moment H =
      Integer.Sparse.eval reductionProjection7158 (momentVector H) := by
  have heq : reductionPivot7158 = (fun u v => (normalNode7636).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7636).moment H = injectiveMoment H reductionPivot7158 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7636).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot7158 0 = Pi.single (4 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7158 4 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 360, 1440, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7158 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1733, reductionProjection2120, oldProjection1837, oldProjection2623] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7158 (0 : Fin 4)) = canonicalInput12943.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7158 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1733 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7158 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1733 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12943 hH))).trans (oldProjectionSound1733 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7158 (1 : Fin 4)) = canonicalInput15021.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7158 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2120 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7158 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2120 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15021 hH))).trans (reductionSound2120 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7158 (2 : Fin 4)) = canonicalInput15037.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7158 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1837 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7158 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1837 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15037 hH))).trans (oldProjectionSound1837 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7158 (3 : Fin 4)) = canonicalInput15038.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7158 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2623 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7158 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2623 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15038 hH))).trans (oldProjectionSound2623 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7636).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7158 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7636).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7158 (j : Fin 4)))
      2 1440 1440 2 ![1440, 360, 1440, 360] ![1, 4, 1, 4] reductionProjection7158 ![oldProjection1733, reductionProjection2120, oldProjection1837, oldProjection2623]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7159 : Integer.Sparse (Fin 1613) := [(0, -19), (94, -20), (379, -2880), (478, -1440), (518, -2880), (546, -720), (556, 1440), (602, -1440), (635, -1440), (666, -1440), (697, 240), (698, -560), (1027, -720), (1168, 1440), (1190, 1440), (1227, -480), (1228, -2880), (1251, 215), (1389, 1200)]

def reductionPivot7159 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 1, 0, -1, 0], ![-2, 0, 1, 0, 1], ![0, -1, 0, -1, 2], ![0, -1, 0, 2, -1], ![1, 0, 1, -1, -1], ![1, 1, -2, 1, -1]]

theorem reductionSound7159 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode4139).moment H =
      Integer.Sparse.eval reductionProjection7159 (momentVector H) := by
  have heq : reductionPivot7159 = (fun u v => (normalNode4139).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4139).moment H = injectiveMoment H reductionPivot7159 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4139).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot7159 0 = Pi.single (1 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7159 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1, 2880, 1440, 1, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7159 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection7156, reductionProjection7157, reductionProjection7158, reductionProjection4921, reductionProjection3988] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7159 (0 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1228).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7159 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7156 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7159 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7156 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound7156 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7159 (1 : Fin 5)) = canonicalInput8123.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7159 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7157 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7159 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7157 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound8123 hH))).trans (reductionSound7157 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7159 (2 : Fin 5)) = canonicalInput8115.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7159 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7158 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7159 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7158 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound8115 hH))).trans (reductionSound7158 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7159 (3 : Fin 5)) = canonicalInput8113.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7159 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4921 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7159 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4921 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound8113 hH))).trans (reductionSound4921 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7159 (4 : Fin 5)) = canonicalInput8111.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7159 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3988 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7159 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3988 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound8111 hH))).trans (reductionSound3988 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4139).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7159 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4139).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7159 (j : Fin 5)))
      1 2880 2880 1 ![1, 2880, 1440, 1, 1] ![2880, 1, 2, 2880, 2880] reductionProjection7159 ![reductionProjection7156, reductionProjection7157, reductionProjection7158, reductionProjection4921, reductionProjection3988]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7160 : Integer.Sparse (Fin 1613) := [(0, -33), (81, 240), (94, -50), (426, -720), (478, -720), (546, -720), (563, -720), (602, -4320), (635, -2160), (636, -720), (666, -1440), (697, 240), (698, -1760), (890, -1440), (973, 1440), (1027, -1440), (1058, 240), (1059, -240), (1171, 1440), (1190, 1440), (1221, 240), (1226, -400), (1227, -880), (1251, 495), (1389, 1440)]

def reductionPivot7160 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 1, 0, 0, -1], ![-1, -1, 0, 0, 2], ![0, -1, 1, 1, -1], ![0, 0, -2, 1, 1], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1]]

theorem reductionSound7160 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8185).moment H =
      Integer.Sparse.eval reductionProjection7160 (momentVector H) := by
  have heq : reductionPivot7160 = (fun u v => (normalNode8185).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8185).moment H = injectiveMoment H reductionPivot7160 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8185).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot7160 0 = Pi.single (1 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7160 1 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2880, 720, 1440, 72] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7160 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4912, reductionProjection3164, reductionProjection4881, reductionProjection4789, reductionProjection2832] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7160 (0 : Fin 5)) = canonicalInput20654.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7160 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4912 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7160 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4912 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20654 hH))).trans (reductionSound4912 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7160 (1 : Fin 5)) = canonicalInput16083.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7160 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3164 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7160 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3164 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16083 hH))).trans (reductionSound3164 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7160 (2 : Fin 5)) = (normalNode8202).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7160 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4881 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7160 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4881 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound4881 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7160 (3 : Fin 5)) = (normalNode8190).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7160 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4789 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7160 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4789 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound4789 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7160 (4 : Fin 5)) = canonicalInput15721.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7160 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2832 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7160 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2832 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15721 hH))).trans (reductionSound2832 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8185).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7160 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8185).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7160 (j : Fin 5)))
      1 2880 2880 1 ![1440, 2880, 720, 1440, 72] ![2, 1, 4, 2, 40] reductionProjection7160 ![reductionProjection4912, reductionProjection3164, reductionProjection4881, reductionProjection4789, reductionProjection2832]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7161 : Integer.Sparse (Fin 1613) := [(0, -8), (94, -5), (426, -720), (478, -720), (556, 1440), (602, -2880), (635, -720), (666, -1440), (698, -560), (887, 1440), (890, -1440), (938, 1440), (973, 1440), (979, 1440), (1059, -80), (1168, 1440), (1171, 1440), (1190, 2880), (1221, 240), (1227, 80), (1251, 135), (1389, 480)]

def reductionPivot7161 : Matrix (Fin 6) (Fin 5) ℤ := ![![1, 0, 0, -1, 0], ![-1, 0, 0, -1, 2], ![0, -2, 1, 0, 1], ![0, 0, 0, 2, -2], ![0, 1, -2, 1, 0], ![0, 1, 1, -1, -1]]

theorem reductionSound7161 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10389).moment H =
      Integer.Sparse.eval reductionProjection7161 (momentVector H) := by
  have heq : reductionPivot7161 = (fun u v => (normalNode10389).entries (OAI.MUB6.Certificate.PairSemantics.permutation308 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10389).moment H = injectiveMoment H reductionPivot7161 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10389).entries OAI.MUB6.Certificate.PairSemantics.permutation308)).symm
  have hshape : reductionPivot7161 0 = Pi.single (0 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7161 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1, 2880, 72, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7161 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2688, reductionProjection7157, reductionProjection2832, reductionProjection3614, reductionProjection7151] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7161 (0 : Fin 5)) = canonicalInput30111.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7161 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2688 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7161 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2688 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound30111 hH))).trans (reductionSound2688 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7161 (1 : Fin 5)) = canonicalInput20530.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7161 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7157 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7161 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7157 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20530 hH))).trans (reductionSound7157 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7161 (2 : Fin 5)) = canonicalInput20434.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7161 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2832 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7161 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2832 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20434 hH))).trans (reductionSound2832 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7161 (3 : Fin 5)) = canonicalInput20433.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7161 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3614 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7161 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3614 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20433 hH))).trans (reductionSound3614 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7161 (4 : Fin 5)) = canonicalInput20432.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7161 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7151 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7161 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7151 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20432 hH))).trans (reductionSound7151 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode10389).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7161 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10389).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7161 (j : Fin 5)))
      1 2880 2880 1 ![1, 2880, 72, 2880, 2880] ![2880, 1, 40, 1, 1] reductionProjection7161 ![reductionProjection2688, reductionProjection7157, reductionProjection2832, reductionProjection3614, reductionProjection7151]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7162 : Integer.Sparse (Fin 1613) := [(0, 41), (81, -240), (94, 55), (361, 1440), (362, 2880), (379, 2880), (426, 1440), (478, 1440), (518, 2880), (546, 720), (556, -1440), (563, 720), (602, 7200), (635, 2880), (636, 720), (666, 2880), (697, -240), (698, 2320), (831, 1440), (887, -1440), (890, 2880), (938, -1440), (973, -1440), (979, -1440), (1027, 1440), (1058, -240), (1059, 320), (1168, -1440), (1171, -1440), (1190, -4320), (1221, -480), (1226, 400), (1227, 800), (1228, 1440), (1251, -630), (1389, -1920)]

def reductionPivot7162 : Matrix (Fin 6) (Fin 5) ℤ := ![![-2, 0, 0, 1, 1], ![0, -1, -1, 1, 1], ![0, -1, 2, -1, 0], ![0, 2, -1, 0, -1], ![1, 0, 0, -2, 1], ![1, 0, 0, 1, -2]]

theorem reductionSound7162 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3683).moment H =
      Integer.Sparse.eval reductionProjection7162 (momentVector H) := by
  have heq : reductionPivot7162 = (fun u v => (normalNode3683).entries (OAI.MUB6.Certificate.PairSemantics.permutation151 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3683).moment H = injectiveMoment H reductionPivot7162 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3683).entries OAI.MUB6.Certificate.PairSemantics.permutation151)).symm
  have hr := six_row_reduction hH reductionPivot7162 3 0 (by decide)
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 2880, 2880, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst (splitFirst reductionPivot7162 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (j : Fin 5).succ)) j =
        Integer.Sparse.eval (![reductionProjection7153, reductionProjection7155, reductionProjection7159, reductionProjection7160, reductionProjection7161] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst (splitFirst reductionPivot7162 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (0 : Fin 5).succ) = canonicalInput20575.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7162 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (0 : Fin 5).succ) =
        Integer.Sparse.eval reductionProjection7153 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7162 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (0 : Fin 5).succ) =
          Integer.Sparse.eval reductionProjection7153 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20575 hH))).trans (reductionSound7153 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst (splitFirst reductionPivot7162 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (1 : Fin 5).succ) = canonicalInput20620.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7162 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (1 : Fin 5).succ) =
        Integer.Sparse.eval reductionProjection7155 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7162 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (1 : Fin 5).succ) =
          Integer.Sparse.eval reductionProjection7155 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20620 hH))).trans (reductionSound7155 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst (splitFirst reductionPivot7162 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (2 : Fin 5).succ) = canonicalInput20621.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7162 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (2 : Fin 5).succ) =
        Integer.Sparse.eval reductionProjection7159 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7162 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (2 : Fin 5).succ) =
          Integer.Sparse.eval reductionProjection7159 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20621 hH))).trans (reductionSound7159 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst (splitFirst reductionPivot7162 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (3 : Fin 5).succ) = canonicalInput20622.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7162 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (3 : Fin 5).succ) =
        Integer.Sparse.eval reductionProjection7160 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7162 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (3 : Fin 5).succ) =
          Integer.Sparse.eval reductionProjection7160 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20622 hH))).trans (reductionSound7160 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst (splitFirst reductionPivot7162 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (4 : Fin 5).succ) = canonicalInput20623.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7162 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (4 : Fin 5).succ) =
        Integer.Sparse.eval reductionProjection7161 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot7162 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (4 : Fin 5).succ) =
          Integer.Sparse.eval reductionProjection7161 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20623 hH))).trans (reductionSound7161 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3683).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst (splitFirst reductionPivot7162 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (j : Fin 5).succ)) j = 0 := by
    linarith [hr]
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3683).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst (splitFirst reductionPivot7162 (Pi.single (3 : Fin 5) 1 - Pi.single 0 1)) (j : Fin 5).succ))
      1 1440 2880 2 ![2880, 2880, 2880, 2880, 2880] ![1, 1, 1, 1, 1] reductionProjection7162 ![reductionProjection7153, reductionProjection7155, reductionProjection7159, reductionProjection7160, reductionProjection7161]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7163 : Integer.Sparse (Fin 1613) := [(0, 1), (602, 720), (636, 360), (698, 160), (890, 180), (1026, 360), (1226, 80), (1227, 60), (1251, -25)]

def reductionPivot7163 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, 1, -1], ![-1, -1, -1, 1, 2], ![0, -1, 2, 0, -1], ![0, 2, -1, 0, -1], ![1, 0, 0, -2, 1]]

theorem reductionSound7163 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode7583).moment H =
      Integer.Sparse.eval reductionProjection7163 (momentVector H) := by
  have heq : reductionPivot7163 = (fun u v => (normalNode7583).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7583).moment H = injectiveMoment H reductionPivot7163 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7583).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot7163 0 = Pi.single (3 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7163 3 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 1440, 1440, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7163 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2187, reductionProjection2046, reductionProjection2046, reductionProjection3416] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7163 (0 : Fin 4)) = canonicalInput15024.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7163 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2187 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7163 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2187 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15024 hH))).trans (reductionSound2187 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7163 (1 : Fin 4)) = canonicalInput14843.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7163 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2046 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7163 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2046 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14843 hH))).trans (reductionSound2046 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7163 (2 : Fin 4)) = canonicalInput14839.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7163 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2046 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7163 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2046 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14839 hH))).trans (reductionSound2046 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7163 (3 : Fin 4)) = canonicalInput14838.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7163 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3416 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7163 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3416 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14838 hH))).trans (reductionSound3416 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7583).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7163 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7583).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7163 (j : Fin 4)))
      2 720 1440 4 ![360, 1440, 1440, 720] ![4, 1, 1, 2] reductionProjection7163 ![reductionProjection2187, reductionProjection2046, reductionProjection2046, reductionProjection3416]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7164 : Integer.Sparse (Fin 1613) := [(0, -1), (169, -144), (602, -576), (635, -288), (636, -288), (638, -288), (698, -160), (848, 144), (890, -72), (943, 288), (1026, -144), (1027, -144), (1226, -80), (1227, -24), (1251, 25)]

def reductionPivot7164 : Matrix (Fin 6) (Fin 5) ℤ := ![![-1, 0, 0, 1, 0], ![0, -1, -1, 0, 2], ![0, -1, 2, 0, -1], ![0, 0, 0, 1, -1], ![0, 2, -1, 0, -1], ![1, 0, 0, -2, 1]]

theorem reductionSound7164 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode10745).moment H =
      Integer.Sparse.eval reductionProjection7164 (momentVector H) := by
  have heq : reductionPivot7164 = (fun u v => (normalNode10745).entries (OAI.MUB6.Certificate.PairSemantics.permutation151 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10745).moment H = injectiveMoment H reductionPivot7164 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10745).entries OAI.MUB6.Certificate.PairSemantics.permutation151)).symm
  have hshape : reductionPivot7164 0 = Pi.single (3 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7164 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 720, 1440, 720, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7164 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection7163, reductionProjection4868, reductionProjection7126, reductionProjection4868, reductionProjection3416] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7164 (0 : Fin 5)) = (normalNode7583).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7164 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7163 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7164 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7163 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound7163 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7164 (1 : Fin 5)) = canonicalInput24650.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7164 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4868 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7164 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4868 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24650 hH))).trans (reductionSound4868 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7164 (2 : Fin 5)) = canonicalInput24659.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7164 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7126 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7164 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7126 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24659 hH))).trans (reductionSound7126 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7164 (3 : Fin 5)) = canonicalInput24661.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7164 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4868 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7164 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4868 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24661 hH))).trans (reductionSound4868 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7164 (4 : Fin 5)) = canonicalInput24662.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7164 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3416 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7164 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3416 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24662 hH))).trans (reductionSound3416 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode10745).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7164 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10745).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7164 (j : Fin 5)))
      1 288 1440 5 ![720, 720, 1440, 720, 720] ![2, 2, 1, 2, 2] reductionProjection7164 ![reductionProjection7163, reductionProjection4868, reductionProjection7126, reductionProjection4868, reductionProjection3416]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7165 : Integer.Sparse (Fin 1613) := [(0, -1), (269, -360), (362, -720), (602, -540), (636, -180), (698, -80), (848, 180), (888, 360), (890, -180), (1026, -180), (1226, -40), (1227, -20), (1251, 15)]

def reductionPivot7165 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 1, 0, 0, -1], ![-2, 0, 0, 1, 1], ![0, -1, -1, 0, 2], ![0, -1, 2, 0, -1], ![1, 0, 0, -2, 1], ![1, 1, -1, 1, -2]]

theorem reductionSound7165 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode3681).moment H =
      Integer.Sparse.eval reductionProjection7165 (momentVector H) := by
  have heq : reductionPivot7165 = (fun u v => (normalNode3681).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3681).moment H = injectiveMoment H reductionPivot7165 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3681).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot7165 0 = Pi.single (1 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7165 1 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1, 720, 720, 1, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7165 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3679, reductionProjection7163, reductionProjection2188, reductionProjection3679, reductionProjection2069] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7165 (0 : Fin 5)) = canonicalInput10850.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7165 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3679 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7165 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3679 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound10850 hH))).trans (reductionSound3679 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7165 (1 : Fin 5)) = canonicalInput7098.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7165 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7163 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7165 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7163 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound7098 hH))).trans (reductionSound7163 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7165 (2 : Fin 5)) = canonicalInput7025.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7165 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2188 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7165 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2188 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound7025 hH))).trans (reductionSound2188 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7165 (3 : Fin 5)) = canonicalInput7021.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7165 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3679 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7165 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3679 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound7021 hH))).trans (reductionSound3679 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7165 (4 : Fin 5)) = canonicalInput7019.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7165 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2069 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7165 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2069 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound7019 hH))).trans (reductionSound2069 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3681).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7165 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3681).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7165 (j : Fin 5)))
      1 360 720 2 ![1, 720, 720, 1, 1] ![720, 1, 1, 720, 720] reductionProjection7165 ![reductionProjection3679, reductionProjection7163, reductionProjection2188, reductionProjection3679, reductionProjection2069]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7166 : Integer.Sparse (Fin 1613) := [(81, -12), (94, 1), (228, -12), (287, 18), (426, 36), (698, 20), (1058, -12), (1223, -12), (1226, 12), (1227, 10), (1251, -1)]

def reductionPivot7166 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, 0, 0, -1], ![-1, -1, 0, 0, 2], ![0, 0, -2, 1, 1], ![0, 0, 1, -2, 1], ![1, 0, 1, 1, -3]]

theorem reductionSound7166 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode8241).moment H =
      Integer.Sparse.eval reductionProjection7166 (momentVector H) := by
  have heq : reductionPivot7166 = (fun u v => (normalNode8241).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8241).moment H = injectiveMoment H reductionPivot7166 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8241).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot7166 0 = Pi.single (1 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7166 1 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 72, 72, 18] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7166 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection945, oldProjection1655, oldProjection1655, oldProjection1580] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7166 (0 : Fin 4)) = canonicalInput20660.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7166 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection945 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7166 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection945 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20660 hH))).trans (oldProjectionSound945 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7166 (1 : Fin 4)) = canonicalInput16143.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7166 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1655 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7166 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1655 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16143 hH))).trans (oldProjectionSound1655 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7166 (2 : Fin 4)) = canonicalInput15772.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7166 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1655 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7166 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1655 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15772 hH))).trans (oldProjectionSound1655 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7166 (3 : Fin 4)) = canonicalInput15759.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7166 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1580 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7166 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1580 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15759 hH))).trans (oldProjectionSound1580 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8241).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7166 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8241).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7166 (j : Fin 4)))
      2 72 72 2 ![9, 72, 72, 18] ![8, 1, 1, 4] reductionProjection7166 ![oldProjection945, oldProjection1655, oldProjection1655, oldProjection1580]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7167 : Integer.Sparse (Fin 1613) := [(0, -1), (81, 480), (94, -40), (228, 240), (287, -360), (426, -1440), (666, -720), (697, 240), (698, -1200), (848, 720), (890, -720), (1058, 480), (1059, -160), (1212, -480), (1220, -480), (1221, 240), (1223, 240), (1226, -480), (1227, -440), (1251, 185), (1389, 480)]

def reductionPivot7167 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 1, 0, 0, -1], ![-1, -1, 0, 0, 2], ![0, 0, -2, 1, 1], ![0, 0, 1, -2, 1], ![0, 0, 1, 1, -2], ![1, 0, 0, 0, -1]]

theorem reductionSound7167 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8236).moment H =
      Integer.Sparse.eval reductionProjection7167 (momentVector H) := by
  have heq : reductionPivot7167 = (fun u v => (normalNode8236).entries (OAI.MUB6.Certificate.PairSemantics.permutation258 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8236).moment H = injectiveMoment H reductionPivot7167 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8236).entries OAI.MUB6.Certificate.PairSemantics.permutation258)).symm
  have hshape : reductionPivot7167 0 = Pi.single (1 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7167 1 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 2880, 2880, 72, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7167 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3416, reductionProjection3164, reductionProjection3164, reductionProjection7166, reductionProjection3506] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7167 (0 : Fin 5)) = canonicalInput20659.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7167 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3416 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7167 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3416 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20659 hH))).trans (reductionSound3416 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7167 (1 : Fin 5)) = canonicalInput16142.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7167 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3164 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7167 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3164 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16142 hH))).trans (reductionSound3164 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7167 (2 : Fin 5)) = canonicalInput15771.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7167 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3164 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7167 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3164 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15771 hH))).trans (reductionSound3164 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7167 (3 : Fin 5)) = canonicalInput15757.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7167 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7166 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7167 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7166 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15757 hH))).trans (reductionSound7166 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7167 (4 : Fin 5)) = (normalNode8238).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7167 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3506 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7167 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3506 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound3506 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8236).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7167 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8236).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7167 (j : Fin 5)))
      1 1440 2880 2 ![720, 2880, 2880, 72, 720] ![4, 1, 1, 40, 4] reductionProjection7167 ![reductionProjection3416, reductionProjection3164, reductionProjection3164, reductionProjection7166, reductionProjection3506]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

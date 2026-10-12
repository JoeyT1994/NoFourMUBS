import NoFourMUBs.Step2.SOS.Canonical089
import NoFourMUBs.Step2.SOS.Canonical144
import NoFourMUBs.Step2.SOS.Canonical167
import NoFourMUBs.Step2.SOS.Canonical168
import NoFourMUBs.Step2.SOS.Canonical169
import NoFourMUBs.Step2.SOS.Canonical170
import NoFourMUBs.Step2.SOS.Canonical173
import NoFourMUBs.Step2.SOS.Canonical188
import NoFourMUBs.Step2.SOS.Canonical190
import NoFourMUBs.Step2.SOS.Canonical292
import NoFourMUBs.Step2.SOS.Canonical293
import NoFourMUBs.Step2.SOS.Canonical328
import NoFourMUBs.Step2.SOS.Canonical336
import NoFourMUBs.Step2.SOS.Canonical337
import NoFourMUBs.Step2.SOS.Canonical356
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections009
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections020
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections030
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions005
import NoFourMUBs.Step2.SOS.Reductions007
import NoFourMUBs.Step2.SOS.Reductions008
import NoFourMUBs.Step2.SOS.Reductions012
import NoFourMUBs.Step2.SOS.Reductions018
import NoFourMUBs.Step2.SOS.Reductions030
import NoFourMUBs.Step2.SOS.Reductions061
import NoFourMUBs.Step2.SOS.Reductions062
import NoFourMUBs.Step2.SOS.Reductions082
import NoFourMUBs.Step2.SOS.Reductions084
import NoFourMUBs.Step2.SOS.Reductions085
import NoFourMUBs.Step2.SOS.Reductions095
import NoFourMUBs.Step2.SOS.Reductions111
import NoFourMUBs.Step2.SOS.Reductions181
import NoFourMUBs.Step2.SOS.Reductions201
import NoFourMUBs.Step2.SOS.Reductions224
import NoFourMUBs.Step2.SOS.Reductions228
import NoFourMUBs.Step2.SOS.Reductions244
import NoFourMUBs.Step2.SOS.Reductions247
import NoFourMUBs.Step2.SOS.Reductions255
import NoFourMUBs.Step2.SOS.Reductions257
import NoFourMUBs.Step2.SOS.Reductions258
import NoFourMUBs.Step2.SOS.Reductions259
import NoFourMUBs.Step2.SOS.Reductions281
import NoFourMUBs.Step2.SOS.Reductions285
import NoFourMUBs.Step2.SOS.Reductions287
import NoFourMUBs.Step2.SOS.Reductions289
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical149
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical150
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical151
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical152
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical230
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection9280 : Integer.Sparse (Fin 1613) := [(285, -1), (728, -1), (775, -1), (1196, -1)]

def reductionPivot9280 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, 0, 1], ![0, 0, 2, -2], ![0, 1, -4, 3], ![2, -2, 1, -1]]

theorem reductionSound9280 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode5520).moment H =
      Integer.Sparse.eval reductionProjection9280 (momentVector H) := by
  have heq : reductionPivot9280 = (fun u v => (normalNode5520).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5520).moment H = injectiveMoment H reductionPivot9280 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5520).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9280 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9280 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9280 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection448, reductionProjection9211, oldProjection588, reductionProjection6459] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9280 (0 : Fin 4)) = canonicalInput11106.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9280 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection448 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9280 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection448 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11106 hH))).trans (oldProjectionSound448 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9280 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1196).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9280 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9211 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9280 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9211 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9211 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9280 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4808 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9280 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection588 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9280 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection588 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4808 hH))).trans (oldProjectionSound588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9280 (3 : Fin 4)) = canonicalInput10725.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9280 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6459 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9280 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6459 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10725 hH))).trans (reductionSound6459 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5520).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9280 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5520).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9280 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection9280 ![oldProjection448, reductionProjection9211, oldProjection588, reductionProjection6459]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9281 : Integer.Sparse (Fin 1613) := [(229, 1), (728, -3), (1042, 1), (1047, 2), (1055, 1), (1058, 2), (1060, 2)]

def reductionPivot9281 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, 0, 1], ![0, 0, 1, -1], ![0, 1, -4, 3], ![2, -2, 2, -2]]

theorem reductionSound9281 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode5514).moment H =
      Integer.Sparse.eval reductionProjection9281 (momentVector H) := by
  have heq : reductionPivot9281 = (fun u v => (normalNode5514).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5514).moment H = injectiveMoment H reductionPivot9281 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5514).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9281 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9281 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 3, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9281 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection895, reductionProjection6459, oldProjection1319, reductionProjection9274] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9281 (0 : Fin 4)) = canonicalInput11100.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9281 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection895 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9281 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection895 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11100 hH))).trans (oldProjectionSound895 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9281 (1 : Fin 4)) = canonicalInput10725.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9281 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6459 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9281 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6459 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10725 hH))).trans (reductionSound6459 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9281 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4793 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9281 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1319 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9281 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1319 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4793 hH))).trans (oldProjectionSound1319 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9281 (3 : Fin 4)) = canonicalInput10701.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9281 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9274 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9281 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9274 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10701 hH))).trans (reductionSound9274 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5514).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9281 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5514).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9281 (j : Fin 4)))
      2 6 6 2 ![3, 1, 3, 3] ![2, 6, 2, 2] reductionProjection9281 ![oldProjection895, reductionProjection6459, oldProjection1319, reductionProjection9274]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9282 : Integer.Sparse (Fin 1613) := [(0, -1), (81, -720), (94, 5), (229, -720), (285, 2160), (698, 240), (728, 2160), (775, 2160), (1040, -240), (1042, -240), (1047, -720), (1055, -720), (1058, -1440), (1060, -720), (1196, 1440), (1227, 240), (1251, -70)]

def reductionPivot9282 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, 0, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -4, 3], ![2, -2, 1, -1]]

theorem reductionSound9282 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5510).moment H =
      Integer.Sparse.eval reductionProjection9282 (momentVector H) := by
  have heq : reductionPivot9282 = (fun u v => (normalNode5510).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5510).moment H = injectiveMoment H reductionPivot9282 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5510).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9282 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9282 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2, 2, 288, 6] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9282 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2278, reductionProjection9280, reductionProjection9280, reductionProjection2710, reductionProjection9281] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9282 (0 : Fin 5)) = canonicalInput11096.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9282 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2278 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9282 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2278 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11096 hH))).trans (oldProjectionSound2278 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9282 (1 : Fin 5)) = canonicalInput10720.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9282 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9280 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9282 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9280 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10720 hH))).trans (reductionSound9280 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9282 (2 : Fin 5)) = (normalNode5520).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9282 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9280 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9282 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9280 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9280 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9282 (3 : Fin 5)) = (normalNode5516).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9282 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2710 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9282 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2710 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2710 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9282 (4 : Fin 5)) = (normalNode5514).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9282 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9281 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9282 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9281 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9281 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5510).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9282 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5510).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9282 (j : Fin 5)))
      1 1440 1440 1 ![1440, 2, 2, 288, 6] ![1, 720, 720, 5, 240] reductionProjection9282 ![oldProjection2278, reductionProjection9280, reductionProjection9280, reductionProjection2710, reductionProjection9281]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9283 : Integer.Sparse (Fin 1613) := [(0, 3), (81, -240), (94, 5), (423, 720), (698, 240), (775, 720), (865, 720), (1047, -80), (1052, -80), (1055, -240), (1058, -240), (1059, 80), (1197, 480), (1227, 160), (1251, -10)]

def reductionPivot9283 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, 0, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -3, 2], ![2, -2, 0, 0]]

theorem reductionSound9283 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode5511).moment H =
      Integer.Sparse.eval reductionProjection9283 (momentVector H) := by
  have heq : reductionPivot9283 = (fun u v => (normalNode5511).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5511).moment H = injectiveMoment H reductionPivot9283 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5511).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9283 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9283 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2, 2, 144, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9283 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1654, reductionProjection2649, reductionProjection2649, oldProjection2013, reductionProjection2710] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9283 (0 : Fin 5)) = canonicalInput11097.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9283 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1654 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9283 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1654 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11097 hH))).trans (oldProjectionSound1654 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9283 (1 : Fin 5)) = canonicalInput10721.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9283 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2649 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9283 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2649 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10721 hH))).trans (reductionSound2649 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9283 (2 : Fin 5)) = (normalNode5522).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9283 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2649 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9283 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2649 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2649 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9283 (3 : Fin 5)) = canonicalInput10693.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9283 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2013 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9283 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2013 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10693 hH))).trans (oldProjectionSound2013 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9283 (4 : Fin 5)) = (normalNode5516).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9283 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2710 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9283 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2710 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2710 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5511).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9283 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5511).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9283 (j : Fin 5)))
      1 480 1440 3 ![1440, 2, 2, 144, 288] ![1, 720, 720, 10, 5] reductionProjection9283 ![oldProjection1654, reductionProjection2649, reductionProjection2649, oldProjection2013, reductionProjection2710]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9284 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 3), (668, 108), (697, -12), (698, 52), (761, 72), (865, 108), (1055, -12), (1059, 24), (1221, -36), (1227, 28)]

def reductionPivot9284 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, 0, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -2, 1], ![2, -2, -1, 1]]

theorem reductionSound9284 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode5512).moment H =
      Integer.Sparse.eval reductionProjection9284 (momentVector H) := by
  have heq : reductionPivot9284 = (fun u v => (normalNode5512).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5512).moment H = injectiveMoment H reductionPivot9284 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5512).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9284 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9284 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 720, 1440, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9284 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1835, reductionProjection5795, reductionProjection5795, oldProjection1785, oldProjection2013] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9284 (0 : Fin 5)) = canonicalInput11098.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9284 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1835 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9284 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1835 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11098 hH))).trans (oldProjectionSound1835 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9284 (1 : Fin 5)) = canonicalInput10722.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9284 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5795 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9284 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5795 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10722 hH))).trans (reductionSound5795 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9284 (2 : Fin 5)) = (normalNode5524).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9284 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5795 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9284 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5795 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5795 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9284 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4788 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9284 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1785 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9284 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1785 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4788 hH))).trans (oldProjectionSound1785 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9284 (4 : Fin 5)) = canonicalInput10693.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9284 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2013 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9284 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2013 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10693 hH))).trans (oldProjectionSound2013 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5512).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9284 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5512).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9284 (j : Fin 5)))
      1 72 1440 20 ![1440, 720, 720, 1440, 144] ![1, 2, 2, 1, 10] reductionProjection9284 ![oldProjection1835, reductionProjection5795, reductionProjection5795, oldProjection1785, oldProjection2013]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9285 : Integer.Sparse (Fin 1613) := [(0, 1), (426, 720), (698, 160), (890, 360), (1198, 240), (1219, -80), (1226, 80), (1227, -40), (1251, -25)]

def reductionPivot9285 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, 0, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -2, 0, 1], ![1, 1, -3, 1]]

theorem reductionSound9285 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * (normalNode5513).moment H =
      Integer.Sparse.eval reductionProjection9285 (momentVector H) := by
  have heq : reductionPivot9285 = (fun u v => (normalNode5513).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5513).moment H = injectiveMoment H reductionPivot9285 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5513).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9285 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9285 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![36, 2, 2, 36, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9285 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2064, reductionProjection8175, reductionProjection8175, oldProjection2064, oldProjection2087] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9285 (0 : Fin 5)) = canonicalInput11099.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9285 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2064 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9285 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2064 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11099 hH))).trans (oldProjectionSound2064 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9285 (1 : Fin 5)) = canonicalInput10723.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9285 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8175 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9285 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8175 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10723 hH))).trans (reductionSound8175 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9285 (2 : Fin 5)) = (normalNode5525).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9285 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8175 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9285 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8175 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8175 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9285 (3 : Fin 5)) = canonicalInput10696.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9285 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2064 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9285 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2064 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10696 hH))).trans (oldProjectionSound2064 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9285 (4 : Fin 5)) = canonicalInput10695.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9285 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2087 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9285 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2087 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10695 hH))).trans (oldProjectionSound2087 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5513).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9285 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5513).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9285 (j : Fin 5)))
      1 240 720 3 ![36, 2, 2, 36, 720] ![20, 360, 360, 20, 1] reductionProjection9285 ![oldProjection2064, reductionProjection8175, reductionProjection8175, oldProjection2064, oldProjection2087]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9286 : Integer.Sparse (Fin 1613) := [(0, 23), (19, -20), (20, 5), (81, -240), (94, -20), (243, 80), (434, 1440), (698, 640), (775, 720), (957, 1440), (1047, -240), (1055, -480), (1058, -720), (1204, 2880), (1226, 320), (1227, 480), (1251, -260)]

def reductionPivot9286 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, 0, 1], ![0, 0, 1, -1], ![0, 1, -3, 2], ![1, -1, 0, 0], ![1, -1, 1, -1]]

theorem reductionSound9286 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5515).moment H =
      Integer.Sparse.eval reductionProjection9286 (momentVector H) := by
  have heq : reductionPivot9286 = (fun u v => (normalNode5515).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5515).moment H = injectiveMoment H reductionPivot9286 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5515).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9286 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9286 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 2, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9286 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1649, reductionProjection2655, oldProjection2057, reductionProjection7809, reductionProjection7298] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9286 (0 : Fin 5)) = canonicalInput11101.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9286 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1649 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9286 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1649 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11101 hH))).trans (oldProjectionSound1649 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9286 (1 : Fin 5)) = (normalNode5536).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9286 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2655 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9286 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2655 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2655 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9286 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4794 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9286 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2057 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9286 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2057 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4794 hH))).trans (oldProjectionSound2057 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9286 (3 : Fin 5)) = (normalNode5530).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9286 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7809 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9286 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7809 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7809 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9286 (4 : Fin 5)) = (normalNode5529).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9286 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7298 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9286 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7298 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7298 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5515).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9286 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5515).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9286 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 2, 288] ![1, 1, 1, 720, 5] reductionProjection9286 ![oldProjection1649, reductionProjection2655, oldProjection2057, reductionProjection7809, reductionProjection7298]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9287 : Integer.Sparse (Fin 1613) := [(0, 41), (94, 10), (483, 360), (610, 720), (617, 360), (698, 240), (957, 360), (1055, -240), (1195, -720), (1227, 520), (1251, -235), (1389, -240)]

def reductionPivot9287 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, 0, 1], ![0, 0, 1, -1], ![0, 1, -2, 1], ![1, -1, -1, 1], ![1, -1, 1, -1]]

theorem reductionSound9287 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode5517).moment H =
      Integer.Sparse.eval reductionProjection9287 (momentVector H) := by
  have heq : reductionPivot9287 = (fun u v => (normalNode5517).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5517).moment H = injectiveMoment H reductionPivot9287 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5517).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9287 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9287 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9287 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3580, reductionProjection3062, oldProjection2071, oldProjection2057, reductionProjection7199] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9287 (0 : Fin 5)) = canonicalInput11103.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9287 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3580 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9287 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3580 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11103 hH))).trans (reductionSound3580 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9287 (1 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1195).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9287 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3062 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9287 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3062 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3062 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9287 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4797 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9287 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2071 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9287 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2071 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4797 hH))).trans (oldProjectionSound2071 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9287 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4794 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9287 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2057 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9287 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2057 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4794 hH))).trans (oldProjectionSound2057 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9287 (4 : Fin 5)) = (normalNode5531).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9287 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7199 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9287 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7199 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7199 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5517).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9287 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5517).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9287 (j : Fin 5)))
      1 720 1440 2 ![288, 1, 1440, 1440, 1440] ![5, 1440, 1, 1, 1] reductionProjection9287 ![reductionProjection3580, reductionProjection3062, oldProjection2071, oldProjection2057, reductionProjection7199]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9288 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (94, 10), (418, -720), (698, -80), (1058, 480), (1206, -720), (1223, 240), (1226, -80), (1251, 45)]

def reductionPivot9288 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 1, 0, 1], ![0, 0, 2, -2], ![1, -1, -3, 3], ![1, -1, 1, -1]]

theorem reductionSound9288 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5537).moment H =
      Integer.Sparse.eval reductionProjection9288 (momentVector H) := by
  have heq : reductionPivot9288 = (fun u v => (normalNode5537).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5537).moment H = injectiveMoment H reductionPivot9288 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5537).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9288 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9288 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9288 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection471, reductionProjection1964, oldProjection1347, oldProjection1329] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9288 (0 : Fin 4)) = canonicalInput12174.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9288 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection471 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9288 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection471 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12174 hH))).trans (oldProjectionSound471 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9288 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1206).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9288 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1964 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9288 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1964 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1964 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9288 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4821 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9288 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1347 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9288 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1347 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4821 hH))).trans (oldProjectionSound1347 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9288 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4819 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9288 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1329 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9288 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1329 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4819 hH))).trans (oldProjectionSound1329 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5537).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9288 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5537).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9288 (j : Fin 4)))
      2 1440 1440 2 ![1, 1, 720, 144] ![1440, 1440, 2, 10] reductionProjection9288 ![oldProjection471, reductionProjection1964, oldProjection1347, oldProjection1329]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9289 : Integer.Sparse (Fin 1613) := [(0, 12), (19, -20), (20, 5), (94, -25), (243, 320), (418, 720), (483, 1440), (610, 1440), (682, -480), (698, 880), (704, 80), (1022, 1440), (1058, -480), (1206, 1440), (1217, -240), (1221, -480), (1223, -240), (1225, 80), (1226, 640), (1227, 560), (1251, -210), (1321, -240), (1389, -480)]

def reductionPivot9289 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, 0, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, -3, 3], ![1, -1, 1, -1]]

theorem reductionSound9289 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5518).moment H =
      Integer.Sparse.eval reductionProjection9289 (momentVector H) := by
  have heq : reductionPivot9289 = (fun u v => (normalNode5518).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5518).moment H = injectiveMoment H reductionPivot9289 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5518).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9289 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9289 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 2, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9289 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2285, reductionProjection9288, reductionProjection1965, oldProjection1819, reductionProjection1999] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9289 (0 : Fin 5)) = canonicalInput11104.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9289 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2285 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9289 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2285 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11104 hH))).trans (oldProjectionSound2285 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9289 (1 : Fin 5)) = (normalNode5537).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9289 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9288 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9289 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9288 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9288 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9289 (2 : Fin 5)) = (normalNode5534).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9289 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1965 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9289 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1965 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1965 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9289 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4798 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9289 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1819 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9289 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1819 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4798 hH))).trans (oldProjectionSound1819 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9289 (4 : Fin 5)) = (normalNode5533).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9289 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1999 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9289 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1999 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5518).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9289 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5518).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9289 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 2, 1440, 1440] ![5, 1, 720, 1, 1] reductionProjection9289 ![oldProjection2285, reductionProjection9288, reductionProjection1965, oldProjection1819, reductionProjection1999]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9290 : Integer.Sparse (Fin 1613) := [(0, 9), (19, -20), (20, 5), (94, -100), (153, 720), (243, 240), (483, 1440), (610, 1440), (694, -240), (698, 480), (704, 80), (1022, 1440), (1047, -480), (1055, -480), (1058, -720), (1060, -240), (1206, 1440), (1223, -240), (1225, 80), (1226, 320), (1227, 320), (1251, -190)]

def reductionPivot9290 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, 0, 1], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, -1, -3, 3], ![1, -1, 0, 0]]

theorem reductionSound9290 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5519).moment H =
      Integer.Sparse.eval reductionProjection9290 (momentVector H) := by
  have heq : reductionPivot9290 = (fun u v => (normalNode5519).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5519).moment H = injectiveMoment H reductionPivot9290 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5519).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9290 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9290 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 1440, 1440, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9290 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2284, reductionProjection9139, reductionProjection8227, oldProjection1745, reductionProjection1965] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9290 (0 : Fin 5)) = canonicalInput11105.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9290 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2284 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9290 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2284 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11105 hH))).trans (oldProjectionSound2284 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9290 (1 : Fin 5)) = (normalNode5538).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9290 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9139 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9290 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9139 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9139 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9290 (2 : Fin 5)) = (normalNode5535).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9290 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8227 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9290 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8227 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8227 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9290 (3 : Fin 5)) = canonicalInput10709.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9290 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1745 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9290 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1745 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10709 hH))).trans (oldProjectionSound1745 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9290 (4 : Fin 5)) = (normalNode5534).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9290 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1965 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9290 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1965 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1965 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5519).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9290 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5519).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9290 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 1440, 1440, 2] ![5, 1, 1, 1, 720] reductionProjection9290 ![oldProjection2284, reductionProjection9139, reductionProjection8227, oldProjection1745, reductionProjection1965]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9291 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -20), (20, 5), (94, -15), (241, 40), (243, 120), (423, 360), (698, 320), (700, 40), (775, 720), (865, 360), (1047, -120), (1055, -120), (1058, -360), (1059, 40), (1197, 360), (1204, 720), (1226, 240), (1227, 80), (1251, -5)]

def reductionPivot9291 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, 0, 1], ![0, 0, 2, -2], ![0, 1, -3, 2], ![1, -1, 0, 0], ![1, -1, 0, 0]]

theorem reductionSound9291 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode5521).moment H =
      Integer.Sparse.eval reductionProjection9291 (momentVector H) := by
  have heq : reductionPivot9291 = (fun u v => (normalNode5521).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5521).moment H = injectiveMoment H reductionPivot9291 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5521).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9291 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9291 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 144, 144, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9291 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1646, reductionProjection2720, oldProjection2013, reductionProjection2655, reductionProjection2655] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9291 (0 : Fin 5)) = canonicalInput11107.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9291 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1646 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9291 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1646 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11107 hH))).trans (oldProjectionSound1646 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9291 (1 : Fin 5)) = (normalNode5541).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9291 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2720 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9291 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2720 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2720 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9291 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4809 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9291 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2013 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9291 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2013 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4809 hH))).trans (oldProjectionSound2013 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9291 (3 : Fin 5)) = canonicalInput10726.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9291 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2655 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9291 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2655 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10726 hH))).trans (reductionSound2655 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9291 (4 : Fin 5)) = (normalNode5536).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9291 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2655 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9291 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2655 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2655 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5521).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9291 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5521).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9291 (j : Fin 5)))
      1 720 1440 2 ![720, 144, 144, 1440, 1440] ![2, 10, 10, 1, 1] reductionProjection9291 ![oldProjection1646, reductionProjection2720, oldProjection2013, reductionProjection2655, reductionProjection2655]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9292 : Integer.Sparse (Fin 1613) := [(0, 28), (94, -5), (483, 720), (610, 720), (668, 720), (698, 720), (700, 80), (761, 720), (865, 720), (1055, -480), (1059, 240), (1195, -1440), (1219, -240), (1221, -240), (1227, 560), (1251, -165), (1389, -240)]

def reductionPivot9292 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, 0, 1], ![0, 0, 2, -2], ![0, 1, -2, 1], ![1, -1, -1, 1], ![1, -1, 0, 0]]

theorem reductionSound9292 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5523).moment H =
      Integer.Sparse.eval reductionProjection9292 (momentVector H) := by
  have heq : reductionPivot9292 = (fun u v => (normalNode5523).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5523).moment H = injectiveMoment H reductionPivot9292 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5523).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9292 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9292 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![360, 1440, 1440, 144, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9292 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1994, reductionProjection179, oldProjection2018, oldProjection2013, reductionProjection3062] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9292 (0 : Fin 5)) = canonicalInput11109.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9292 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1994 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9292 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1994 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11109 hH))).trans (oldProjectionSound1994 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9292 (1 : Fin 5)) = (normalNode5543).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9292 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection179 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9292 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection179 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound179 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9292 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4813 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9292 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2018 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9292 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2018 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4813 hH))).trans (oldProjectionSound2018 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9292 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4809 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9292 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2013 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9292 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2013 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4809 hH))).trans (oldProjectionSound2013 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9292 (4 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1195).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9292 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3062 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9292 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3062 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3062 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5523).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9292 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5523).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9292 (j : Fin 5)))
      1 1440 1440 1 ![360, 1440, 1440, 144, 1] ![4, 1, 1, 10, 1440] reductionProjection9292 ![oldProjection1994, reductionProjection179, oldProjection2018, oldProjection2013, reductionProjection3062]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9293 : Integer.Sparse (Fin 1613) := [(4, -1), (20, 8), (94, 17), (106, -16), (243, -32), (1042, 48), (1047, 48), (1060, 48), (1202, -144), (1225, -32), (1226, -16)]

def reductionPivot9293 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, 0, 1], ![0, 1, -4, 3], ![1, -1, 0, 0], ![1, -1, 3, -3]]

theorem reductionSound9293 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5526).moment H =
      Integer.Sparse.eval reductionProjection9293 (momentVector H) := by
  have heq : reductionPivot9293 = (fun u v => (normalNode5526).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5526).moment H = injectiveMoment H reductionPivot9293 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5526).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9293 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9293 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9293 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1343, oldProjection1365, reductionProjection9214, reductionProjection9187] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9293 (0 : Fin 4)) = canonicalInput11115.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9293 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1343 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9293 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1343 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11115 hH))).trans (oldProjectionSound1343 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9293 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4833 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9293 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1365 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9293 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1365 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4833 hH))).trans (oldProjectionSound1365 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9293 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1202).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9293 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9214 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9293 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9214 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9214 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9293 (3 : Fin 4)) = canonicalInput10767.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9293 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9187 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9293 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9187 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10767 hH))).trans (reductionSound9187 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5526).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9293 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5526).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9293 (j : Fin 4)))
      2 288 288 2 ![144, 144, 1, 144] ![2, 2, 288, 2] reductionProjection9293 ![oldProjection1343, oldProjection1365, reductionProjection9214, reductionProjection9187]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9294 : Integer.Sparse (Fin 1613) := [(20, -1), (94, 8), (243, -16), (483, -144), (1047, 48), (1148, -144), (1206, -144), (1226, -16), (1251, 1)]

def reductionPivot9294 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, 0, 1], ![0, 1, -3, 2], ![1, -1, -1, 1], ![1, -1, 3, -3]]

theorem reductionSound9294 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5528).moment H =
      Integer.Sparse.eval reductionProjection9294 (momentVector H) := by
  have heq : reductionPivot9294 = (fun u v => (normalNode5528).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5528).moment H = injectiveMoment H reductionPivot9294 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5528).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9294 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9294 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9294 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1964, oldProjection487, oldProjection1365, reductionProjection9011] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9294 (0 : Fin 4)) = canonicalInput11121.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9294 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1964 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9294 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1964 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11121 hH))).trans (reductionSound1964 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9294 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4837 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9294 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection487 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9294 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection487 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4837 hH))).trans (oldProjectionSound487 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9294 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4833 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9294 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1365 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9294 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1365 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4833 hH))).trans (oldProjectionSound1365 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9294 (3 : Fin 4)) = canonicalInput10774.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9294 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9011 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9294 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9011 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10774 hH))).trans (reductionSound9011 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5528).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9294 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5528).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9294 (j : Fin 4)))
      2 288 288 2 ![1, 1, 144, 1] ![288, 288, 2, 288] reductionProjection9294 ![reductionProjection1964, oldProjection487, oldProjection1365, reductionProjection9011]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9295 : Integer.Sparse (Fin 1613) := [(20, -1), (94, -1), (106, 8), (243, 8), (1209, -24), (1225, 16)]

def reductionPivot9295 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -1, 2, 0], ![1, -3, -1, 3], ![1, 4, -1, -4]]

theorem reductionSound9295 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode9358).moment H =
      Integer.Sparse.eval reductionProjection9295 (momentVector H) := by
  have heq : reductionPivot9295 = (fun u v => (normalNode9358).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9358).moment H = injectiveMoment H reductionPivot9295 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9358).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9358).entries)).symm
  have hshape : reductionPivot9295 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot9295 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 48, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9295 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection9149, reductionProjection8306, oldProjection221] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9295 (0 : Fin 3)) = canonicalInput5747.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9295 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection9149 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9295 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection9149 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5747 hH))).trans (reductionSound9149 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9295 (1 : Fin 3)) = canonicalInput18738.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9295 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection8306 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9295 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection8306 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18738 hH))).trans (reductionSound8306 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9295 (2 : Fin 3)) = canonicalInput18774.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9295 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection221 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9295 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection221 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18774 hH))).trans (oldProjectionSound221 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9358).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9295 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9358).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9295 (j : Fin 3)))
      3 72 144 6 ![1, 48, 48] ![144, 3, 3] reductionProjection9295 ![reductionProjection9149, reductionProjection8306, oldProjection221]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9296 : Integer.Sparse (Fin 1613) := [(94, 1), (106, -1), (243, -6), (682, 3), (698, -1), (1209, 3), (1217, 6), (1225, -4), (1226, -4)]

def reductionPivot9296 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, 0, 1], ![0, 1, -1, 0], ![1, -1, -3, 3], ![1, -1, 3, -3]]

theorem reductionSound9296 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode5532).moment H =
      Integer.Sparse.eval reductionProjection9296 (momentVector H) := by
  have heq : reductionPivot9296 = (fun u v => (normalNode5532).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5532).moment H = injectiveMoment H reductionPivot9296 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5532).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9296 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9296 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 72, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9296 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1998, reductionProjection1998, oldProjection1093, reductionProjection9295] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9296 (0 : Fin 4)) = canonicalInput11130.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9296 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1998 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9296 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1998 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11130 hH))).trans (reductionSound1998 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9296 (1 : Fin 4)) = canonicalInput10796.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9296 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1998 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9296 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1998 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10796 hH))).trans (reductionSound1998 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9296 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4840 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9296 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1093 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9296 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1093 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4840 hH))).trans (oldProjectionSound1093 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9296 (3 : Fin 4)) = canonicalInput10788.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9296 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9295 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9296 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9295 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10788 hH))).trans (reductionSound9295 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5532).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9296 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5532).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9296 (j : Fin 4)))
      2 18 144 16 ![144, 144, 72, 72] ![1, 1, 2, 2] reductionProjection9296 ![reductionProjection1998, reductionProjection1998, oldProjection1093, reductionProjection9295]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9297 : Integer.Sparse (Fin 1613) := [(20, -2), (94, -9), (243, -80), (700, -32), (1044, 48), (1060, 48), (1217, 48), (1225, -32), (1226, -16), (1251, -3)]

def reductionPivot9297 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 1, 0, 1], ![0, 0, 3, -3], ![1, -1, -3, 3], ![1, -1, 0, 0]]

theorem reductionSound9297 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5545).moment H =
      Integer.Sparse.eval reductionProjection9297 (momentVector H) := by
  have heq : reductionPivot9297 = (fun u v => (normalNode5545).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5545).moment H = injectiveMoment H reductionPivot9297 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5545).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9297 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9297 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9297 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1375, oldProjection1343, oldProjection1355, reductionProjection7907] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9297 (0 : Fin 4)) = canonicalInput12176.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9297 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1375 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9297 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1375 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12176 hH))).trans (oldProjectionSound1375 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9297 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4848 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9297 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1343 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9297 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1343 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4848 hH))).trans (oldProjectionSound1343 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9297 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4829 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9297 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1355 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9297 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1355 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4829 hH))).trans (oldProjectionSound1355 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9297 (3 : Fin 4)) = canonicalInput10747.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9297 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7907 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9297 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7907 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10747 hH))).trans (reductionSound7907 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5545).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9297 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5545).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9297 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 72] ![2, 2, 2, 4] reductionProjection9297 ![oldProjection1375, oldProjection1343, oldProjection1355, reductionProjection7907]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9298 : Integer.Sparse (Fin 1613) := [(19, 4), (20, 8), (94, 5), (243, -16), (244, -16), (1148, -144), (1199, -144), (1214, 48), (1251, -3)]

def reductionPivot9298 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 1, 0, 1], ![0, 0, 4, -4], ![0, 1, -3, 2], ![1, -1, -1, 1]]

theorem reductionSound9298 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5547).moment H =
      Integer.Sparse.eval reductionProjection9298 (momentVector H) := by
  have heq : reductionPivot9298 = (fun u v => (normalNode5547).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5547).moment H = injectiveMoment H reductionPivot9298 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5547).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot9298 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9298 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9298 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1228, reductionProjection9011, oldProjection1353, reductionProjection9147] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9298 (0 : Fin 4)) = canonicalInput21010.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9298 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1228 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9298 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1228 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21010 hH))).trans (oldProjectionSound1228 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9298 (1 : Fin 4)) = canonicalInput10843.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9298 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9011 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9298 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9011 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10843 hH))).trans (reductionSound9011 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9298 (2 : Fin 4)) = canonicalInput10761.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9298 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1353 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9298 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1353 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10761 hH))).trans (oldProjectionSound1353 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9298 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1199).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9298 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9147 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9298 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9147 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9147 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5547).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9298 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5547).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9298 (j : Fin 4)))
      2 288 288 2 ![144, 1, 144, 1] ![2, 288, 2, 288] reductionProjection9298 ![oldProjection1228, reductionProjection9011, oldProjection1353, reductionProjection9147]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9299 : Integer.Sparse (Fin 1613) := [(1271, 1)]

theorem reductionSound9299 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1271).moment H =
      Integer.Sparse.eval reductionProjection9299 (momentVector H) := by
  have hc : coordinates (1271 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1271) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection9299, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection9300 : Integer.Sparse (Fin 1613) := [(94, -1), (243, -8), (244, -8), (1061, 24), (1207, -72), (1214, 48), (1251, -1), (1271, -72)]

def reductionPivot9300 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 1, 0, 1], ![0, 0, 4, -4], ![1, -1, -2, 2], ![1, -1, -1, 1]]

theorem reductionSound9300 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode5549).moment H =
      Integer.Sparse.eval reductionProjection9300 (momentVector H) := by
  have heq : reductionPivot9300 = (fun u v => (normalNode5549).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5549).moment H = injectiveMoment H reductionPivot9300 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5549).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9300 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9300 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9300 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection9299, oldProjection693, oldProjection1353, oldProjection1338] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9300 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1271).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9300 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9299 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9300 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9299 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9299 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9300 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node693⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9300 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection693 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9300 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection693 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound693 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9300 (2 : Fin 4)) = canonicalInput10761.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9300 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1353 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9300 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1353 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10761 hH))).trans (oldProjectionSound1353 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9300 (3 : Fin 4)) = canonicalInput10758.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9300 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1338 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9300 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1338 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10758 hH))).trans (oldProjectionSound1338 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5549).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9300 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5549).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9300 (j : Fin 4)))
      2 144 144 2 ![1, 1, 144, 144] ![144, 144, 1, 1] reductionProjection9300 ![reductionProjection9299, oldProjection693, oldProjection1353, oldProjection1338]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9301 : Integer.Sparse (Fin 1613) := [(87, 3), (698, -8), (1055, 3), (1212, -6), (1219, 6), (1226, -4), (1227, -4), (1251, 1)]

def reductionPivot9301 : Matrix (Fin 6) (Fin 3) ℤ := ![![-1, 0, 1], ![-2, 1, 1], ![0, -1, 1], ![1, -2, 1], ![1, 1, -2], ![1, 1, -2]]

theorem reductionSound9301 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode5569).moment H =
      Integer.Sparse.eval reductionProjection9301 (momentVector H) := by
  have heq : reductionPivot9301 = (fun u v => (normalNode5569).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5569).moment H = injectiveMoment H reductionPivot9301 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5569).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9301 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9301 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![6, 1, 240, 480, 480] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9301 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection384, reductionProjection2692, oldProjection703, oldProjection710, oldProjection710] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9301 (0 : Fin 5)) = (normalNode215).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9301 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection384 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9301 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection384 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound384 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9301 (1 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1212).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9301 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2692 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9301 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2692 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound2692 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9301 (2 : Fin 5)) = canonicalInput10907.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9301 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection703 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9301 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection703 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10907 hH))).trans (oldProjectionSound703 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9301 (3 : Fin 5)) = canonicalInput10913.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9301 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection710 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9301 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection710 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10913 hH))).trans (oldProjectionSound710 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9301 (4 : Fin 5)) = canonicalInput10915.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9301 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection710 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9301 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection710 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10915 hH))).trans (oldProjectionSound710 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5569).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9301 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5569).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9301 (j : Fin 5)))
      1 6 480 80 ![6, 1, 240, 480, 480] ![80, 480, 2, 1, 1] reductionProjection9301 ![reductionProjection384, reductionProjection2692, oldProjection703, oldProjection710, oldProjection710]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9302 : Integer.Sparse (Fin 1613) := [(0, 1), (80, -240), (698, -80), (1055, 120), (1212, -240), (1219, 120), (1220, -480), (1227, -80), (1251, 15)]

def reductionPivot9302 : Matrix (Fin 6) (Fin 3) ℤ := ![![-1, 0, 1], ![-2, 1, 1], ![0, 2, -2], ![1, -2, 1], ![1, -2, 1], ![1, 1, -2]]

theorem reductionSound9302 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * (normalNode5570).moment H =
      Integer.Sparse.eval reductionProjection9302 (momentVector H) := by
  have heq : reductionPivot9302 = (fun u v => (normalNode5570).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5570).moment H = injectiveMoment H reductionPivot9302 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5570).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9302 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9302 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1, 1, 1, 1, 240] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9302 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection385, reductionProjection2692, reductionProjection968, reductionProjection968, oldProjection703] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9302 (0 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code80).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9302 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection385 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9302 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection385 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound385 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9302 (1 : Fin 5)) = canonicalInput10887.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9302 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2692 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9302 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2692 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10887 hH))).trans (reductionSound2692 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9302 (2 : Fin 5)) = canonicalInput10919.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9302 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection968 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9302 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection968 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10919 hH))).trans (reductionSound968 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9302 (3 : Fin 5)) = canonicalInput10921.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9302 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection968 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9302 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection968 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10921 hH))).trans (reductionSound968 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9302 (4 : Fin 5)) = canonicalInput10922.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9302 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection703 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9302 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection703 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10922 hH))).trans (oldProjectionSound703 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5570).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9302 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5570).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9302 (j : Fin 5)))
      1 240 240 1 ![1, 1, 1, 1, 240] ![240, 240, 240, 240, 1] reductionProjection9302 ![reductionProjection385, reductionProjection2692, reductionProjection968, reductionProjection968, oldProjection703]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9303 : Integer.Sparse (Fin 1613) := [(0, -1), (14, 120), (80, 480), (87, -240), (698, 480), (1055, -240), (1212, 480), (1219, -480), (1220, 480), (1226, 240), (1227, 320), (1251, -55)]

def reductionPivot9303 : Matrix (Fin 6) (Fin 3) ℤ := ![![-2, 1, 1], ![-2, 1, 1], ![1, -2, 1], ![1, -2, 1], ![1, 1, -2], ![1, 1, -2]]

theorem reductionSound9303 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * (normalNode5550).moment H =
      Integer.Sparse.eval reductionProjection9303 (momentVector H) := by
  have heq : reductionPivot9303 = (fun u v => (normalNode5550).entries (OAI.MUB6.Certificate.PairSemantics.permutation151 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5550).moment H = injectiveMoment H reductionPivot9303 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5550).entries OAI.MUB6.Certificate.PairSemantics.permutation151)).symm
  have hr := six_row_reduction hH reductionPivot9303 1 0 (by decide)
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![3, 6, 6, 240, 240] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst (splitFirst reductionPivot9303 (Pi.single (1 : Fin 3) 1 - Pi.single 0 1)) (j : Fin 5).succ)) j =
        Integer.Sparse.eval (![reductionProjection386, reductionProjection9301, reductionProjection9301, reductionProjection9302, reductionProjection9302] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst (splitFirst reductionPivot9303 (Pi.single (1 : Fin 3) 1 - Pi.single 0 1)) (0 : Fin 5).succ) = canonicalInput21558.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot9303 (Pi.single (1 : Fin 3) 1 - Pi.single 0 1)) (0 : Fin 5).succ) =
        Integer.Sparse.eval reductionProjection386 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot9303 (Pi.single (1 : Fin 3) 1 - Pi.single 0 1)) (0 : Fin 5).succ) =
          Integer.Sparse.eval reductionProjection386 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21558 hH))).trans (reductionSound386 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst (splitFirst reductionPivot9303 (Pi.single (1 : Fin 3) 1 - Pi.single 0 1)) (1 : Fin 5).succ) = canonicalInput21561.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot9303 (Pi.single (1 : Fin 3) 1 - Pi.single 0 1)) (1 : Fin 5).succ) =
        Integer.Sparse.eval reductionProjection9301 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot9303 (Pi.single (1 : Fin 3) 1 - Pi.single 0 1)) (1 : Fin 5).succ) =
          Integer.Sparse.eval reductionProjection9301 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21561 hH))).trans (reductionSound9301 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst (splitFirst reductionPivot9303 (Pi.single (1 : Fin 3) 1 - Pi.single 0 1)) (2 : Fin 5).succ) = canonicalInput21565.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot9303 (Pi.single (1 : Fin 3) 1 - Pi.single 0 1)) (2 : Fin 5).succ) =
        Integer.Sparse.eval reductionProjection9301 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot9303 (Pi.single (1 : Fin 3) 1 - Pi.single 0 1)) (2 : Fin 5).succ) =
          Integer.Sparse.eval reductionProjection9301 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21565 hH))).trans (reductionSound9301 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst (splitFirst reductionPivot9303 (Pi.single (1 : Fin 3) 1 - Pi.single 0 1)) (3 : Fin 5).succ) = canonicalInput21566.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot9303 (Pi.single (1 : Fin 3) 1 - Pi.single 0 1)) (3 : Fin 5).succ) =
        Integer.Sparse.eval reductionProjection9302 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot9303 (Pi.single (1 : Fin 3) 1 - Pi.single 0 1)) (3 : Fin 5).succ) =
          Integer.Sparse.eval reductionProjection9302 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21566 hH))).trans (reductionSound9302 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst (splitFirst reductionPivot9303 (Pi.single (1 : Fin 3) 1 - Pi.single 0 1)) (4 : Fin 5).succ) = canonicalInput21567.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot9303 (Pi.single (1 : Fin 3) 1 - Pi.single 0 1)) (4 : Fin 5).succ) =
        Integer.Sparse.eval reductionProjection9302 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst (splitFirst reductionPivot9303 (Pi.single (1 : Fin 3) 1 - Pi.single 0 1)) (4 : Fin 5).succ) =
          Integer.Sparse.eval reductionProjection9302 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21567 hH))).trans (reductionSound9302 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5550).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst (splitFirst reductionPivot9303 (Pi.single (1 : Fin 3) 1 - Pi.single 0 1)) (j : Fin 5).succ)) j = 0 := by
    linarith [hr]
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5550).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst (splitFirst reductionPivot9303 (Pi.single (1 : Fin 3) 1 - Pi.single 0 1)) (j : Fin 5).succ))
      1 120 240 2 ![3, 6, 6, 240, 240] ![80, 40, 40, 1, 1] reductionProjection9303 ![reductionProjection386, reductionProjection9301, reductionProjection9301, reductionProjection9302, reductionProjection9302]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9304 : Integer.Sparse (Fin 1613) := [(3, -1), (19, -1), (20, -1), (94, -1), (106, 4), (243, 4), (703, 4), (1209, -12), (1225, 4)]

def reductionPivot9304 : Matrix (Fin 5) (Fin 3) ℤ := ![![1, -1, 0], ![-2, 1, 1], ![-1, -3, 4], ![1, 0, -1], ![1, 3, -4]]

theorem reductionSound9304 {H : CMatrix} (hH : IsHadamard H) :
    (24 : ℝ) * (normalNode5551).moment H =
      Integer.Sparse.eval reductionProjection9304 (momentVector H) := by
  have heq : reductionPivot9304 = (fun u v => (normalNode5551).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5551).moment H = injectiveMoment H reductionPivot9304 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5551).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9304 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9304 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![24, 48, 1, 48] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9304 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection231, reductionProjection8306, reductionProjection9149, oldProjection82] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9304 (0 : Fin 4)) = canonicalInput21571.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9304 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection231 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9304 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection231 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21571 hH))).trans (reductionSound231 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9304 (1 : Fin 4)) = (normalNode5583).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9304 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8306 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9304 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8306 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound8306 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9304 (2 : Fin 4)) = canonicalInput10864.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9304 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9149 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9304 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9149 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10864 hH))).trans (reductionSound9149 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9304 (3 : Fin 4)) = canonicalInput10863.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9304 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection82 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9304 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection82 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10863 hH))).trans (oldProjectionSound82 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5551).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9304 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5551).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9304 (j : Fin 4)))
      2 24 48 4 ![24, 48, 1, 48] ![2, 1, 48, 1] reductionProjection9304 ![reductionProjection231, reductionProjection8306, reductionProjection9149, oldProjection82]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9305 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 2), (94, 3), (100, -48), (704, 16), (1040, -48), (1223, -48), (1251, 1)]

def reductionPivot9305 : Matrix (Fin 5) (Fin 3) ℤ := ![![1, 0, -1], ![-2, 1, 1], ![-1, -2, 3], ![1, -2, 1], ![1, 3, -4]]

theorem reductionSound9305 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode5556).moment H =
      Integer.Sparse.eval reductionProjection9305 (momentVector H) := by
  have heq : reductionPivot9305 = (fun u v => (normalNode5556).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5556).moment H = injectiveMoment H reductionPivot9305 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5556).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot9305 0 = Pi.single (0 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9305 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![48, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9305 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection245, oldProjection225, oldProjection191, reductionProjection576] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9305 (0 : Fin 4)) = canonicalInput22812.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9305 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection245 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9305 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection245 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound22812 hH))).trans (oldProjectionSound245 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9305 (1 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node225⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9305 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection225 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9305 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection225 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound225 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9305 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4864 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9305 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection191 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9305 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection191 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4864 hH))).trans (oldProjectionSound191 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9305 (3 : Fin 4)) = canonicalInput10868.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9305 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection576 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9305 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection576 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10868 hH))).trans (reductionSound576 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5556).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9305 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5556).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9305 (j : Fin 4)))
      2 96 96 2 ![48, 1, 1, 1] ![2, 96, 96, 96] reductionProjection9305 ![oldProjection245, oldProjection225, oldProjection191, reductionProjection576]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9306 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 28), (20, -3), (37, 48), (94, 5), (100, 48), (104, -16), (105, -16), (106, -16), (108, -16), (241, -16), (243, -80), (682, 48), (698, -16), (703, -16), (704, -48), (1040, 96), (1209, 48), (1223, 48), (1225, -32), (1226, -16), (1251, -4)]

def reductionPivot9306 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-2, 1, 1], ![-1, -2, 3], ![1, -1, 0], ![1, 0, -1], ![1, 3, -4]]

theorem reductionSound9306 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode5552).moment H =
      Integer.Sparse.eval reductionProjection9306 (momentVector H) := by
  have heq : reductionPivot9306 = (fun u v => (normalNode5552).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5552).moment H = injectiveMoment H reductionPivot9306 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5552).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9306 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9306 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 24, 96, 96, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9306 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection256, reductionProjection9304, reductionProjection9305, oldProjection694, oldProjection532] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9306 (0 : Fin 5)) = canonicalInput9248.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9306 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection256 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9306 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection256 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9248 hH))).trans (reductionSound256 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9306 (1 : Fin 5)) = (normalNode5551).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9306 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9304 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9306 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9304 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9304 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9306 (2 : Fin 5)) = (normalNode5556).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9306 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9305 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9306 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9305 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9305 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9306 (3 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node694⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9306 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection694 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9306 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection694 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound694 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9306 (4 : Fin 5)) = canonicalInput10869.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9306 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection532 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9306 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection532 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10869 hH))).trans (oldProjectionSound532 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5552).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9306 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5552).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9306 (j : Fin 5)))
      1 96 96 1 ![96, 24, 96, 96, 96] ![1, 4, 1, 1, 1] reductionProjection9306 ![reductionProjection256, reductionProjection9304, reductionProjection9305, oldProjection694, oldProjection532]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9307 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 80), (20, -15), (72, 240), (81, 240), (94, 35), (243, -400), (682, 480), (698, -320), (700, -240), (704, -240), (1040, 240), (1225, -80), (1226, -240), (1251, -5)]

def reductionPivot9307 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, 1, -1], ![-2, 1, 1], ![-1, -2, 3], ![1, -1, 0], ![1, -1, 0], ![1, 2, -3]]

theorem reductionSound9307 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode5553).moment H =
      Integer.Sparse.eval reductionProjection9307 (momentVector H) := by
  have heq : reductionPivot9307 = (fun u v => (normalNode5553).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5553).moment H = injectiveMoment H reductionPivot9307 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5553).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9307 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9307 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![48, 480, 96, 96, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9307 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection354, oldProjection374, oldProjection532, oldProjection532, oldProjection694] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9307 (0 : Fin 5)) = canonicalInput12091.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9307 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection354 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9307 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection354 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12091 hH))).trans (oldProjectionSound354 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9307 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4876 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9307 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection374 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9307 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection374 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4876 hH))).trans (oldProjectionSound374 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9307 (2 : Fin 5)) = canonicalInput10870.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9307 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection532 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9307 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection532 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10870 hH))).trans (oldProjectionSound532 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9307 (3 : Fin 5)) = canonicalInput10869.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9307 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection532 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9307 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection532 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10869 hH))).trans (oldProjectionSound532 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9307 (4 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node694⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9307 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection694 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9307 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection694 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound694 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5553).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9307 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5553).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9307 (j : Fin 5)))
      1 480 480 1 ![48, 480, 96, 96, 96] ![10, 1, 5, 5, 5] reductionProjection9307 ![oldProjection354, oldProjection374, oldProjection532, oldProjection532, oldProjection694]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9308 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -4), (84, 96), (94, 5), (243, -96), (682, 96), (698, -16), (700, -16), (704, -16), (1040, 48), (1052, 48), (1217, 96), (1225, -16), (1226, -64), (1251, 5)]

def reductionPivot9308 : Matrix (Fin 6) (Fin 3) ℤ := ![![1, -1, 0], ![-2, 1, 1], ![-1, -2, 3], ![0, 3, -3], ![1, -1, 0], ![1, 0, -1]]

theorem reductionSound9308 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode5554).moment H =
      Integer.Sparse.eval reductionProjection9308 (momentVector H) := by
  have heq : reductionPivot9308 = (fun u v => (normalNode5554).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5554).moment H = injectiveMoment H reductionPivot9308 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5554).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot9308 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9308 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![48, 48, 96, 96, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9308 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection864, oldProjection700, oldProjection532, reductionProjection8276, reductionProjection387] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9308 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw7364 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9308 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection864 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9308 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection864 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7364 hH))).trans (oldProjectionSound864 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9308 (1 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node700⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9308 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection700 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9308 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection700 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound700 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9308 (2 : Fin 5)) = canonicalInput10871.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9308 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection532 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9308 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection532 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10871 hH))).trans (oldProjectionSound532 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9308 (3 : Fin 5)) = canonicalInput10866.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9308 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8276 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9308 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8276 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10866 hH))).trans (reductionSound8276 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9308 (4 : Fin 5)) = (normalNode5555).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9308 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection387 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9308 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection387 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound387 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5554).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9308 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5554).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9308 (j : Fin 5)))
      1 96 96 1 ![48, 48, 96, 96, 96] ![2, 2, 1, 1, 1] reductionProjection9308 ![oldProjection864, oldProjection700, oldProjection532, reductionProjection8276, reductionProjection387]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9309 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 240), (698, -80), (1034, -480), (1210, -240), (1221, 240), (1227, -80), (1251, 15), (1389, 240)]

def reductionPivot9309 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, 1, -1], ![-2, 1, 1], ![-1, -1, 2], ![0, 2, -2], ![1, -2, 1], ![2, -1, -1]]

theorem reductionSound9309 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * (normalNode5561).moment H =
      Integer.Sparse.eval reductionProjection9309 (momentVector H) := by
  have heq : reductionPivot9309 = (fun u v => (normalNode5561).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5561).moment H = injectiveMoment H reductionPivot9309 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5561).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9309 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9309 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1, 480, 1, 480, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9309 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection625, oldProjection626, reductionProjection389, oldProjection626, oldProjection625] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9309 (0 : Fin 5)) = canonicalInput12092.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9309 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection625 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9309 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection625 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12092 hH))).trans (oldProjectionSound625 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9309 (1 : Fin 5)) = canonicalInput10884.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9309 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection626 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9309 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection626 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10884 hH))).trans (oldProjectionSound626 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9309 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1210).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9309 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection389 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9309 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection389 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound389 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9309 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4871 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9309 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection626 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9309 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection626 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4871 hH))).trans (oldProjectionSound626 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9309 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4870 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9309 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection625 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9309 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection625 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4870 hH))).trans (oldProjectionSound625 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5561).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9309 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5561).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9309 (j : Fin 5)))
      1 240 480 2 ![1, 480, 1, 480, 1] ![480, 1, 480, 1, 480] reductionProjection9309 ![oldProjection625, oldProjection626, reductionProjection389, oldProjection626, oldProjection625]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9310 : Integer.Sparse (Fin 1613) := [(0, -1), (81, 240), (94, -15), (228, 120), (698, -240), (1212, -240), (1221, 120), (1226, -80), (1227, -120), (1251, 30), (1389, 240)]

def reductionPivot9310 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, 1, -1], ![-2, 1, 1], ![-1, -1, 2], ![1, -2, 1], ![1, 0, -1], ![1, 1, -2]]

theorem reductionSound9310 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * (normalNode5562).moment H =
      Integer.Sparse.eval reductionProjection9310 (momentVector H) := by
  have heq : reductionPivot9310 = (fun u v => (normalNode5562).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5562).moment H = injectiveMoment H reductionPivot9310 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5562).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9310 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9310 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![480, 480, 480, 1, 480] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9310 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection626, oldProjection710, oldProjection1141, reductionProjection2692, oldProjection535] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9310 (0 : Fin 5)) = canonicalInput12093.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9310 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection626 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9310 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection626 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12093 hH))).trans (oldProjectionSound626 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9310 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4887 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9310 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection710 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9310 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection710 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4887 hH))).trans (oldProjectionSound710 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9310 (2 : Fin 5)) = canonicalInput10881.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9310 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1141 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9310 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1141 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10881 hH))).trans (oldProjectionSound1141 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9310 (3 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1212).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9310 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2692 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9310 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2692 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound2692 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9310 (4 : Fin 5)) = canonicalInput10880.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9310 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection535 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9310 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection535 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10880 hH))).trans (oldProjectionSound535 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5562).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9310 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5562).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9310 (j : Fin 5)))
      1 240 480 2 ![480, 480, 480, 1, 480] ![1, 1, 1, 480, 1] reductionProjection9310 ![oldProjection626, oldProjection710, oldProjection1141, reductionProjection2692, oldProjection535]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9311 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (681, -160), (697, 80), (1034, -160), (1212, -160), (1220, -160), (1250, -20), (1251, 10), (1389, 80)]

def reductionPivot9311 : Matrix (Fin 6) (Fin 3) ℤ := ![![1, -1, 0], ![-2, 1, 1], ![-1, -1, 2], ![0, 2, -2], ![1, -2, 1], ![1, 1, -2]]

theorem reductionSound9311 {H : CMatrix} (hH : IsHadamard H) :
    (160 : ℝ) * (normalNode5563).moment H =
      Integer.Sparse.eval reductionProjection9311 (momentVector H) := by
  have heq : reductionPivot9311 = (fun u v => (normalNode5563).entries (OAI.MUB6.Certificate.PairSemantics.permutation258 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5563).moment H = injectiveMoment H reductionPivot9311 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5563).entries OAI.MUB6.Certificate.PairSemantics.permutation258)).symm
  have hshape : reductionPivot9311 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9311 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![160, 1, 1, 1, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9311 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1136, reductionProjection968, reductionProjection2692, reductionProjection390, oldProjection625] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9311 (0 : Fin 5)) = canonicalInput21581.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((160 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9311 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1136 (momentVector H)
      have hh : (160 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9311 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1136 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (160 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21581 hH))).trans (oldProjectionSound1136 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9311 (1 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1220).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9311 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection968 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9311 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection968 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound968 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9311 (2 : Fin 5)) = canonicalInput10882.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9311 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2692 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9311 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2692 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10882 hH))).trans (reductionSound2692 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9311 (3 : Fin 5)) = canonicalInput10877.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9311 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection390 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9311 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection390 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10877 hH))).trans (reductionSound390 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9311 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4870 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9311 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection625 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9311 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection625 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4870 hH))).trans (oldProjectionSound625 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5563).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9311 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5563).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9311 (j : Fin 5)))
      1 160 160 1 ![160, 1, 1, 1, 1] ![1, 160, 160, 160, 160] reductionProjection9311 ![oldProjection1136, reductionProjection968, reductionProjection2692, reductionProjection390, oldProjection625]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.Canonical003
import NoFourMUBs.Step2.SOS.Canonical004
import NoFourMUBs.Step2.SOS.Canonical006
import NoFourMUBs.Step2.SOS.Canonical008
import NoFourMUBs.Step2.SOS.Canonical026
import NoFourMUBs.Step2.SOS.Canonical076
import NoFourMUBs.Step2.SOS.Canonical084
import NoFourMUBs.Step2.SOS.Canonical140
import NoFourMUBs.Step2.SOS.Canonical167
import NoFourMUBs.Step2.SOS.Canonical193
import NoFourMUBs.Step2.SOS.Canonical194
import NoFourMUBs.Step2.SOS.Canonical195
import NoFourMUBs.Step2.SOS.Canonical196
import NoFourMUBs.Step2.SOS.Canonical220
import NoFourMUBs.Step2.SOS.Canonical293
import NoFourMUBs.Step2.SOS.Canonical328
import NoFourMUBs.Step2.SOS.Canonical372
import NoFourMUBs.Step2.SOS.Canonical381
import NoFourMUBs.Step2.SOS.Canonical535
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections033
import NoFourMUBs.Step2.SOS.OldProjections035
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions002
import NoFourMUBs.Step2.SOS.Reductions003
import NoFourMUBs.Step2.SOS.Reductions004
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical120
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical143
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical150
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical151
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical316
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical78
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection160 : Integer.Sparse (Fin 1613) := [(56, -24), (94, 1), (698, 8), (700, 8), (1219, -24), (1251, 1)]

def reductionPivot160 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, 0, 1, 1], ![2, -3, 1, 0], ![1, 3, -2, -2]]

theorem reductionSound160 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode7119).moment H =
      Integer.Sparse.eval reductionProjection160 (momentVector H) := by
  have heq : reductionPivot160 = (fun u v => (normalNode7119).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7119).moment H = injectiveMoment H reductionPivot160 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7119).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7119).entries)).symm
  have hshape : reductionPivot160 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot160 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 24] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot160 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection97, oldProjection223, oldProjection215] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot160 (0 : Fin 3)) = canonicalInput536.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot160 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection97 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot160 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection97 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound536 hH))).trans (oldProjectionSound97 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot160 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw3855 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot160 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection223 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot160 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection223 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3855 hH))).trans (oldProjectionSound223 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot160 (2 : Fin 3)) = canonicalInput9007.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot160 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection215 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot160 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection215 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9007 hH))).trans (oldProjectionSound215 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7119).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot160 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7119).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot160 (j : Fin 3)))
      3 72 72 3 ![1, 1, 24] ![72, 72, 3] reductionProjection160 ![oldProjection97, oldProjection223, oldProjection215]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection161 : Integer.Sparse (Fin 1613) := [(42, 16), (90, 16), (94, -1), (243, 16), (698, 16), (700, 32), (1226, 16), (1251, 3)]

def reductionPivot161 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -2, 2, 1], ![0, 0, -3, 3], ![1, 1, 1, -3]]

theorem reductionSound161 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode7118).moment H =
      Integer.Sparse.eval reductionProjection161 (momentVector H) := by
  have heq : reductionPivot161 = (fun u v => (normalNode7118).entries (OAI.MUB6.Certificate.PairSemantics.permutation21 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7118).moment H = injectiveMoment H reductionPivot161 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7118).entries OAI.MUB6.Certificate.PairSemantics.permutation21)).symm
  have hshape : reductionPivot161 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot161 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot161 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection188, oldProjection109, oldProjection81] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot161 (0 : Fin 3)) = canonicalInput18754.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot161 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection188 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot161 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection188 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18754 hH))).trans (oldProjectionSound188 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot161 (1 : Fin 3)) = canonicalInput14105.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot161 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection109 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot161 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection109 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14105 hH))).trans (oldProjectionSound109 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot161 (2 : Fin 3)) = canonicalInput14082.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot161 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection81 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot161 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection81 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14082 hH))).trans (oldProjectionSound81 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7118).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot161 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7118).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot161 (j : Fin 3)))
      3 144 144 3 ![48, 3, 3] ![3, 48, 48] reductionProjection161 ![oldProjection188, oldProjection109, oldProjection81]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection162 : Integer.Sparse (Fin 1613) := [(42, 1), (90, 1), (243, 1), (698, 1), (700, -1)]

def reductionPivot162 : Matrix (Fin 4) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-1, -2, 2, 1], ![0, 0, -3, 3], ![0, 2, 1, -3]]

theorem reductionSound162 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode7121).moment H =
      Integer.Sparse.eval reductionProjection162 (momentVector H) := by
  have heq : reductionPivot162 = (fun u v => (normalNode7121).entries (OAI.MUB6.Certificate.PairSemantics.permutation27 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7121).moment H = injectiveMoment H reductionPivot162 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7121).entries OAI.MUB6.Certificate.PairSemantics.permutation27)).symm
  have hshape : reductionPivot162 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot162 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot162 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection37, oldProjection107, oldProjection81] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot162 (0 : Fin 3)) = canonicalInput24438.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot162 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection37 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot162 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection37 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24438 hH))).trans (oldProjectionSound37 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot162 (1 : Fin 3)) = canonicalInput14122.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot162 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection107 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot162 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection107 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14122 hH))).trans (oldProjectionSound107 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot162 (2 : Fin 3)) = canonicalInput14082.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot162 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection81 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot162 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection81 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14082 hH))).trans (oldProjectionSound81 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7121).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot162 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7121).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot162 (j : Fin 3)))
      3 9 9 3 ![1, 3, 3] ![9, 3, 3] reductionProjection162 ![oldProjection37, oldProjection107, oldProjection81]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection163 : Integer.Sparse (Fin 1613) := [(42, -32), (56, 48), (84, 48), (90, -32), (94, 5), (243, -64), (698, -48), (700, -48), (1219, 48), (1226, -32), (1251, -7)]

def reductionPivot163 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-1, -3, 1, 3], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, 1, -2, 0]]

theorem reductionSound163 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6048).moment H =
      Integer.Sparse.eval reductionProjection163 (momentVector H) := by
  have heq : reductionPivot163 = (fun u v => (normalNode6048).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6048).moment H = injectiveMoment H reductionPivot163 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6048).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot163 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot163 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 72, 144, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot163 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection160, reductionProjection147, reductionProjection161, reductionProjection162] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot163 (0 : Fin 4)) = canonicalInput1715.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot163 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection160 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot163 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection160 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1715 hH))).trans (reductionSound160 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot163 (1 : Fin 4)) = canonicalInput12473.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot163 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection147 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot163 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection147 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12473 hH))).trans (reductionSound147 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot163 (2 : Fin 4)) = canonicalInput12563.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot163 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection161 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot163 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection161 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12563 hH))).trans (reductionSound161 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot163 (3 : Fin 4)) = canonicalInput12565.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot163 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection162 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot163 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection162 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12565 hH))).trans (reductionSound162 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6048).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot163 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6048).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot163 (j : Fin 4)))
      2 288 288 2 ![72, 72, 144, 9] ![4, 4, 2, 32] reductionProjection163 ![reductionProjection160, reductionProjection147, reductionProjection161, reductionProjection162]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection164 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -20), (20, 10), (42, 160), (55, -240), (56, -240), (62, -720), (84, -240), (90, 160), (94, -55), (243, 560), (691, -240), (698, 400), (700, 560), (704, 80), (1047, -720), (1187, 720), (1198, 720), (1219, -720), (1226, 240), (1234, 720), (1251, 25)]

def reductionPivot164 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-3, -1, 1, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 2, -1, -1], ![3, -1, -1, -1]]

theorem reductionSound164 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode76).moment H =
      Integer.Sparse.eval reductionProjection164 (momentVector H) := by
  have heq : reductionPivot164 = (fun u v => (normalNode76).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode76).moment H = injectiveMoment H reductionPivot164 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode76).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot164 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot164 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 144, 720, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot164 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection85, reductionProjection159, oldProjection980, oldProjection2525, reductionProjection163] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot164 (0 : Fin 5)) = (normalNode36).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot164 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection85 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot164 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection85 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound85 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot164 (1 : Fin 5)) = (normalNode85).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot164 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection159 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot164 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection159 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound159 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot164 (2 : Fin 5)) = canonicalInput260.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot164 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection980 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot164 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection980 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound260 hH))).trans (oldProjectionSound980 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot164 (3 : Fin 5)) = canonicalInput261.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot164 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2525 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot164 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2525 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound261 hH))).trans (oldProjectionSound2525 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot164 (4 : Fin 5)) = canonicalInput262.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot164 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection163 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot164 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection163 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound262 hH))).trans (reductionSound163 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode76).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot164 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode76).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot164 (j : Fin 5)))
      1 1440 1440 1 ![288, 288, 144, 720, 288] ![5, 5, 10, 2, 5] reductionProjection164 ![reductionProjection85, reductionProjection159, oldProjection980, oldProjection2525, reductionProjection163]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection165 : Integer.Sparse (Fin 1613) := [(20, -1), (69, -48), (93, 6), (94, -16), (1044, -72), (1251, -1)]

def reductionPivot165 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-3, -1, 1, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 1, -1, 0], ![3, -1, 1, -3]]

theorem reductionSound165 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode77).moment H =
      Integer.Sparse.eval reductionProjection165 (momentVector H) := by
  have heq : reductionPivot165 = (fun u v => (normalNode77).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode77).moment H = injectiveMoment H reductionPivot165 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode77).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot165 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot165 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![72, 72, 72, 72, 72] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot165 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection88, oldProjection1101, oldProjection1101, oldProjection1101, reductionProjection88] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot165 (0 : Fin 5)) = (normalNode37).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot165 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection88 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot165 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection88 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound88 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot165 (1 : Fin 5)) = canonicalInput256.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot165 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1101 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot165 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1101 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound256 hH))).trans (oldProjectionSound1101 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot165 (2 : Fin 5)) = canonicalInput268.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot165 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1101 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot165 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1101 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound268 hH))).trans (oldProjectionSound1101 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot165 (3 : Fin 5)) = canonicalInput271.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot165 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1101 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot165 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1101 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound271 hH))).trans (oldProjectionSound1101 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot165 (4 : Fin 5)) = canonicalInput272.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot165 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection88 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot165 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection88 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound272 hH))).trans (reductionSound88 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode77).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot165 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode77).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot165 (j : Fin 5)))
      1 72 72 1 ![72, 72, 72, 72, 72] ![1, 1, 1, 1, 1] reductionProjection165 ![reductionProjection88, oldProjection1101, oldProjection1101, oldProjection1101, reductionProjection88]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection166 : Integer.Sparse (Fin 1613) := [(656, 1)]

theorem reductionSound166 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code656).moment H =
      Integer.Sparse.eval reductionProjection166 (momentVector H) := by
  have hc : coordinates (656 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code656) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection166, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection167 : Integer.Sparse (Fin 1613) := [(72, -1), (684, -1), (1321, -1)]

def reductionPivot167 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![2, -1, 1, -2], ![-2, -2, 2, 2], ![1, 3, -3, -1]]

theorem reductionSound167 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode11205).moment H =
      Integer.Sparse.eval reductionProjection167 (momentVector H) := by
  have heq : reductionPivot167 = (fun u v => (normalNode11205).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11205).moment H = injectiveMoment H reductionPivot167 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode11205).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode11205).entries)).symm
  have hshape : reductionPivot167 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot167 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot167 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection260, reductionProjection94, oldProjection101] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot167 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw10122 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot167 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection260 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot167 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection260 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical10122 hH))).trans (oldProjectionSound260 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot167 (1 : Fin 3)) = canonicalInput34252.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot167 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection94 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot167 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection94 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound34252 hH))).trans (reductionSound94 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot167 (2 : Fin 3)) = canonicalInput34259.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot167 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection101 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot167 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection101 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound34259 hH))).trans (oldProjectionSound101 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode11205).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot167 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11205).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot167 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection167 ![oldProjection260, reductionProjection94, oldProjection101]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection168 : Integer.Sparse (Fin 1613) := [(0, 1), (20, -5), (72, 480), (94, 55), (656, -720), (682, 240), (684, 240), (1251, 15), (1321, 480)]

def reductionPivot168 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-3, -1, 1, 3], ![0, 1, -1, 0], ![1, -2, 2, -1], ![2, 1, -1, -2]]

theorem reductionSound168 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode90).moment H =
      Integer.Sparse.eval reductionProjection168 (momentVector H) := by
  have heq : reductionPivot168 = (fun u v => (normalNode90).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode90).moment H = injectiveMoment H reductionPivot168 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode90).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot168 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot168 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 720, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot168 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection989, reductionProjection166, oldProjection1339, reductionProjection167] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot168 (0 : Fin 4)) = canonicalInput424.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot168 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection989 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot168 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection989 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound424 hH))).trans (oldProjectionSound989 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot168 (1 : Fin 4)) = canonicalInput286.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot168 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection166 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot168 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection166 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound286 hH))).trans (reductionSound166 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot168 (2 : Fin 4)) = canonicalInput279.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot168 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1339 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot168 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1339 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound279 hH))).trans (oldProjectionSound1339 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot168 (3 : Fin 4)) = canonicalInput276.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot168 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection167 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot168 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection167 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound276 hH))).trans (reductionSound167 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode90).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot168 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode90).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot168 (j : Fin 4)))
      2 1440 1440 2 ![144, 1, 720, 3] ![10, 1440, 2, 480] reductionProjection168 ![oldProjection989, reductionProjection166, oldProjection1339, reductionProjection167]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection169 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -40), (20, 5), (72, -480), (93, 120), (94, 70), (418, 720), (656, 720), (682, -240), (684, -240), (1106, 720), (1250, 120), (1251, 50), (1319, -240), (1321, -240), (1322, -240)]

def reductionPivot169 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-3, -1, 1, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 1, -1], ![2, 1, -1, -2]]

theorem reductionSound169 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode78).moment H =
      Integer.Sparse.eval reductionProjection169 (momentVector H) := by
  have heq : reductionPivot169 = (fun u v => (normalNode78).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode78).moment H = injectiveMoment H reductionPivot169 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode78).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot169 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot169 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 720, 1440, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot169 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection92, oldProjection1339, oldProjection1339, reductionProjection168, oldProjection2834] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot169 (0 : Fin 5)) = (normalNode38).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot169 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection92 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot169 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection92 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound92 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot169 (1 : Fin 5)) = canonicalInput257.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot169 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1339 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot169 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1339 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound257 hH))).trans (oldProjectionSound1339 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot169 (2 : Fin 5)) = canonicalInput269.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot169 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1339 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot169 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1339 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound269 hH))).trans (oldProjectionSound1339 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot169 (3 : Fin 5)) = (normalNode90).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot169 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection168 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot169 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection168 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound168 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot169 (4 : Fin 5)) = canonicalInput273.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot169 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2834 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot169 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2834 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound273 hH))).trans (oldProjectionSound2834 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode78).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot169 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode78).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot169 (j : Fin 5)))
      1 1440 1440 1 ![1440, 720, 720, 1440, 720] ![1, 2, 2, 1, 2] reductionProjection169 ![reductionProjection92, oldProjection1339, oldProjection1339, reductionProjection168, oldProjection2834]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection170 : Integer.Sparse (Fin 1613) := [(566, 1)]

theorem reductionSound170 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code566).moment H =
      Integer.Sparse.eval reductionProjection170 (momentVector H) := by
  have hc : coordinates (566 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code566) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection170, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection171 : Integer.Sparse (Fin 1613) := [(68, 1)]

theorem reductionSound171 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code68).moment H =
      Integer.Sparse.eval reductionProjection171 (momentVector H) := by
  have hc : coordinates (68 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code68) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection171, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection172 : Integer.Sparse (Fin 1613) := [(68, -1), (72, -1), (682, -1)]

def reductionPivot172 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, -1, 1, 2], ![1, 3, -3, -1], ![2, -2, 2, -2]]

theorem reductionSound172 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode6954).moment H =
      Integer.Sparse.eval reductionProjection172 (momentVector H) := by
  have heq : reductionPivot172 = (fun u v => (normalNode6954).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6954).moment H = injectiveMoment H reductionPivot172 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6954).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6954).entries)).symm
  have hshape : reductionPivot172 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot172 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot172 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection171, oldProjection101, oldProjection159] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot172 (0 : Fin 3)) = canonicalInput316.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot172 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection171 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot172 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection171 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound316 hH))).trans (reductionSound171 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot172 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw2505 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot172 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection101 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot172 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection101 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2505 hH))).trans (oldProjectionSound101 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot172 (2 : Fin 3)) = canonicalInput5377.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot172 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection159 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot172 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection159 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5377 hH))).trans (oldProjectionSound159 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6954).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot172 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6954).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot172 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection172 ![reductionProjection171, oldProjection101, oldProjection159]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection173 : Integer.Sparse (Fin 1613) := [(19, 1), (68, 12), (72, 24), (94, 3), (566, -36), (682, 24), (1251, 2), (1321, 12)]

def reductionPivot173 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-3, -1, 1, 3], ![0, 1, -1, 0], ![1, 1, -1, -1], ![2, -2, 2, -2]]

theorem reductionSound173 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode92).moment H =
      Integer.Sparse.eval reductionProjection173 (momentVector H) := by
  have heq : reductionPivot173 = (fun u v => (normalNode92).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode92).moment H = injectiveMoment H reductionPivot173 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode92).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot173 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot173 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 3, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot173 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1012, reductionProjection170, reductionProjection172, oldProjection1092] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot173 (0 : Fin 4)) = canonicalInput426.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot173 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1012 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot173 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1012 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound426 hH))).trans (oldProjectionSound1012 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot173 (1 : Fin 4)) = canonicalInput290.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot173 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection170 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot173 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection170 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound290 hH))).trans (reductionSound170 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot173 (2 : Fin 4)) = canonicalInput282.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot173 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection172 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot173 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection172 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound282 hH))).trans (reductionSound172 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot173 (3 : Fin 4)) = canonicalInput281.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot173 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1092 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot173 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1092 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound281 hH))).trans (oldProjectionSound1092 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode92).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot173 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode92).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot173 (j : Fin 4)))
      2 72 144 4 ![144, 1, 3, 144] ![1, 144, 48, 1] reductionProjection173 ![oldProjection1012, reductionProjection170, reductionProjection172, oldProjection1092]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection174 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -20), (20, 10), (68, -240), (72, -480), (94, 75), (536, 720), (566, 720), (682, -480), (684, -240), (690, -480), (1217, -240), (1221, -240), (1251, 75), (1319, -240), (1321, -240)]

def reductionPivot174 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-3, -1, 1, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 1, -1, -1], ![2, -1, 1, -2]]

theorem reductionSound174 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode79).moment H =
      Integer.Sparse.eval reductionProjection174 (momentVector H) := by
  have heq : reductionPivot174 = (fun u v => (normalNode79).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode79).moment H = injectiveMoment H reductionPivot174 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode79).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot174 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot174 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 144, 144, 720, 72] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot174 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection96, oldProjection1092, oldProjection1092, oldProjection2835, reductionProjection173] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot174 (0 : Fin 5)) = (normalNode39).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot174 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection96 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot174 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection96 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound96 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot174 (1 : Fin 5)) = canonicalInput258.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot174 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1092 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot174 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1092 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound258 hH))).trans (oldProjectionSound1092 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot174 (2 : Fin 5)) = canonicalInput270.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot174 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1092 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot174 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1092 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound270 hH))).trans (oldProjectionSound1092 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot174 (3 : Fin 5)) = canonicalInput274.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot174 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2835 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot174 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2835 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound274 hH))).trans (oldProjectionSound2835 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot174 (4 : Fin 5)) = (normalNode92).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot174 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection173 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot174 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection173 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound173 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode79).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot174 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode79).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot174 (j : Fin 5)))
      1 1440 1440 1 ![288, 144, 144, 720, 72] ![5, 10, 10, 2, 20] reductionProjection174 ![reductionProjection96, oldProjection1092, oldProjection1092, oldProjection2835, reductionProjection173]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection175 : Integer.Sparse (Fin 1613) := [(1318, 1)]

theorem reductionSound175 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1318).moment H =
      Integer.Sparse.eval reductionProjection175 (momentVector H) := by
  have hc : coordinates (1318 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1318) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection175, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection176 : Integer.Sparse (Fin 1613) := [(1270, -1), (1318, -2), (1333, -1)]

def reductionPivot176 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-3, -1, 1, 3], ![1, -2, 2, -1], ![1, 1, -1, -1], ![1, 1, -1, -1]]

theorem reductionSound176 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode95).moment H =
      Integer.Sparse.eval reductionProjection176 (momentVector H) := by
  have heq : reductionPivot176 = (fun u v => (normalNode95).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode95).moment H = injectiveMoment H reductionPivot176 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode95).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot176 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot176 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot176 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection720, oldProjection924, reductionProjection175, reductionProjection175] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot176 (0 : Fin 4)) = canonicalInput430.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot176 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection720 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot176 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection720 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound430 hH))).trans (oldProjectionSound720 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot176 (1 : Fin 4)) = canonicalInput309.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot176 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection924 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot176 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection924 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound309 hH))).trans (oldProjectionSound924 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot176 (2 : Fin 4)) = canonicalInput303.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot176 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection175 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot176 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection175 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound303 hH))).trans (reductionSound175 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot176 (3 : Fin 4)) = canonicalInput302.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot176 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection175 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot176 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection175 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound302 hH))).trans (reductionSound175 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode95).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot176 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode95).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot176 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection176 ![oldProjection720, oldProjection924, reductionProjection175, reductionProjection175]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection177 : Integer.Sparse (Fin 1613) := [(0, 7), (19, -20), (20, 5), (94, -60), (682, -240), (1251, -100), (1270, 360), (1318, 720), (1319, -240), (1321, -240), (1333, 720), (1349, 720), (1388, -120), (1389, -240)]

def reductionPivot177 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-3, -1, 1, 3], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 1, -1, -1], ![1, 1, -1, -1]]

theorem reductionSound177 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode80).moment H =
      Integer.Sparse.eval reductionProjection177 (momentVector H) := by
  have heq : reductionPivot177 = (fun u v => (normalNode80).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode80).moment H = injectiveMoment H reductionPivot177 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode80).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot177 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot177 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![6, 1, 2, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot177 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection104, oldProjection924, reductionProjection176, oldProjection2833, oldProjection2833] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot177 (0 : Fin 5)) = (normalNode43).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot177 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection104 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot177 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection104 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound104 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot177 (1 : Fin 5)) = canonicalInput259.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot177 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection924 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot177 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection924 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound259 hH))).trans (oldProjectionSound924 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot177 (2 : Fin 5)) = (normalNode95).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot177 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection176 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot177 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection176 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound176 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot177 (3 : Fin 5)) = canonicalInput277.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot177 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2833 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot177 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2833 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound277 hH))).trans (oldProjectionSound2833 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot177 (4 : Fin 5)) = canonicalInput278.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot177 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2833 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot177 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2833 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound278 hH))).trans (oldProjectionSound2833 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode80).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot177 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode80).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot177 (j : Fin 5)))
      1 720 1440 2 ![6, 1, 2, 1440, 1440] ![240, 1440, 720, 1, 1] reductionProjection177 ![reductionProjection104, oldProjection924, reductionProjection176, oldProjection2833, oldProjection2833]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection178 : Integer.Sparse (Fin 1613) := [(761, 1)]

theorem reductionSound178 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code761).moment H =
      Integer.Sparse.eval reductionProjection178 (momentVector H) := by
  have hc : coordinates (761 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code761) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection178, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection179 : Integer.Sparse (Fin 1613) := [(0, 3), (94, 35), (483, -720), (698, -80), (700, -80), (761, -720), (1219, 240), (1251, 20)]

def reductionPivot179 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 1, 0, 1], ![0, 0, 3, -3], ![0, 1, -2, 1], ![1, -1, -1, 1]]

theorem reductionSound179 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5543).moment H =
      Integer.Sparse.eval reductionProjection179 (momentVector H) := by
  have heq : reductionPivot179 = (fun u v => (normalNode5543).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5543).moment H = injectiveMoment H reductionPivot179 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5543).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot179 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot179 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 1, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot179 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1268, oldProjection487, oldProjection1352, reductionProjection178] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot179 (0 : Fin 4)) = canonicalInput21008.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot179 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1268 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot179 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1268 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21008 hH))).trans (oldProjectionSound1268 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot179 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4858 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot179 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection487 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot179 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection487 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4858 hH))).trans (oldProjectionSound487 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot179 (2 : Fin 4)) = canonicalInput10749.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot179 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1352 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot179 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1352 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10749 hH))).trans (oldProjectionSound1352 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot179 (3 : Fin 4)) = canonicalInput10742.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot179 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection178 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot179 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection178 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10742 hH))).trans (reductionSound178 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5543).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot179 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5543).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot179 (j : Fin 4)))
      2 1440 1440 2 ![360, 1, 720, 1] ![4, 1440, 2, 1440] reductionProjection179 ![oldProjection1268, oldProjection487, oldProjection1352, reductionProjection178]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection180 : Integer.Sparse (Fin 1613) := [(28, 1)]

theorem reductionSound180 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code28).moment H =
      Integer.Sparse.eval reductionProjection180 (momentVector H) := by
  have hc : coordinates (28 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code28) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection180, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection181 : Integer.Sparse (Fin 1613) := [(766, 1)]

theorem reductionSound181 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code766).moment H =
      Integer.Sparse.eval reductionProjection181 (momentVector H) := by
  have hc : coordinates (766 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code766) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection181, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection182 : Integer.Sparse (Fin 1613) := [(799, 1)]

theorem reductionSound182 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code799).moment H =
      Integer.Sparse.eval reductionProjection182 (momentVector H) := by
  have hc : coordinates (799 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code799) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection182, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection183 : Integer.Sparse (Fin 1613) := [(94, -1), (682, 24), (697, 24), (698, -8), (704, -8), (761, -72), (766, -72), (799, -72), (1251, -1)]

def reductionPivot183 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-3, -1, 1, 3], ![0, -1, 2, -1], ![1, 2, -2, -1], ![2, -1, 0, -1]]

theorem reductionSound183 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode86).moment H =
      Integer.Sparse.eval reductionProjection183 (momentVector H) := by
  have heq : reductionPivot183 = (fun u v => (normalNode86).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode86).moment H = injectiveMoment H reductionPivot183 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode86).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot183 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot183 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 72, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot183 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection178, oldProjection947, reductionProjection181, reductionProjection182] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot183 (0 : Fin 4)) = canonicalInput423.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot183 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection178 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot183 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection178 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound423 hH))).trans (reductionSound178 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot183 (1 : Fin 4)) = canonicalInput267.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot183 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection947 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot183 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection947 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound267 hH))).trans (oldProjectionSound947 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot183 (2 : Fin 4)) = canonicalInput254.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot183 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection181 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot183 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection181 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound254 hH))).trans (reductionSound181 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot183 (3 : Fin 4)) = canonicalInput253.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot183 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection182 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot183 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection182 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound253 hH))).trans (reductionSound182 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode86).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot183 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode86).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot183 (j : Fin 4)))
      2 144 144 2 ![1, 72, 1, 1] ![144, 2, 144, 144] reductionProjection183 ![reductionProjection178, oldProjection947, reductionProjection181, reductionProjection182]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection184 : Integer.Sparse (Fin 1613) := [(1237, 1)]

theorem reductionSound184 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1237).moment H =
      Integer.Sparse.eval reductionProjection184 (momentVector H) := by
  have hc : coordinates (1237 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1237) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection184, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection185 : Integer.Sparse (Fin 1613) := [(0, 4), (19, 40), (94, -25), (247, -80), (698, -80), (700, -80), (799, -720), (1219, 240), (1237, -720), (1251, -25)]

def reductionPivot185 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-1, -3, 1, 3], ![-1, 0, 2, -1], ![0, 2, -1, -1], ![1, 1, -1, -1]]

theorem reductionSound185 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6040).moment H =
      Integer.Sparse.eval reductionProjection185 (momentVector H) := by
  have heq : reductionPivot185 = (fun u v => (normalNode6040).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6040).moment H = injectiveMoment H reductionPivot185 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6040).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot185 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot185 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot185 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1352, oldProjection972, reductionProjection184, reductionProjection182] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot185 (0 : Fin 4)) = canonicalInput23825.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot185 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1352 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot185 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1352 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23825 hH))).trans (oldProjectionSound1352 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot185 (1 : Fin 4)) = canonicalInput12518.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot185 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection972 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot185 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection972 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12518 hH))).trans (oldProjectionSound972 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot185 (2 : Fin 4)) = canonicalInput12403.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot185 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection184 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot185 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection184 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12403 hH))).trans (reductionSound184 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot185 (3 : Fin 4)) = canonicalInput12392.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot185 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection182 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot185 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection182 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12392 hH))).trans (reductionSound182 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6040).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot185 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6040).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot185 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 1, 1] ![2, 2, 1440, 1440] reductionProjection185 ![oldProjection1352, oldProjection972, reductionProjection184, reductionProjection182]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection186 : Integer.Sparse (Fin 1613) := [(0, -14), (19, -100), (28, -1440), (94, 5), (247, 160), (483, 720), (682, -480), (697, -480), (698, 400), (700, 160), (704, 240), (761, 1440), (766, 720), (799, 1440), (1219, -480), (1237, 720), (1251, -5)]

def reductionPivot186 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-3, -1, 1, 3], ![0, -1, 2, -1], ![0, 1, -1, 0], ![1, 1, -1, -1], ![2, -1, 0, -1]]

theorem reductionSound186 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode82).moment H =
      Integer.Sparse.eval reductionProjection186 (momentVector H) := by
  have heq : reductionPivot186 = (fun u v => (normalNode82).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode82).moment H = injectiveMoment H reductionPivot186 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode82).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot186 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot186 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1, 144, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot186 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection179, oldProjection2714, reductionProjection180, reductionProjection183, reductionProjection185] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot186 (0 : Fin 5)) = canonicalInput419.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot186 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection179 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot186 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection179 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound419 hH))).trans (reductionSound179 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot186 (1 : Fin 5)) = canonicalInput263.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot186 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2714 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot186 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2714 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound263 hH))).trans (oldProjectionSound2714 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot186 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code28).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot186 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection180 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot186 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection180 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound180 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot186 (3 : Fin 5)) = (normalNode86).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot186 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection183 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot186 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection183 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound183 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot186 (4 : Fin 5)) = canonicalInput247.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot186 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection185 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot186 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection185 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound247 hH))).trans (reductionSound185 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode82).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot186 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode82).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot186 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1, 144, 1440] ![1, 1, 1440, 10, 1] reductionProjection186 ![reductionProjection179, oldProjection2714, reductionProjection180, reductionProjection183, reductionProjection185]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection187 : Integer.Sparse (Fin 1613) := [(761, -1), (806, -1), (865, -1), (1197, -1)]

def reductionPivot187 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, 0, 1], ![0, 0, 3, -3], ![0, 1, -2, 1], ![2, -2, 0, 0]]

theorem reductionSound187 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode5494).moment H =
      Integer.Sparse.eval reductionProjection187 (momentVector H) := by
  have heq : reductionPivot187 = (fun u v => (normalNode5494).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5494).moment H = injectiveMoment H reductionPivot187 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5494).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot187 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot187 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot187 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection601, oldProjection606, reductionProjection138, reductionProjection178] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot187 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4592 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot187 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection601 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot187 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection601 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4592 hH))).trans (oldProjectionSound601 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot187 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4810 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot187 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection606 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot187 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection606 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4810 hH))).trans (oldProjectionSound606 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot187 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1197).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot187 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection138 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot187 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection138 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound138 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot187 (3 : Fin 4)) = canonicalInput10742.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot187 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection178 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot187 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection178 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10742 hH))).trans (reductionSound178 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5494).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot187 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5494).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot187 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection187 ![oldProjection601, oldProjection606, reductionProjection138, reductionProjection178]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection188 : Integer.Sparse (Fin 1613) := [(403, 1)]

theorem reductionSound188 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code403).moment H =
      Integer.Sparse.eval reductionProjection188 (momentVector H) := by
  have hc : coordinates (403 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code403) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection188, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection189 : Integer.Sparse (Fin 1613) := [(1068, 1)]

theorem reductionSound189 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1068).moment H =
      Integer.Sparse.eval reductionProjection189 (momentVector H) := by
  have hc : coordinates (1068 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1068) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection189, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection190 : Integer.Sparse (Fin 1613) := [(403, -1), (761, -1), (766, -1), (1068, -1)]

def reductionPivot190 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-3, -1, 1, 3], ![0, -1, 2, -1], ![0, 3, -3, 0], ![2, -1, 0, -1]]

theorem reductionSound190 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode87).moment H =
      Integer.Sparse.eval reductionProjection190 (momentVector H) := by
  have heq : reductionPivot190 = (fun u v => (normalNode87).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode87).moment H = injectiveMoment H reductionPivot190 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode87).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot190 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot190 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot190 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection178, reductionProjection188, reductionProjection181, reductionProjection189] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot190 (0 : Fin 4)) = canonicalInput4891.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot190 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection178 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot190 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection178 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4891 hH))).trans (reductionSound178 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot190 (1 : Fin 4)) = canonicalInput310.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot190 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection188 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot190 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection188 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound310 hH))).trans (reductionSound188 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot190 (2 : Fin 4)) = canonicalInput254.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot190 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection181 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot190 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection181 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound254 hH))).trans (reductionSound181 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot190 (3 : Fin 4)) = canonicalInput251.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot190 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection189 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot190 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection189 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound251 hH))).trans (reductionSound189 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode87).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot190 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode87).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot190 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection190 ![reductionProjection178, reductionProjection188, reductionProjection181, reductionProjection189]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection191 : Integer.Sparse (Fin 1613) := [(1183, 1)]

theorem reductionSound191 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1183).moment H =
      Integer.Sparse.eval reductionProjection191 (momentVector H) := by
  have hc : coordinates (1183 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1183) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection191, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

end NoFourMUBs.Step2.SOS.Normalization

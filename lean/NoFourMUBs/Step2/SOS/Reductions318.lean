import NoFourMUBs.Step2.SOS.Canonical202
import NoFourMUBs.Step2.SOS.Canonical205
import NoFourMUBs.Step2.SOS.Canonical206
import NoFourMUBs.Step2.SOS.Canonical207
import NoFourMUBs.Step2.SOS.Canonical208
import NoFourMUBs.Step2.SOS.Canonical211
import NoFourMUBs.Step2.SOS.Canonical213
import NoFourMUBs.Step2.SOS.Canonical220
import NoFourMUBs.Step2.SOS.Canonical223
import NoFourMUBs.Step2.SOS.Canonical230
import NoFourMUBs.Step2.SOS.Canonical233
import NoFourMUBs.Step2.SOS.Canonical234
import NoFourMUBs.Step2.SOS.Canonical243
import NoFourMUBs.Step2.SOS.Canonical248
import NoFourMUBs.Step2.SOS.Canonical249
import NoFourMUBs.Step2.SOS.Canonical250
import NoFourMUBs.Step2.SOS.Canonical251
import NoFourMUBs.Step2.SOS.Canonical259
import NoFourMUBs.Step2.SOS.Canonical261
import NoFourMUBs.Step2.SOS.Canonical288
import NoFourMUBs.Step2.SOS.Canonical299
import NoFourMUBs.Step2.SOS.Canonical302
import NoFourMUBs.Step2.SOS.Canonical303
import NoFourMUBs.Step2.SOS.Canonical308
import NoFourMUBs.Step2.SOS.Canonical309
import NoFourMUBs.Step2.SOS.Canonical311
import NoFourMUBs.Step2.SOS.Canonical312
import NoFourMUBs.Step2.SOS.Canonical319
import NoFourMUBs.Step2.SOS.Canonical320
import NoFourMUBs.Step2.SOS.Canonical436
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections032
import NoFourMUBs.Step2.SOS.OldProjections034
import NoFourMUBs.Step2.SOS.OldProjections035
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions010
import NoFourMUBs.Step2.SOS.Reductions030
import NoFourMUBs.Step2.SOS.Reductions044
import NoFourMUBs.Step2.SOS.Reductions096
import NoFourMUBs.Step2.SOS.Reductions097
import NoFourMUBs.Step2.SOS.Reductions098
import NoFourMUBs.Step2.SOS.Reductions099
import NoFourMUBs.Step2.SOS.Reductions103
import NoFourMUBs.Step2.SOS.Reductions106
import NoFourMUBs.Step2.SOS.Reductions109
import NoFourMUBs.Step2.SOS.Reductions110
import NoFourMUBs.Step2.SOS.Reductions112
import NoFourMUBs.Step2.SOS.Reductions114
import NoFourMUBs.Step2.SOS.Reductions118
import NoFourMUBs.Step2.SOS.Reductions125
import NoFourMUBs.Step2.SOS.Reductions135
import NoFourMUBs.Step2.SOS.Reductions136
import NoFourMUBs.Step2.SOS.Reductions157
import NoFourMUBs.Step2.SOS.Reductions174
import NoFourMUBs.Step2.SOS.Reductions185
import NoFourMUBs.Step2.SOS.Reductions186
import NoFourMUBs.Step2.SOS.Reductions235
import NoFourMUBs.Step2.SOS.Reductions286
import NoFourMUBs.Step2.SOS.Reductions309
import NoFourMUBs.Step2.SOS.Reductions317
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical180
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection10176 : Integer.Sparse (Fin 1613) := [(0, -41), (19, 30), (81, 480), (94, -165), (247, -160), (434, -360), (669, -360), (697, 240), (698, -960), (1055, 240), (1058, 240), (1059, -400), (1226, -40), (1227, -680), (1250, -90), (1251, 400), (1388, 240), (1389, 360)]

def reductionPivot10176 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, -1, 1, 0], ![-1, -2, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, 0, 1, -1, -1]]

theorem reductionSound10176 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6559).moment H =
      Integer.Sparse.eval reductionProjection10176 (momentVector H) := by
  have heq : reductionPivot10176 = (fun u v => (normalNode6559).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6559).moment H = injectiveMoment H reductionPivot10176 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6559).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10176 0 = Pi.single (3 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10176 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 1440, 2880, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10176 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10172, reductionProjection10173, reductionProjection10174, reductionProjection5977, reductionProjection10175] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10176 (0 : Fin 5)) = canonicalInput12940.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10176 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10172 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10176 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10172 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12940 hH))).trans (reductionSound10172 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10176 (1 : Fin 5)) = canonicalInput13180.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10176 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10173 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10176 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10173 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13180 hH))).trans (reductionSound10173 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10176 (2 : Fin 5)) = canonicalInput13198.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10176 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10174 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10176 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10174 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13198 hH))).trans (reductionSound10174 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10176 (3 : Fin 5)) = canonicalInput13201.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10176 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5977 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10176 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5977 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13201 hH))).trans (reductionSound5977 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10176 (4 : Fin 5)) = canonicalInput13203.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10176 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10175 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10176 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10175 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13203 hH))).trans (reductionSound10175 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6559).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10176 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6559).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10176 (j : Fin 5)))
      1 1440 2880 2 ![2880, 1440, 2880, 2880, 2880] ![1, 2, 1, 1, 1] reductionProjection10176 ![reductionProjection10172, reductionProjection10173, reductionProjection10174, reductionProjection5977, reductionProjection10175]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10177 : Integer.Sparse (Fin 1613) := [(0, -12), (19, 40), (81, 1440), (94, -165), (241, -160), (423, -720), (433, -1440), (668, -720), (697, 720), (698, -3040), (865, -1440), (869, -720), (1050, 1440), (1052, 1200), (1055, 240), (1058, 480), (1059, -1680), (1221, 2640), (1226, -160), (1227, -1120), (1250, -180), (1251, 615), (1389, 1680)]

def reductionPivot10177 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, -1, 1, 0], ![-1, -2, 0, 1, 2], ![0, 0, 2, -2, 0], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]

theorem reductionSound10177 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode6560).moment H =
      Integer.Sparse.eval reductionProjection10177 (momentVector H) := by
  have heq : reductionPivot10177 = (fun u v => (normalNode6560).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6560).moment H = injectiveMoment H reductionPivot10177 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6560).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10177 0 = Pi.single (3 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10177 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 2880, 1440, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10177 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection979, reductionProjection10175, reductionProjection3525, reductionProjection3532, reductionProjection3781] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10177 (0 : Fin 5)) = canonicalInput12942.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10177 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection979 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10177 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection979 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12942 hH))).trans (reductionSound979 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10177 (1 : Fin 5)) = canonicalInput13203.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10177 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10175 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10177 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10175 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13203 hH))).trans (reductionSound10175 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10177 (2 : Fin 5)) = canonicalInput13230.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10177 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3525 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10177 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3525 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13230 hH))).trans (reductionSound3525 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10177 (3 : Fin 5)) = canonicalInput13232.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10177 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3532 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10177 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3532 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13232 hH))).trans (reductionSound3532 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10177 (4 : Fin 5)) = canonicalInput13233.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10177 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3781 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10177 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3781 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13233 hH))).trans (reductionSound3781 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6560).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10177 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6560).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10177 (j : Fin 5)))
      1 2880 2880 1 ![2880, 2880, 1440, 2880, 2880] ![1, 1, 2, 1, 1] reductionProjection10177 ![reductionProjection979, reductionProjection10175, reductionProjection3525, reductionProjection3532, reductionProjection3781]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10178 : Integer.Sparse (Fin 1613) := [(0, 2), (19, -10), (94, 20), (247, 40), (697, -120), (698, 100), (1055, -180), (1058, -60), (1059, 20), (1219, -120), (1227, 100), (1250, 45), (1251, -35), (1388, -60), (1389, -60)]

def reductionPivot10178 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, -1, 0, 0, 2], ![0, 0, 1, 1, -2], ![0, 1, 0, -2, 1], ![1, 0, 0, 1, -2]]

theorem reductionSound10178 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode8339).moment H =
      Integer.Sparse.eval reductionProjection10178 (momentVector H) := by
  have heq : reductionPivot10178 = (fun u v => (normalNode8339).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8339).moment H = injectiveMoment H reductionPivot10178 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8339).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10178 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10178 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 288, 288] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10178 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1508, oldProjection1047, oldProjection1520, oldProjection1793] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10178 (0 : Fin 4)) = canonicalInput14778.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10178 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1508 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10178 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1508 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14778 hH))).trans (oldProjectionSound1508 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10178 (1 : Fin 4)) = canonicalInput16009.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10178 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1047 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10178 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1047 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16009 hH))).trans (oldProjectionSound1047 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10178 (2 : Fin 4)) = canonicalInput16089.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10178 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1520 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10178 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1520 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16089 hH))).trans (oldProjectionSound1520 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10178 (3 : Fin 4)) = canonicalInput16095.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10178 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1793 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10178 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1793 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16095 hH))).trans (oldProjectionSound1793 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8339).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10178 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8339).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10178 (j : Fin 4)))
      2 720 1440 4 ![720, 720, 288, 288] ![2, 2, 5, 5] reductionProjection10178 ![oldProjection1508, oldProjection1047, oldProjection1520, oldProjection1793]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10179 : Integer.Sparse (Fin 1613) := [(0, 7), (94, 15), (698, 80), (1059, 80), (1251, -20)]

def reductionPivot10179 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, -1, 0, 0, 2], ![0, 0, 1, 1, -2], ![0, 1, 0, -1, 0], ![1, 0, 0, 0, -1]]

theorem reductionSound10179 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8340).moment H =
      Integer.Sparse.eval reductionProjection10179 (momentVector H) := by
  have heq : reductionPivot10179 = (fun u v => (normalNode8340).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8340).moment H = injectiveMoment H reductionPivot10179 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8340).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10179 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10179 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 90, 288, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10179 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2704, oldProjection1048, oldProjection2448, oldProjection2759] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10179 (0 : Fin 4)) = canonicalInput14779.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10179 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2704 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10179 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2704 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14779 hH))).trans (oldProjectionSound2704 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10179 (1 : Fin 4)) = canonicalInput16010.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((90 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10179 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1048 (momentVector H)
      have hh : (90 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10179 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1048 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (90 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16010 hH))).trans (oldProjectionSound1048 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10179 (2 : Fin 4)) = canonicalInput16090.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10179 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2448 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10179 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2448 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16090 hH))).trans (oldProjectionSound2448 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10179 (3 : Fin 4)) = canonicalInput16096.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10179 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2759 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10179 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2759 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16096 hH))).trans (oldProjectionSound2759 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8340).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10179 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8340).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10179 (j : Fin 4)))
      2 1440 1440 2 ![1440, 90, 288, 360] ![1, 16, 5, 4] reductionProjection10179 ![oldProjection2704, oldProjection1048, oldProjection2448, oldProjection2759]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10180 : Integer.Sparse (Fin 1613) := [(0, -9), (19, 4), (81, 48), (94, -28), (247, -16), (433, -72), (489, -72), (669, -72), (697, 72), (698, -352), (700, -64), (890, -72), (1055, 72), (1058, 48), (1059, -144), (1219, 48), (1221, 48), (1227, -192), (1250, -18), (1251, 123), (1388, 24), (1389, 96)]

def reductionPivot10180 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, -1, 1, 0], ![-1, -2, 0, 1, 2], ![0, 0, 2, -1, -1], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![1, 0, 0, 0, -1]]

theorem reductionSound10180 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6561).moment H =
      Integer.Sparse.eval reductionProjection10180 (momentVector H) := by
  have heq : reductionPivot10180 = (fun u v => (normalNode6561).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6561).moment H = injectiveMoment H reductionPivot10180 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6561).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10180 0 = Pi.single (3 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10180 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 144, 1440, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10180 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10178, reductionProjection10179, reductionProjection3670, reductionProjection3119, reductionProjection3163] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10180 (0 : Fin 5)) = canonicalInput12944.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10180 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10178 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10180 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10178 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12944 hH))).trans (reductionSound10178 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10180 (1 : Fin 5)) = canonicalInput13214.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10180 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10179 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10180 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10179 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13214 hH))).trans (reductionSound10179 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10180 (2 : Fin 5)) = canonicalInput13242.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10180 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3670 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10180 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3670 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13242 hH))).trans (reductionSound3670 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10180 (3 : Fin 5)) = canonicalInput13244.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10180 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3119 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10180 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3119 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13244 hH))).trans (reductionSound3119 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10180 (4 : Fin 5)) = canonicalInput13246.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10180 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3163 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10180 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3163 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13246 hH))).trans (reductionSound3163 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6561).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10180 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6561).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10180 (j : Fin 5)))
      1 288 1440 5 ![720, 1440, 144, 1440, 720] ![2, 1, 10, 1, 2] reductionProjection10180 ![reductionProjection10178, reductionProjection10179, reductionProjection3670, reductionProjection3119, reductionProjection3163]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10181 : Integer.Sparse (Fin 1613) := [(0, 2), (94, 15), (698, 80), (1227, 80), (1251, -135)]

def reductionPivot10181 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, -1, 0, 0, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, -1, 0], ![1, 0, 0, 1, -2]]

theorem reductionSound10181 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8337).moment H =
      Integer.Sparse.eval reductionProjection10181 (momentVector H) := by
  have heq : reductionPivot10181 = (fun u v => (normalNode8337).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8337).moment H = injectiveMoment H reductionPivot10181 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8337).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10181 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10181 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 40, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10181 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2704, oldProjection294, oldProjection2449, oldProjection2725] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10181 (0 : Fin 4)) = canonicalInput14773.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10181 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2704 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10181 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2704 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14773 hH))).trans (oldProjectionSound2704 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10181 (1 : Fin 4)) = canonicalInput15982.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((40 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10181 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection294 (momentVector H)
      have hh : (40 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10181 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection294 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (40 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15982 hH))).trans (oldProjectionSound294 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10181 (2 : Fin 4)) = canonicalInput16071.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10181 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2449 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10181 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2449 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16071 hH))).trans (oldProjectionSound2449 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10181 (3 : Fin 4)) = canonicalInput16079.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10181 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2725 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10181 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2725 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16079 hH))).trans (oldProjectionSound2725 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8337).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10181 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8337).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10181 (j : Fin 4)))
      2 1440 1440 2 ![1440, 40, 1440, 1440] ![1, 36, 1, 1] reductionProjection10181 ![oldProjection2704, oldProjection294, oldProjection2449, oldProjection2725]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10182 : Integer.Sparse (Fin 1613) := [(0, 11), (94, 50), (698, 720), (700, 240), (1059, 560), (1227, 320), (1251, -305)]

def reductionPivot10182 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, -1, 0, 0, 2], ![0, 0, 0, 1, -1], ![0, 1, 0, 1, -2], ![1, 0, 1, -2, 0]]

theorem reductionSound10182 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8329).moment H =
      Integer.Sparse.eval reductionProjection10182 (momentVector H) := by
  have heq : reductionPivot10182 = (fun u v => (normalNode8329).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8329).moment H = injectiveMoment H reductionPivot10182 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8329).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10182 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10182 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 720, 144, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10182 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2420, oldProjection2583, oldProjection2582, oldProjection1047] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10182 (0 : Fin 4)) = canonicalInput14748.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10182 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2420 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10182 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2420 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14748 hH))).trans (oldProjectionSound2420 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10182 (1 : Fin 4)) = canonicalInput15923.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10182 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2583 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10182 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2583 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15923 hH))).trans (oldProjectionSound2583 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10182 (2 : Fin 4)) = canonicalInput16008.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10182 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2582 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10182 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2582 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16008 hH))).trans (oldProjectionSound2582 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10182 (3 : Fin 4)) = canonicalInput16017.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10182 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1047 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10182 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1047 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16017 hH))).trans (oldProjectionSound1047 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8329).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10182 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8329).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10182 (j : Fin 4)))
      2 2880 2880 2 ![1440, 720, 144, 720] ![2, 4, 20, 4] reductionProjection10182 ![oldProjection2420, oldProjection2583, oldProjection2582, oldProjection1047]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10183 : Integer.Sparse (Fin 1613) := [(0, -63), (19, 40), (81, 960), (94, -260), (247, -160), (433, -720), (489, -720), (669, -720), (697, 720), (698, -2720), (700, -480), (1027, -720), (1055, 720), (1058, 480), (1059, -1440), (1219, 480), (1227, -1760), (1250, -180), (1251, 1215), (1388, 240), (1389, 960)]

def reductionPivot10183 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, -1, 1, 0], ![-1, -2, 0, 1, 2], ![0, 0, 2, -1, -1], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, -1, 0]]

theorem reductionSound10183 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode6562).moment H =
      Integer.Sparse.eval reductionProjection10183 (momentVector H) := by
  have heq : reductionPivot10183 = (fun u v => (normalNode6562).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6562).moment H = injectiveMoment H reductionPivot10183 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6562).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10183 0 = Pi.single (3 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10183 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 2880, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10183 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10178, reductionProjection10181, reductionProjection5949, reductionProjection3664, reductionProjection10182] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10183 (0 : Fin 5)) = canonicalInput12945.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10183 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10178 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10183 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10178 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12945 hH))).trans (reductionSound10178 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10183 (1 : Fin 5)) = canonicalInput13215.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10183 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10181 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10183 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10181 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13215 hH))).trans (reductionSound10181 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10183 (2 : Fin 5)) = canonicalInput13243.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10183 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5949 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10183 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5949 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13243 hH))).trans (reductionSound5949 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10183 (3 : Fin 5)) = canonicalInput13245.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10183 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3664 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10183 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3664 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13245 hH))).trans (reductionSound3664 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10183 (4 : Fin 5)) = canonicalInput13247.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10183 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10182 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10183 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10182 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13247 hH))).trans (reductionSound10182 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6562).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10183 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6562).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10183 (j : Fin 5)))
      1 2880 2880 1 ![720, 1440, 2880, 2880, 2880] ![4, 2, 1, 1, 1] reductionProjection10183 ![reductionProjection10178, reductionProjection10181, reductionProjection5949, reductionProjection3664, reductionProjection10182]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10184 : Integer.Sparse (Fin 1613) := [(0, 12), (94, 45), (698, 720), (700, 160), (1059, 480), (1227, 240), (1251, -235)]

def reductionPivot10184 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, -1, 0, 0, 2], ![0, 0, 0, 2, -2], ![0, 1, 0, -1, 0], ![1, 0, 1, -1, -1]]

theorem reductionSound10184 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8335).moment H =
      Integer.Sparse.eval reductionProjection10184 (momentVector H) := by
  have heq : reductionPivot10184 = (fun u v => (normalNode8335).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8335).moment H = injectiveMoment H reductionPivot10184 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8335).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10184 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10184 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1440, 1440, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10184 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2676, oldProjection2588, oldProjection1786, oldProjection1054] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10184 (0 : Fin 4)) = canonicalInput14757.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10184 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2676 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10184 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2676 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14757 hH))).trans (oldProjectionSound2676 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10184 (1 : Fin 4)) = canonicalInput15945.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10184 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2588 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10184 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2588 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15945 hH))).trans (oldProjectionSound2588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10184 (2 : Fin 4)) = canonicalInput16030.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10184 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1786 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10184 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1786 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16030 hH))).trans (oldProjectionSound1786 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10184 (3 : Fin 4)) = canonicalInput16034.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10184 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1054 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10184 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1054 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16034 hH))).trans (oldProjectionSound1054 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8335).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10184 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8335).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10184 (j : Fin 4)))
      2 2880 2880 2 ![720, 1440, 1440, 720] ![4, 2, 2, 4] reductionProjection10184 ![oldProjection2676, oldProjection2588, oldProjection1786, oldProjection1054]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10185 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 2), (698, 40), (700, 24), (1059, 32), (1227, 8), (1251, -11)]

def reductionPivot10185 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, -1, 0, 0, 2], ![0, 0, 0, 2, -2], ![0, 0, 1, 0, -1], ![1, 1, 0, -2, 0]]

theorem reductionSound10185 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode8333).moment H =
      Integer.Sparse.eval reductionProjection10185 (momentVector H) := by
  have heq : reductionPivot10185 = (fun u v => (normalNode8333).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8333).moment H = injectiveMoment H reductionPivot10185 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8333).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10185 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10185 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 144, 120, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10185 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2421, oldProjection2609, oldProjection207, oldProjection2455] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10185 (0 : Fin 4)) = canonicalInput14752.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10185 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2421 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10185 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2421 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14752 hH))).trans (oldProjectionSound2421 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10185 (1 : Fin 4)) = canonicalInput15934.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10185 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2609 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10185 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2609 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15934 hH))).trans (oldProjectionSound2609 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10185 (2 : Fin 4)) = canonicalInput16022.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((120 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10185 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection207 (momentVector H)
      have hh : (120 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10185 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection207 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16022 hH))).trans (oldProjectionSound207 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10185 (3 : Fin 4)) = canonicalInput16026.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10185 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2455 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10185 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2455 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16026 hH))).trans (oldProjectionSound2455 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8333).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10185 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8333).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10185 (j : Fin 4)))
      2 144 1440 20 ![1440, 144, 120, 1440] ![1, 10, 12, 1] reductionProjection10185 ![oldProjection2421, oldProjection2609, oldProjection207, oldProjection2455]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10186 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 4), (698, 144), (700, 80), (1059, 16), (1227, 32), (1251, -13)]

def reductionPivot10186 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, -1, 0, 0, 2], ![0, 0, 0, 2, -2], ![0, 1, 0, 0, -1], ![1, 0, 1, -2, 0]]

theorem reductionSound10186 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode8336).moment H =
      Integer.Sparse.eval reductionProjection10186 (momentVector H) := by
  have heq : reductionPivot10186 = (fun u v => (normalNode8336).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8336).moment H = injectiveMoment H reductionPivot10186 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8336).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10186 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10186 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 720, 144, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10186 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2421, oldProjection2583, oldProjection2745, oldProjection1053] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10186 (0 : Fin 4)) = canonicalInput14758.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10186 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2421 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10186 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2421 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14758 hH))).trans (oldProjectionSound2421 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10186 (1 : Fin 4)) = canonicalInput15946.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10186 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2583 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10186 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2583 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15946 hH))).trans (oldProjectionSound2583 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10186 (2 : Fin 4)) = canonicalInput16032.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10186 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2745 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10186 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2745 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16032 hH))).trans (oldProjectionSound2745 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10186 (3 : Fin 4)) = canonicalInput16035.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10186 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1053 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10186 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1053 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16035 hH))).trans (oldProjectionSound1053 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8336).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10186 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8336).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10186 (j : Fin 4)))
      2 576 2880 10 ![1440, 720, 144, 72] ![2, 4, 20, 40] reductionProjection10186 ![oldProjection2421, oldProjection2583, oldProjection2745, oldProjection1053]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10187 : Integer.Sparse (Fin 1613) := [(0, -37), (19, 40), (94, -185), (241, -160), (427, -720), (666, -720), (697, 720), (698, -3600), (700, -1440), (890, -720), (1050, 720), (1052, 480), (1055, 240), (1058, 480), (1059, -1760), (1221, 480), (1227, -880), (1250, -180), (1251, 780), (1389, 240)]

def reductionPivot10187 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, -1, 1, 0], ![-1, -2, 0, 1, 2], ![0, 0, 2, 0, -2], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![1, 0, 0, -1, 0]]

theorem reductionSound10187 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode6563).moment H =
      Integer.Sparse.eval reductionProjection10187 (momentVector H) := by
  have heq : reductionPivot10187 = (fun u v => (normalNode6563).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6563).moment H = injectiveMoment H reductionPivot10187 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6563).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10187 0 = Pi.single (3 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10187 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 2880, 2880, 144, 576] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10187 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection979, reductionProjection10184, reductionProjection3514, reductionProjection10185, reductionProjection10186] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10187 (0 : Fin 5)) = canonicalInput12946.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10187 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection979 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10187 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection979 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12946 hH))).trans (reductionSound979 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10187 (1 : Fin 5)) = canonicalInput13224.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10187 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10184 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10187 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10184 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13224 hH))).trans (reductionSound10184 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10187 (2 : Fin 5)) = canonicalInput13252.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10187 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3514 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10187 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3514 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13252 hH))).trans (reductionSound3514 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10187 (3 : Fin 5)) = canonicalInput13255.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10187 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10185 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10187 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10185 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13255 hH))).trans (reductionSound10185 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10187 (4 : Fin 5)) = canonicalInput13256.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10187 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10186 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10187 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10186 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13256 hH))).trans (reductionSound10186 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6563).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10187 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6563).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10187 (j : Fin 5)))
      1 2880 2880 1 ![2880, 2880, 2880, 144, 576] ![1, 1, 1, 20, 5] reductionProjection10187 ![reductionProjection979, reductionProjection10184, reductionProjection3514, reductionProjection10185, reductionProjection10186]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10188 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -60), (20, 5), (42, 80), (90, 80), (94, 70), (241, 160), (243, 400), (247, 80), (483, 720), (698, 1040), (700, 240), (704, 320), (1055, -240), (1219, -240), (1226, 320), (1227, 320), (1251, -40)]

def reductionPivot10188 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, -1, 1, 0, 0], ![-1, 0, -2, 0, 3], ![0, 0, 0, 1, -1], ![0, 1, 1, 1, -3], ![1, 0, 0, -2, 1]]

theorem reductionSound10188 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode9760).moment H =
      Integer.Sparse.eval reductionProjection10188 (momentVector H) := by
  have heq : reductionPivot10188 = (fun u v => (normalNode9760).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9760).moment H = injectiveMoment H reductionPivot10188 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9760).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10188 0 = Pi.single (2 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10188 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 36, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10188 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2836, reductionProjection9157, oldProjection803, reductionProjection9893] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10188 (0 : Fin 4)) = canonicalInput14749.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10188 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2836 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10188 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2836 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14749 hH))).trans (oldProjectionSound2836 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10188 (1 : Fin 4)) = canonicalInput19364.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10188 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9157 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10188 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9157 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19364 hH))).trans (reductionSound9157 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10188 (2 : Fin 4)) = canonicalInput19372.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10188 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection803 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10188 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection803 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19372 hH))).trans (oldProjectionSound803 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10188 (3 : Fin 4)) = canonicalInput19373.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10188 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9893 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10188 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9893 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19373 hH))).trans (reductionSound9893 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9760).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10188 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9760).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10188 (j : Fin 4)))
      2 2880 2880 2 ![1440, 1440, 36, 720] ![2, 2, 80, 4] reductionProjection10188 ![oldProjection2836, reductionProjection9157, oldProjection803, reductionProjection9893]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10189 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -20), (90, 240), (94, 50), (241, 160), (243, 80), (426, 1440), (698, 1120), (700, 80), (1004, 720), (1219, -240), (1226, 800), (1227, 640), (1251, -115)]

def reductionPivot10189 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -1, 0, 1, 1], ![0, 0, 1, -3, 2], ![0, 1, -2, 1, 0], ![1, 0, 0, 1, -2]]

theorem reductionSound10189 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8755).moment H =
      Integer.Sparse.eval reductionProjection10189 (momentVector H) := by
  have heq : reductionPivot10189 = (fun u v => (normalNode8755).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8755).moment H = injectiveMoment H reductionPivot10189 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8755).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10189 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10189 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 72, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10189 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1993, oldProjection1993, oldProjection1739, oldProjection2075] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10189 (0 : Fin 4)) = canonicalInput18467.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10189 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1993 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10189 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1993 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18467 hH))).trans (oldProjectionSound1993 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10189 (1 : Fin 4)) = canonicalInput16712.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10189 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1993 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10189 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1993 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16712 hH))).trans (oldProjectionSound1993 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10189 (2 : Fin 4)) = canonicalInput16628.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10189 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1739 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10189 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1739 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16628 hH))).trans (oldProjectionSound1739 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10189 (3 : Fin 4)) = canonicalInput16627.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10189 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2075 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10189 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2075 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16627 hH))).trans (oldProjectionSound2075 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8755).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10189 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8755).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10189 (j : Fin 4)))
      2 2880 2880 2 ![72, 72, 1440, 1440] ![40, 40, 2, 2] reductionProjection10189 ![oldProjection1993, oldProjection1993, oldProjection1739, oldProjection2075]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10190 : Integer.Sparse (Fin 1613) := [(0, -2), (90, 80), (94, 5), (228, -240), (287, 720), (288, 720), (298, 720), (426, 2160), (698, 400), (955, 720), (1004, 720), (1015, 720), (1219, -240), (1223, -240), (1226, 240), (1251, -45)]

def reductionPivot10190 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -2, 0, 1, 2], ![0, 1, 0, -2, 1], ![0, 1, 1, 1, -3], ![1, 0, -2, 0, 1]]

theorem reductionSound10190 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode6602).moment H =
      Integer.Sparse.eval reductionProjection10190 (momentVector H) := by
  have heq : reductionPivot10190 = (fun u v => (normalNode6602).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6602).moment H = injectiveMoment H reductionPivot10190 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6602).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10190 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10190 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![18, 1440, 18, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10190 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection346, reductionProjection3192, oldProjection1991, reductionProjection3417] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10190 (0 : Fin 4)) = canonicalInput13643.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10190 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection346 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10190 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection346 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13643 hH))).trans (reductionSound346 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10190 (1 : Fin 4)) = canonicalInput13295.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10190 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3192 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10190 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3192 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13295 hH))).trans (reductionSound3192 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10190 (2 : Fin 4)) = canonicalInput13290.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10190 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1991 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10190 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1991 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13290 hH))).trans (oldProjectionSound1991 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10190 (3 : Fin 4)) = canonicalInput13289.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10190 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3417 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10190 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3417 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13289 hH))).trans (reductionSound3417 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6602).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10190 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6602).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10190 (j : Fin 4)))
      2 2880 2880 2 ![18, 1440, 18, 1440] ![160, 2, 160, 2] reductionProjection10190 ![reductionProjection346, reductionProjection3192, oldProjection1991, reductionProjection3417]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10191 : Integer.Sparse (Fin 1613) := [(0, -1), (90, -16), (94, -5), (698, -128), (1059, -16), (1226, -64), (1227, -80), (1251, 16)]

def reductionPivot10191 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, 1, 2], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, 0, -2, 1]]

theorem reductionSound10191 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7033).moment H =
      Integer.Sparse.eval reductionProjection10191 (momentVector H) := by
  have heq : reductionPivot10191 = (fun u v => (normalNode7033).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7033).moment H = injectiveMoment H reductionPivot10191 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7033).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10191 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10191 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10191 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection845, oldProjection838, oldProjection850, oldProjection1110] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10191 (0 : Fin 4)) = canonicalInput14108.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10191 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection845 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10191 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection845 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14108 hH))).trans (oldProjectionSound845 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10191 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5789 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10191 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection838 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10191 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection838 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5789 hH))).trans (oldProjectionSound838 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10191 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node850⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10191 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection850 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10191 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection850 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound850 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10191 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5784 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10191 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1110 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10191 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1110 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5784 hH))).trans (oldProjectionSound1110 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7033).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10191 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7033).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10191 (j : Fin 4)))
      2 288 1440 10 ![720, 720, 720, 720] ![2, 2, 2, 2] reductionProjection10191 ![oldProjection845, oldProjection838, oldProjection850, oldProjection1110]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10192 : Integer.Sparse (Fin 1613) := [(0, 2), (19, -20), (90, 80), (94, 55), (241, 160), (243, 80), (247, 80), (698, 880), (700, 80), (1055, -480), (1059, 80), (1219, -240), (1226, 400), (1227, 400), (1251, -75)]

def reductionPivot10192 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, -1, 0, 0, 1], ![-1, 0, -2, 1, 2], ![0, 0, 0, 1, -1], ![0, 1, 1, 0, -2], ![1, 0, 1, -2, 0]]

theorem reductionSound10192 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode9763).moment H =
      Integer.Sparse.eval reductionProjection10192 (momentVector H) := by
  have heq : reductionPivot10192 = (fun u v => (normalNode9763).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9763).moment H = injectiveMoment H reductionPivot10192 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9763).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10192 0 = Pi.single (4 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10192 4 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 720, 288] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10192 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4344, reductionProjection3305, oldProjection1047, reductionProjection10191] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10192 (0 : Fin 4)) = canonicalInput14305.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10192 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4344 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10192 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4344 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14305 hH))).trans (reductionSound4344 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10192 (1 : Fin 4)) = canonicalInput19378.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10192 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3305 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10192 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3305 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19378 hH))).trans (reductionSound3305 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10192 (2 : Fin 4)) = canonicalInput19403.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10192 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1047 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10192 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1047 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19403 hH))).trans (oldProjectionSound1047 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10192 (3 : Fin 4)) = canonicalInput19406.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10192 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10191 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10192 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10191 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19406 hH))).trans (reductionSound10191 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9763).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10192 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9763).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10192 (j : Fin 4)))
      2 2880 2880 2 ![1440, 1440, 720, 288] ![2, 2, 4, 10] reductionProjection10192 ![reductionProjection4344, reductionProjection3305, oldProjection1047, reductionProjection10191]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10193 : Integer.Sparse (Fin 1613) := [(19, -20), (20, 1), (82, -48), (87, -48), (88, 16), (90, 32), (94, 16), (228, -48), (241, 80), (243, 64), (247, 32), (483, 144), (549, 144), (596, 144), (698, 224), (700, 16), (1055, -48), (1219, -48), (1223, -48), (1226, 128), (1227, 80), (1251, -21)]

def reductionPivot10193 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, 1, -1], ![-1, 0, -3, 2, 2], ![0, -1, 1, -1, 1], ![0, 1, 1, 0, -2], ![1, 0, 1, -2, 0]]

theorem reductionSound10193 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode9603).moment H =
      Integer.Sparse.eval reductionProjection10193 (momentVector H) := by
  have heq : reductionPivot10193 = (fun u v => (normalNode9603).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9603).moment H = injectiveMoment H reductionPivot10193 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9603).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10193 0 = Pi.single (3 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10193 3 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![288, 288, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10193 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4372, reductionProjection7541, reductionProjection5578, oldProjection1730] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10193 (0 : Fin 4)) = canonicalInput19172.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10193 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4372 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10193 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4372 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19172 hH))).trans (reductionSound4372 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10193 (1 : Fin 4)) = canonicalInput19167.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10193 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7541 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10193 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7541 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19167 hH))).trans (reductionSound7541 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10193 (2 : Fin 4)) = canonicalInput19166.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10193 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5578 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10193 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5578 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19166 hH))).trans (reductionSound5578 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10193 (3 : Fin 4)) = canonicalInput19165.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10193 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1730 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10193 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1730 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19165 hH))).trans (oldProjectionSound1730 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9603).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10193 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9603).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10193 (j : Fin 4)))
      2 576 2880 10 ![288, 288, 1440, 1440] ![10, 10, 2, 2] reductionProjection10193 ![reductionProjection4372, reductionProjection7541, reductionProjection5578, oldProjection1730]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10194 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 100), (20, -5), (42, -40), (82, 120), (87, 120), (88, -40), (90, -320), (94, -130), (228, 240), (241, -440), (243, -440), (247, -160), (287, -360), (288, -360), (298, -360), (426, -1800), (483, -720), (549, -360), (596, -360), (698, -2280), (700, -240), (704, -160), (955, -360), (1004, -720), (1015, -360), (1055, 480), (1059, -40), (1219, 600), (1223, 240), (1226, -1200), (1227, -880), (1251, 190)]

def reductionPivot10194 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, 0, -1, 1], ![-1, -2, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, -1, 0], ![0, 1, 1, 1, -3], ![1, 0, -2, 0, 1]]

theorem reductionSound10194 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6570).moment H =
      Integer.Sparse.eval reductionProjection10194 (momentVector H) := by
  have heq : reductionPivot10194 = (fun u v => (normalNode6570).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6570).moment H = injectiveMoment H reductionPivot10194 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6570).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10194 0 = Pi.single (4 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10194 4 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 2880, 2880, 2880, 576] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10194 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10188, reductionProjection10189, reductionProjection10190, reductionProjection10192, reductionProjection10193] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10194 (0 : Fin 5)) = canonicalInput13149.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10194 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10188 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10194 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10188 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13149 hH))).trans (reductionSound10188 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10194 (1 : Fin 5)) = canonicalInput13206.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10194 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10189 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10194 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10189 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13206 hH))).trans (reductionSound10189 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10194 (2 : Fin 5)) = (normalNode6602).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10194 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10190 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10194 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10190 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound10190 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10194 (3 : Fin 5)) = canonicalInput13220.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10194 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10192 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10194 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10192 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13220 hH))).trans (reductionSound10192 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10194 (4 : Fin 5)) = canonicalInput13221.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10194 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10193 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10194 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10193 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13221 hH))).trans (reductionSound10193 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6570).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10194 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6570).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10194 (j : Fin 5)))
      1 1440 2880 2 ![2880, 2880, 2880, 2880, 576] ![1, 1, 1, 1, 5] reductionProjection10194 ![reductionProjection10188, reductionProjection10189, reductionProjection10190, reductionProjection10192, reductionProjection10193]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10195 : Integer.Sparse (Fin 1613) := [(0, -34), (81, 480), (94, -95), (427, -360), (433, -720), (674, -360), (698, -2000), (700, -400), (867, -360), (869, -720), (1050, 360), (1052, 360), (1059, -960), (1221, 1080), (1226, -160), (1227, -880), (1251, 695), (1389, 720)]

def reductionPivot10195 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, 0, 1, -1], ![-1, -2, 0, 1, 2], ![0, 0, 2, -2, 0], ![0, 1, -1, 0, 0], ![0, 1, -1, 0, 0], ![1, 0, 0, 0, -1]]

theorem reductionSound10195 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6573).moment H =
      Integer.Sparse.eval reductionProjection10195 (momentVector H) := by
  have heq : reductionPivot10195 = (fun u v => (normalNode6573).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6573).moment H = injectiveMoment H reductionPivot10195 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6573).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10195 0 = Pi.single (3 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10195 3 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 1440, 2880, 2880, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10195 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10185, reductionProjection3119, reductionProjection3532, reductionProjection3532, reductionProjection3078] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10195 (0 : Fin 5)) = canonicalInput13333.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10195 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10185 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10195 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10185 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13333 hH))).trans (reductionSound10185 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10195 (1 : Fin 5)) = canonicalInput13244.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10195 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3119 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10195 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3119 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13244 hH))).trans (reductionSound3119 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10195 (2 : Fin 5)) = canonicalInput13234.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10195 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3532 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10195 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3532 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13234 hH))).trans (reductionSound3532 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10195 (3 : Fin 5)) = canonicalInput13232.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10195 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3532 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10195 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3532 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13232 hH))).trans (reductionSound3532 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10195 (4 : Fin 5)) = canonicalInput13231.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10195 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3078 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10195 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3078 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13231 hH))).trans (reductionSound3078 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6573).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10195 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6573).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10195 (j : Fin 5)))
      1 1440 2880 2 ![144, 1440, 2880, 2880, 1440] ![20, 2, 1, 1, 2] reductionProjection10195 ![reductionProjection10185, reductionProjection3119, reductionProjection3532, reductionProjection3532, reductionProjection3078]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10196 : Integer.Sparse (Fin 1613) := [(0, 9), (81, -120), (94, 20), (434, 360), (669, 360), (697, -120), (698, 280), (1058, -120), (1059, 120), (1221, -120), (1226, 40), (1227, 160), (1251, -125), (1389, -240)]

def reductionPivot10196 : Matrix (Fin 5) (Fin 5) ℤ := ![![1, 0, 0, 0, -1], ![-1, 0, -1, 0, 2], ![0, -1, -1, 1, 1], ![0, 0, 1, 1, -2], ![0, 1, 1, -2, 0]]

theorem reductionSound10196 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10023).moment H =
      Integer.Sparse.eval reductionProjection10196 (momentVector H) := by
  have heq : reductionPivot10196 = (fun u v => (normalNode10023).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10023).moment H = injectiveMoment H reductionPivot10196 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10023).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot10196 0 = Pi.single (0 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10196 0 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1440, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10196 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1006, oldProjection2018, oldProjection1649, reductionProjection3666] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10196 (0 : Fin 4)) = canonicalInput27959.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10196 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1006 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10196 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1006 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound27959 hH))).trans (oldProjectionSound1006 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10196 (1 : Fin 4)) = canonicalInput19973.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10196 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2018 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10196 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2018 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19973 hH))).trans (oldProjectionSound2018 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10196 (2 : Fin 4)) = canonicalInput19763.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10196 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1649 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10196 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1649 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19763 hH))).trans (oldProjectionSound1649 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10196 (3 : Fin 4)) = canonicalInput19753.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10196 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3666 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10196 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3666 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19753 hH))).trans (reductionSound3666 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10023).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10196 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10023).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10196 (j : Fin 4)))
      2 1440 1440 2 ![720, 1440, 1440, 1440] ![2, 1, 1, 1] reductionProjection10196 ![oldProjection1006, oldProjection2018, oldProjection1649, reductionProjection3666]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10197 : Integer.Sparse (Fin 1613) := [(0, -8), (19, 4), (81, 288), (94, -37), (241, -16), (423, -144), (434, -288), (668, -144), (669, -288), (697, 144), (698, -608), (865, -144), (1050, 48), (1052, 48), (1055, 48), (1058, 144), (1059, -256), (1221, 144), (1226, -64), (1227, -336), (1250, -12), (1251, 151), (1389, 192)]

def reductionPivot10197 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, 1, -1, 0], ![-1, -2, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, -2, 1, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]

theorem reductionSound10197 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode6586).moment H =
      Integer.Sparse.eval reductionProjection10197 (momentVector H) := by
  have heq : reductionPivot10197 = (fun u v => (normalNode6586).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6586).moment H = injectiveMoment H reductionPivot10197 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6586).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10197 0 = Pi.single (2 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10197 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 1440, 2880, 1440, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10197 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3503, reductionProjection3525, reductionProjection10175, reductionProjection10196, reductionProjection10174] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10197 (0 : Fin 5)) = canonicalInput13561.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10197 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3503 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10197 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3503 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13561 hH))).trans (reductionSound3503 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10197 (1 : Fin 5)) = canonicalInput13230.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10197 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3525 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10197 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3525 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13230 hH))).trans (reductionSound3525 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10197 (2 : Fin 5)) = canonicalInput13203.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10197 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10175 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10197 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10175 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13203 hH))).trans (reductionSound10175 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10197 (3 : Fin 5)) = canonicalInput13199.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10197 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10196 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10197 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10196 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13199 hH))).trans (reductionSound10196 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10197 (4 : Fin 5)) = canonicalInput13198.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10197 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10174 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10197 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10174 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13198 hH))).trans (reductionSound10174 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6586).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10197 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6586).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10197 (j : Fin 5)))
      1 576 2880 5 ![2880, 1440, 2880, 1440, 2880] ![1, 2, 1, 2, 1] reductionProjection10197 ![reductionProjection3503, reductionProjection3525, reductionProjection10175, reductionProjection10196, reductionProjection10174]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10198 : Integer.Sparse (Fin 1613) := [(0, 11), (19, -20), (94, 55), (247, 80), (698, 80), (1227, 80), (1250, 60), (1251, -160), (1388, -240), (1389, -240)]

def reductionPivot10198 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, -1, 0, 0, 1], ![-1, 0, 0, -1, 2], ![0, 0, 1, -1, 0], ![0, 1, -1, 1, -1], ![1, 0, 0, 1, -2]]

theorem reductionSound10198 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10397).moment H =
      Integer.Sparse.eval reductionProjection10198 (momentVector H) := by
  have heq : reductionPivot10198 = (fun u v => (normalNode10397).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10397).moment H = injectiveMoment H reductionPivot10198 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10397).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10198 0 = Pi.single (4 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10198 4 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 288, 720, 288] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10198 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2813, oldProjection1748, oldProjection1241, oldProjection2630] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10198 (0 : Fin 4)) = canonicalInput15579.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10198 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2813 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10198 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2813 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15579 hH))).trans (oldProjectionSound2813 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10198 (1 : Fin 4)) = canonicalInput20454.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10198 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1748 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10198 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1748 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20454 hH))).trans (oldProjectionSound1748 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10198 (2 : Fin 4)) = canonicalInput20505.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10198 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1241 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10198 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1241 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20505 hH))).trans (oldProjectionSound1241 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10198 (3 : Fin 4)) = canonicalInput20508.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10198 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2630 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10198 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2630 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20508 hH))).trans (oldProjectionSound2630 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10397).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10198 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10397).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10198 (j : Fin 4)))
      2 2880 2880 2 ![1440, 288, 720, 288] ![2, 10, 4, 10] reductionProjection10198 ![oldProjection2813, oldProjection1748, oldProjection1241, oldProjection2630]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10199 : Integer.Sparse (Fin 1613) := [(0, -2), (94, -5), (1251, -35)]

def reductionPivot10199 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, -1, 0, 0, 2], ![0, 0, 0, 1, -1], ![0, 0, 1, -1, 0], ![1, 1, 0, 0, -2]]

theorem reductionSound10199 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode8324).moment H =
      Integer.Sparse.eval reductionProjection10199 (momentVector H) := by
  have heq : reductionPivot10199 = (fun u v => (normalNode8324).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8324).moment H = injectiveMoment H reductionPivot10199 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8324).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10199 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10199 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 360, 72, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10199 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2708, oldProjection2851, oldProjection1039, oldProjection2734] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10199 (0 : Fin 4)) = canonicalInput14738.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10199 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2708 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10199 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2708 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14738 hH))).trans (oldProjectionSound2708 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10199 (1 : Fin 4)) = canonicalInput15899.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10199 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2851 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10199 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2851 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15899 hH))).trans (oldProjectionSound2851 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10199 (2 : Fin 4)) = canonicalInput15985.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10199 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1039 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10199 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1039 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15985 hH))).trans (oldProjectionSound1039 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10199 (3 : Fin 4)) = canonicalInput15992.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10199 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2734 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10199 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2734 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15992 hH))).trans (oldProjectionSound2734 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8324).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10199 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8324).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10199 (j : Fin 4)))
      2 360 720 4 ![720, 360, 72, 720] ![1, 2, 10, 1] reductionProjection10199 ![oldProjection2708, oldProjection2851, oldProjection1039, oldProjection2734]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10200 : Integer.Sparse (Fin 1613) := [(0, -24), (19, 10), (81, 240), (94, -85), (247, -40), (433, -360), (698, -640), (869, -360), (1050, 120), (1052, 120), (1059, -120), (1221, 480), (1226, -80), (1227, -560), (1250, -30), (1251, 435), (1388, 120), (1389, 720)]

def reductionPivot10200 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, 1, -1, 0], ![-1, -2, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, -1, 1, -1], ![0, 1, 0, 0, -1], ![1, 0, -1, 0, 0]]

theorem reductionSound10200 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6587).moment H =
      Integer.Sparse.eval reductionProjection10200 (momentVector H) := by
  have heq : reductionPivot10200 = (fun u v => (normalNode6587).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6587).moment H = injectiveMoment H reductionPivot10200 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6587).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10200 0 = Pi.single (2 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10200 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 1440, 360, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10200 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10198, reductionProjection3782, reductionProjection10199, reductionProjection5943, reductionProjection3303] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10200 (0 : Fin 5)) = canonicalInput13562.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10200 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10198 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10200 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10198 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13562 hH))).trans (reductionSound10198 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10200 (1 : Fin 5)) = canonicalInput13235.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10200 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3782 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10200 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3782 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13235 hH))).trans (reductionSound3782 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10200 (2 : Fin 5)) = canonicalInput13207.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10200 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10199 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10200 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10199 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13207 hH))).trans (reductionSound10199 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10200 (3 : Fin 5)) = canonicalInput13205.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10200 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5943 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10200 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5943 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13205 hH))).trans (reductionSound5943 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10200 (4 : Fin 5)) = canonicalInput13204.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10200 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3303 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10200 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3303 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13204 hH))).trans (reductionSound3303 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6587).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10200 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6587).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10200 (j : Fin 5)))
      1 1440 2880 2 ![2880, 1440, 360, 2880, 2880] ![1, 2, 8, 1, 1] reductionProjection10200 ![reductionProjection10198, reductionProjection3782, reductionProjection10199, reductionProjection5943, reductionProjection3303]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10201 : Integer.Sparse (Fin 1613) := [(0, -81), (81, 480), (94, -175), (426, -720), (433, -720), (434, -720), (666, -720), (669, -1440), (697, 720), (698, -3680), (700, -400), (890, -720), (1058, 720), (1059, -1360), (1221, 480), (1226, -480), (1227, -1920), (1251, 1190), (1389, 1200)]

def reductionPivot10201 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, 1, -1, 0], ![-1, -2, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, -2, 1, 0], ![0, 1, 0, -1, 0], ![1, 0, 0, 0, -1]]

theorem reductionSound10201 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode6588).moment H =
      Integer.Sparse.eval reductionProjection10201 (momentVector H) := by
  have heq : reductionPivot10201 = (fun u v => (normalNode6588).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6588).moment H = injectiveMoment H reductionPivot10201 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6588).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10201 0 = Pi.single (2 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10201 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 144, 1440, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10201 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3590, reductionProjection3670, reductionProjection10179, reductionProjection3164, reductionProjection4002] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10201 (0 : Fin 5)) = canonicalInput13563.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10201 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3590 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10201 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3590 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13563 hH))).trans (reductionSound3590 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10201 (1 : Fin 5)) = canonicalInput13242.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10201 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3670 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10201 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3670 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13242 hH))).trans (reductionSound3670 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10201 (2 : Fin 5)) = canonicalInput13214.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10201 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10179 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10201 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10179 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13214 hH))).trans (reductionSound10179 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10201 (3 : Fin 5)) = canonicalInput13211.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10201 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3164 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10201 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3164 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13211 hH))).trans (reductionSound3164 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10201 (4 : Fin 5)) = canonicalInput13209.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10201 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4002 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10201 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4002 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13209 hH))).trans (reductionSound4002 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6588).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10201 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6588).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10201 (j : Fin 5)))
      1 2880 2880 1 ![2880, 144, 1440, 2880, 2880] ![1, 20, 2, 1, 1] reductionProjection10201 ![reductionProjection3590, reductionProjection3670, reductionProjection10179, reductionProjection3164, reductionProjection4002]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10202 : Integer.Sparse (Fin 1613) := [(0, -63), (81, 960), (94, -195), (426, -720), (433, -720), (434, -720), (668, -720), (669, -1440), (697, 720), (698, -3280), (700, -240), (1016, -720), (1058, 720), (1059, -1360), (1221, 240), (1226, -480), (1227, -1680), (1251, 1040), (1389, 480)]

def reductionPivot10202 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, 1, -1, 0], ![-1, -2, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, -2, 1, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, -1, 0]]

theorem reductionSound10202 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode6589).moment H =
      Integer.Sparse.eval reductionProjection10202 (momentVector H) := by
  have heq : reductionPivot10202 = (fun u v => (normalNode6589).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6589).moment H = injectiveMoment H reductionPivot10202 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6589).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10202 0 = Pi.single (2 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10202 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 2880, 1440, 576, 576] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10202 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3584, reductionProjection5949, reductionProjection10181, reductionProjection3667, reductionProjection3524] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10202 (0 : Fin 5)) = canonicalInput13564.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10202 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3584 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10202 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3584 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13564 hH))).trans (reductionSound3584 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10202 (1 : Fin 5)) = canonicalInput13243.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10202 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5949 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10202 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5949 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13243 hH))).trans (reductionSound5949 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10202 (2 : Fin 5)) = canonicalInput13215.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10202 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10181 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10202 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10181 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13215 hH))).trans (reductionSound10181 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10202 (3 : Fin 5)) = canonicalInput13212.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10202 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3667 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10202 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3667 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13212 hH))).trans (reductionSound3667 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10202 (4 : Fin 5)) = canonicalInput13210.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10202 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3524 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10202 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3524 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13210 hH))).trans (reductionSound3524 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6589).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10202 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6589).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10202 (j : Fin 5)))
      1 2880 2880 1 ![2880, 2880, 1440, 576, 576] ![1, 1, 2, 5, 5] reductionProjection10202 ![reductionProjection3584, reductionProjection5949, reductionProjection10181, reductionProjection3667, reductionProjection3524]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10203 : Integer.Sparse (Fin 1613) := [(0, 37), (94, 90), (698, 160), (1227, 160), (1251, -195), (1389, -240)]

def reductionPivot10203 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, -1, 0, 0, 1], ![-1, 0, 0, -1, 2], ![0, 0, 1, 1, -2], ![0, 1, -1, 1, -1], ![1, 0, 0, -1, 0]]

theorem reductionSound10203 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10398).moment H =
      Integer.Sparse.eval reductionProjection10203 (momentVector H) := by
  have heq : reductionPivot10203 = (fun u v => (normalNode10398).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10398).moment H = injectiveMoment H reductionPivot10203 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10398).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10203 0 = Pi.single (4 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10203 4 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 48, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10203 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2767, reductionProjection5054, oldProjection1242, oldProjection1790] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10203 (0 : Fin 4)) = canonicalInput15584.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10203 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2767 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10203 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2767 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15584 hH))).trans (oldProjectionSound2767 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10203 (1 : Fin 4)) = canonicalInput20464.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10203 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5054 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10203 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5054 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20464 hH))).trans (reductionSound5054 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10203 (2 : Fin 4)) = canonicalInput20515.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10203 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1242 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10203 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1242 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20515 hH))).trans (oldProjectionSound1242 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10203 (3 : Fin 4)) = canonicalInput20518.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10203 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1790 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10203 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1790 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20518 hH))).trans (oldProjectionSound1790 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10398).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10203 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10398).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10203 (j : Fin 4)))
      2 2880 2880 2 ![720, 720, 48, 1440] ![4, 4, 60, 2] reductionProjection10203 ![oldProjection2767, reductionProjection5054, oldProjection1242, oldProjection1790]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10204 : Integer.Sparse (Fin 1613) := [(0, 21), (81, -240), (94, 40), (489, 720), (698, 640), (700, 80), (1027, 720), (1059, 320), (1221, -240), (1227, 480), (1251, -285), (1389, -240)]

def reductionPivot10204 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 0, 1, 1, -2], ![0, 1, 1, -2, 0], ![1, 0, -1, 1, -1]]

theorem reductionSound10204 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10044).moment H =
      Integer.Sparse.eval reductionProjection10204 (momentVector H) := by
  have heq : reductionPivot10204 = (fun u v => (normalNode10044).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10044).moment H = injectiveMoment H reductionPivot10204 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10044).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10204 0 = Pi.single (4 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10204 4 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 720, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10204 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1685, oldProjection2076, oldProjection1078, oldProjection2018] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10204 (0 : Fin 4)) = canonicalInput14780.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10204 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1685 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10204 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1685 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14780 hH))).trans (oldProjectionSound1685 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10204 (1 : Fin 4)) = canonicalInput19819.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10204 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2076 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10204 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2076 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19819 hH))).trans (oldProjectionSound2076 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10204 (2 : Fin 4)) = canonicalInput19916.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10204 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1078 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10204 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1078 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19916 hH))).trans (oldProjectionSound1078 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10204 (3 : Fin 4)) = canonicalInput19924.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10204 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2018 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10204 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2018 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19924 hH))).trans (oldProjectionSound2018 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10044).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10204 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10044).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10204 (j : Fin 4)))
      2 2880 2880 2 ![1440, 1440, 720, 1440] ![2, 2, 4, 2] reductionProjection10204 ![oldProjection1685, oldProjection2076, oldProjection1078, oldProjection2018]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10205 : Integer.Sparse (Fin 1613) := [(0, -83), (81, 480), (94, -240), (489, -720), (698, -1680), (700, -80), (1027, -720), (1059, -480), (1221, 480), (1226, -240), (1227, -1120), (1251, 755), (1389, 1200)]

def reductionPivot10205 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, 1, -1, 0], ![-1, -2, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![0, 1, 0, -1, 0], ![1, 0, -1, 0, 0]]

theorem reductionSound10205 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode6590).moment H =
      Integer.Sparse.eval reductionProjection10205 (momentVector H) := by
  have heq : reductionPivot10205 = (fun u v => (normalNode6590).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6590).moment H = injectiveMoment H reductionPivot10205 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6590).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10205 0 = Pi.single (2 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10205 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 2880, 2880, 576, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10205 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10203, reductionProjection10204, reductionProjection10175, reductionProjection5961, reductionProjection3657] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10205 (0 : Fin 5)) = canonicalInput13565.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10205 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10203 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10205 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10203 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13565 hH))).trans (reductionSound10203 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10205 (1 : Fin 5)) = canonicalInput13248.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10205 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10204 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10205 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10204 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13248 hH))).trans (reductionSound10204 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10205 (2 : Fin 5)) = canonicalInput13222.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10205 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10175 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10205 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10175 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13222 hH))).trans (reductionSound10175 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10205 (3 : Fin 5)) = canonicalInput13218.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10205 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5961 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10205 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5961 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13218 hH))).trans (reductionSound5961 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10205 (4 : Fin 5)) = canonicalInput13216.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10205 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3657 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10205 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3657 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13216 hH))).trans (reductionSound3657 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6590).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10205 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6590).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10205 (j : Fin 5)))
      1 2880 2880 1 ![2880, 2880, 2880, 576, 1440] ![1, 1, 1, 5, 2] reductionProjection10205 ![reductionProjection10203, reductionProjection10204, reductionProjection10175, reductionProjection5961, reductionProjection3657]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10206 : Integer.Sparse (Fin 1613) := [(0, 16), (81, -240), (90, 80), (94, 75), (602, 720), (618, 720), (698, 1600), (1059, 400), (1221, -240), (1226, 480), (1227, 960), (1251, -305), (1389, -480)]

def reductionPivot10206 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, -1, 0], ![-1, -1, -1, 1, 2], ![0, 0, 1, 1, -2], ![0, 1, -1, 1, -1], ![1, 0, 0, -2, 1]]

theorem reductionSound10206 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode7632).moment H =
      Integer.Sparse.eval reductionProjection10206 (momentVector H) := by
  have heq : reductionPivot10206 = (fun u v => (normalNode7632).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7632).moment H = injectiveMoment H reductionPivot10206 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7632).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10206 0 = Pi.single (2 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10206 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![288, 1440, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10206 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1793, oldProjection1781, oldProjection2447, oldProjection1794] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10206 (0 : Fin 4)) = canonicalInput16094.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10206 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1793 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10206 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1793 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16094 hH))).trans (oldProjectionSound1793 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10206 (1 : Fin 4)) = canonicalInput14979.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10206 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1781 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10206 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1781 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14979 hH))).trans (oldProjectionSound1781 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10206 (2 : Fin 4)) = canonicalInput14956.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10206 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2447 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10206 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2447 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14956 hH))).trans (oldProjectionSound2447 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10206 (3 : Fin 4)) = canonicalInput14952.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10206 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1794 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10206 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1794 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14952 hH))).trans (oldProjectionSound1794 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7632).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10206 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7632).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10206 (j : Fin 4)))
      2 2880 2880 2 ![288, 1440, 1440, 1440] ![10, 2, 2, 2] reductionProjection10206 ![oldProjection1793, oldProjection1781, oldProjection2447, oldProjection1794]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10207 : Integer.Sparse (Fin 1613) := [(0, -6), (81, -720), (94, 45), (228, -240), (508, 720), (578, 720), (602, 1440), (603, 720), (638, 720), (639, 720), (642, 720), (674, 720), (698, 640), (1059, 400), (1221, -480), (1226, 160), (1227, 240), (1251, -105)]

def reductionPivot10207 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, 0, 0, -1], ![-1, -2, 0, 1, 2], ![0, 0, 2, 0, -2], ![0, 1, -1, -2, 2], ![1, 0, -1, 1, -1]]

theorem reductionSound10207 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode6615).moment H =
      Integer.Sparse.eval reductionProjection10207 (momentVector H) := by
  have heq : reductionPivot10207 = (fun u v => (normalNode6615).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6615).moment H = injectiveMoment H reductionPivot10207 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6615).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot10207 0 = Pi.single (1 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10207 1 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 1440, 2] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10207 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1766, reductionProjection1414, oldProjection1809, reductionProjection1411] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10207 (0 : Fin 4)) = canonicalInput16752.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10207 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1766 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10207 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1766 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16752 hH))).trans (oldProjectionSound1766 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10207 (1 : Fin 4)) = canonicalInput13299.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10207 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1414 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10207 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1414 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13299 hH))).trans (reductionSound1414 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10207 (2 : Fin 4)) = canonicalInput13260.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10207 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1809 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10207 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1809 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13260 hH))).trans (oldProjectionSound1809 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10207 (3 : Fin 4)) = canonicalInput13253.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10207 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1411 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10207 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1411 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13253 hH))).trans (reductionSound1411 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6615).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10207 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6615).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10207 (j : Fin 4)))
      2 2880 2880 2 ![1440, 1440, 1440, 2] ![2, 2, 2, 1440] reductionProjection10207 ![oldProjection1766, reductionProjection1414, oldProjection1809, reductionProjection1411]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

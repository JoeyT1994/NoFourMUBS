import NoFourMUBs.Step2.SOS.Canonical071
import NoFourMUBs.Step2.SOS.Canonical212
import NoFourMUBs.Step2.SOS.Canonical224
import NoFourMUBs.Step2.SOS.Canonical231
import NoFourMUBs.Step2.SOS.Canonical232
import NoFourMUBs.Step2.SOS.Canonical233
import NoFourMUBs.Step2.SOS.Canonical234
import NoFourMUBs.Step2.SOS.Canonical255
import NoFourMUBs.Step2.SOS.Canonical256
import NoFourMUBs.Step2.SOS.Canonical257
import NoFourMUBs.Step2.SOS.Canonical258
import NoFourMUBs.Step2.SOS.Canonical259
import NoFourMUBs.Step2.SOS.Canonical260
import NoFourMUBs.Step2.SOS.Canonical262
import NoFourMUBs.Step2.SOS.Canonical263
import NoFourMUBs.Step2.SOS.Canonical274
import NoFourMUBs.Step2.SOS.Canonical278
import NoFourMUBs.Step2.SOS.Canonical287
import NoFourMUBs.Step2.SOS.Canonical288
import NoFourMUBs.Step2.SOS.Canonical302
import NoFourMUBs.Step2.SOS.Canonical303
import NoFourMUBs.Step2.SOS.Canonical308
import NoFourMUBs.Step2.SOS.Canonical310
import NoFourMUBs.Step2.SOS.Canonical312
import NoFourMUBs.Step2.SOS.Canonical313
import NoFourMUBs.Step2.SOS.Canonical318
import NoFourMUBs.Step2.SOS.Canonical332
import NoFourMUBs.Step2.SOS.Canonical354
import NoFourMUBs.Step2.SOS.Canonical385
import NoFourMUBs.Step2.SOS.Canonical392
import NoFourMUBs.Step2.SOS.Canonical410
import NoFourMUBs.Step2.SOS.Canonical416
import NoFourMUBs.Step2.SOS.Canonical436
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections032
import NoFourMUBs.Step2.SOS.OldProjections033
import NoFourMUBs.Step2.SOS.OldProjections034
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions010
import NoFourMUBs.Step2.SOS.Reductions065
import NoFourMUBs.Step2.SOS.Reductions096
import NoFourMUBs.Step2.SOS.Reductions104
import NoFourMUBs.Step2.SOS.Reductions110
import NoFourMUBs.Step2.SOS.Reductions111
import NoFourMUBs.Step2.SOS.Reductions114
import NoFourMUBs.Step2.SOS.Reductions116
import NoFourMUBs.Step2.SOS.Reductions118
import NoFourMUBs.Step2.SOS.Reductions119
import NoFourMUBs.Step2.SOS.Reductions124
import NoFourMUBs.Step2.SOS.Reductions149
import NoFourMUBs.Step2.SOS.Reductions150
import NoFourMUBs.Step2.SOS.Reductions151
import NoFourMUBs.Step2.SOS.Reductions152
import NoFourMUBs.Step2.SOS.Reductions154
import NoFourMUBs.Step2.SOS.Reductions160
import NoFourMUBs.Step2.SOS.Reductions161
import NoFourMUBs.Step2.SOS.Reductions178
import NoFourMUBs.Step2.SOS.Reductions227
import NoFourMUBs.Step2.SOS.Reductions318
import NoFourMUBs.Step2.SOS.Reductions339
import NoFourMUBs.Step2.SOS.Reductions351
import NoFourMUBs.Step2.SOS.Reductions352
import NoFourMUBs.Step2.SOS.Reductions353
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical204
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical209
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection11328 : Integer.Sparse (Fin 1613) := [(0, 7), (94, 5), (1251, -30)]

def reductionPivot11328 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 1, -1, 1], ![0, 0, 0, 1, -1], ![0, 1, -1, 1, -1], ![1, 0, 0, -1, 0]]

theorem reductionSound11328 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode10461).moment H =
      Integer.Sparse.eval reductionProjection11328 (momentVector H) := by
  have heq : reductionPivot11328 = (fun u v => (normalNode10461).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10461).moment H = injectiveMoment H reductionPivot11328 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10461).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot11328 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11328 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11328 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection10863, oldProjection2846, oldProjection2783, oldProjection1349] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11328 (0 : Fin 4)) = canonicalInput17846.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11328 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10863 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11328 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10863 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17846 hH))).trans (reductionSound10863 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11328 (1 : Fin 4)) = canonicalInput26649.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11328 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2846 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11328 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2846 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound26649 hH))).trans (oldProjectionSound2846 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11328 (2 : Fin 4)) = canonicalInput26652.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11328 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2783 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11328 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2783 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound26652 hH))).trans (oldProjectionSound2783 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11328 (3 : Fin 4)) = canonicalInput26653.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11328 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1349 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11328 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1349 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound26653 hH))).trans (oldProjectionSound1349 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10461).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11328 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10461).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11328 (j : Fin 4)))
      2 720 720 2 ![720, 720, 720, 720] ![1, 1, 1, 1] reductionProjection11328 ![reductionProjection10863, oldProjection2846, oldProjection2783, oldProjection1349]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11329 : Integer.Sparse (Fin 1613) := [(0, 2), (94, 45), (698, 80), (1227, 320), (1251, -345), (1385, 720), (1389, -240)]

def reductionPivot11329 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, -1, 0, 0, 1], ![-1, 0, -1, 1, 1], ![0, 0, 1, -1, 0], ![0, 1, 1, -1, -1], ![1, 0, -1, 1, -1]]

theorem reductionSound11329 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10148).moment H =
      Integer.Sparse.eval reductionProjection11329 (momentVector H) := by
  have heq : reductionPivot11329 = (fun u v => (normalNode10148).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10148).moment H = injectiveMoment H reductionPivot11329 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10148).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11329 0 = Pi.single (4 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11329 4 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 72, 90, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11329 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4796, reductionProjection5155, oldProjection1114, oldProjection2628] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11329 (0 : Fin 4)) = canonicalInput14930.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11329 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4796 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11329 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4796 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14930 hH))).trans (reductionSound4796 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11329 (1 : Fin 4)) = canonicalInput19991.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11329 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5155 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11329 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5155 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19991 hH))).trans (reductionSound5155 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11329 (2 : Fin 4)) = canonicalInput20038.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((90 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11329 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1114 (momentVector H)
      have hh : (90 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11329 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1114 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (90 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20038 hH))).trans (oldProjectionSound1114 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11329 (3 : Fin 4)) = canonicalInput20040.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11329 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2628 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11329 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2628 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20040 hH))).trans (oldProjectionSound2628 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10148).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11329 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10148).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11329 (j : Fin 4)))
      2 2880 2880 2 ![1440, 72, 90, 72] ![2, 40, 32, 40] reductionProjection11329 ![reductionProjection4796, reductionProjection5155, oldProjection1114, oldProjection2628]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11330 : Integer.Sparse (Fin 1613) := [(0, -38), (94, -55), (698, -80), (1227, -80), (1251, 115)]

def reductionPivot11330 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -1, 0, 2], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -1, -1, 1]]

theorem reductionSound11330 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9100).moment H =
      Integer.Sparse.eval reductionProjection11330 (momentVector H) := by
  have heq : reductionPivot11330 = (fun u v => (normalNode9100).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9100).moment H = injectiveMoment H reductionPivot11330 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9100).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11330 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11330 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 720, 144, 48] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11330 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1119, oldProjection1260, oldProjection1081, oldProjection1242] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11330 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6697 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11330 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1119 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11330 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1119 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6697 hH))).trans (oldProjectionSound1119 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11330 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6542 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11330 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1260 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11330 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1260 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6542 hH))).trans (oldProjectionSound1260 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11330 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1081⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11330 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1081 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11330 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1081 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1081 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11330 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6537 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11330 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1242 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11330 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1242 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6537 hH))).trans (oldProjectionSound1242 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9100).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11330 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9100).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11330 (j : Fin 4)))
      2 1440 1440 2 ![360, 720, 144, 48] ![4, 2, 10, 30] reductionProjection11330 ![oldProjection1119, oldProjection1260, oldProjection1081, oldProjection1242]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11331 : Integer.Sparse (Fin 1613) := [(0, -88), (94, 75), (698, 80), (1227, 240), (1251, -385)]

def reductionPivot11331 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, 0, -1, 1, 1], ![0, 0, 0, 1, -1], ![0, 1, 1, -1, -1], ![1, -1, 1, -1, 0]]

theorem reductionSound11331 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10168).moment H =
      Integer.Sparse.eval reductionProjection11331 (momentVector H) := by
  have heq : reductionPivot11331 = (fun u v => (normalNode10168).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10168).moment H = injectiveMoment H reductionPivot11331 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10168).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11331 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11331 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 72, 360, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11331 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection11330, oldProjection2628, oldProjection2785, reductionProjection5152] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11331 (0 : Fin 4)) = canonicalInput19405.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11331 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection11330 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11331 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection11330 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19405 hH))).trans (reductionSound11330 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11331 (1 : Fin 4)) = canonicalInput20023.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11331 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2628 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11331 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2628 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20023 hH))).trans (oldProjectionSound2628 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11331 (2 : Fin 4)) = canonicalInput20031.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11331 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2785 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11331 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2785 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20031 hH))).trans (oldProjectionSound2785 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11331 (3 : Fin 4)) = canonicalInput20032.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11331 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5152 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11331 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5152 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20032 hH))).trans (reductionSound5152 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10168).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11331 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10168).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11331 (j : Fin 4)))
      2 2880 2880 2 ![1440, 72, 360, 144] ![2, 40, 8, 20] reductionProjection11331 ![reductionProjection11330, oldProjection2628, oldProjection2785, reductionProjection5152]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11332 : Integer.Sparse (Fin 1613) := [(0, -7), (94, -270), (610, -720), (617, -720), (698, -880), (1221, 240), (1226, -80), (1227, -1760), (1251, 1665), (1385, -1440), (1389, 1920)]

def reductionPivot11332 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, -1, 1, 0], ![-1, -1, 0, 1, 1], ![0, -1, 1, -1, 1], ![0, 0, 1, 0, -1], ![0, 1, -1, 0, 0], ![1, 1, 0, -1, -1]]

theorem reductionSound11332 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8525).moment H =
      Integer.Sparse.eval reductionProjection11332 (momentVector H) := by
  have heq : reductionPivot11332 = (fun u v => (normalNode8525).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8525).moment H = injectiveMoment H reductionPivot11332 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8525).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11332 0 = Pi.single (3 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11332 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 720, 2880, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11332 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11327, reductionProjection11328, reductionProjection11329, reductionProjection7272, reductionProjection11331] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11332 (0 : Fin 5)) = canonicalInput15015.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11332 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11327 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11332 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11327 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15015 hH))).trans (reductionSound11327 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11332 (1 : Fin 5)) = canonicalInput16370.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11332 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11328 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11332 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11328 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16370 hH))).trans (reductionSound11328 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11332 (2 : Fin 5)) = canonicalInput16377.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11332 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11329 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11332 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11329 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16377 hH))).trans (reductionSound11329 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11332 (3 : Fin 5)) = canonicalInput16379.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11332 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7272 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11332 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7272 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16379 hH))).trans (reductionSound7272 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11332 (4 : Fin 5)) = canonicalInput16380.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11332 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11331 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11332 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11331 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16380 hH))).trans (reductionSound11331 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8525).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11332 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8525).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11332 (j : Fin 5)))
      1 2880 2880 1 ![2880, 720, 2880, 2880, 2880] ![1, 4, 1, 1, 1] reductionProjection11332 ![reductionProjection11327, reductionProjection11328, reductionProjection11329, reductionProjection7272, reductionProjection11331]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11333 : Integer.Sparse (Fin 1613) := [(0, -18), (94, 25), (617, 720), (1227, 80), (1251, -225), (1385, 720), (1389, -240)]

def reductionPivot11333 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 1, 0], ![-1, -1, 0, 1, 1], ![0, -1, 1, -1, 1], ![0, 1, 1, -1, -1], ![1, 1, -1, 0, -1]]

theorem reductionSound11333 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8526).moment H =
      Integer.Sparse.eval reductionProjection11333 (momentVector H) := by
  have heq : reductionPivot11333 = (fun u v => (normalNode8526).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8526).moment H = injectiveMoment H reductionPivot11333 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8526).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11333 0 = Pi.single (3 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11333 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 72, 72, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11333 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection5129, oldProjection2628, oldProjection2628, reductionProjection5129] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11333 (0 : Fin 4)) = canonicalInput15016.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11333 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5129 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11333 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5129 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15016 hH))).trans (reductionSound5129 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11333 (1 : Fin 4)) = canonicalInput16371.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11333 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2628 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11333 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2628 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16371 hH))).trans (oldProjectionSound2628 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11333 (2 : Fin 4)) = canonicalInput16386.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11333 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2628 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11333 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2628 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16386 hH))).trans (oldProjectionSound2628 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11333 (3 : Fin 4)) = canonicalInput16388.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11333 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5129 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11333 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5129 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16388 hH))).trans (reductionSound5129 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8526).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11333 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8526).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11333 (j : Fin 4)))
      2 1440 1440 2 ![1440, 72, 72, 1440] ![1, 20, 20, 1] reductionProjection11333 ![reductionProjection5129, oldProjection2628, oldProjection2628, reductionProjection5129]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11334 : Integer.Sparse (Fin 1613) := [(0, 9), (94, 13), (610, 144), (617, 432), (698, 32), (1227, 96), (1251, -72)]

def reductionPivot11334 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 1, 0], ![-1, -1, 0, 1, 1], ![0, -1, 1, -1, 1], ![0, 2, -1, 0, -1], ![1, 0, 1, -1, -1]]

theorem reductionSound11334 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode8527).moment H =
      Integer.Sparse.eval reductionProjection11334 (momentVector H) := by
  have heq : reductionPivot11334 = (fun u v => (normalNode8527).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8527).moment H = injectiveMoment H reductionPivot11334 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8527).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11334 0 = Pi.single (3 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11334 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![288, 1440, 720, 288] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11334 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3580, oldProjection2581, reductionProjection3788, oldProjection2630] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11334 (0 : Fin 4)) = canonicalInput15017.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11334 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3580 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11334 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3580 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15017 hH))).trans (reductionSound3580 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11334 (1 : Fin 4)) = canonicalInput16372.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11334 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2581 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11334 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2581 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16372 hH))).trans (oldProjectionSound2581 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11334 (2 : Fin 4)) = canonicalInput16390.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11334 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3788 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11334 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3788 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16390 hH))).trans (reductionSound3788 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11334 (3 : Fin 4)) = canonicalInput16392.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11334 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2630 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11334 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2630 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16392 hH))).trans (oldProjectionSound2630 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8527).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11334 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8527).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11334 (j : Fin 4)))
      2 576 2880 10 ![288, 1440, 720, 288] ![10, 2, 4, 10] reductionProjection11334 ![reductionProjection3580, oldProjection2581, reductionProjection3788, oldProjection2630]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11335 : Integer.Sparse (Fin 1613) := [(0, 9), (94, 15), (698, 80), (1227, 320), (1251, -310), (1385, 720), (1389, -480)]

def reductionPivot11335 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -1, 0, 1, 1], ![0, -1, 1, -1, 1], ![0, 1, -1, 1, -1], ![1, 1, -1, -1, 0]]

theorem reductionSound11335 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8528).moment H =
      Integer.Sparse.eval reductionProjection11335 (momentVector H) := by
  have heq : reductionPivot11335 = (fun u v => (normalNode8528).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8528).moment H = injectiveMoment H reductionPivot11335 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8528).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11335 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11335 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11335 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection5157, oldProjection2071, oldProjection2071, reductionProjection5157] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11335 (0 : Fin 4)) = canonicalInput18410.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11335 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5157 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11335 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5157 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18410 hH))).trans (reductionSound5157 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11335 (1 : Fin 4)) = canonicalInput16446.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11335 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2071 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11335 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2071 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16446 hH))).trans (oldProjectionSound2071 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11335 (2 : Fin 4)) = canonicalInput16387.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11335 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2071 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11335 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2071 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16387 hH))).trans (oldProjectionSound2071 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11335 (3 : Fin 4)) = canonicalInput16385.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11335 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5157 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11335 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5157 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16385 hH))).trans (reductionSound5157 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8528).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11335 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8528).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11335 (j : Fin 4)))
      2 1440 1440 2 ![1440, 1440, 1440, 1440] ![1, 1, 1, 1] reductionProjection11335 ![reductionProjection5157, oldProjection2071, oldProjection2071, reductionProjection5157]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11336 : Integer.Sparse (Fin 1613) := [(0, 79), (94, 10), (698, 480), (1027, 720), (1059, 80), (1227, 720), (1251, -565), (1389, -960)]

def reductionPivot11336 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -1, 0, 1, 1], ![0, -1, 1, -1, 1], ![0, 2, -1, -1, 0], ![1, 0, -1, 1, -1]]

theorem reductionSound11336 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8529).moment H =
      Integer.Sparse.eval reductionProjection11336 (momentVector H) := by
  have heq : reductionPivot11336 = (fun u v => (normalNode8529).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8529).moment H = injectiveMoment H reductionPivot11336 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8529).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11336 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11336 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 36, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11336 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2071, oldProjection2072, oldProjection2071, oldProjection2076] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11336 (0 : Fin 4)) = canonicalInput18411.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11336 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2071 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11336 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2071 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18411 hH))).trans (oldProjectionSound2071 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11336 (1 : Fin 4)) = canonicalInput16450.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11336 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2072 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11336 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2072 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16450 hH))).trans (oldProjectionSound2072 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11336 (2 : Fin 4)) = canonicalInput16393.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11336 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2071 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11336 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2071 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16393 hH))).trans (oldProjectionSound2071 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11336 (3 : Fin 4)) = canonicalInput16391.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11336 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2076 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11336 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2076 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16391 hH))).trans (oldProjectionSound2076 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8529).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11336 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8529).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11336 (j : Fin 4)))
      2 2880 2880 2 ![1440, 36, 1440, 1440] ![2, 80, 2, 2] reductionProjection11336 ![oldProjection2071, oldProjection2072, oldProjection2071, oldProjection2076]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11337 : Integer.Sparse (Fin 1613) := [(0, 11), (94, 2), (610, 144), (617, 288), (698, 32), (1227, 96), (1251, -57), (1385, 144), (1389, -96)]

def reductionPivot11337 : Matrix (Fin 5) (Fin 5) ℤ := ![![1, 0, 0, 0, -1], ![-1, -1, 0, 1, 1], ![0, -1, 1, -1, 1], ![0, 1, -2, 1, 0], ![0, 1, 1, -1, -1]]

theorem reductionSound11337 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode8532).moment H =
      Integer.Sparse.eval reductionProjection11337 (momentVector H) := by
  have heq : reductionPivot11337 = (fun u v => (normalNode8532).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8532).moment H = injectiveMoment H reductionPivot11337 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8532).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot11337 0 = Pi.single (0 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11337 0 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 1440, 1440, 288] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11337 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1119, oldProjection2071, reductionProjection5129, reductionProjection3580] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11337 (0 : Fin 4)) = canonicalInput26265.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11337 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1119 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11337 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1119 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound26265 hH))).trans (oldProjectionSound1119 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11337 (1 : Fin 4)) = canonicalInput16840.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11337 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2071 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11337 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2071 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16840 hH))).trans (oldProjectionSound2071 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11337 (2 : Fin 4)) = canonicalInput16398.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11337 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5129 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11337 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5129 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16398 hH))).trans (reductionSound5129 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11337 (3 : Fin 4)) = canonicalInput16383.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11337 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3580 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11337 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3580 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16383 hH))).trans (reductionSound3580 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8532).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11337 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8532).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11337 (j : Fin 4)))
      2 576 2880 10 ![360, 1440, 1440, 288] ![8, 2, 2, 10] reductionProjection11337 ![oldProjection1119, oldProjection2071, reductionProjection5129, reductionProjection3580]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11338 : Integer.Sparse (Fin 1613) := [(0, 37), (610, 1440), (617, 720), (698, 560), (1016, 720), (1059, 160), (1227, 560), (1251, -285)]

def reductionPivot11338 : Matrix (Fin 5) (Fin 5) ℤ := ![![1, 0, 0, -1, 0], ![-1, -1, 0, 1, 1], ![0, -1, 1, -1, 1], ![0, 1, -2, 1, 0], ![0, 1, 1, 0, -2]]

theorem reductionSound11338 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8533).moment H =
      Integer.Sparse.eval reductionProjection11338 (momentVector H) := by
  have heq : reductionPivot11338 = (fun u v => (normalNode8533).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8533).moment H = injectiveMoment H reductionPivot11338 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8533).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot11338 0 = Pi.single (0 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11338 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 180, 720, 288] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11338 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1006, reductionProjection3334, oldProjection2084, reductionProjection3580] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11338 (0 : Fin 4)) = canonicalInput25102.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11338 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1006 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11338 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1006 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25102 hH))).trans (oldProjectionSound1006 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11338 (1 : Fin 4)) = canonicalInput16839.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11338 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3334 (momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11338 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3334 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16839 hH))).trans (reductionSound3334 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11338 (2 : Fin 4)) = canonicalInput16397.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11338 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2084 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11338 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2084 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16397 hH))).trans (oldProjectionSound2084 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11338 (3 : Fin 4)) = canonicalInput16383.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11338 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3580 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11338 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3580 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16383 hH))).trans (reductionSound3580 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8533).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11338 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8533).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11338 (j : Fin 4)))
      2 2880 2880 2 ![720, 180, 720, 288] ![4, 16, 4, 10] reductionProjection11338 ![oldProjection1006, reductionProjection3334, oldProjection2084, reductionProjection3580]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11339 : Integer.Sparse (Fin 1613) := [(0, 23), (94, 20), (617, 360), (698, 120), (1227, 280), (1251, -215), (1384, -720), (1385, 360), (1389, -720)]

def reductionPivot11339 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, -1, 1, 1, 0], ![0, 1, -1, 1, -1], ![1, -1, 1, 0, -1], ![1, 1, -1, -2, 1]]

theorem reductionSound11339 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8535).moment H =
      Integer.Sparse.eval reductionProjection11339 (momentVector H) := by
  have heq : reductionPivot11339 = (fun u v => (normalNode8535).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8535).moment H = injectiveMoment H reductionPivot11339 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode8535).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode8535).entries)).symm
  have hshape : reductionPivot11339 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11339 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1440, 1440, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11339 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3803, reductionProjection5129, reductionProjection4796, reductionProjection4844] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11339 (0 : Fin 4)) = canonicalInput4595.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11339 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3803 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11339 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3803 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound4595 hH))).trans (reductionSound3803 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11339 (1 : Fin 4)) = canonicalInput18376.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11339 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5129 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11339 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5129 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18376 hH))).trans (reductionSound5129 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11339 (2 : Fin 4)) = canonicalInput18489.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11339 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4796 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11339 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4796 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18489 hH))).trans (reductionSound4796 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11339 (3 : Fin 4)) = canonicalInput18490.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11339 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4844 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11339 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4844 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18490 hH))).trans (reductionSound4844 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8535).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11339 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8535).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11339 (j : Fin 4)))
      2 1440 1440 2 ![1, 1440, 1440, 720] ![1440, 1, 1, 2] reductionProjection11339 ![reductionProjection3803, reductionProjection5129, reductionProjection4796, reductionProjection4844]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11340 : Integer.Sparse (Fin 1613) := [(0, 13), (94, 60), (698, 480), (1059, 240), (1226, 40), (1227, 200), (1251, -25)]

def reductionPivot11340 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, 1, -1], ![-1, 0, -1, 1, 1], ![0, 0, 2, 0, -2], ![0, 1, -1, -1, 1], ![1, -1, 0, -1, 1]]

theorem reductionSound11340 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10173).moment H =
      Integer.Sparse.eval reductionProjection11340 (momentVector H) := by
  have heq : reductionPivot11340 = (fun u v => (normalNode10173).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10173).moment H = injectiveMoment H reductionPivot11340 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10173).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11340 0 = Pi.single (3 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11340 3 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 1440, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11340 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2065, oldProjection2511, oldProjection2586, reductionProjection4953] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11340 (0 : Fin 4)) = canonicalInput20384.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11340 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2065 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11340 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2065 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20384 hH))).trans (oldProjectionSound2065 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11340 (1 : Fin 4)) = canonicalInput20060.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11340 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2511 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11340 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2511 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20060 hH))).trans (oldProjectionSound2511 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11340 (2 : Fin 4)) = canonicalInput20056.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11340 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2586 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11340 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2586 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20056 hH))).trans (oldProjectionSound2586 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11340 (3 : Fin 4)) = canonicalInput20055.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11340 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4953 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11340 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4953 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20055 hH))).trans (reductionSound4953 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10173).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11340 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10173).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11340 (j : Fin 4)))
      2 1440 1440 2 ![1440, 1440, 1440, 360] ![1, 1, 1, 4] reductionProjection11340 ![oldProjection2065, oldProjection2511, oldProjection2586, reductionProjection4953]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11341 : Integer.Sparse (Fin 1613) := [(0, -3), (94, 20), (1227, 80), (1251, -145)]

def reductionPivot11341 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, -1, 0, 1, 1], ![0, 0, 0, 1, -1], ![0, 1, 0, -1, 0], ![1, 0, 1, -1, -1]]

theorem reductionSound11341 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8690).moment H =
      Integer.Sparse.eval reductionProjection11341 (momentVector H) := by
  have heq : reductionPivot11341 = (fun u v => (normalNode8690).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8690).moment H = injectiveMoment H reductionPivot11341 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8690).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11341 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11341 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 144, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11341 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection11273, oldProjection2783, reductionProjection5152, oldProjection1118] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11341 (0 : Fin 4)) = canonicalInput14887.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11341 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection11273 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11341 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection11273 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14887 hH))).trans (reductionSound11273 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11341 (1 : Fin 4)) = canonicalInput16569.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11341 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2783 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11341 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2783 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16569 hH))).trans (oldProjectionSound2783 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11341 (2 : Fin 4)) = canonicalInput16614.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11341 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5152 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11341 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5152 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16614 hH))).trans (reductionSound5152 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11341 (3 : Fin 4)) = canonicalInput16619.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11341 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1118 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11341 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1118 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16619 hH))).trans (oldProjectionSound1118 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8690).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11341 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8690).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11341 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 144, 720] ![10, 2, 10, 2] reductionProjection11341 ![reductionProjection11273, oldProjection2783, reductionProjection5152, oldProjection1118]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11342 : Integer.Sparse (Fin 1613) := [(0, -10), (94, -33), (610, -72), (617, -216), (698, -280), (1059, -104), (1226, -48), (1227, -192), (1251, 145)]

def reductionPivot11342 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, -1, 1, 0, 0], ![-1, -1, 0, 1, 1], ![0, 0, -1, 0, 1], ![0, 0, 0, 1, -1], ![0, 2, -1, -1, 0], ![1, 0, 1, -1, -1]]

theorem reductionSound11342 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode8538).moment H =
      Integer.Sparse.eval reductionProjection11342 (momentVector H) := by
  have heq : reductionPivot11342 = (fun u v => (normalNode8538).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8538).moment H = injectiveMoment H reductionPivot11342 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8538).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11342 0 = Pi.single (2 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11342 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 576, 576, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11342 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11340, reductionProjection11282, reductionProjection11334, reductionProjection11341, reductionProjection4877] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11342 (0 : Fin 5)) = canonicalInput13597.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11342 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11340 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11342 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11340 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13597 hH))).trans (reductionSound11340 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11342 (1 : Fin 5)) = canonicalInput16369.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11342 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11282 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11342 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11282 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16369 hH))).trans (reductionSound11282 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11342 (2 : Fin 5)) = canonicalInput16551.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11342 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11334 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11342 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11334 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16551 hH))).trans (reductionSound11334 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11342 (3 : Fin 5)) = (normalNode8690).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11342 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11341 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11342 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11341 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound11341 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11342 (4 : Fin 5)) = canonicalInput16552.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11342 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4877 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11342 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4877 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16552 hH))).trans (reductionSound4877 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8538).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11342 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8538).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11342 (j : Fin 5)))
      1 288 2880 10 ![1440, 576, 576, 1440, 288] ![2, 5, 5, 2, 10] reductionProjection11342 ![reductionProjection11340, reductionProjection11282, reductionProjection11334, reductionProjection11341, reductionProjection4877]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11343 : Integer.Sparse (Fin 1613) := [(0, 8), (94, 19), (698, 176), (1059, 16), (1226, 64), (1227, 80), (1251, -57)]

def reductionPivot11343 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, 0, -1, 1, 1], ![0, 0, 1, 1, -2], ![0, 1, 0, -2, 1], ![1, -1, -1, 0, 1]]

theorem reductionSound11343 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode10178).moment H =
      Integer.Sparse.eval reductionProjection11343 (momentVector H) := by
  have heq : reductionPivot11343 = (fun u v => (normalNode10178).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10178).moment H = injectiveMoment H reductionPivot11343 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10178).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11343 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11343 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 720, 288] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11343 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2584, oldProjection2063, oldProjection2084, oldProjection2744] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11343 (0 : Fin 4)) = canonicalInput21264.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11343 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2584 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11343 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2584 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21264 hH))).trans (oldProjectionSound2584 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11343 (1 : Fin 4)) = canonicalInput20061.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11343 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2063 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11343 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2063 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20061 hH))).trans (oldProjectionSound2063 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11343 (2 : Fin 4)) = canonicalInput20047.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11343 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2084 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11343 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2084 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20047 hH))).trans (oldProjectionSound2084 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11343 (3 : Fin 4)) = canonicalInput20046.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11343 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2744 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11343 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2744 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20046 hH))).trans (oldProjectionSound2744 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10178).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11343 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10178).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11343 (j : Fin 4)))
      2 576 2880 10 ![1440, 1440, 720, 288] ![2, 2, 4, 10] reductionProjection11343 ![oldProjection2584, oldProjection2063, oldProjection2084, oldProjection2744]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11344 : Integer.Sparse (Fin 1613) := [(0, 17), (94, 10), (698, 320), (1059, 160), (1221, -480), (1227, 320), (1251, -95), (1389, -720)]

def reductionPivot11344 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, 1, -1], ![-1, -1, 0, 1, 1], ![0, -1, 2, -1, 0], ![0, 1, -2, 0, 1], ![1, 1, 0, -1, -1]]

theorem reductionSound11344 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8561).moment H =
      Integer.Sparse.eval reductionProjection11344 (momentVector H) := by
  have heq : reductionPivot11344 = (fun u v => (normalNode8561).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8561).moment H = injectiveMoment H reductionPivot11344 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8561).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11344 0 = Pi.single (3 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11344 3 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 144, 144, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11344 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2018, oldProjection2017, oldProjection2017, oldProjection2018] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11344 (0 : Fin 4)) = canonicalInput17553.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11344 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2018 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11344 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2018 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17553 hH))).trans (oldProjectionSound2018 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11344 (1 : Fin 4)) = canonicalInput16472.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11344 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2017 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11344 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2017 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16472 hH))).trans (oldProjectionSound2017 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11344 (2 : Fin 4)) = canonicalInput16444.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11344 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2017 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11344 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2017 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16444 hH))).trans (oldProjectionSound2017 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11344 (3 : Fin 4)) = canonicalInput16443.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11344 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2018 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11344 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2018 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16443 hH))).trans (oldProjectionSound2018 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8561).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11344 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8561).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11344 (j : Fin 4)))
      2 1440 1440 2 ![1440, 144, 144, 1440] ![1, 10, 10, 1] reductionProjection11344 ![oldProjection2018, oldProjection2017, oldProjection2017, oldProjection2018]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11345 : Integer.Sparse (Fin 1613) := [(0, -6), (94, 5), (1251, -5)]

def reductionPivot11345 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, -1, 0, 1, 1], ![0, 0, 0, 1, -1], ![0, 0, 1, -1, 0], ![1, 1, 0, -1, -1]]

theorem reductionSound11345 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode8687).moment H =
      Integer.Sparse.eval reductionProjection11345 (momentVector H) := by
  have heq : reductionPivot11345 = (fun u v => (normalNode8687).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8687).moment H = injectiveMoment H reductionPivot11345 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8687).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11345 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11345 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 90, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11345 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection11273, oldProjection2846, oldProjection1114, oldProjection2785] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11345 (0 : Fin 4)) = canonicalInput14880.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11345 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection11273 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11345 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection11273 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14880 hH))).trans (reductionSound11273 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11345 (1 : Fin 4)) = canonicalInput16565.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11345 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2846 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11345 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2846 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16565 hH))).trans (oldProjectionSound2846 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11345 (2 : Fin 4)) = canonicalInput16608.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((90 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11345 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1114 (momentVector H)
      have hh : (90 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11345 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1114 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (90 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16608 hH))).trans (oldProjectionSound1114 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11345 (3 : Fin 4)) = canonicalInput16610.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11345 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2785 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11345 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2785 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16610 hH))).trans (oldProjectionSound2785 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8687).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11345 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8687).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11345 (j : Fin 4)))
      2 360 720 4 ![144, 720, 90, 360] ![5, 1, 8, 2] reductionProjection11345 ![reductionProjection11273, oldProjection2846, oldProjection1114, oldProjection2785]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11346 : Integer.Sparse (Fin 1613) := [(0, -13), (94, -47), (610, -144), (617, -144), (698, -416), (1059, -112), (1221, 240), (1226, -64), (1227, -416), (1251, 258), (1385, -144), (1389, 480)]

def reductionPivot11346 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, -1, 1, 0, 0], ![-1, -1, 0, 1, 1], ![0, 0, 0, -1, 1], ![0, 0, 1, 0, -1], ![0, 1, -2, 1, 0], ![1, 1, 0, -1, -1]]

theorem reductionSound11346 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode8539).moment H =
      Integer.Sparse.eval reductionProjection11346 (momentVector H) := by
  have heq : reductionPivot11346 = (fun u v => (normalNode8539).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8539).moment H = injectiveMoment H reductionPivot11346 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8539).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11346 0 = Pi.single (2 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11346 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![576, 2880, 1440, 360, 576] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11346 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11343, reductionProjection7272, reductionProjection11344, reductionProjection11345, reductionProjection11282] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11346 (0 : Fin 5)) = canonicalInput13608.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11346 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11343 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11346 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11343 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13608 hH))).trans (reductionSound11343 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11346 (1 : Fin 5)) = canonicalInput16379.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11346 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7272 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11346 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7272 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16379 hH))).trans (reductionSound7272 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11346 (2 : Fin 5)) = canonicalInput16590.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11346 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11344 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11346 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11344 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16590 hH))).trans (reductionSound11344 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11346 (3 : Fin 5)) = canonicalInput16592.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11346 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11345 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11346 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11345 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16592 hH))).trans (reductionSound11345 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11346 (4 : Fin 5)) = (normalNode8741).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11346 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11282 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11346 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11282 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound11282 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8539).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11346 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8539).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11346 (j : Fin 5)))
      1 576 2880 5 ![576, 2880, 1440, 360, 576] ![5, 1, 2, 8, 5] reductionProjection11346 ![reductionProjection11343, reductionProjection7272, reductionProjection11344, reductionProjection11345, reductionProjection11282]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11347 : Integer.Sparse (Fin 1613) := [(0, -88), (94, -75), (610, -360), (617, -720), (698, -1200), (1027, -360), (1059, -320), (1226, -200), (1227, -1160), (1251, 805), (1385, -360), (1389, 840)]

def reductionPivot11347 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, -1, 1, 0, 0], ![-1, -1, 0, 1, 1], ![0, 0, 0, -1, 1], ![0, 1, -2, 1, 0], ![0, 1, 1, -1, -1], ![1, 0, 0, 0, -1]]

theorem reductionSound11347 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8540).moment H =
      Integer.Sparse.eval reductionProjection11347 (momentVector H) := by
  have heq : reductionPivot11347 = (fun u v => (normalNode8540).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8540).moment H = injectiveMoment H reductionPivot11347 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8540).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11347 0 = Pi.single (2 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11347 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 576, 1440, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11347 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3981, reductionProjection11337, reductionProjection11341, reductionProjection11249, reductionProjection11336] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11347 (0 : Fin 5)) = canonicalInput13610.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11347 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3981 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11347 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3981 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13610 hH))).trans (reductionSound3981 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11347 (1 : Fin 5)) = (normalNode8532).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11347 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11337 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11347 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11337 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound11337 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11347 (2 : Fin 5)) = canonicalInput16591.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11347 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11341 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11347 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11341 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16591 hH))).trans (reductionSound11341 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11347 (3 : Fin 5)) = canonicalInput16596.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11347 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11249 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11347 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11249 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16596 hH))).trans (reductionSound11249 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11347 (4 : Fin 5)) = canonicalInput16597.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11347 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11336 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11347 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11336 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16597 hH))).trans (reductionSound11336 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8540).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11347 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8540).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11347 (j : Fin 5)))
      1 1440 2880 2 ![2880, 576, 1440, 2880, 2880] ![1, 5, 2, 1, 1] reductionProjection11347 ![reductionProjection3981, reductionProjection11337, reductionProjection11341, reductionProjection11249, reductionProjection11336]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11348 : Integer.Sparse (Fin 1613) := [(0, -106), (81, 720), (90, -80), (94, -335), (489, -720), (602, -2160), (617, -720), (618, -720), (635, -720), (636, -720), (698, -3680), (700, -80), (1027, -720), (1059, -1280), (1226, -800), (1227, -2480), (1251, 1455), (1389, 1680)]

def reductionPivot11348 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, -1, 1, 0, 0], ![-1, -1, 0, 1, 1], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![0, 1, 0, 0, -1], ![1, 0, -1, -2, 2]]

theorem reductionSound11348 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8541).moment H =
      Integer.Sparse.eval reductionProjection11348 (momentVector H) := by
  have heq : reductionPivot11348 = (fun u v => (normalNode8541).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8541).moment H = injectiveMoment H reductionPivot11348 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8541).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11348 0 = Pi.single (2 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11348 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![576, 2880, 1440, 360, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11348 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10865, reductionProjection10853, reductionProjection10860, reductionProjection10859, reductionProjection10864] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11348 (0 : Fin 5)) = canonicalInput13614.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11348 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10865 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11348 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10865 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13614 hH))).trans (reductionSound10865 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11348 (1 : Fin 5)) = canonicalInput16476.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11348 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10853 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11348 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10853 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16476 hH))).trans (reductionSound10853 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11348 (2 : Fin 5)) = canonicalInput16671.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11348 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10860 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11348 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10860 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16671 hH))).trans (reductionSound10860 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11348 (3 : Fin 5)) = canonicalInput16683.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11348 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10859 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11348 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10859 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16683 hH))).trans (reductionSound10859 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11348 (4 : Fin 5)) = canonicalInput16684.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11348 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10864 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11348 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10864 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16684 hH))).trans (reductionSound10864 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8541).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11348 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8541).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11348 (j : Fin 5)))
      1 2880 2880 1 ![576, 2880, 1440, 360, 2880] ![5, 1, 2, 8, 1] reductionProjection11348 ![reductionProjection10865, reductionProjection10853, reductionProjection10860, reductionProjection10859, reductionProjection10864]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11349 : Integer.Sparse (Fin 1613) := [(0, -2), (94, 55), (241, 80), (426, 1440), (618, 720), (698, 1200), (955, 720), (1015, 1440), (1226, 960), (1227, 480), (1251, -115)]

def reductionPivot11349 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, -1, 1, 0, 0], ![-1, -1, 0, 1, 1], ![0, 1, -2, 0, 1], ![0, 1, 1, 1, -3], ![1, 0, 0, -2, 1]]

theorem reductionSound11349 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8542).moment H =
      Integer.Sparse.eval reductionProjection11349 (momentVector H) := by
  have heq : reductionPivot11349 = (fun u v => (normalNode8542).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8542).moment H = injectiveMoment H reductionPivot11349 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8542).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11349 0 = Pi.single (2 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11349 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![18, 1440, 72, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11349 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection346, oldProjection2532, oldProjection1993, oldProjection2074] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11349 (0 : Fin 4)) = canonicalInput13626.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11349 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection346 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11349 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection346 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13626 hH))).trans (reductionSound346 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11349 (1 : Fin 4)) = canonicalInput16562.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11349 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2532 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11349 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2532 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16562 hH))).trans (oldProjectionSound2532 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11349 (2 : Fin 4)) = canonicalInput16769.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11349 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1993 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11349 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1993 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16769 hH))).trans (oldProjectionSound1993 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11349 (3 : Fin 4)) = canonicalInput16770.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11349 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2074 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11349 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2074 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16770 hH))).trans (oldProjectionSound2074 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8542).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11349 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8542).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11349 (j : Fin 4)))
      2 2880 2880 2 ![18, 1440, 72, 1440] ![160, 2, 40, 2] reductionProjection11349 ![reductionProjection346, oldProjection2532, oldProjection1993, oldProjection2074]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11350 : Integer.Sparse (Fin 1613) := [(0, 52), (94, 95), (247, 80), (610, 720), (611, 720), (616, 720), (617, 1440), (697, -240), (698, 480), (1059, 80), (1226, 80), (1227, 640), (1251, -385), (1389, -240)]

def reductionPivot11350 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, -1, 0, 1, 1], ![0, -1, 1, 1, -1], ![0, 1, 1, 0, -2], ![1, 1, -1, -2, 1]]

theorem reductionSound11350 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8546).moment H =
      Integer.Sparse.eval reductionProjection11350 (momentVector H) := by
  have heq : reductionPivot11350 = (fun u v => (normalNode8546).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8546).moment H = injectiveMoment H reductionPivot11350 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8546).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11350 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11350 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 720, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11350 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3718, reductionProjection3529, reductionProjection4822, reductionProjection5708] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11350 (0 : Fin 4)) = canonicalInput14819.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11350 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3718 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11350 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3718 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14819 hH))).trans (reductionSound3718 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11350 (1 : Fin 4)) = canonicalInput16374.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11350 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3529 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11350 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3529 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16374 hH))).trans (reductionSound3529 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11350 (2 : Fin 4)) = canonicalInput16413.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11350 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4822 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11350 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4822 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16413 hH))).trans (reductionSound4822 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11350 (3 : Fin 4)) = canonicalInput16415.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11350 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5708 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11350 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5708 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16415 hH))).trans (reductionSound5708 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8546).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11350 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8546).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11350 (j : Fin 4)))
      2 2880 2880 2 ![1440, 720, 1440, 1440] ![2, 4, 2, 2] reductionProjection11350 ![reductionProjection3718, reductionProjection3529, reductionProjection4822, reductionProjection5708]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11351 : Integer.Sparse (Fin 1613) := [(0, 42), (94, 85), (669, 720), (697, -240), (698, 320), (1059, 80), (1227, 320), (1250, 60), (1251, -325), (1388, -240), (1389, -720)]

def reductionPivot11351 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, 0, -1, 0], ![-1, 0, -1, 0, 2], ![0, -1, -1, 1, 1], ![0, 0, 1, 1, -2], ![1, 0, 1, -1, -1]]

theorem reductionSound11351 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10021).moment H =
      Integer.Sparse.eval reductionProjection11351 (momentVector H) := by
  have heq : reductionPivot11351 = (fun u v => (normalNode10021).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10021).moment H = injectiveMoment H reductionPivot11351 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10021).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot11351 0 = Pi.single (1 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11351 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 720, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11351 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1771, oldProjection1260, oldProjection1750, reductionProjection3666] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11351 (0 : Fin 4)) = canonicalInput22690.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11351 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1771 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11351 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1771 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound22690 hH))).trans (oldProjectionSound1771 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11351 (1 : Fin 4)) = canonicalInput19859.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11351 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1260 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11351 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1260 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19859 hH))).trans (oldProjectionSound1260 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11351 (2 : Fin 4)) = canonicalInput19759.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11351 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1750 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11351 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1750 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19759 hH))).trans (oldProjectionSound1750 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11351 (3 : Fin 4)) = canonicalInput19753.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11351 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3666 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11351 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3666 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19753 hH))).trans (reductionSound3666 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10021).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11351 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10021).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11351 (j : Fin 4)))
      2 2880 2880 2 ![720, 720, 720, 1440] ![4, 4, 4, 2] reductionProjection11351 ![oldProjection1771, oldProjection1260, oldProjection1750, reductionProjection3666]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11352 : Integer.Sparse (Fin 1613) := [(0, 36), (94, 75), (669, 720), (697, -240), (698, 480), (1055, -240), (1059, 80), (1227, 640), (1250, 60), (1251, -225), (1389, -720)]

def reductionPivot11352 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 1, 0], ![-1, -1, 0, 1, 1], ![0, 0, -1, -1, 2], ![0, 1, 1, -1, -1], ![1, 0, 1, 0, -2]]

theorem reductionSound11352 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8635).moment H =
      Integer.Sparse.eval reductionProjection11352 (momentVector H) := by
  have heq : reductionPivot11352 = (fun u v => (normalNode8635).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8635).moment H = injectiveMoment H reductionPivot11352 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8635).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11352 0 = Pi.single (3 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11352 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 1440, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11352 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3666, oldProjection1747, oldProjection2449, oldProjection1825] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11352 (0 : Fin 4)) = canonicalInput15027.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11352 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3666 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11352 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3666 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15027 hH))).trans (reductionSound3666 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11352 (1 : Fin 4)) = canonicalInput16501.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11352 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1747 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11352 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1747 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16501 hH))).trans (oldProjectionSound1747 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11352 (2 : Fin 4)) = canonicalInput16543.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11352 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2449 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11352 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2449 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16543 hH))).trans (oldProjectionSound2449 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11352 (3 : Fin 4)) = canonicalInput16547.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11352 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1825 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11352 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1825 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16547 hH))).trans (oldProjectionSound1825 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8635).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11352 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8635).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11352 (j : Fin 4)))
      2 2880 2880 2 ![1440, 1440, 1440, 720] ![2, 2, 2, 4] reductionProjection11352 ![reductionProjection3666, oldProjection1747, oldProjection2449, oldProjection1825]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11353 : Integer.Sparse (Fin 1613) := [(0, -89), (81, 480), (94, -260), (610, -720), (668, -720), (669, -1440), (697, 720), (698, -1920), (1055, 480), (1059, -560), (1221, 720), (1226, -160), (1227, -1760), (1250, -180), (1251, 945), (1388, 240), (1389, 2160)]

def reductionPivot11353 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, -1, 1, 0], ![-1, -1, 0, 1, 1], ![0, -1, 2, -2, 1], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]

theorem reductionSound11353 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8553).moment H =
      Integer.Sparse.eval reductionProjection11353 (momentVector H) := by
  have heq : reductionPivot11353 = (fun u v => (normalNode8553).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8553).moment H = injectiveMoment H reductionPivot11353 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8553).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11353 0 = Pi.single (3 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11353 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 1440, 2880, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11353 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3830, reductionProjection11341, reductionProjection3540, reductionProjection11351, reductionProjection11352] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11353 (0 : Fin 5)) = canonicalInput15018.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11353 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3830 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11353 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3830 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15018 hH))).trans (reductionSound3830 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11353 (1 : Fin 5)) = canonicalInput16384.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11353 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11341 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11353 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11341 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16384 hH))).trans (reductionSound11341 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11353 (2 : Fin 5)) = canonicalInput16423.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11353 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3540 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11353 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3540 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16423 hH))).trans (reductionSound3540 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11353 (3 : Fin 5)) = canonicalInput16424.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11353 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11351 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11353 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11351 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16424 hH))).trans (reductionSound11351 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11353 (4 : Fin 5)) = canonicalInput16425.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11353 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11352 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11353 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11352 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16425 hH))).trans (reductionSound11352 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8553).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11353 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8553).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11353 (j : Fin 5)))
      1 2880 2880 1 ![2880, 1440, 2880, 2880, 2880] ![1, 2, 1, 1, 1] reductionProjection11353 ![reductionProjection3830, reductionProjection11341, reductionProjection3540, reductionProjection11351, reductionProjection11352]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11354 : Integer.Sparse (Fin 1613) := [(0, 34), (94, 65), (669, 720), (697, -240), (698, 160), (1059, 80), (1227, 160), (1250, 60), (1251, -145), (1388, -240), (1389, -240)]

def reductionPivot11354 : Matrix (Fin 5) (Fin 5) ℤ := ![![1, 0, 0, -1, 0], ![-1, 0, -1, 0, 2], ![0, -1, -1, 1, 1], ![0, 0, 1, 1, -2], ![0, 1, 1, -1, -1]]

theorem reductionSound11354 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10024).moment H =
      Integer.Sparse.eval reductionProjection11354 (momentVector H) := by
  have heq : reductionPivot11354 = (fun u v => (normalNode10024).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10024).moment H = injectiveMoment H reductionPivot11354 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10024).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot11354 0 = Pi.single (0 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11354 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1440, 288, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11354 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1096, oldProjection1790, oldProjection1748, reductionProjection3666] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11354 (0 : Fin 4)) = canonicalInput27952.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11354 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1096 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11354 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1096 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound27952 hH))).trans (oldProjectionSound1096 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11354 (1 : Fin 4)) = canonicalInput19971.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11354 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1790 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11354 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1790 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19971 hH))).trans (oldProjectionSound1790 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11354 (2 : Fin 4)) = canonicalInput19762.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11354 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1748 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11354 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1748 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19762 hH))).trans (oldProjectionSound1748 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11354 (3 : Fin 4)) = canonicalInput19753.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11354 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3666 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11354 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3666 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19753 hH))).trans (reductionSound3666 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10024).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11354 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10024).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11354 (j : Fin 4)))
      2 2880 2880 2 ![720, 1440, 288, 1440] ![4, 2, 10, 2] reductionProjection11354 ![oldProjection1096, oldProjection1790, oldProjection1748, reductionProjection3666]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11355 : Integer.Sparse (Fin 1613) := [(0, -18), (94, -55), (666, -144), (669, -288), (697, 144), (698, -416), (700, -32), (1055, 96), (1059, -160), (1227, -320), (1250, -36), (1251, 203), (1388, 48), (1389, 288)]

def reductionPivot11355 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, 0, 1, -1], ![-1, -1, 0, 1, 1], ![0, -1, 2, -2, 1], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, 0, -1, 0, 0]]

theorem reductionSound11355 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode8554).moment H =
      Integer.Sparse.eval reductionProjection11355 (momentVector H) := by
  have heq : reductionPivot11355 = (fun u v => (normalNode8554).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8554).moment H = injectiveMoment H reductionPivot11355 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8554).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11355 0 = Pi.single (3 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11355 3 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 1440, 2880, 1440, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11355 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10184, reductionProjection11274, reductionProjection11354, reductionProjection11237, reductionProjection11352] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11355 (0 : Fin 5)) = canonicalInput17544.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11355 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10184 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11355 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10184 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17544 hH))).trans (reductionSound10184 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11355 (1 : Fin 5)) = canonicalInput16445.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11355 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11274 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11355 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11274 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16445 hH))).trans (reductionSound11274 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11355 (2 : Fin 5)) = canonicalInput16427.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11355 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11354 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11355 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11354 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16427 hH))).trans (reductionSound11354 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11355 (3 : Fin 5)) = canonicalInput16426.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11355 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11237 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11355 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11237 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16426 hH))).trans (reductionSound11237 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11355 (4 : Fin 5)) = canonicalInput16425.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11355 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11352 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11355 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11352 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16425 hH))).trans (reductionSound11352 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8554).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11355 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8554).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11355 (j : Fin 5)))
      1 576 2880 5 ![2880, 1440, 2880, 1440, 2880] ![1, 2, 1, 2, 1] reductionProjection11355 ![reductionProjection10184, reductionProjection11274, reductionProjection11354, reductionProjection11237, reductionProjection11352]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11356 : Integer.Sparse (Fin 1613) := [(0, 5), (94, 7), (241, 16), (602, 144), (635, 432), (636, 144), (638, 144), (697, -48), (698, 144), (1027, 144), (1059, 16), (1226, 16), (1227, 80), (1251, -50), (1389, -96)]

def reductionPivot11356 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, -1, 0, 1, 1], ![0, -1, 2, 0, -1], ![0, 1, 0, 1, -2], ![1, 1, -1, -2, 1]]

theorem reductionSound11356 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode8567).moment H =
      Integer.Sparse.eval reductionProjection11356 (momentVector H) := by
  have heq : reductionPivot11356 = (fun u v => (normalNode8567).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8567).moment H = injectiveMoment H reductionPivot11356 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8567).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11356 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11356 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 288, 288, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11356 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2092, oldProjection2631, reductionProjection2106, oldProjection1775] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11356 (0 : Fin 4)) = canonicalInput14837.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11356 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2092 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11356 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2092 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14837 hH))).trans (reductionSound2092 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11356 (1 : Fin 4)) = canonicalInput16399.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11356 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2631 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11356 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2631 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16399 hH))).trans (oldProjectionSound2631 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11356 (2 : Fin 4)) = canonicalInput16477.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11356 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2106 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11356 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2106 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16477 hH))).trans (reductionSound2106 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11356 (3 : Fin 4)) = canonicalInput16481.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11356 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1775 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11356 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1775 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16481 hH))).trans (oldProjectionSound1775 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8567).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11356 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8567).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11356 (j : Fin 4)))
      2 576 2880 10 ![1440, 288, 288, 1440] ![2, 10, 10, 2] reductionProjection11356 ![reductionProjection2092, oldProjection2631, reductionProjection2106, oldProjection1775]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11357 : Integer.Sparse (Fin 1613) := [(0, -19), (81, 240), (94, -49), (461, -144), (586, -144), (602, -576), (635, -288), (636, -288), (674, -144), (698, -848), (700, -64), (1027, -288), (1059, -384), (1221, 144), (1226, -192), (1227, -576), (1251, 302), (1389, 192)]

def reductionPivot11357 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, -1, 1, 0], ![-1, -1, 0, 1, 1], ![0, -1, 2, 0, -1], ![0, 1, 0, 0, -1], ![0, 1, 0, 0, -1], ![1, 0, -1, -2, 2]]

theorem reductionSound11357 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode8568).moment H =
      Integer.Sparse.eval reductionProjection11357 (momentVector H) := by
  have heq : reductionPivot11357 = (fun u v => (normalNode8568).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8568).moment H = injectiveMoment H reductionPivot11357 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8568).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11357 0 = Pi.single (3 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11357 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 2880, 2880, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11357 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3088, reductionProjection10862, reductionProjection10853, reductionProjection10853, reductionProjection10858] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11357 (0 : Fin 5)) = canonicalInput15023.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11357 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3088 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11357 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3088 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15023 hH))).trans (reductionSound3088 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11357 (1 : Fin 5)) = canonicalInput16412.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11357 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10862 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11357 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10862 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16412 hH))).trans (reductionSound10862 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11357 (2 : Fin 5)) = canonicalInput16476.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11357 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10853 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11357 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10853 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16476 hH))).trans (reductionSound10853 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11357 (3 : Fin 5)) = canonicalInput16479.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11357 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10853 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11357 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10853 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16479 hH))).trans (reductionSound10853 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11357 (4 : Fin 5)) = canonicalInput16480.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11357 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10858 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11357 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10858 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16480 hH))).trans (reductionSound10858 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8568).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11357 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8568).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11357 (j : Fin 5)))
      1 576 2880 5 ![2880, 2880, 2880, 2880, 2880] ![1, 1, 1, 1, 1] reductionProjection11357 ![reductionProjection3088, reductionProjection10862, reductionProjection10853, reductionProjection10853, reductionProjection10858]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11358 : Integer.Sparse (Fin 1613) := [(0, -2), (81, -120), (94, 15), (508, 360), (602, 360), (636, 360), (698, 360), (1050, -120), (1058, -120), (1059, 240), (1221, -120), (1226, 120), (1227, 200), (1251, -75)]

def reductionPivot11358 : Matrix (Fin 5) (Fin 5) ℤ := ![![1, 0, -1, 0, 0], ![-1, -1, 0, 1, 1], ![0, -1, 2, 0, -1], ![0, 0, 0, -2, 2], ![0, 2, -1, 1, -2]]

theorem reductionSound11358 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8571).moment H =
      Integer.Sparse.eval reductionProjection11358 (momentVector H) := by
  have heq : reductionPivot11358 = (fun u v => (normalNode8571).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8571).moment H = injectiveMoment H reductionPivot11358 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8571).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot11358 0 = Pi.single (0 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11358 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1440, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11358 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection510, oldProjection1766, reductionProjection2083, oldProjection1757] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11358 (0 : Fin 4)) = canonicalInput24681.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11358 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection510 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11358 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection510 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24681 hH))).trans (oldProjectionSound510 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11358 (1 : Fin 4)) = canonicalInput16841.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11358 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1766 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11358 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1766 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16841 hH))).trans (oldProjectionSound1766 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11358 (2 : Fin 4)) = canonicalInput16484.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11358 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2083 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11358 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2083 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16484 hH))).trans (reductionSound2083 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11358 (3 : Fin 4)) = canonicalInput16467.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11358 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1757 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11358 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1757 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16467 hH))).trans (oldProjectionSound1757 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8571).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11358 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8571).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11358 (j : Fin 4)))
      2 1440 1440 2 ![1, 1440, 1440, 1440] ![1440, 1, 1, 1] reductionProjection11358 ![oldProjection510, oldProjection1766, reductionProjection2083, oldProjection1757]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11359 : Integer.Sparse (Fin 1613) := [(0, 6), (94, 45), (241, 80), (243, 80), (698, 800), (1055, -240), (1058, -240), (1059, 80), (1221, -240), (1226, 400), (1227, 560), (1251, -125)]

def reductionPivot11359 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, -1, 0, 1, 0], ![-1, 0, -2, 1, 2], ![0, 0, 1, -2, 1], ![0, 1, 1, 0, -2], ![1, 0, 0, 0, -1]]

theorem reductionSound11359 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode9768).moment H =
      Integer.Sparse.eval reductionProjection11359 (momentVector H) := by
  have heq : reductionPivot11359 = (fun u v => (normalNode9768).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9768).moment H = injectiveMoment H reductionPivot11359 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9768).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11359 0 = Pi.single (3 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11359 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1440, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11359 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2432, oldProjection2443, oldProjection846, oldProjection1818] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11359 (0 : Fin 4)) = canonicalInput14342.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11359 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2432 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11359 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2432 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14342 hH))).trans (oldProjectionSound2432 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11359 (1 : Fin 4)) = canonicalInput19386.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11359 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2443 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11359 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2443 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19386 hH))).trans (oldProjectionSound2443 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11359 (2 : Fin 4)) = canonicalInput19411.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11359 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection846 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11359 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection846 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19411 hH))).trans (oldProjectionSound846 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11359 (3 : Fin 4)) = canonicalInput19415.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11359 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1818 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11359 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1818 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19415 hH))).trans (oldProjectionSound1818 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9768).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11359 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9768).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11359 (j : Fin 4)))
      2 2880 2880 2 ![720, 1440, 720, 144] ![4, 2, 4, 20] reductionProjection11359 ![oldProjection2432, oldProjection2443, oldProjection846, oldProjection1818]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.NormalizationContext
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound1

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def oldProjection0 : Integer.Sparse (Fin 1613) := [(0, 1)]

theorem oldProjectionSound0 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node0 =
      Integer.Sparse.eval oldProjection0 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value0 oldProjection0
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound0 hH))

def oldProjection1 : Integer.Sparse (Fin 1613) := [(4, 1)]

theorem oldProjectionSound1 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1 =
      Integer.Sparse.eval oldProjection1 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1 oldProjection1
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1 hH))

def oldProjection2 : Integer.Sparse (Fin 1613) := [(20, 1)]

theorem oldProjectionSound2 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2 =
      Integer.Sparse.eval oldProjection2 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2 oldProjection2
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2 hH))

def oldProjection3 : Integer.Sparse (Fin 1613) := [(94, 1)]

theorem oldProjectionSound3 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3 =
      Integer.Sparse.eval oldProjection3 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3 oldProjection3
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3 hH))

def oldProjection4 : Integer.Sparse (Fin 1613) := [(1251, 1)]

theorem oldProjectionSound4 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node4 =
      Integer.Sparse.eval oldProjection4 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value4 oldProjection4
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound4 hH))

def oldProjection5 : Integer.Sparse (Fin 1613) := [(0, -1)]

theorem oldProjectionSound5 {H : CMatrix} (hH : IsHadamard H) :
    (5 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node5 =
      Integer.Sparse.eval oldProjection5 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 5 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value5 oldProjection5
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound5 hH))

def oldProjection6 : Integer.Sparse (Fin 1613) := [(4, -1), (20, -1)]

theorem oldProjectionSound6 {H : CMatrix} (hH : IsHadamard H) :
    (4 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node6 =
      Integer.Sparse.eval oldProjection6 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 4 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value6 oldProjection6
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound6 hH))

def oldProjection7 : Integer.Sparse (Fin 1613) := [(3, 1)]

theorem oldProjectionSound7 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node7 =
      Integer.Sparse.eval oldProjection7 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value7 oldProjection7
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound7 hH))

def oldProjection8 : Integer.Sparse (Fin 1613) := [(20, -1), (94, -1)]

theorem oldProjectionSound8 {H : CMatrix} (hH : IsHadamard H) :
    (4 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node8 =
      Integer.Sparse.eval oldProjection8 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 4 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value8 oldProjection8
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound8 hH))

def oldProjection9 : Integer.Sparse (Fin 1613) := [(19, 1)]

theorem oldProjectionSound9 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node9 =
      Integer.Sparse.eval oldProjection9 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value9 oldProjection9
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound9 hH))

def oldProjection10 : Integer.Sparse (Fin 1613) := [(94, -1), (1251, -1)]

theorem oldProjectionSound10 {H : CMatrix} (hH : IsHadamard H) :
    (4 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node10 =
      Integer.Sparse.eval oldProjection10 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 4 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value10 oldProjection10
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound10 hH))

def oldProjection11 : Integer.Sparse (Fin 1613) := [(0, 1), (1251, -5)]

theorem oldProjectionSound11 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node11 =
      Integer.Sparse.eval oldProjection11 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 20 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value11 oldProjection11
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound11 hH))

def oldProjection14 : Integer.Sparse (Fin 1613) := [(4, 1), (20, -2), (94, 1)]

theorem oldProjectionSound14 {H : CMatrix} (hH : IsHadamard H) :
    (12 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node14 =
      Integer.Sparse.eval oldProjection14 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 12 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value14 oldProjection14
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound14 hH))

def oldProjection15 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -4), (20, 1), (94, 1)]

theorem oldProjectionSound15 {H : CMatrix} (hH : IsHadamard H) :
    (12 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node15 =
      Integer.Sparse.eval oldProjection15 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 12 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value15 oldProjection15
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound15 hH))

def oldProjection16 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (94, 2), (1251, 1)]

theorem oldProjectionSound16 {H : CMatrix} (hH : IsHadamard H) :
    (12 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node16 =
      Integer.Sparse.eval oldProjection16 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 12 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value16 oldProjection16
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound16 hH))

def oldProjection17 : Integer.Sparse (Fin 1613) := [(26, 1)]

theorem oldProjectionSound17 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node17 =
      Integer.Sparse.eval oldProjection17 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value17 oldProjection17
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound17 hH))

def oldProjection18 : Integer.Sparse (Fin 1613) := [(42, 1)]

theorem oldProjectionSound18 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node18 =
      Integer.Sparse.eval oldProjection18 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value18 oldProjection18
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound18 hH))

def oldProjection19 : Integer.Sparse (Fin 1613) := [(60, 1)]

theorem oldProjectionSound19 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node19 =
      Integer.Sparse.eval oldProjection19 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value19 oldProjection19
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound19 hH))

def oldProjection20 : Integer.Sparse (Fin 1613) := [(88, 1)]

theorem oldProjectionSound20 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node20 =
      Integer.Sparse.eval oldProjection20 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value20 oldProjection20
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound20 hH))

def oldProjection21 : Integer.Sparse (Fin 1613) := [(90, 1)]

theorem oldProjectionSound21 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node21 =
      Integer.Sparse.eval oldProjection21 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value21 oldProjection21
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound21 hH))

def oldProjection22 : Integer.Sparse (Fin 1613) := [(91, 1)]

theorem oldProjectionSound22 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node22 =
      Integer.Sparse.eval oldProjection22 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value22 oldProjection22
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound22 hH))

def oldProjection23 : Integer.Sparse (Fin 1613) := [(93, 1)]

theorem oldProjectionSound23 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node23 =
      Integer.Sparse.eval oldProjection23 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value23 oldProjection23
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound23 hH))

def oldProjection24 : Integer.Sparse (Fin 1613) := [(20, 1), (94, -2), (1251, 1)]

theorem oldProjectionSound24 {H : CMatrix} (hH : IsHadamard H) :
    (12 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node24 =
      Integer.Sparse.eval oldProjection24 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 12 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value24 oldProjection24
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound24 hH))

def oldProjection25 : Integer.Sparse (Fin 1613) := [(19, -2), (94, 1), (1251, 1)]

theorem oldProjectionSound25 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node25 =
      Integer.Sparse.eval oldProjection25 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 6 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value25 oldProjection25
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound25 hH))

def oldProjection26 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 10), (1251, 15)]

theorem oldProjectionSound26 {H : CMatrix} (hH : IsHadamard H) :
    (60 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node26 =
      Integer.Sparse.eval oldProjection26 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 60 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value26 oldProjection26
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound26 hH))

def oldProjection27 : Integer.Sparse (Fin 1613) := [(104, 1)]

theorem oldProjectionSound27 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node27 =
      Integer.Sparse.eval oldProjection27 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value27 oldProjection27
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound27 hH))

def oldProjection28 : Integer.Sparse (Fin 1613) := [(105, 1)]

theorem oldProjectionSound28 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node28 =
      Integer.Sparse.eval oldProjection28 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value28 oldProjection28
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound28 hH))

def oldProjection29 : Integer.Sparse (Fin 1613) := [(106, 1)]

theorem oldProjectionSound29 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node29 =
      Integer.Sparse.eval oldProjection29 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value29 oldProjection29
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound29 hH))

def oldProjection30 : Integer.Sparse (Fin 1613) := [(108, 1)]

theorem oldProjectionSound30 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node30 =
      Integer.Sparse.eval oldProjection30 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value30 oldProjection30
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound30 hH))

def oldProjection31 : Integer.Sparse (Fin 1613) := [(241, 1)]

theorem oldProjectionSound31 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node31 =
      Integer.Sparse.eval oldProjection31 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value31 oldProjection31
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound31 hH))

def oldProjection32 : Integer.Sparse (Fin 1613) := [(243, 1)]

theorem oldProjectionSound32 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node32 =
      Integer.Sparse.eval oldProjection32 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value32 oldProjection32
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound32 hH))

def oldProjection33 : Integer.Sparse (Fin 1613) := [(244, 1)]

theorem oldProjectionSound33 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node33 =
      Integer.Sparse.eval oldProjection33 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value33 oldProjection33
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound33 hH))

def oldProjection34 : Integer.Sparse (Fin 1613) := [(246, 1)]

theorem oldProjectionSound34 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node34 =
      Integer.Sparse.eval oldProjection34 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value34 oldProjection34
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound34 hH))

def oldProjection35 : Integer.Sparse (Fin 1613) := [(247, 1)]

theorem oldProjectionSound35 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node35 =
      Integer.Sparse.eval oldProjection35 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value35 oldProjection35
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound35 hH))

def oldProjection36 : Integer.Sparse (Fin 1613) := [(698, 1)]

theorem oldProjectionSound36 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node36 =
      Integer.Sparse.eval oldProjection36 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value36 oldProjection36
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound36 hH))

def oldProjection37 : Integer.Sparse (Fin 1613) := [(700, 1)]

theorem oldProjectionSound37 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node37 =
      Integer.Sparse.eval oldProjection37 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value37 oldProjection37
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound37 hH))

def oldProjection38 : Integer.Sparse (Fin 1613) := [(701, 1)]

theorem oldProjectionSound38 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node38 =
      Integer.Sparse.eval oldProjection38 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value38 oldProjection38
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound38 hH))

def oldProjection39 : Integer.Sparse (Fin 1613) := [(703, 1)]

theorem oldProjectionSound39 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node39 =
      Integer.Sparse.eval oldProjection39 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value39 oldProjection39
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound39 hH))

def oldProjection40 : Integer.Sparse (Fin 1613) := [(704, 1)]

theorem oldProjectionSound40 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node40 =
      Integer.Sparse.eval oldProjection40 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value40 oldProjection40
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound40 hH))

def oldProjection41 : Integer.Sparse (Fin 1613) := [(1059, 1)]

theorem oldProjectionSound41 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node41 =
      Integer.Sparse.eval oldProjection41 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value41 oldProjection41
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound41 hH))

def oldProjection42 : Integer.Sparse (Fin 1613) := [(1225, 1)]

theorem oldProjectionSound42 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node42 =
      Integer.Sparse.eval oldProjection42 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value42 oldProjection42
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound42 hH))

def oldProjection43 : Integer.Sparse (Fin 1613) := [(1226, 1)]

theorem oldProjectionSound43 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node43 =
      Integer.Sparse.eval oldProjection43 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value43 oldProjection43
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound43 hH))

def oldProjection44 : Integer.Sparse (Fin 1613) := [(1227, 1)]

theorem oldProjectionSound44 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node44 =
      Integer.Sparse.eval oldProjection44 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value44 oldProjection44
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound44 hH))

def oldProjection45 : Integer.Sparse (Fin 1613) := [(1250, 1)]

theorem oldProjectionSound45 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node45 =
      Integer.Sparse.eval oldProjection45 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value45 oldProjection45
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound45 hH))

def oldProjection46 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 5), (1251, -10)]

theorem oldProjectionSound46 {H : CMatrix} (hH : IsHadamard H) :
    (60 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node46 =
      Integer.Sparse.eval oldProjection46 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 60 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value46 oldProjection46
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound46 hH))

def oldProjection47 : Integer.Sparse (Fin 1613) := [(4, 1), (20, 2), (94, 1)]

theorem oldProjectionSound47 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node47 =
      Integer.Sparse.eval oldProjection47 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 16 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value47 oldProjection47
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound47 hH))

def oldProjection48 : Integer.Sparse (Fin 1613) := [(3, -1), (19, -1)]

theorem oldProjectionSound48 {H : CMatrix} (hH : IsHadamard H) :
    (4 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node48 =
      Integer.Sparse.eval oldProjection48 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 4 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value48 oldProjection48
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound48 hH))

def oldProjection49 : Integer.Sparse (Fin 1613) := [(3, -4), (20, 1), (94, 1)]

theorem oldProjectionSound49 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node49 =
      Integer.Sparse.eval oldProjection49 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 16 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value49 oldProjection49
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound49 hH))

def oldProjection50 : Integer.Sparse (Fin 1613) := [(4, 1), (20, -3)]

theorem oldProjectionSound50 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node50 =
      Integer.Sparse.eval oldProjection50 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 16 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value50 oldProjection50
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound50 hH))

def oldProjection51 : Integer.Sparse (Fin 1613) := [(20, 1), (94, 2), (1251, 1)]

theorem oldProjectionSound51 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node51 =
      Integer.Sparse.eval oldProjection51 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 16 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value51 oldProjection51
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound51 hH))

def oldProjection52 : Integer.Sparse (Fin 1613) := [(19, -4), (94, 1), (1251, 1)]

theorem oldProjectionSound52 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node52 =
      Integer.Sparse.eval oldProjection52 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 16 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value52 oldProjection52
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound52 hH))

def oldProjection53 : Integer.Sparse (Fin 1613) := [(20, 1), (94, -3)]

theorem oldProjectionSound53 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node53 =
      Integer.Sparse.eval oldProjection53 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 16 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value53 oldProjection53
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound53 hH))

def oldProjection54 : Integer.Sparse (Fin 1613) := [(20, -3), (94, 1)]

theorem oldProjectionSound54 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node54 =
      Integer.Sparse.eval oldProjection54 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 16 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value54 oldProjection54
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound54 hH))

def oldProjection55 : Integer.Sparse (Fin 1613) := [(3, -4), (4, 1), (20, 1)]

theorem oldProjectionSound55 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node55 =
      Integer.Sparse.eval oldProjection55 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 16 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value55 oldProjection55
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound55 hH))

def oldProjection56 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 5), (1251, 10)]

theorem oldProjectionSound56 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node56 =
      Integer.Sparse.eval oldProjection56 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 80 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value56 oldProjection56
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound56 hH))

def oldProjection57 : Integer.Sparse (Fin 1613) := [(94, 1), (1251, -3)]

theorem oldProjectionSound57 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node57 =
      Integer.Sparse.eval oldProjection57 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 16 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value57 oldProjection57
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound57 hH))

def oldProjection58 : Integer.Sparse (Fin 1613) := [(94, -3), (1251, 1)]

theorem oldProjectionSound58 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node58 =
      Integer.Sparse.eval oldProjection58 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 16 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value58 oldProjection58
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound58 hH))

def oldProjection59 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (94, 1)]

theorem oldProjectionSound59 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node59 =
      Integer.Sparse.eval oldProjection59 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 16 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value59 oldProjection59
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound59 hH))

def oldProjection60 : Integer.Sparse (Fin 1613) := [(3, -1)]

theorem oldProjectionSound60 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node60 =
      Integer.Sparse.eval oldProjection60 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 2 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value60 oldProjection60
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound60 hH))

def oldProjection61 : Integer.Sparse (Fin 1613) := [(0, 3), (1251, 5)]

theorem oldProjectionSound61 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node61 =
      Integer.Sparse.eval oldProjection61 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 80 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value61 oldProjection61
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound61 hH))

def oldProjection62 : Integer.Sparse (Fin 1613) := [(0, -1), (1251, -15)]

theorem oldProjectionSound62 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node62 =
      Integer.Sparse.eval oldProjection62 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 80 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value62 oldProjection62
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound62 hH))

def oldProjection63 : Integer.Sparse (Fin 1613) := [(94, 1), (1251, 1)]

theorem oldProjectionSound63 {H : CMatrix} (hH : IsHadamard H) :
    (8 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node63 =
      Integer.Sparse.eval oldProjection63 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 8 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value63 oldProjection63
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound63 hH))

def oldProjection64 : Integer.Sparse (Fin 1613) := [(0, 1)]

theorem oldProjectionSound64 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node64 =
      Integer.Sparse.eval oldProjection64 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 10 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value64 oldProjection64
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound64 hH))

def oldProjection65 : Integer.Sparse (Fin 1613) := [(0, 7), (1251, 5)]

theorem oldProjectionSound65 {H : CMatrix} (hH : IsHadamard H) :
    (60 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node65 =
      Integer.Sparse.eval oldProjection65 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 60 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value65 oldProjection65
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound65 hH))

end NoFourMUBs.Step2.SOS.Normalization

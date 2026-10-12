import NoFourMUBs.Step2.SOS.NormalizationContext
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound16

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def oldProjection973 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -10), (94, 10), (697, -120), (1250, 30), (1251, -5)]

theorem oldProjectionSound973 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node973 =
      Integer.Sparse.eval oldProjection973 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value973 oldProjection973
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound973 hH))

def oldProjection974 : Integer.Sparse (Fin 1613) := [(0, 1), (698, 80), (1251, 15)]

theorem oldProjectionSound974 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node974 =
      Integer.Sparse.eval oldProjection974 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value974 oldProjection974
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound974 hH))

def oldProjection975 : Integer.Sparse (Fin 1613) := [(0, -1), (698, 160), (700, 80), (1058, -240), (1059, 160), (1251, -15)]

theorem oldProjectionSound975 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node975 =
      Integer.Sparse.eval oldProjection975 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value975 oldProjection975
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound975 hH))

def oldProjection976 : Integer.Sparse (Fin 1613) := [(94, 1), (241, 16), (698, 16), (1055, -24), (1251, -3)]

theorem oldProjectionSound976 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node976 =
      Integer.Sparse.eval oldProjection976 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value976 oldProjection976
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound976 hH))

def oldProjection977 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (94, -4), (700, 16), (704, 16), (1251, -1)]

theorem oldProjectionSound977 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node977 =
      Integer.Sparse.eval oldProjection977 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value977 oldProjection977
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound977 hH))

def oldProjection978 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 35), (700, 80)]

theorem oldProjectionSound978 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node978 =
      Integer.Sparse.eval oldProjection978 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value978 oldProjection978
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound978 hH))

def oldProjection979 : Integer.Sparse (Fin 1613) := [(94, -1), (243, 16), (698, 16), (700, -16), (1251, 3)]

theorem oldProjectionSound979 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node979 =
      Integer.Sparse.eval oldProjection979 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value979 oldProjection979
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound979 hH))

def oldProjection980 : Integer.Sparse (Fin 1613) := [(94, -3), (243, 32), (698, 16), (700, 16), (1219, -48), (1226, 16), (1251, 1)]

theorem oldProjectionSound980 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node980 =
      Integer.Sparse.eval oldProjection980 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value980 oldProjection980
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound980 hH))

def oldProjection981 : Integer.Sparse (Fin 1613) := [(94, 1), (701, 8), (704, 8), (1251, 1)]

theorem oldProjectionSound981 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node981 =
      Integer.Sparse.eval oldProjection981 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value981 oldProjection981
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound981 hH))

def oldProjection982 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -40), (20, 5), (94, 35), (243, 80), (698, 80), (700, 80), (704, 80), (1251, 35)]

theorem oldProjectionSound982 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node982 =
      Integer.Sparse.eval oldProjection982 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value982 oldProjection982
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound982 hH))

def oldProjection983 : Integer.Sparse (Fin 1613) := [(697, -1), (1323, -1), (1389, -1)]

theorem oldProjectionSound983 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node983 =
      Integer.Sparse.eval oldProjection983 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value983 oldProjection983
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound983 hH))

def oldProjection984 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 25), (698, 160), (704, 80), (1251, 30), (1321, -240)]

theorem oldProjectionSound984 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node984 =
      Integer.Sparse.eval oldProjection984 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value984 oldProjection984
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound984 hH))

def oldProjection985 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (94, 3), (704, -8), (1251, 2)]

theorem oldProjectionSound985 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node985 =
      Integer.Sparse.eval oldProjection985 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value985 oldProjection985
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound985 hH))

def oldProjection986 : Integer.Sparse (Fin 1613) := [(19, -16), (20, 3), (94, 5), (247, 16), (704, 16), (1251, 6)]

theorem oldProjectionSound986 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node986 =
      Integer.Sparse.eval oldProjection986 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value986 oldProjection986
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound986 hH))

def oldProjection987 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 5), (247, 40), (1251, 10), (1388, -60)]

theorem oldProjectionSound987 {H : CMatrix} (hH : IsHadamard H) :
    (180 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node987 =
      Integer.Sparse.eval oldProjection987 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 180 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value987 oldProjection987
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound987 hH))

def oldProjection988 : Integer.Sparse (Fin 1613) := [(82, -3), (88, 1), (228, -3), (243, 1), (1226, 1)]

theorem oldProjectionSound988 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node988 =
      Integer.Sparse.eval oldProjection988 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value988 oldProjection988
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound988 hH))

def oldProjection989 : Integer.Sparse (Fin 1613) := [(72, -48), (94, -5), (682, -48), (1251, -1)]

theorem oldProjectionSound989 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node989 =
      Integer.Sparse.eval oldProjection989 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value989 oldProjection989
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound989 hH))

def oldProjection990 : Integer.Sparse (Fin 1613) := [(76, -3), (90, 2), (698, 2), (700, 1), (1226, 1)]

theorem oldProjectionSound990 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node990 =
      Integer.Sparse.eval oldProjection990 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value990 oldProjection990
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound990 hH))

def oldProjection991 : Integer.Sparse (Fin 1613) := [(19, -2), (94, -1), (690, -24), (1251, -3), (1319, -24)]

theorem oldProjectionSound991 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node991 =
      Integer.Sparse.eval oldProjection991 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value991 oldProjection991
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound991 hH))

def oldProjection992 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 3), (37, -48), (94, 3), (108, 16), (1251, 4)]

theorem oldProjectionSound992 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node992 =
      Integer.Sparse.eval oldProjection992 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value992 oldProjection992
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound992 hH))

def oldProjection993 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (94, 20), (694, -480), (1251, 25)]

theorem oldProjectionSound993 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node993 =
      Integer.Sparse.eval oldProjection993 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value993 oldProjection993
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound993 hH))

def oldProjection994 : Integer.Sparse (Fin 1613) := [(19, 4), (94, -1), (104, 16), (108, 16), (241, 16), (247, 16), (1251, -1)]

theorem oldProjectionSound994 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node994 =
      Integer.Sparse.eval oldProjection994 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value994 oldProjection994
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound994 hH))

def oldProjection995 : Integer.Sparse (Fin 1613) := [(0, -4), (94, 25), (247, 80), (697, -240), (1251, 25)]

theorem oldProjectionSound995 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node995 =
      Integer.Sparse.eval oldProjection995 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value995 oldProjection995
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound995 hH))

def oldProjection996 : Integer.Sparse (Fin 1613) := [(19, -12), (38, -48), (94, 5), (247, 16), (704, 16), (1251, 5)]

theorem oldProjectionSound996 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node996 =
      Integer.Sparse.eval oldProjection996 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value996 oldProjection996
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound996 hH))

def oldProjection997 : Integer.Sparse (Fin 1613) := [(38, -24), (94, 1), (698, 8), (700, 8), (1061, -24), (1251, 1)]

theorem oldProjectionSound997 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node997 =
      Integer.Sparse.eval oldProjection997 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value997 oldProjection997
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound997 hH))

def oldProjection998 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -40), (94, 15), (241, 80), (247, -80), (1251, 20)]

theorem oldProjectionSound998 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node998 =
      Integer.Sparse.eval oldProjection998 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value998 oldProjection998
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound998 hH))

def oldProjection999 : Integer.Sparse (Fin 1613) := [(19, -4), (23, -48), (94, 1), (104, 16), (108, 48), (247, 16), (1251, 1)]

theorem oldProjectionSound999 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node999 =
      Integer.Sparse.eval oldProjection999 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value999 oldProjection999
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound999 hH))

def oldProjection1000 : Integer.Sparse (Fin 1613) := [(0, 3), (698, 80), (1059, 80), (1227, 80), (1251, -75)]

theorem oldProjectionSound1000 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1000 =
      Integer.Sparse.eval oldProjection1000 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1000 oldProjection1000
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1000 hH))

def oldProjection1001 : Integer.Sparse (Fin 1613) := [(0, -1), (90, 80), (94, 20), (698, 160), (700, 160), (704, 80), (1251, 5)]

theorem oldProjectionSound1001 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1001 =
      Integer.Sparse.eval oldProjection1001 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1001 oldProjection1001
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1001 hH))

def oldProjection1002 : Integer.Sparse (Fin 1613) := [(0, 1), (698, 40), (1059, 40), (1251, -15)]

theorem oldProjectionSound1002 {H : CMatrix} (hH : IsHadamard H) :
    (180 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1002 =
      Integer.Sparse.eval oldProjection1002 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 180 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1002 oldProjection1002
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1002 hH))

def oldProjection1003 : Integer.Sparse (Fin 1613) := [(0, -3), (94, 30), (698, 160), (1226, 80), (1251, -15)]

theorem oldProjectionSound1003 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1003 =
      Integer.Sparse.eval oldProjection1003 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1003 oldProjection1003
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1003 hH))

def oldProjection1004 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 1), (88, 16), (94, -1), (241, 32), (243, 32), (247, 16), (1251, 2)]

theorem oldProjectionSound1004 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1004 =
      Integer.Sparse.eval oldProjection1004 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1004 oldProjection1004
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1004 hH))

def oldProjection1005 : Integer.Sparse (Fin 1613) := [(0, 1), (1221, -120), (1251, -25), (1389, -120)]

theorem oldProjectionSound1005 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1005 =
      Integer.Sparse.eval oldProjection1005 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1005 oldProjection1005
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1005 hH))

def oldProjection1006 : Integer.Sparse (Fin 1613) := [(0, 11), (698, 80), (1227, 160), (1251, -35)]

theorem oldProjectionSound1006 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1006 =
      Integer.Sparse.eval oldProjection1006 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1006 oldProjection1006
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1006 hH))

def oldProjection1007 : Integer.Sparse (Fin 1613) := [(0, -2), (81, -240), (94, 15), (697, -240), (1251, 5)]

theorem oldProjectionSound1007 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1007 =
      Integer.Sparse.eval oldProjection1007 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1007 oldProjection1007
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1007 hH))

def oldProjection1008 : Integer.Sparse (Fin 1613) := [(0, 1), (698, 160), (1059, 80), (1227, 80), (1251, 15)]

theorem oldProjectionSound1008 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1008 =
      Integer.Sparse.eval oldProjection1008 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1008 oldProjection1008
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1008 hH))

def oldProjection1009 : Integer.Sparse (Fin 1613) := [(0, 1), (698, 80), (1227, -80), (1251, -25)]

theorem oldProjectionSound1009 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1009 =
      Integer.Sparse.eval oldProjection1009 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1009 oldProjection1009
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1009 hH))

def oldProjection1010 : Integer.Sparse (Fin 1613) := [(0, -1), (698, 80), (1059, 40), (1221, -120), (1227, 40), (1251, -15)]

theorem oldProjectionSound1010 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1010 =
      Integer.Sparse.eval oldProjection1010 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1010 oldProjection1010
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1010 hH))

def oldProjection1011 : Integer.Sparse (Fin 1613) := [(76, -24), (94, 1), (697, -24), (700, 8), (704, 8), (1251, 1)]

theorem oldProjectionSound1011 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1011 =
      Integer.Sparse.eval oldProjection1011 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1011 oldProjection1011
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1011 hH))

def oldProjection1012 : Integer.Sparse (Fin 1613) := [(72, -48), (94, -5), (1251, -1), (1321, -48)]

theorem oldProjectionSound1012 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1012 =
      Integer.Sparse.eval oldProjection1012 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1012 oldProjection1012
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1012 hH))

def oldProjection1013 : Integer.Sparse (Fin 1613) := [(0, -3), (81, -240), (94, 30), (698, 80), (1251, 25)]

theorem oldProjectionSound1013 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1013 =
      Integer.Sparse.eval oldProjection1013 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1013 oldProjection1013
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1013 hH))

def oldProjection1014 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 1), (94, 4), (229, -48), (240, -48), (1251, 3)]

theorem oldProjectionSound1014 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1014 =
      Integer.Sparse.eval oldProjection1014 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1014 oldProjection1014
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1014 hH))

def oldProjection1015 : Integer.Sparse (Fin 1613) := [(94, -1), (698, 8), (700, 16), (704, 8), (1251, -1)]

theorem oldProjectionSound1015 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1015 =
      Integer.Sparse.eval oldProjection1015 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1015 oldProjection1015
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1015 hH))

def oldProjection1016 : Integer.Sparse (Fin 1613) := [(81, -48), (94, 1), (698, 32), (1226, 32), (1227, 16), (1251, -3)]

theorem oldProjectionSound1016 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1016 =
      Integer.Sparse.eval oldProjection1016 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1016 oldProjection1016
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1016 hH))

def oldProjection1017 : Integer.Sparse (Fin 1613) := [(72, -48), (94, -3), (243, 16), (700, 16), (1058, -48), (1251, 1)]

theorem oldProjectionSound1017 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1017 =
      Integer.Sparse.eval oldProjection1017 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1017 oldProjection1017
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1017 hH))

def oldProjection1018 : Integer.Sparse (Fin 1613) := [(90, 3), (698, 3), (700, 1), (1226, 2)]

theorem oldProjectionSound1018 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1018 =
      Integer.Sparse.eval oldProjection1018 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1018 oldProjection1018
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1018 hH))

def oldProjection1019 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 4), (94, 3), (704, 16), (1040, -48), (1251, 3)]

theorem oldProjectionSound1019 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1019 =
      Integer.Sparse.eval oldProjection1019 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1019 oldProjection1019
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1019 hH))

def oldProjection1020 : Integer.Sparse (Fin 1613) := [(20, 1), (94, -3), (243, 16), (1040, -48), (1223, -48), (1225, 16)]

theorem oldProjectionSound1020 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1020 =
      Integer.Sparse.eval oldProjection1020 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1020 oldProjection1020
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1020 hH))

def oldProjection1021 : Integer.Sparse (Fin 1613) := [(20, 1), (93, 6), (94, 4), (1044, -24), (1251, 1)]

theorem oldProjectionSound1021 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1021 =
      Integer.Sparse.eval oldProjection1021 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1021 oldProjection1021
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1021 hH))

def oldProjection1022 : Integer.Sparse (Fin 1613) := [(3, -1), (19, -1), (20, -2), (94, -2), (1045, -12)]

theorem oldProjectionSound1022 {H : CMatrix} (hH : IsHadamard H) :
    (36 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1022 =
      Integer.Sparse.eval oldProjection1022 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 36 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1022 oldProjection1022
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1022 hH))

def oldProjection1023 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -4), (94, 5), (105, 16), (243, 16), (1251, 1)]

theorem oldProjectionSound1023 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1023 =
      Integer.Sparse.eval oldProjection1023 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1023 oldProjection1023
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1023 hH))

def oldProjection1024 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (93, 12), (94, -3), (1047, -48)]

theorem oldProjectionSound1024 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1024 =
      Integer.Sparse.eval oldProjection1024 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1024 oldProjection1024
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1024 hH))

def oldProjection1025 : Integer.Sparse (Fin 1613) := [(94, -3), (243, 16), (700, 16), (1044, -48), (1060, -48), (1251, 1)]

theorem oldProjectionSound1025 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1025 =
      Integer.Sparse.eval oldProjection1025 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1025 oldProjection1025
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1025 hH))

def oldProjection1026 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (94, -2), (105, 16), (241, 16), (242, -48), (243, 32), (1251, 1)]

theorem oldProjectionSound1026 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1026 =
      Integer.Sparse.eval oldProjection1026 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1026 oldProjection1026
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1026 hH))

def oldProjection1027 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 5), (1050, -120), (1250, 30), (1251, 20)]

theorem oldProjectionSound1027 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1027 =
      Integer.Sparse.eval oldProjection1027 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1027 oldProjection1027
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1027 hH))

def oldProjection1028 : Integer.Sparse (Fin 1613) := [(19, -4), (94, -7), (1052, -48), (1251, -7)]

theorem oldProjectionSound1028 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1028 =
      Integer.Sparse.eval oldProjection1028 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1028 oldProjection1028
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1028 hH))

def oldProjection1029 : Integer.Sparse (Fin 1613) := [(19, 8), (20, 1), (94, 2), (1053, -24), (1251, 1)]

theorem oldProjectionSound1029 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1029 =
      Integer.Sparse.eval oldProjection1029 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1029 oldProjection1029
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1029 hH))

def oldProjection1030 : Integer.Sparse (Fin 1613) := [(3, -16), (20, 1), (94, 2), (1054, -48), (1251, 1)]

theorem oldProjectionSound1030 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1030 =
      Integer.Sparse.eval oldProjection1030 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1030 oldProjection1030
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1030 hH))

def oldProjection1031 : Integer.Sparse (Fin 1613) := [(19, 4), (20, 1), (94, -3), (241, 16), (243, 16), (1251, -4)]

theorem oldProjectionSound1031 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1031 =
      Integer.Sparse.eval oldProjection1031 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1031 oldProjection1031
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1031 hH))

def oldProjection1032 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (94, 5), (241, 80), (698, 80), (1251, 30)]

theorem oldProjectionSound1032 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1032 =
      Integer.Sparse.eval oldProjection1032 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1032 oldProjection1032
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1032 hH))

def oldProjection1033 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 10), (1055, -240), (1250, 60), (1251, -35)]

theorem oldProjectionSound1033 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1033 =
      Integer.Sparse.eval oldProjection1033 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1033 oldProjection1033
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1033 hH))

def oldProjection1034 : Integer.Sparse (Fin 1613) := [(19, -4), (94, 1), (241, 16), (243, 16), (1053, -48), (1054, -48), (1251, 1)]

theorem oldProjectionSound1034 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1034 =
      Integer.Sparse.eval oldProjection1034 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1034 oldProjection1034
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1034 hH))

def oldProjection1035 : Integer.Sparse (Fin 1613) := [(94, 1), (698, 16), (1052, -48), (1223, -48), (1226, 16), (1251, -3)]

theorem oldProjectionSound1035 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1035 =
      Integer.Sparse.eval oldProjection1035 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1035 oldProjection1035
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1035 hH))

def oldProjection1036 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 15), (241, 80), (697, -240), (698, 160), (1251, -20)]

theorem oldProjectionSound1036 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1036 =
      Integer.Sparse.eval oldProjection1036 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1036 oldProjection1036
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1036 hH))

end NoFourMUBs.Step2.SOS.Normalization

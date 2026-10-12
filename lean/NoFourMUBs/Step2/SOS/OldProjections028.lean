import NoFourMUBs.Step2.SOS.NormalizationContext
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound33

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def oldProjection2057 : Integer.Sparse (Fin 1613) := [(0, -19), (94, -10), (698, -160), (957, -720), (1055, 240), (1227, -240), (1251, 105)]

theorem oldProjectionSound2057 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2057 =
      Integer.Sparse.eval oldProjection2057 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2057 oldProjection2057
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2057 hH))

def oldProjection2058 : Integer.Sparse (Fin 1613) := [(19, 16), (20, -3), (94, 4), (241, -16), (243, -48), (698, -32), (704, -48), (1223, 96), (1225, -32), (1226, -32), (1251, -1)]

theorem oldProjectionSound2058 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2058 =
      Integer.Sparse.eval oldProjection2058 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2058 oldProjection2058
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2058 hH))

def oldProjection2059 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -10), (483, -360), (549, -360), (698, -120), (1226, -40), (1227, -120), (1251, 15), (1389, 120)]

theorem oldProjectionSound2059 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2059 =
      Integer.Sparse.eval oldProjection2059 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2059 oldProjection2059
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2059 hH))

def oldProjection2060 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (94, -30), (228, 720), (241, -160), (243, -160), (698, -320), (704, -80), (1014, -720), (1223, 240), (1226, -80), (1227, -80), (1251, -35)]

theorem oldProjectionSound2060 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2060 =
      Integer.Sparse.eval oldProjection2060 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2060 oldProjection2060
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2060 hH))

def oldProjection2061 : Integer.Sparse (Fin 1613) := [(0, 3), (94, -40), (241, -160), (243, -80), (508, -720), (697, 240), (1226, -80), (1251, 45)]

theorem oldProjectionSound2061 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2061 =
      Integer.Sparse.eval oldProjection2061 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2061 oldProjection2061
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2061 hH))

def oldProjection2063 : Integer.Sparse (Fin 1613) := [(0, 2), (94, -75), (698, -400), (1226, -320), (1227, -240), (1251, 55)]

theorem oldProjectionSound2063 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2063 =
      Integer.Sparse.eval oldProjection2063 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2063 oldProjection2063
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2063 hH))

def oldProjection2064 : Integer.Sparse (Fin 1613) := [(426, -18), (698, -10), (1219, 6), (1226, -6), (1251, 1)]

theorem oldProjectionSound2064 {H : CMatrix} (hH : IsHadamard H) :
    (36 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2064 =
      Integer.Sparse.eval oldProjection2064 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 36 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2064 oldProjection2064
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2064 hH))

def oldProjection2065 : Integer.Sparse (Fin 1613) := [(0, -11), (698, -480), (1059, -400), (1227, -240), (1251, 195)]

theorem oldProjectionSound2065 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2065 =
      Integer.Sparse.eval oldProjection2065 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2065 oldProjection2065
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2065 hH))

def oldProjection2066 : Integer.Sparse (Fin 1613) := [(0, 1), (578, -360), (586, -360), (602, -360), (698, 40), (1059, -40), (1227, -40), (1251, 15)]

theorem oldProjectionSound2066 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2066 =
      Integer.Sparse.eval oldProjection2066 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2066 oldProjection2066
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2066 hH))

def oldProjection2067 : Integer.Sparse (Fin 1613) := [(20, -1), (88, -48), (94, 8), (241, -16), (243, -48), (698, -16), (1003, -144), (1225, -16), (1226, -32), (1251, 1)]

theorem oldProjectionSound2067 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2067 =
      Integer.Sparse.eval oldProjection2067 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2067 oldProjection2067
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2067 hH))

def oldProjection2068 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 15), (243, -160), (596, -720), (698, -240), (700, -80), (1004, -720), (1219, 480), (1226, -160), (1227, -160), (1251, 10)]

theorem oldProjectionSound2068 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2068 =
      Integer.Sparse.eval oldProjection2068 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2068 oldProjection2068
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2068 hH))

def oldProjection2069 : Integer.Sparse (Fin 1613) := [(94, -1), (698, -24), (1015, -72), (1226, -32), (1227, -16), (1251, 7)]

theorem oldProjectionSound2069 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2069 =
      Integer.Sparse.eval oldProjection2069 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2069 oldProjection2069
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2069 hH))

def oldProjection2070 : Integer.Sparse (Fin 1613) := [(0, -3), (94, -30), (698, -640), (1226, -400), (1227, -320), (1251, 85)]

theorem oldProjectionSound2070 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2070 =
      Integer.Sparse.eval oldProjection2070 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2070 oldProjection2070
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2070 hH))

def oldProjection2071 : Integer.Sparse (Fin 1613) := [(0, -36), (94, -5), (698, -80), (1227, -320), (1251, 195), (1389, 240)]

theorem oldProjectionSound2071 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2071 =
      Integer.Sparse.eval oldProjection2071 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2071 oldProjection2071
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2071 hH))

def oldProjection2072 : Integer.Sparse (Fin 1613) := [(698, -4), (1227, 6), (1251, 1), (1389, 6)]

theorem oldProjectionSound2072 {H : CMatrix} (hH : IsHadamard H) :
    (36 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2072 =
      Integer.Sparse.eval oldProjection2072 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 36 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2072 oldProjection2072
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2072 hH))

def oldProjection2073 : Integer.Sparse (Fin 1613) := [(0, -13), (698, -320), (1016, -720), (1059, -80), (1227, -160), (1251, 45)]

theorem oldProjectionSound2073 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2073 =
      Integer.Sparse.eval oldProjection2073 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2073 oldProjection2073
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2073 hH))

def oldProjection2074 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -10), (618, -720), (698, -400), (1015, -720), (1226, -320), (1227, -320), (1251, 55)]

theorem oldProjectionSound2074 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2074 =
      Integer.Sparse.eval oldProjection2074 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2074 oldProjection2074
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2074 hH))

def oldProjection2075 : Integer.Sparse (Fin 1613) := [(0, 1), (90, -240), (94, 5), (243, -80), (698, -240), (700, -80), (1004, -720), (1226, -160), (1227, -80), (1251, 40)]

theorem oldProjectionSound2075 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2075 =
      Integer.Sparse.eval oldProjection2075 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2075 oldProjection2075
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2075 hH))

def oldProjection2076 : Integer.Sparse (Fin 1613) := [(0, -7), (698, -160), (1027, -720), (1059, -80), (1227, -320), (1251, 135), (1389, 240)]

theorem oldProjectionSound2076 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2076 =
      Integer.Sparse.eval oldProjection2076 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2076 oldProjection2076
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2076 hH))

def oldProjection2077 : Integer.Sparse (Fin 1613) := [(0, 2), (94, -5), (241, -80), (243, -80), (578, -720), (698, -80), (1050, 240), (1055, 240), (1058, 480), (1059, -80), (1226, -80), (1227, -80), (1251, 45)]

theorem oldProjectionSound2077 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2077 =
      Integer.Sparse.eval oldProjection2077 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2077 oldProjection2077
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2077 hH))

def oldProjection2078 : Integer.Sparse (Fin 1613) := [(0, 1), (668, -360), (674, -360), (698, -80), (919, -360), (1059, -40), (1221, 120), (1227, -40), (1251, 15)]

theorem oldProjectionSound2078 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2078 =
      Integer.Sparse.eval oldProjection2078 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2078 oldProjection2078
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2078 hH))

def oldProjection2079 : Integer.Sparse (Fin 1613) := [(94, -1), (241, -16), (243, -16), (287, -144), (288, -144), (698, -32), (1003, -144), (1223, 48), (1226, -16), (1251, 3)]

theorem oldProjectionSound2079 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2079 =
      Integer.Sparse.eval oldProjection2079 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2079 oldProjection2079
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2079 hH))

def oldProjection2080 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (586, -720), (602, -720), (610, -720), (698, -160), (1221, 240), (1226, -80), (1227, -80), (1251, 30)]

theorem oldProjectionSound2080 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2080 =
      Integer.Sparse.eval oldProjection2080 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2080 oldProjection2080
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2080 hH))

def oldProjection2081 : Integer.Sparse (Fin 1613) := [(288, -1), (1003, -1), (1014, -1), (1015, -1)]

theorem oldProjectionSound2081 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2081 =
      Integer.Sparse.eval oldProjection2081 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 2 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2081 oldProjection2081
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2081 hH))

def oldProjection2082 : Integer.Sparse (Fin 1613) := [(0, 3), (81, 240), (243, -80), (698, -480), (700, -160), (919, -720), (1058, 480), (1059, -240), (1226, -80), (1227, -160), (1251, 45)]

theorem oldProjectionSound2082 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2082 =
      Integer.Sparse.eval oldProjection2082 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2082 oldProjection2082
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2082 hH))

def oldProjection2083 : Integer.Sparse (Fin 1613) := [(94, -1), (228, 48), (241, -32), (243, -48), (698, -80), (1014, -144), (1223, 96), (1225, -16), (1226, -64), (1227, -32), (1251, 3)]

theorem oldProjectionSound2083 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2083 =
      Integer.Sparse.eval oldProjection2083 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2083 oldProjection2083
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2083 hH))

def oldProjection2084 : Integer.Sparse (Fin 1613) := [(0, -13), (698, -160), (1059, -40), (1227, -160), (1251, 85)]

theorem oldProjectionSound2084 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2084 =
      Integer.Sparse.eval oldProjection2084 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2084 oldProjection2084
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2084 hH))

def oldProjection2085 : Integer.Sparse (Fin 1613) := [(0, -3), (698, -20), (1027, -90), (1059, -30), (1227, -20), (1251, 25)]

theorem oldProjectionSound2085 {H : CMatrix} (hH : IsHadamard H) :
    (180 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2085 =
      Integer.Sparse.eval oldProjection2085 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 180 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2085 oldProjection2085
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2085 hH))

def oldProjection2086 : Integer.Sparse (Fin 1613) := [(0, 3), (243, -80), (698, -400), (1005, -720), (1058, 480), (1226, -320), (1227, -160), (1251, 45)]

theorem oldProjectionSound2086 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2086 =
      Integer.Sparse.eval oldProjection2086 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2086 oldProjection2086
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2086 hH))

def oldProjection2087 : Integer.Sparse (Fin 1613) := [(0, -3), (698, -80), (890, -360), (1227, 120), (1251, 35)]

theorem oldProjectionSound2087 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2087 =
      Integer.Sparse.eval oldProjection2087 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2087 oldProjection2087
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2087 hH))

def oldProjection2088 : Integer.Sparse (Fin 1613) := [(0, -21), (1027, -720), (1227, -80), (1251, 125)]

theorem oldProjectionSound2088 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2088 =
      Integer.Sparse.eval oldProjection2088 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2088 oldProjection2088
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2088 hH))

def oldProjection2097 : Integer.Sparse (Fin 1613) := [(0, 3), (81, 480), (90, -80), (94, -45), (698, -640), (700, -320), (1059, -320), (1226, -80), (1227, -160), (1251, 100)]

theorem oldProjectionSound2097 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2097 =
      Integer.Sparse.eval oldProjection2097 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2097 oldProjection2097
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2097 hH))

def oldProjection2099 : Integer.Sparse (Fin 1613) := [(0, -1), (81, 180), (94, -10), (698, -140), (1059, -40), (1221, 120), (1226, -20), (1227, -80), (1251, 15), (1389, 120)]

theorem oldProjectionSound2099 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2099 =
      Integer.Sparse.eval oldProjection2099 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 120 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2099 oldProjection2099
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2099 hH))

def oldProjection2102 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 144), (94, -10), (228, 48), (698, -144), (1034, -96), (1059, -64), (1226, -32), (1227, -48), (1251, 21)]

theorem oldProjectionSound2102 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2102 =
      Integer.Sparse.eval oldProjection2102 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2102 oldProjection2102
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2102 hH))

def oldProjection2109 : Integer.Sparse (Fin 1613) := [(0, 3), (94, -15), (105, -80), (241, -240), (243, -240), (691, 720), (698, -480), (700, -320), (1044, 480), (1050, 720), (1052, 720), (1059, -240), (1251, 10)]

theorem oldProjectionSound2109 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2109 =
      Integer.Sparse.eval oldProjection2109 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2109 oldProjection2109
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2109 hH))

def oldProjection2118 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -15), (241, -80), (698, -560), (1050, 720), (1052, 480), (1059, -480), (1221, 720), (1251, 60)]

theorem oldProjectionSound2118 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2118 =
      Integer.Sparse.eval oldProjection2118 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2118 oldProjection2118
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2118 hH))

def oldProjection2123 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 120), (4, -5), (19, 180), (20, -30), (94, -70), (104, -240), (105, -160), (106, -240), (241, -240), (243, -480), (246, -240), (698, -240), (703, -480), (704, -480), (1054, 720), (1251, -30)]

theorem oldProjectionSound2123 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2123 =
      Integer.Sparse.eval oldProjection2123 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2123 oldProjection2123
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2123 hH))

def oldProjection2128 : Integer.Sparse (Fin 1613) := [(0, -4), (19, 60), (20, -5), (94, -45), (241, -160), (243, -160), (698, -240), (704, -160), (1226, -160), (1227, -160), (1251, 20)]

theorem oldProjectionSound2128 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2128 =
      Integer.Sparse.eval oldProjection2128 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2128 oldProjection2128
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2128 hH))

def oldProjection2130 : Integer.Sparse (Fin 1613) := [(0, -1), (19, 10), (94, -30), (241, -40), (247, -40), (697, 240), (698, -240), (1050, 120), (1055, 120), (1058, 240), (1059, -120), (1227, -80), (1250, -30), (1251, 55)]

theorem oldProjectionSound2130 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2130 =
      Integer.Sparse.eval oldProjection2130 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2130 oldProjection2130
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2130 hH))

def oldProjection2132 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 40), (20, -5), (94, -20), (241, -80), (243, -240), (698, -640), (700, -720), (704, -160), (1052, 240), (1059, -320), (1251, 55)]

theorem oldProjectionSound2132 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2132 =
      Integer.Sparse.eval oldProjection2132 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2132 oldProjection2132
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2132 hH))

def oldProjection2134 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 70), (20, -15), (94, -45), (241, -40), (243, -160), (244, -160), (698, -160), (700, -240), (701, -160), (704, -160), (1053, 120), (1059, -40), (1061, 240), (1251, -25)]

theorem oldProjectionSound2134 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2134 =
      Integer.Sparse.eval oldProjection2134 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2134 oldProjection2134
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2134 hH))

def oldProjection2135 : Integer.Sparse (Fin 1613) := [(0, -3), (94, -5), (698, -240), (700, -160), (1251, -30)]

theorem oldProjectionSound2135 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2135 =
      Integer.Sparse.eval oldProjection2135 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2135 oldProjection2135
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2135 hH))

def oldProjection2137 : Integer.Sparse (Fin 1613) := [(0, -7), (94, -35), (698, -240), (1059, -160), (1227, -160), (1251, 80)]

theorem oldProjectionSound2137 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2137 =
      Integer.Sparse.eval oldProjection2137 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2137 oldProjection2137
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2137 hH))

def oldProjection2142 : Integer.Sparse (Fin 1613) := [(0, -31), (94, -25), (698, -720), (700, -160), (1059, -480), (1227, -480), (1251, 330)]

theorem oldProjectionSound2142 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2142 =
      Integer.Sparse.eval oldProjection2142 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2142 oldProjection2142
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2142 hH))

def oldProjection2144 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -2), (40, 48), (42, -48), (94, 1), (242, 48), (243, -64), (244, -16), (700, -48), (701, -32), (704, -48), (1251, -9)]

theorem oldProjectionSound2144 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2144 =
      Integer.Sparse.eval oldProjection2144 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2144 oldProjection2144
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2144 hH))

def oldProjection2145 : Integer.Sparse (Fin 1613) := [(0, 1), (90, -40), (94, -15), (502, -360), (697, 120), (698, -160), (700, -120), (704, -40), (1059, -40), (1248, -360)]

theorem oldProjectionSound2145 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2145 =
      Integer.Sparse.eval oldProjection2145 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2145 oldProjection2145
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2145 hH))

def oldProjection2146 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -10), (458, -720), (697, 240), (698, -160), (700, -80), (794, -720), (801, -720), (1059, -80), (1251, 5)]

theorem oldProjectionSound2146 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2146 =
      Integer.Sparse.eval oldProjection2146 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2146 oldProjection2146
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2146 hH))

def oldProjection2147 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 12), (20, -3), (40, 96), (93, -12), (94, 1), (105, -16), (241, -16), (242, 96), (243, -16), (691, 48), (700, -32), (704, -32), (1251, -4)]

theorem oldProjectionSound2147 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2147 =
      Integer.Sparse.eval oldProjection2147 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2147 oldProjection2147
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2147 hH))

def oldProjection2148 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 60), (20, -10), (45, 240), (94, -25), (104, -80), (105, -80), (241, -160), (242, 240), (243, -160), (329, -720), (697, 240), (698, -160), (704, -160)]

theorem oldProjectionSound2148 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2148 =
      Integer.Sparse.eval oldProjection2148 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2148 oldProjection2148
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2148 hH))

def oldProjection2149 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 100), (20, -5), (45, 240), (94, -65), (104, -240), (108, -160), (241, -80), (247, -160), (694, 480), (704, -240), (1251, -70)]

theorem oldProjectionSound2149 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2149 =
      Integer.Sparse.eval oldProjection2149 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2149 oldProjection2149
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2149 hH))

def oldProjection2151 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 120), (20, -10), (45, 240), (94, -45), (104, -80), (108, -80), (240, 240), (247, -80), (309, -720), (698, -80), (704, -240), (1251, -40)]

theorem oldProjectionSound2151 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2151 =
      Integer.Sparse.eval oldProjection2151 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2151 oldProjection2151
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2151 hH))

def oldProjection2152 : Integer.Sparse (Fin 1613) := [(3, 8), (19, 16), (20, -5), (93, -12), (94, 6), (105, -48), (241, -32), (242, 48), (243, -64), (1047, 48), (1251, -1)]

theorem oldProjectionSound2152 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2152 =
      Integer.Sparse.eval oldProjection2152 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2152 oldProjection2152
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2152 hH))

def oldProjection2153 : Integer.Sparse (Fin 1613) := [(0, 2), (3, 20), (19, 80), (20, -5), (37, 480), (93, -60), (94, -40), (104, -80), (240, 480), (241, -80), (690, 240), (697, 480), (1250, -120), (1251, -5)]

theorem oldProjectionSound2153 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2153 =
      Integer.Sparse.eval oldProjection2153 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2153 oldProjection2153
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2153 hH))

def oldProjection2157 : Integer.Sparse (Fin 1613) := [(0, 4), (19, 100), (20, -20), (37, 240), (94, -65), (108, -160), (240, 240), (247, -160), (325, -720), (697, 240), (1251, -65)]

theorem oldProjectionSound2157 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2157 =
      Integer.Sparse.eval oldProjection2157 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2157 oldProjection2157
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2157 hH))

def oldProjection2158 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 24), (20, 2), (37, 96), (94, 9), (108, -32), (1045, 48), (1052, 48), (1251, -1)]

theorem oldProjectionSound2158 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2158 =
      Integer.Sparse.eval oldProjection2158 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2158 oldProjection2158
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2158 hH))

def oldProjection2159 : Integer.Sparse (Fin 1613) := [(19, -4), (20, -1), (94, -1), (104, -8), (108, -16), (124, -72), (240, 24), (241, -8), (247, -16)]

theorem oldProjectionSound2159 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2159 =
      Integer.Sparse.eval oldProjection2159 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2159 oldProjection2159
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2159 hH))

def oldProjection2160 : Integer.Sparse (Fin 1613) := [(3, 6), (19, 6), (20, 3), (93, -6), (94, -5), (105, -16), (243, -16), (1044, 24), (1045, 24), (1251, -2)]

theorem oldProjectionSound2160 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2160 =
      Integer.Sparse.eval oldProjection2160 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2160 oldProjection2160
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2160 hH))

def oldProjection2161 : Integer.Sparse (Fin 1613) := [(0, -1), (19, 10), (94, -30), (247, -40), (549, -360), (697, 120), (698, -40), (1251, 5), (1323, 120), (1389, 120)]

theorem oldProjectionSound2161 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2161 =
      Integer.Sparse.eval oldProjection2161 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2161 oldProjection2161
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2161 hH))

def oldProjection2162 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 20), (94, -15), (241, -80), (243, -80), (478, -720), (698, -80), (1226, -160), (1251, -10), (1323, 240)]

theorem oldProjectionSound2162 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2162 =
      Integer.Sparse.eval oldProjection2162 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2162 oldProjection2162
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2162 hH))

def oldProjection2163 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 60), (20, -5), (45, 240), (94, -25), (104, -80), (241, -80), (697, 240), (698, -160), (704, -160), (1086, -720), (1219, 240), (1251, 10)]

theorem oldProjectionSound2163 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2163 =
      Integer.Sparse.eval oldProjection2163 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2163 oldProjection2163
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2163 hH))

def oldProjection2165 : Integer.Sparse (Fin 1613) := [(19, 1), (94, -2), (241, -16), (243, -4), (694, 12), (698, -24), (1047, 12), (1055, 24), (1226, -4), (1227, -4), (1251, 5)]

theorem oldProjectionSound2165 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2165 =
      Integer.Sparse.eval oldProjection2165 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2165 oldProjection2165
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2165 hH))

def oldProjection2166 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -15), (241, -80), (635, -720), (697, 240), (698, -160), (1086, -720), (1089, -720), (1251, 20)]

theorem oldProjectionSound2166 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2166 =
      Integer.Sparse.eval oldProjection2166 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2166 oldProjection2166
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2166 hH))

def oldProjection2167 : Integer.Sparse (Fin 1613) := [(94, -1), (241, -16), (243, -16), (549, -144), (697, 48), (698, -64), (1226, -32), (1227, -32), (1251, 11), (1323, 48), (1389, 48)]

theorem oldProjectionSound2167 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2167 =
      Integer.Sparse.eval oldProjection2167 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2167 oldProjection2167
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2167 hH))

def oldProjection2168 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 12), (94, -16), (241, -32), (247, -32), (694, 96), (697, 48), (698, -48), (1251, -5)]

theorem oldProjectionSound2168 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2168 =
      Integer.Sparse.eval oldProjection2168 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2168 oldProjection2168
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2168 hH))

end NoFourMUBs.Step2.SOS.Normalization

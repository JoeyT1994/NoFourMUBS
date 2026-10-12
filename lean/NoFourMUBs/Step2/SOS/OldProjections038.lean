import NoFourMUBs.Step2.SOS.NormalizationContext
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound46
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound47

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def oldProjection2945 : Integer.Sparse (Fin 1613) := [(0, 8), (19, -60), (20, 5), (94, 80), (238, -240), (241, 240), (243, 80), (247, 160), (465, 720), (698, 960), (700, 80), (704, 80), (1058, -480), (1059, 80), (1226, 160), (1227, 160), (1250, 180), (1251, -365), (1389, -240)]

theorem oldProjectionSound2945 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2945 =
      Integer.Sparse.eval oldProjection2945 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2945 oldProjection2945
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2945 hH))

def oldProjection2946 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -80), (20, 20), (38, -480), (81, -480), (94, 5), (241, 160), (243, 160), (247, 160), (698, 880), (700, 800), (704, 320), (1052, -480), (1053, -240), (1059, 240), (1251, -160)]

theorem oldProjectionSound2946 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2946 =
      Integer.Sparse.eval oldProjection2946 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2946 oldProjection2946
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2946 hH))

def oldProjection2949 : Integer.Sparse (Fin 1613) := [(0, -7), (19, -140), (94, 140), (129, 720), (238, -240), (241, 640), (243, 240), (247, 240), (433, 720), (465, 720), (697, -960), (698, 1200), (700, 320), (1052, -480), (1058, -240), (1059, 480), (1226, 160), (1227, 80), (1251, -185)]

theorem oldProjectionSound2949 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2949 =
      Integer.Sparse.eval oldProjection2949 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2949 oldProjection2949
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2949 hH))

def oldProjection2951 : Integer.Sparse (Fin 1613) := [(0, -7), (19, -80), (38, -240), (94, 95), (130, 720), (238, -240), (241, 160), (243, 80), (247, 160), (434, 720), (465, 720), (492, 720), (698, 960), (700, 400), (704, 80), (1058, -240), (1059, 400), (1226, 80), (1227, 160), (1251, -70)]

theorem oldProjectionSound2951 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2951 =
      Integer.Sparse.eval oldProjection2951 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2951 oldProjection2951
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2951 hH))

def oldProjection2952 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -40), (94, 75), (126, 360), (238, -120), (241, 240), (243, 80), (247, 80), (427, 360), (462, 720), (465, 720), (697, -240), (698, 560), (700, 160), (1055, -240), (1058, -120), (1226, 80), (1227, 80), (1251, -45)]

theorem oldProjectionSound2952 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2952 =
      Integer.Sparse.eval oldProjection2952 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2952 oldProjection2952
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2952 hH))

def oldProjection2953 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -200), (20, 45), (42, 400), (58, -480), (61, -480), (94, 90), (241, 160), (243, 960), (244, 80), (480, 720), (698, 720), (700, 640), (701, 400), (704, 720), (1052, -240), (1053, -240), (1061, -480), (1251, 80)]

theorem oldProjectionSound2953 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2953 =
      Integer.Sparse.eval oldProjection2953 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2953 oldProjection2953
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2953 hH))

def oldProjection2954 : Integer.Sparse (Fin 1613) := [(0, -7), (19, -180), (20, 25), (38, -480), (81, -480), (94, 130), (241, 80), (243, 320), (247, 80), (505, 720), (698, 480), (700, 240), (704, 560), (1059, 80), (1061, -240), (1226, 160), (1227, 80), (1251, 100)]

theorem oldProjectionSound2954 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2954 =
      Integer.Sparse.eval oldProjection2954 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2954 oldProjection2954
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2954 hH))

def oldProjection2955 : Integer.Sparse (Fin 1613) := [(0, -8), (19, -160), (20, 25), (38, -480), (94, 110), (241, 80), (243, 400), (247, 80), (492, 720), (698, 1280), (700, 1600), (704, 560), (1059, 640), (1061, -240), (1251, -35)]

theorem oldProjectionSound2955 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2955 =
      Integer.Sparse.eval oldProjection2955 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2955 oldProjection2955
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2955 hH))

def oldProjection2960 : Integer.Sparse (Fin 1613) := [(3, -2), (19, 2), (20, 2), (40, -48), (77, -48), (94, 1), (104, 16), (241, 16), (243, 16), (692, -24), (704, 16), (1052, -72), (1053, -48), (1223, -48), (1251, -1)]

theorem oldProjectionSound2960 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2960 =
      Integer.Sparse.eval oldProjection2960 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2960 oldProjection2960
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2960 hH))

def oldProjection2961 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -80), (20, 25), (42, 80), (89, -240), (94, 45), (241, 80), (243, 400), (698, 320), (700, 80), (701, 40), (704, 440), (1061, -240), (1219, -120), (1223, -240), (1251, 30)]

theorem oldProjectionSound2961 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2961 =
      Integer.Sparse.eval oldProjection2961 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2961 oldProjection2961
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2961 hH))

def oldProjection2962 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -80), (20, 15), (94, 5), (241, 120), (243, 240), (505, 360), (698, 400), (700, 360), (704, 320), (1052, -240), (1059, 80), (1223, -120), (1226, 40), (1251, -40)]

theorem oldProjectionSound2962 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2962 =
      Integer.Sparse.eval oldProjection2962 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2962 oldProjection2962
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2962 hH))

def oldProjection2963 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -140), (20, 30), (38, -720), (42, 80), (77, -240), (94, 80), (241, 160), (243, 320), (244, 40), (247, 160), (698, 240), (700, 360), (701, 120), (704, 400), (1052, -120), (1053, -240), (1059, 80), (1061, -240), (1223, -240), (1251, 65)]

theorem oldProjectionSound2963 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2963 =
      Integer.Sparse.eval oldProjection2963 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2963 oldProjection2963
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2963 hH))

def oldProjection2964 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -40), (94, 15), (241, 120), (423, 360), (698, 280), (1050, -120), (1052, -240), (1058, -120), (1221, -120), (1226, 160), (1250, 30), (1251, -40)]

theorem oldProjectionSound2964 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2964 =
      Integer.Sparse.eval oldProjection2964 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2964 oldProjection2964
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2964 hH))

def oldProjection2965 : Integer.Sparse (Fin 1613) := [(0, 3), (19, -40), (81, -480), (94, 120), (247, 240), (434, 720), (697, -240), (698, 480), (1058, -240), (1226, 80), (1227, 160), (1250, 60), (1251, -95), (1388, -240), (1389, -240)]

theorem oldProjectionSound2965 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2965 =
      Integer.Sparse.eval oldProjection2965 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2965 oldProjection2965
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2965 hH))

def oldProjection2967 : Integer.Sparse (Fin 1613) := [(0, 18), (19, -20), (94, 85), (247, 120), (434, 360), (697, -120), (698, 400), (700, 80), (1058, -120), (1059, 120), (1226, 40), (1227, 80), (1250, 30), (1251, -155), (1388, -120)]

theorem oldProjectionSound2967 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2967 =
      Integer.Sparse.eval oldProjection2967 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2967 oldProjection2967
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2967 hH))

def oldProjection2968 : Integer.Sparse (Fin 1613) := [(0, 8), (19, -20), (81, -480), (94, 135), (247, 80), (433, 720), (489, 720), (697, -480), (698, 1360), (700, 480), (1055, -240), (1058, -240), (1059, 560), (1219, -480), (1227, 560), (1250, 60), (1251, -325), (1389, -240)]

theorem oldProjectionSound2968 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2968 =
      Integer.Sparse.eval oldProjection2968 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2968 oldProjection2968
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2968 hH))

def oldProjection2969 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -8), (81, -96), (94, 29), (241, 48), (426, 144), (697, -48), (698, 256), (1055, -48), (1058, -48), (1226, 128), (1227, 112), (1250, 12), (1251, -44), (1389, -48)]

theorem oldProjectionSound2969 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2969 =
      Integer.Sparse.eval oldProjection2969 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2969 oldProjection2969
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2969 hH))

def oldProjection2970 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -12), (94, -4), (241, 32), (427, 144), (698, 16), (700, 64), (1050, -48), (1052, -48), (1058, -48), (1059, 64), (1226, 32), (1227, 32), (1250, 12), (1251, -21)]

theorem oldProjectionSound2970 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2970 =
      Integer.Sparse.eval oldProjection2970 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2970 oldProjection2970
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2970 hH))

def oldProjection2971 : Integer.Sparse (Fin 1613) := [(0, -13), (19, -40), (81, -480), (94, 120), (247, 240), (433, 720), (697, -480), (698, 400), (1052, -480), (1059, 160), (1251, 45)]

theorem oldProjectionSound2971 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2971 =
      Integer.Sparse.eval oldProjection2971 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2971 oldProjection2971
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2971 hH))

def oldProjection2972 : Integer.Sparse (Fin 1613) := [(0, 4), (19, -10), (81, -240), (94, -5), (241, 40), (247, 40), (697, -240), (698, 480), (700, 80), (1059, 40), (1219, -120), (1226, 120), (1227, 120), (1251, -75)]

theorem oldProjectionSound2972 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2972 =
      Integer.Sparse.eval oldProjection2972 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2972 oldProjection2972
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2972 hH))

def oldProjection2973 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -4), (94, 23), (241, 16), (247, 16), (489, 144), (697, -96), (698, 64), (700, 48), (1059, 48), (1219, -48), (1227, 16), (1251, -16)]

theorem oldProjectionSound2973 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2973 =
      Integer.Sparse.eval oldProjection2973 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2973 oldProjection2973
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2973 hH))

def oldProjection2976 : Integer.Sparse (Fin 1613) := [(0, 12), (19, -20), (81, -960), (94, 35), (241, 80), (423, 720), (434, 1440), (698, 1200), (1052, -240), (1058, -720), (1059, 160), (1226, 320), (1227, 640), (1251, -225)]

theorem oldProjectionSound2976 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2976 =
      Integer.Sparse.eval oldProjection2976 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2976 oldProjection2976
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2976 hH))

def oldProjection2977 : Integer.Sparse (Fin 1613) := [(0, 1), (81, -96), (94, 18), (426, 144), (433, 144), (434, 144), (698, 288), (700, 48), (1058, -144), (1059, 96), (1226, 96), (1227, 96), (1251, -55)]

theorem oldProjectionSound2977 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2977 =
      Integer.Sparse.eval oldProjection2977 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2977 oldProjection2977
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2977 hH))

def oldProjection2979 : Integer.Sparse (Fin 1613) := [(0, 11), (94, 70), (427, 360), (434, 720), (698, 640), (700, 240), (1058, -360), (1059, 160), (1226, 160), (1227, 320), (1251, -125)]

theorem oldProjectionSound2979 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2979 =
      Integer.Sparse.eval oldProjection2979 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2979 oldProjection2979
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2979 hH))

def oldProjection2985 : Integer.Sparse (Fin 1613) := [(0, -7), (19, -100), (20, 10), (81, -480), (94, 100), (228, -480), (241, 160), (243, 160), (465, 720), (698, 560), (700, 160), (704, 240), (1059, 160), (1251, 45), (1389, -720)]

theorem oldProjectionSound2985 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2985 =
      Integer.Sparse.eval oldProjection2985 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2985 oldProjection2985
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2985 hH))

def oldProjection2986 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -80), (20, 10), (94, -55), (241, 480), (243, 240), (247, 80), (478, 720), (698, 400), (1052, -480), (1221, -480), (1223, -240), (1226, 320), (1227, 160), (1251, 85)]

theorem oldProjectionSound2986 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2986 =
      Integer.Sparse.eval oldProjection2986 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2986 oldProjection2986
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2986 hH))

def oldProjection2987 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -260), (20, 45), (94, 110), (241, 80), (243, 320), (247, 80), (483, 720), (698, 880), (704, 560), (1226, 320), (1227, 240), (1251, 15)]

theorem oldProjectionSound2987 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2987 =
      Integer.Sparse.eval oldProjection2987 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2987 oldProjection2987
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2987 hH))

def oldProjection2988 : Integer.Sparse (Fin 1613) := [(0, -4), (3, -20), (19, -280), (20, 40), (40, -480), (42, 560), (94, 105), (104, 160), (241, 320), (243, 1200), (244, 80), (480, 720), (692, -240), (698, 640), (700, 560), (701, 400), (704, 880), (1052, -240), (1059, 80), (1251, 85)]

theorem oldProjectionSound2988 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2988 =
      Integer.Sparse.eval oldProjection2988 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2988 oldProjection2988
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2988 hH))

def oldProjection2989 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -80), (20, 5), (81, -1200), (94, 160), (228, -480), (241, 240), (243, 80), (247, 160), (484, 720), (698, 1440), (700, 160), (704, 80), (1052, -480), (1059, 320), (1223, -240), (1226, 320), (1227, 240), (1251, -145)]

theorem oldProjectionSound2989 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2989 =
      Integer.Sparse.eval oldProjection2989 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2989 oldProjection2989
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2989 hH))

def oldProjection2990 : Integer.Sparse (Fin 1613) := [(0, -7), (19, -160), (20, 25), (94, 160), (241, 160), (243, 640), (479, 720), (492, 720), (698, 1120), (700, 1280), (704, 800), (1059, 320), (1251, 30)]

theorem oldProjectionSound2990 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2990 =
      Integer.Sparse.eval oldProjection2990 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2990 oldProjection2990
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2990 hH))

def oldProjection2991 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -320), (20, 40), (38, -480), (42, 640), (94, 125), (241, 160), (243, 960), (244, 240), (247, 80), (480, 720), (498, 720), (698, 720), (700, 1280), (701, 800), (704, 1120), (1059, 160), (1061, -240), (1251, 125)]

theorem oldProjectionSound2991 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2991 =
      Integer.Sparse.eval oldProjection2991 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2991 oldProjection2991
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2991 hH))

def oldProjection2992 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -80), (20, 10), (81, -1200), (94, 150), (228, -480), (241, 160), (243, 240), (508, 720), (698, 1120), (700, 320), (704, 240), (1059, 320), (1226, 320), (1227, 240), (1251, -25)]

theorem oldProjectionSound2992 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2992 =
      Integer.Sparse.eval oldProjection2992 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2992 oldProjection2992
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2992 hH))

def oldProjection2995 : Integer.Sparse (Fin 1613) := [(0, 3), (19, -20), (94, -45), (241, 160), (243, 240), (483, 1440), (484, 1440), (610, 1440), (697, -480), (698, 1280), (704, 160), (1050, -240), (1052, -720), (1059, 240), (1226, 480), (1227, 480), (1251, -200)]

theorem oldProjectionSound2995 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2995 =
      Integer.Sparse.eval oldProjection2995 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2995 oldProjection2995
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2995 hH))

def oldProjection2996 : Integer.Sparse (Fin 1613) := [(0, 13), (19, -20), (94, -15), (241, 80), (427, 720), (698, -160), (700, 80), (1052, -240), (1059, 160), (1221, -480), (1226, 320), (1227, 320), (1251, 260)]

theorem oldProjectionSound2996 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2996 =
      Integer.Sparse.eval oldProjection2996 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2996 oldProjection2996
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2996 hH))

def oldProjection2997 : Integer.Sparse (Fin 1613) := [(0, 6), (94, 125), (461, 720), (698, 960), (700, 960), (1059, 1040), (1226, 80), (1227, 240), (1251, -165)]

theorem oldProjectionSound2997 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2997 =
      Integer.Sparse.eval oldProjection2997 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2997 oldProjection2997
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2997 hH))

def oldProjection2999 : Integer.Sparse (Fin 1613) := [(0, 54), (81, -480), (94, 195), (698, 800), (700, 240), (1059, 240), (1251, -335), (1389, -480)]

theorem oldProjectionSound2999 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2999 =
      Integer.Sparse.eval oldProjection2999 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2999 oldProjection2999
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2999 hH))

def oldProjection3001 : Integer.Sparse (Fin 1613) := [(0, 3), (81, -96), (94, 40), (489, 288), (698, 368), (700, 208), (1059, 128), (1227, 128), (1251, -59), (1389, -96)]

theorem oldProjectionSound3001 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3001 =
      Integer.Sparse.eval oldProjection3001 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3001 oldProjection3001
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3001 hH))

def oldProjection3002 : Integer.Sparse (Fin 1613) := [(0, 9), (81, -480), (94, 120), (427, 720), (433, 1440), (698, 1440), (700, 640), (1052, -720), (1059, 560), (1221, -960), (1226, 320), (1227, 480), (1251, -305), (1389, -480)]

theorem oldProjectionSound3002 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3002 =
      Integer.Sparse.eval oldProjection3002 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3002 oldProjection3002
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3002 hH))

def oldProjection3004 : Integer.Sparse (Fin 1613) := [(0, 19), (81, -480), (94, 115), (461, 720), (698, 880), (700, 240), (1059, 320), (1226, 560), (1227, 880), (1251, -260), (1389, -480)]

theorem oldProjectionSound3004 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3004 =
      Integer.Sparse.eval oldProjection3004 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3004 oldProjection3004
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3004 hH))

def oldProjection3006 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -10), (38, -120), (81, -240), (241, 80), (243, 80), (462, 360), (505, 720), (508, 720), (602, 720), (697, -120), (698, 320), (700, 80), (704, 40), (1050, -120), (1052, -240), (1059, 160), (1221, -120), (1226, 160), (1227, 120), (1251, -55)]

theorem oldProjectionSound3006 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3006 =
      Integer.Sparse.eval oldProjection3006 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3006 oldProjection3006
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3006 hH))

def oldProjection3012 : Integer.Sparse (Fin 1613) := [(0, 6), (19, -10), (81, -240), (94, 55), (247, 40), (433, 360), (698, 400), (1052, -120), (1059, 40), (1221, -120), (1226, 80), (1227, 80), (1251, -145), (1389, -240)]

theorem oldProjectionSound3012 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3012 =
      Integer.Sparse.eval oldProjection3012 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3012 oldProjection3012
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3012 hH))

def oldProjection3013 : Integer.Sparse (Fin 1613) := [(0, 11), (81, -240), (94, 90), (489, 360), (698, 440), (700, 40), (1059, 40), (1226, 120), (1227, 240), (1251, -105), (1389, -240)]

theorem oldProjectionSound3013 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3013 =
      Integer.Sparse.eval oldProjection3013 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3013 oldProjection3013
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3013 hH))

def oldProjection3017 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (81, -480), (94, 115), (241, 80), (427, 720), (698, 640), (700, 880), (1052, -240), (1059, 640), (1251, -180)]

theorem oldProjectionSound3017 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3017 =
      Integer.Sparse.eval oldProjection3017 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3017 oldProjection3017
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3017 hH))

def oldProjection3018 : Integer.Sparse (Fin 1613) := [(0, -3), (81, -240), (94, 45), (461, 360), (698, 600), (700, 640), (1059, 320), (1226, 80), (1227, 40), (1251, -60)]

theorem oldProjectionSound3018 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3018 =
      Integer.Sparse.eval oldProjection3018 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3018 oldProjection3018
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3018 hH))

def oldProjection3020 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -16), (94, 12), (169, 144), (241, 48), (247, 16), (541, 144), (602, 144), (697, -48), (698, 208), (1050, -192), (1055, -48), (1058, -96), (1059, 112), (1226, 16), (1227, 16), (1250, 12), (1251, -15)]

theorem oldProjectionSound3020 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3020 =
      Integer.Sparse.eval oldProjection3020 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3020 oldProjection3020
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3020 hH))

def oldProjection3021 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -220), (20, 25), (88, 320), (89, -480), (90, 160), (94, 135), (228, -480), (241, 640), (243, 1040), (247, 240), (548, 720), (609, 720), (698, 1440), (700, 80), (704, 560), (1061, -240), (1219, -240), (1223, -480), (1226, 880), (1227, 400), (1251, -15)]

theorem oldProjectionSound3021 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3021 =
      Integer.Sparse.eval oldProjection3021 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3021 oldProjection3021
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3021 hH))

def oldProjection3022 : Integer.Sparse (Fin 1613) := [(0, 3), (19, -20), (20, 2), (94, 17), (241, 64), (243, 32), (247, 48), (549, 144), (698, 304), (1219, -96), (1223, -48), (1226, 144), (1227, 160), (1251, -52)]

theorem oldProjectionSound3022 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3022 =
      Integer.Sparse.eval oldProjection3022 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3022 oldProjection3022
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3022 hH))

def oldProjection3030 : Integer.Sparse (Fin 1613) := [(0, 3), (19, -20), (81, -480), (94, 45), (241, 80), (697, -480), (698, 560), (1050, -480), (1052, -480), (1059, 320), (1221, -240), (1227, 160), (1250, 120), (1251, -110)]

theorem oldProjectionSound3030 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3030 =
      Integer.Sparse.eval oldProjection3030 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3030 oldProjection3030
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3030 hH))

def oldProjection3031 : Integer.Sparse (Fin 1613) := [(0, 19), (19, -20), (94, 85), (247, 120), (617, 360), (697, -120), (698, 80), (1059, 40), (1227, 40), (1250, 60), (1251, -130), (1388, -240), (1389, -120)]

theorem oldProjectionSound3031 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3031 =
      Integer.Sparse.eval oldProjection3031 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3031 oldProjection3031
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3031 hH))

def oldProjection3032 : Integer.Sparse (Fin 1613) := [(0, 14), (19, -20), (94, 95), (247, 80), (697, -480), (698, 880), (1055, -480), (1059, 160), (1219, -480), (1226, 160), (1227, 720), (1250, 120), (1251, -295), (1389, -480)]

theorem oldProjectionSound3032 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3032 =
      Integer.Sparse.eval oldProjection3032 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3032 oldProjection3032
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3032 hH))

def oldProjection3033 : Integer.Sparse (Fin 1613) := [(0, 11), (19, -10), (94, 60), (241, 40), (697, -240), (698, 640), (1050, -240), (1052, -240), (1059, 280), (1221, -720), (1226, 80), (1227, 320), (1250, 60), (1251, -185), (1389, -480)]

theorem oldProjectionSound3033 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3033 =
      Integer.Sparse.eval oldProjection3033 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3033 oldProjection3033
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3033 hH))

def oldProjection3035 : Integer.Sparse (Fin 1613) := [(0, 14), (19, -20), (94, 85), (241, 80), (247, 80), (635, 720), (697, -480), (698, 800), (1219, -240), (1226, 160), (1227, 320), (1251, -145), (1389, -480)]

theorem oldProjectionSound3035 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3035 =
      Integer.Sparse.eval oldProjection3035 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3035 oldProjection3035
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3035 hH))

def oldProjection3036 : Integer.Sparse (Fin 1613) := [(0, 6), (19, -4), (94, 25), (241, 16), (247, 16), (617, 144), (697, -96), (698, 288), (1059, 144), (1219, -48), (1226, 32), (1227, 128), (1251, -93)]

theorem oldProjectionSound3036 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3036 =
      Integer.Sparse.eval oldProjection3036 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3036 oldProjection3036
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3036 hH))

def oldProjection3037 : Integer.Sparse (Fin 1613) := [(0, 4), (19, -4), (81, -96), (94, 23), (247, 32), (617, 288), (697, -96), (698, 96), (1052, -48), (1059, 32), (1227, 64), (1251, -37)]

theorem oldProjectionSound3037 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3037 =
      Integer.Sparse.eval oldProjection3037 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3037 oldProjection3037
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3037 hH))

def oldProjection3040 : Integer.Sparse (Fin 1613) := [(0, 3), (19, -4), (94, 17), (241, 16), (698, 96), (1050, -24), (1055, -48), (1221, -48), (1226, 16), (1227, 80), (1250, 18), (1251, -44), (1389, -96)]

theorem oldProjectionSound3040 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3040 =
      Integer.Sparse.eval oldProjection3040 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3040 oldProjection3040
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3040 hH))

def oldProjection3041 : Integer.Sparse (Fin 1613) := [(0, 3), (19, -8), (94, 24), (241, 32), (602, 144), (698, 192), (1050, -96), (1055, -48), (1058, -48), (1059, 128), (1226, 16), (1227, 80), (1250, 24), (1251, -59), (1389, -48)]

theorem oldProjectionSound3041 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3041 =
      Integer.Sparse.eval oldProjection3041 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3041 oldProjection3041
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3041 hH))

def oldProjection3042 : Integer.Sparse (Fin 1613) := [(0, 16), (94, 25), (610, 720), (698, 560), (1050, -120), (1055, -240), (1058, -240), (1059, 80), (1221, -240), (1226, 160), (1227, 560), (1250, 30), (1251, -225), (1389, -240)]

theorem oldProjectionSound3042 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3042 =
      Integer.Sparse.eval oldProjection3042 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3042 oldProjection3042
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3042 hH))

def oldProjection3043 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 2), (1050, -12), (1221, -24), (1250, 9), (1251, -12), (1388, -24), (1389, -48)]

theorem oldProjectionSound3043 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3043 =
      Integer.Sparse.eval oldProjection3043 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3043 oldProjection3043
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3043 hH))

def oldProjection3044 : Integer.Sparse (Fin 1613) := [(0, 7), (94, 25), (698, 80), (1055, -120), (1227, 120), (1250, 45), (1251, -55), (1388, -60), (1389, -120)]

theorem oldProjectionSound3044 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3044 =
      Integer.Sparse.eval oldProjection3044 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3044 oldProjection3044
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3044 hH))

def oldProjection3045 : Integer.Sparse (Fin 1613) := [(0, 9), (94, 45), (602, 360), (698, 760), (1050, -120), (1055, -240), (1058, -240), (1059, 160), (1226, 200), (1227, 320), (1250, 30), (1251, -210), (1389, -120)]

theorem oldProjectionSound3045 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3045 =
      Integer.Sparse.eval oldProjection3045 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3045 oldProjection3045
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3045 hH))

def oldProjection3052 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -40), (20, 5), (88, 128), (94, 25), (228, -96), (241, 128), (243, 336), (609, 288), (698, 368), (704, 160), (1226, 224), (1227, 96), (1251, -7)]

theorem oldProjectionSound3052 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3052 =
      Integer.Sparse.eval oldProjection3052 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3052 oldProjection3052
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3052 hH))

def oldProjection3054 : Integer.Sparse (Fin 1613) := [(0, -8), (19, -220), (20, 15), (38, -960), (81, -960), (88, 320), (94, 140), (228, -480), (231, -720), (241, 480), (243, 800), (247, 320), (543, 720), (548, 1440), (698, 1040), (700, 160), (704, 320), (1059, 80), (1061, -240), (1226, 480), (1227, 160), (1251, 65)]

theorem oldProjectionSound3054 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3054 =
      Integer.Sparse.eval oldProjection3054 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3054 oldProjection3054
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3054 hH))

def oldProjection3055 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -10), (88, 120), (90, 120), (94, 5), (241, 80), (243, 240), (483, 360), (596, 360), (609, 360), (610, 360), (618, 360), (698, 680), (700, 40), (704, 80), (1059, 40), (1226, 440), (1227, 280), (1251, -55)]

theorem oldProjectionSound3055 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3055 =
      Integer.Sparse.eval oldProjection3055 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3055 oldProjection3055
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3055 hH))

def oldProjection3056 : Integer.Sparse (Fin 1613) := [(0, 3), (19, -20), (76, -480), (81, -480), (94, -10), (241, 160), (698, 1360), (1052, -240), (1059, 240), (1221, -960), (1226, 480), (1227, 480), (1251, -65)]

theorem oldProjectionSound3056 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3056 =
      Integer.Sparse.eval oldProjection3056 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3056 oldProjection3056
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3056 hH))

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.NormalizationContext
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound15

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def oldProjection909 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -40), (20, -5), (94, -15), (1251, -5)]

theorem oldProjectionSound909 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node909 =
      Integer.Sparse.eval oldProjection909 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value909 oldProjection909
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound909 hH))

def oldProjection910 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -40), (20, 5), (94, 15), (247, 80), (1251, 5)]

theorem oldProjectionSound910 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node910 =
      Integer.Sparse.eval oldProjection910 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value910 oldProjection910
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound910 hH))

def oldProjection911 : Integer.Sparse (Fin 1613) := [(241, 1), (243, 2), (698, 2), (1225, 1), (1226, 2), (1227, 1)]

theorem oldProjectionSound911 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node911 =
      Integer.Sparse.eval oldProjection911 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value911 oldProjection911
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound911 hH))

def oldProjection912 : Integer.Sparse (Fin 1613) := [(19, 1), (94, 1), (238, -12), (1250, 3), (1251, 1)]

theorem oldProjectionSound912 {H : CMatrix} (hH : IsHadamard H) :
    (36 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node912 =
      Integer.Sparse.eval oldProjection912 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 36 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value912 oldProjection912
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound912 hH))

def oldProjection913 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -8), (20, 1), (93, 12), (94, 3), (240, -48), (1250, 12), (1251, 2)]

theorem oldProjectionSound913 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node913 =
      Integer.Sparse.eval oldProjection913 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value913 oldProjection913
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound913 hH))

def oldProjection914 : Integer.Sparse (Fin 1613) := [(0, -1), (19, 20), (94, 5), (241, 80), (247, 80), (1251, -10)]

theorem oldProjectionSound914 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node914 =
      Integer.Sparse.eval oldProjection914 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value914 oldProjection914
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound914 hH))

def oldProjection915 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 1), (94, -2), (241, 16), (1251, 5)]

theorem oldProjectionSound915 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node915 =
      Integer.Sparse.eval oldProjection915 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value915 oldProjection915
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound915 hH))

def oldProjection916 : Integer.Sparse (Fin 1613) := [(238, -1), (1057, -1), (1058, -1)]

theorem oldProjectionSound916 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node916 =
      Integer.Sparse.eval oldProjection916 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value916 oldProjection916
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound916 hH))

def oldProjection917 : Integer.Sparse (Fin 1613) := [(94, 1), (241, 16), (243, 16), (698, 32), (1223, -48), (1226, 16), (1251, -3)]

theorem oldProjectionSound917 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node917 =
      Integer.Sparse.eval oldProjection917 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value917 oldProjection917
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound917 hH))

def oldProjection918 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -8), (20, 2), (93, 12), (94, 1), (242, -48), (1251, 3)]

theorem oldProjectionSound918 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node918 =
      Integer.Sparse.eval oldProjection918 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value918 oldProjection918
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound918 hH))

def oldProjection919 : Integer.Sparse (Fin 1613) := [(19, -4), (20, -1), (94, 2), (243, 16), (1251, -1)]

theorem oldProjectionSound919 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node919 =
      Integer.Sparse.eval oldProjection919 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value919 oldProjection919
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound919 hH))

def oldProjection920 : Integer.Sparse (Fin 1613) := [(20, 1), (94, -6), (243, -16), (1225, 16), (1226, 16), (1251, 1)]

theorem oldProjectionSound920 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node920 =
      Integer.Sparse.eval oldProjection920 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value920 oldProjection920
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound920 hH))

def oldProjection921 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -60), (20, 5), (94, 30), (241, 80), (243, 80), (247, 80), (698, 80), (1251, 30)]

theorem oldProjectionSound921 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node921 =
      Integer.Sparse.eval oldProjection921 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value921 oldProjection921
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound921 hH))

def oldProjection922 : Integer.Sparse (Fin 1613) := [(19, -12), (20, 3), (94, 2), (704, 16), (1251, 3)]

theorem oldProjectionSound922 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node922 =
      Integer.Sparse.eval oldProjection922 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value922 oldProjection922
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound922 hH))

def oldProjection923 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 1), (94, 4), (108, 32), (247, 16), (1251, 3), (1319, -48)]

theorem oldProjectionSound923 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node923 =
      Integer.Sparse.eval oldProjection923 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value923 oldProjection923
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound923 hH))

def oldProjection924 : Integer.Sparse (Fin 1613) := [(1333, 1)]

theorem oldProjectionSound924 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node924 =
      Integer.Sparse.eval oldProjection924 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value924 oldProjection924
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound924 hH))

def oldProjection925 : Integer.Sparse (Fin 1613) := [(1352, 1)]

theorem oldProjectionSound925 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node925 =
      Integer.Sparse.eval oldProjection925 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value925 oldProjection925
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound925 hH))

def oldProjection926 : Integer.Sparse (Fin 1613) := [(1356, 1)]

theorem oldProjectionSound926 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node926 =
      Integer.Sparse.eval oldProjection926 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value926 oldProjection926
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound926 hH))

def oldProjection927 : Integer.Sparse (Fin 1613) := [(19, -4), (94, 1), (228, -48), (229, -48), (243, 16), (704, 16), (1251, 1)]

theorem oldProjectionSound927 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node927 =
      Integer.Sparse.eval oldProjection927 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value927 oldProjection927
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound927 hH))

def oldProjection928 : Integer.Sparse (Fin 1613) := [(72, -24), (81, -24), (94, 1), (700, 16), (1251, 1)]

theorem oldProjectionSound928 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node928 =
      Integer.Sparse.eval oldProjection928 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value928 oldProjection928
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound928 hH))

def oldProjection929 : Integer.Sparse (Fin 1613) := [(38, -3), (700, 1), (701, 1), (704, 1), (1040, -3)]

theorem oldProjectionSound929 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node929 =
      Integer.Sparse.eval oldProjection929 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value929 oldProjection929
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound929 hH))

def oldProjection930 : Integer.Sparse (Fin 1613) := [(1319, -2), (1388, -1)]

theorem oldProjectionSound930 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node930 =
      Integer.Sparse.eval oldProjection930 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value930 oldProjection930
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound930 hH))

def oldProjection931 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 5), (247, 40), (694, -120), (1251, 10), (1319, -120)]

theorem oldProjectionSound931 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node931 =
      Integer.Sparse.eval oldProjection931 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value931 oldProjection931
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound931 hH))

def oldProjection932 : Integer.Sparse (Fin 1613) := [(45, -1), (1214, -1), (1219, -1)]

theorem oldProjectionSound932 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node932 =
      Integer.Sparse.eval oldProjection932 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value932 oldProjection932
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound932 hH))

def oldProjection933 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -20), (94, 15), (698, 80), (704, 80), (1251, -15)]

theorem oldProjectionSound933 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node933 =
      Integer.Sparse.eval oldProjection933 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value933 oldProjection933
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound933 hH))

def oldProjection934 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 2), (94, 3), (700, 16), (701, 16), (704, 32), (1251, 5)]

theorem oldProjectionSound934 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node934 =
      Integer.Sparse.eval oldProjection934 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value934 oldProjection934
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound934 hH))

def oldProjection935 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (94, 3), (243, 16), (244, 16), (698, 16), (700, 32), (701, 16), (704, 16), (1251, 2)]

theorem oldProjectionSound935 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node935 =
      Integer.Sparse.eval oldProjection935 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value935 oldProjection935
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound935 hH))

def oldProjection936 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 30), (698, 80), (1251, -25)]

theorem oldProjectionSound936 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node936 =
      Integer.Sparse.eval oldProjection936 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value936 oldProjection936
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound936 hH))

def oldProjection937 : Integer.Sparse (Fin 1613) := [(0, -1), (698, 80), (700, 160), (1251, 25)]

theorem oldProjectionSound937 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node937 =
      Integer.Sparse.eval oldProjection937 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value937 oldProjection937
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound937 hH))

def oldProjection938 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -5), (243, 80), (698, 80), (700, 240), (1059, 80)]

theorem oldProjectionSound938 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node938 =
      Integer.Sparse.eval oldProjection938 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value938 oldProjection938
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound938 hH))

def oldProjection939 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 20), (698, 160), (1226, 80), (1227, 80), (1251, -5)]

theorem oldProjectionSound939 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node939 =
      Integer.Sparse.eval oldProjection939 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value939 oldProjection939
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound939 hH))

def oldProjection940 : Integer.Sparse (Fin 1613) := [(19, -16), (20, 1), (94, 6), (241, 16), (243, 16), (247, 16), (704, 16), (1251, 5)]

theorem oldProjectionSound940 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node940 =
      Integer.Sparse.eval oldProjection940 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value940 oldProjection940
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound940 hH))

def oldProjection941 : Integer.Sparse (Fin 1613) := [(682, -1), (1321, -1), (1389, -1)]

theorem oldProjectionSound941 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node941 =
      Integer.Sparse.eval oldProjection941 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value941 oldProjection941
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound941 hH))

def oldProjection942 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 5), (698, 160), (1226, 80), (1227, 160), (1251, -40)]

theorem oldProjectionSound942 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node942 =
      Integer.Sparse.eval oldProjection942 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value942 oldProjection942
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound942 hH))

def oldProjection943 : Integer.Sparse (Fin 1613) := [(0, -1), (81, -240), (94, 15), (698, 80), (1251, 20), (1389, -240)]

theorem oldProjectionSound943 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node943 =
      Integer.Sparse.eval oldProjection943 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value943 oldProjection943
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound943 hH))

def oldProjection944 : Integer.Sparse (Fin 1613) := [(0, -1), (81, -240), (698, 80), (1058, -240), (1227, 80), (1251, -15)]

theorem oldProjectionSound944 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node944 =
      Integer.Sparse.eval oldProjection944 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value944 oldProjection944
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound944 hH))

def oldProjection945 : Integer.Sparse (Fin 1613) := [(698, 2), (1226, 2), (1227, -1)]

theorem oldProjectionSound945 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node945 =
      Integer.Sparse.eval oldProjection945 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value945 oldProjection945
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound945 hH))

def oldProjection946 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 5), (698, -80), (1226, 80), (1227, 80), (1251, -30)]

theorem oldProjectionSound946 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node946 =
      Integer.Sparse.eval oldProjection946 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value946 oldProjection946
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound946 hH))

def oldProjection947 : Integer.Sparse (Fin 1613) := [(94, 1), (682, -24), (697, -24), (698, 8), (704, 8), (1251, 1)]

theorem oldProjectionSound947 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node947 =
      Integer.Sparse.eval oldProjection947 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value947 oldProjection947
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound947 hH))

def oldProjection948 : Integer.Sparse (Fin 1613) := [(0, -1), (76, -240), (94, 15), (698, 80), (1251, 20), (1323, -240)]

theorem oldProjectionSound948 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node948 =
      Integer.Sparse.eval oldProjection948 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value948 oldProjection948
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound948 hH))

def oldProjection949 : Integer.Sparse (Fin 1613) := [(0, -1), (90, 80), (94, -5), (698, 160), (1226, 160), (1251, -40)]

theorem oldProjectionSound949 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node949 =
      Integer.Sparse.eval oldProjection949 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value949 oldProjection949
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound949 hH))

def oldProjection950 : Integer.Sparse (Fin 1613) := [(0, -1), (90, 80), (94, 5), (698, 160), (700, 80), (1226, 80), (1251, 10)]

theorem oldProjectionSound950 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node950 =
      Integer.Sparse.eval oldProjection950 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value950 oldProjection950
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound950 hH))

def oldProjection951 : Integer.Sparse (Fin 1613) := [(90, 1), (243, 1), (698, -1), (700, 1), (1226, 1)]

theorem oldProjectionSound951 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node951 =
      Integer.Sparse.eval oldProjection951 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value951 oldProjection951
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound951 hH))

def oldProjection952 : Integer.Sparse (Fin 1613) := [(90, 1), (698, 2), (1226, -1), (1227, 1)]

theorem oldProjectionSound952 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node952 =
      Integer.Sparse.eval oldProjection952 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value952 oldProjection952
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound952 hH))

def oldProjection953 : Integer.Sparse (Fin 1613) := [(76, -3), (243, 1), (698, 1), (1058, -3), (1226, 1)]

theorem oldProjectionSound953 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node953 =
      Integer.Sparse.eval oldProjection953 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value953 oldProjection953
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound953 hH))

def oldProjection954 : Integer.Sparse (Fin 1613) := [(243, 1), (686, -3), (1223, -3), (1225, 1), (1226, 1)]

theorem oldProjectionSound954 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node954 =
      Integer.Sparse.eval oldProjection954 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value954 oldProjection954
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound954 hH))

def oldProjection955 : Integer.Sparse (Fin 1613) := [(0, -1), (93, 60), (94, 5), (690, -240), (1250, 120), (1251, -10)]

theorem oldProjectionSound955 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node955 =
      Integer.Sparse.eval oldProjection955 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value955 oldProjection955
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound955 hH))

def oldProjection956 : Integer.Sparse (Fin 1613) := [(19, -8), (93, 12), (94, 1), (691, -48), (1251, 1)]

theorem oldProjectionSound956 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node956 =
      Integer.Sparse.eval oldProjection956 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value956 oldProjection956
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound956 hH))

def oldProjection957 : Integer.Sparse (Fin 1613) := [(3, -4), (19, 16), (20, 2), (94, 3), (692, -48), (1251, 1)]

theorem oldProjectionSound957 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node957 =
      Integer.Sparse.eval oldProjection957 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value957 oldProjection957
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound957 hH))

def oldProjection958 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (93, 60), (94, 15), (694, -240), (1250, 60)]

theorem oldProjectionSound958 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node958 =
      Integer.Sparse.eval oldProjection958 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value958 oldProjection958
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound958 hH))

def oldProjection959 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -20), (94, 25), (241, 80), (698, 80), (1251, -40)]

theorem oldProjectionSound959 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node959 =
      Integer.Sparse.eval oldProjection959 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value959 oldProjection959
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound959 hH))

def oldProjection960 : Integer.Sparse (Fin 1613) := [(0, -1), (20, 5), (94, -30), (243, 80), (698, 80), (700, 80), (1251, -10)]

theorem oldProjectionSound960 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node960 =
      Integer.Sparse.eval oldProjection960 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value960 oldProjection960
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound960 hH))

def oldProjection961 : Integer.Sparse (Fin 1613) := [(19, -12), (94, 3), (244, 16), (700, 16), (701, 16), (1251, 3)]

theorem oldProjectionSound961 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node961 =
      Integer.Sparse.eval oldProjection961 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value961 oldProjection961
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound961 hH))

def oldProjection962 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -40), (20, -5), (94, 5), (704, 80), (1251, 15)]

theorem oldProjectionSound962 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node962 =
      Integer.Sparse.eval oldProjection962 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value962 oldProjection962
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound962 hH))

def oldProjection963 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -20), (20, 5), (1251, -10)]

theorem oldProjectionSound963 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node963 =
      Integer.Sparse.eval oldProjection963 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value963 oldProjection963
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound963 hH))

def oldProjection964 : Integer.Sparse (Fin 1613) := [(0, 3), (19, -20), (94, 30), (247, 80), (1251, 15)]

theorem oldProjectionSound964 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node964 =
      Integer.Sparse.eval oldProjection964 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value964 oldProjection964
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound964 hH))

def oldProjection965 : Integer.Sparse (Fin 1613) := [(243, 2), (698, 2), (700, 1), (1225, 1), (1226, 2), (1227, 1)]

theorem oldProjectionSound965 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node965 =
      Integer.Sparse.eval oldProjection965 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value965 oldProjection965
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound965 hH))

def oldProjection966 : Integer.Sparse (Fin 1613) := [(0, 11), (94, 15), (698, 80), (1251, -40)]

theorem oldProjectionSound966 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node966 =
      Integer.Sparse.eval oldProjection966 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value966 oldProjection966
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound966 hH))

def oldProjection967 : Integer.Sparse (Fin 1613) := [(0, -3), (698, 80), (700, 80), (1059, 80), (1251, -45)]

theorem oldProjectionSound967 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node967 =
      Integer.Sparse.eval oldProjection967 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value967 oldProjection967
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound967 hH))

def oldProjection968 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -20), (20, 5), (94, 20), (698, 80), (704, 80), (1251, 5)]

theorem oldProjectionSound968 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node968 =
      Integer.Sparse.eval oldProjection968 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value968 oldProjection968
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound968 hH))

def oldProjection969 : Integer.Sparse (Fin 1613) := [(0, 7), (94, 5), (1251, -30)]

theorem oldProjectionSound969 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node969 =
      Integer.Sparse.eval oldProjection969 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value969 oldProjection969
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound969 hH))

def oldProjection970 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 4), (1251, -3)]

theorem oldProjectionSound970 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node970 =
      Integer.Sparse.eval oldProjection970 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value970 oldProjection970
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound970 hH))

def oldProjection971 : Integer.Sparse (Fin 1613) := [(0, -1), (243, 80), (698, 240), (700, 80), (1059, 80), (1226, 80), (1227, 80), (1251, -15)]

theorem oldProjectionSound971 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node971 =
      Integer.Sparse.eval oldProjection971 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value971 oldProjection971
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound971 hH))

def oldProjection972 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -40), (94, 20), (247, 80), (1251, 15)]

theorem oldProjectionSound972 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node972 =
      Integer.Sparse.eval oldProjection972 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value972 oldProjection972
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound972 hH))

end NoFourMUBs.Step2.SOS.Normalization

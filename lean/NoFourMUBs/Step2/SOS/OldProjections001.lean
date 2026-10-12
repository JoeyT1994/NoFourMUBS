import NoFourMUBs.Step2.SOS.NormalizationContext
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound2

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def oldProjection67 : Integer.Sparse (Fin 1613) := [(3, 4), (4, -1), (19, 4), (20, 3), (94, 3), (1251, -1)]

theorem oldProjectionSound67 {H : CMatrix} (hH : IsHadamard H) :
    (24 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node67 =
      Integer.Sparse.eval oldProjection67 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 24 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value67 oldProjection67
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound67 hH))

def oldProjection68 : Integer.Sparse (Fin 1613) := [(3, 4), (20, -1), (94, -2), (1251, -1)]

theorem oldProjectionSound68 {H : CMatrix} (hH : IsHadamard H) :
    (12 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node68 =
      Integer.Sparse.eval oldProjection68 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 12 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value68 oldProjection68
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound68 hH))

def oldProjection70 : Integer.Sparse (Fin 1613) := [(26, -1), (105, -1), (243, -1)]

theorem oldProjectionSound70 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node70 =
      Integer.Sparse.eval oldProjection70 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value70 oldProjection70
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound70 hH))

def oldProjection71 : Integer.Sparse (Fin 1613) := [(3, 12), (19, 8), (20, -1), (94, -1)]

theorem oldProjectionSound71 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node71 =
      Integer.Sparse.eval oldProjection71 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value71 oldProjection71
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound71 hH))

def oldProjection72 : Integer.Sparse (Fin 1613) := [(104, -1), (703, -1), (704, -1)]

theorem oldProjectionSound72 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node72 =
      Integer.Sparse.eval oldProjection72 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value72 oldProjection72
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound72 hH))

def oldProjection73 : Integer.Sparse (Fin 1613) := [(104, -1), (105, -1), (108, -1)]

theorem oldProjectionSound73 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node73 =
      Integer.Sparse.eval oldProjection73 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value73 oldProjection73
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound73 hH))

def oldProjection74 : Integer.Sparse (Fin 1613) := [(23, 1)]

theorem oldProjectionSound74 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node74 =
      Integer.Sparse.eval oldProjection74 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value74 oldProjection74
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound74 hH))

def oldProjection75 : Integer.Sparse (Fin 1613) := [(26, -1), (104, -1), (105, -1)]

theorem oldProjectionSound75 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node75 =
      Integer.Sparse.eval oldProjection75 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value75 oldProjection75
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound75 hH))

def oldProjection76 : Integer.Sparse (Fin 1613) := [(26, -1), (243, -1), (703, -1)]

theorem oldProjectionSound76 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node76 =
      Integer.Sparse.eval oldProjection76 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value76 oldProjection76
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound76 hH))

def oldProjection77 : Integer.Sparse (Fin 1613) := [(3, 8), (19, 4), (20, -1), (94, -1), (703, -16)]

theorem oldProjectionSound77 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node77 =
      Integer.Sparse.eval oldProjection77 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value77 oldProjection77
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound77 hH))

def oldProjection78 : Integer.Sparse (Fin 1613) := [(104, -1), (108, -2)]

theorem oldProjectionSound78 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node78 =
      Integer.Sparse.eval oldProjection78 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value78 oldProjection78
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound78 hH))

def oldProjection79 : Integer.Sparse (Fin 1613) := [(26, -1), (42, -1), (243, -1)]

theorem oldProjectionSound79 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node79 =
      Integer.Sparse.eval oldProjection79 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value79 oldProjection79
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound79 hH))

def oldProjection80 : Integer.Sparse (Fin 1613) := [(701, -1), (703, -1), (704, -1)]

theorem oldProjectionSound80 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node80 =
      Integer.Sparse.eval oldProjection80 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value80 oldProjection80
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound80 hH))

def oldProjection81 : Integer.Sparse (Fin 1613) := [(42, -1), (243, -1), (700, -1)]

theorem oldProjectionSound81 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node81 =
      Integer.Sparse.eval oldProjection81 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value81 oldProjection81
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound81 hH))

def oldProjection82 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (94, -1), (243, -16), (703, -16)]

theorem oldProjectionSound82 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node82 =
      Integer.Sparse.eval oldProjection82 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value82 oldProjection82
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound82 hH))

def oldProjection83 : Integer.Sparse (Fin 1613) := [(700, -1), (701, -1), (704, -1)]

theorem oldProjectionSound83 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node83 =
      Integer.Sparse.eval oldProjection83 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value83 oldProjection83
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound83 hH))

def oldProjection84 : Integer.Sparse (Fin 1613) := [(37, 1)]

theorem oldProjectionSound84 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node84 =
      Integer.Sparse.eval oldProjection84 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value84 oldProjection84
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound84 hH))

def oldProjection85 : Integer.Sparse (Fin 1613) := [(38, 1)]

theorem oldProjectionSound85 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node85 =
      Integer.Sparse.eval oldProjection85 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value85 oldProjection85
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound85 hH))

def oldProjection86 : Integer.Sparse (Fin 1613) := [(40, 1)]

theorem oldProjectionSound86 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node86 =
      Integer.Sparse.eval oldProjection86 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value86 oldProjection86
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound86 hH))

def oldProjection87 : Integer.Sparse (Fin 1613) := [(42, -1), (243, -1), (704, -1)]

theorem oldProjectionSound87 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node87 =
      Integer.Sparse.eval oldProjection87 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value87 oldProjection87
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound87 hH))

def oldProjection88 : Integer.Sparse (Fin 1613) := [(42, -1), (700, -1), (701, -1)]

theorem oldProjectionSound88 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node88 =
      Integer.Sparse.eval oldProjection88 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value88 oldProjection88
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound88 hH))

def oldProjection89 : Integer.Sparse (Fin 1613) := [(45, 1)]

theorem oldProjectionSound89 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node89 =
      Integer.Sparse.eval oldProjection89 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value89 oldProjection89
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound89 hH))

def oldProjection90 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (94, -1), (701, -8)]

theorem oldProjectionSound90 {H : CMatrix} (hH : IsHadamard H) :
    (24 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node90 =
      Integer.Sparse.eval oldProjection90 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 24 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value90 oldProjection90
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound90 hH))

def oldProjection91 : Integer.Sparse (Fin 1613) := [(53, 1)]

theorem oldProjectionSound91 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node91 =
      Integer.Sparse.eval oldProjection91 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value91 oldProjection91
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound91 hH))

def oldProjection92 : Integer.Sparse (Fin 1613) := [(42, -1), (60, -1), (700, -1)]

theorem oldProjectionSound92 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node92 =
      Integer.Sparse.eval oldProjection92 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value92 oldProjection92
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound92 hH))

def oldProjection93 : Integer.Sparse (Fin 1613) := [(60, -1), (700, -2)]

theorem oldProjectionSound93 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node93 =
      Integer.Sparse.eval oldProjection93 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value93 oldProjection93
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound93 hH))

def oldProjection94 : Integer.Sparse (Fin 1613) := [(26, -1), (88, -1), (243, -1)]

theorem oldProjectionSound94 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node94 =
      Integer.Sparse.eval oldProjection94 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value94 oldProjection94
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound94 hH))

def oldProjection95 : Integer.Sparse (Fin 1613) := [(42, -1), (90, -1), (700, -1)]

theorem oldProjectionSound95 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node95 =
      Integer.Sparse.eval oldProjection95 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value95 oldProjection95
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound95 hH))

def oldProjection96 : Integer.Sparse (Fin 1613) := [(55, 1)]

theorem oldProjectionSound96 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node96 =
      Integer.Sparse.eval oldProjection96 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value96 oldProjection96
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound96 hH))

def oldProjection97 : Integer.Sparse (Fin 1613) := [(56, 1)]

theorem oldProjectionSound97 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node97 =
      Integer.Sparse.eval oldProjection97 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value97 oldProjection97
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound97 hH))

def oldProjection98 : Integer.Sparse (Fin 1613) := [(58, 1)]

theorem oldProjectionSound98 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node98 =
      Integer.Sparse.eval oldProjection98 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value98 oldProjection98
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound98 hH))

def oldProjection99 : Integer.Sparse (Fin 1613) := [(61, 1)]

theorem oldProjectionSound99 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node99 =
      Integer.Sparse.eval oldProjection99 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value99 oldProjection99
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound99 hH))

def oldProjection100 : Integer.Sparse (Fin 1613) := [(62, 1)]

theorem oldProjectionSound100 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node100 =
      Integer.Sparse.eval oldProjection100 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value100 oldProjection100
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound100 hH))

def oldProjection101 : Integer.Sparse (Fin 1613) := [(72, 1)]

theorem oldProjectionSound101 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node101 =
      Integer.Sparse.eval oldProjection101 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value101 oldProjection101
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound101 hH))

def oldProjection102 : Integer.Sparse (Fin 1613) := [(88, -1), (241, -1), (243, -1)]

theorem oldProjectionSound102 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node102 =
      Integer.Sparse.eval oldProjection102 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value102 oldProjection102
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound102 hH))

def oldProjection103 : Integer.Sparse (Fin 1613) := [(76, 1)]

theorem oldProjectionSound103 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node103 =
      Integer.Sparse.eval oldProjection103 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value103 oldProjection103
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound103 hH))

def oldProjection104 : Integer.Sparse (Fin 1613) := [(77, 1)]

theorem oldProjectionSound104 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node104 =
      Integer.Sparse.eval oldProjection104 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value104 oldProjection104
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound104 hH))

def oldProjection105 : Integer.Sparse (Fin 1613) := [(94, -1), (700, -16), (1251, -1)]

theorem oldProjectionSound105 {H : CMatrix} (hH : IsHadamard H) :
    (24 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node105 =
      Integer.Sparse.eval oldProjection105 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 24 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value105 oldProjection105
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound105 hH))

def oldProjection106 : Integer.Sparse (Fin 1613) := [(88, -1), (243, -1), (1226, -1)]

theorem oldProjectionSound106 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node106 =
      Integer.Sparse.eval oldProjection106 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value106 oldProjection106
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound106 hH))

def oldProjection107 : Integer.Sparse (Fin 1613) := [(90, -1), (698, -1), (700, -1)]

theorem oldProjectionSound107 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node107 =
      Integer.Sparse.eval oldProjection107 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value107 oldProjection107
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound107 hH))

def oldProjection108 : Integer.Sparse (Fin 1613) := [(88, -1), (90, -1), (1226, -1)]

theorem oldProjectionSound108 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node108 =
      Integer.Sparse.eval oldProjection108 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value108 oldProjection108
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound108 hH))

def oldProjection109 : Integer.Sparse (Fin 1613) := [(90, -1), (698, -1), (1226, -1)]

theorem oldProjectionSound109 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node109 =
      Integer.Sparse.eval oldProjection109 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value109 oldProjection109
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound109 hH))

def oldProjection110 : Integer.Sparse (Fin 1613) := [(79, 1)]

theorem oldProjectionSound110 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node110 =
      Integer.Sparse.eval oldProjection110 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value110 oldProjection110
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound110 hH))

def oldProjection111 : Integer.Sparse (Fin 1613) := [(81, 1)]

theorem oldProjectionSound111 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node111 =
      Integer.Sparse.eval oldProjection111 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value111 oldProjection111
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound111 hH))

def oldProjection112 : Integer.Sparse (Fin 1613) := [(82, 1)]

theorem oldProjectionSound112 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node112 =
      Integer.Sparse.eval oldProjection112 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value112 oldProjection112
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound112 hH))

def oldProjection113 : Integer.Sparse (Fin 1613) := [(88, -1), (91, -1), (243, -1)]

theorem oldProjectionSound113 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node113 =
      Integer.Sparse.eval oldProjection113 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value113 oldProjection113
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound113 hH))

def oldProjection114 : Integer.Sparse (Fin 1613) := [(87, 1)]

theorem oldProjectionSound114 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node114 =
      Integer.Sparse.eval oldProjection114 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value114 oldProjection114
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound114 hH))

def oldProjection115 : Integer.Sparse (Fin 1613) := [(89, 1)]

theorem oldProjectionSound115 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node115 =
      Integer.Sparse.eval oldProjection115 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value115 oldProjection115
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound115 hH))

def oldProjection118 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (20, -5), (94, 10), (1251, 10)]

theorem oldProjectionSound118 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node118 =
      Integer.Sparse.eval oldProjection118 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 120 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value118 oldProjection118
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound118 hH))

def oldProjection119 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 8), (94, -1), (104, -16), (1251, -1)]

theorem oldProjectionSound119 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node119 =
      Integer.Sparse.eval oldProjection119 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value119 oldProjection119
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound119 hH))

def oldProjection120 : Integer.Sparse (Fin 1613) := [(104, -1), (105, -1), (241, -1)]

theorem oldProjectionSound120 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node120 =
      Integer.Sparse.eval oldProjection120 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value120 oldProjection120
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound120 hH))

def oldProjection121 : Integer.Sparse (Fin 1613) := [(105, -1), (106, -1), (243, -1)]

theorem oldProjectionSound121 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node121 =
      Integer.Sparse.eval oldProjection121 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value121 oldProjection121
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound121 hH))

def oldProjection122 : Integer.Sparse (Fin 1613) := [(3, 8), (4, -1), (19, 4), (20, -3), (94, -2)]

theorem oldProjectionSound122 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node122 =
      Integer.Sparse.eval oldProjection122 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value122 oldProjection122
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound122 hH))

def oldProjection123 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 4), (20, -1), (94, -2), (108, -16), (1251, -1)]

theorem oldProjectionSound123 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node123 =
      Integer.Sparse.eval oldProjection123 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value123 oldProjection123
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound123 hH))

def oldProjection124 : Integer.Sparse (Fin 1613) := [(108, -2), (247, -1)]

theorem oldProjectionSound124 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node124 =
      Integer.Sparse.eval oldProjection124 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value124 oldProjection124
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound124 hH))

def oldProjection125 : Integer.Sparse (Fin 1613) := [(102, 1)]

theorem oldProjectionSound125 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node125 =
      Integer.Sparse.eval oldProjection125 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value125 oldProjection125
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound125 hH))

def oldProjection126 : Integer.Sparse (Fin 1613) := [(3, 1), (19, 1), (104, -4), (108, -4)]

theorem oldProjectionSound126 {H : CMatrix} (hH : IsHadamard H) :
    (12 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node126 =
      Integer.Sparse.eval oldProjection126 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 12 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value126 oldProjection126
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound126 hH))

def oldProjection127 : Integer.Sparse (Fin 1613) := [(19, 4), (94, -1), (104, -16), (108, -16), (1251, -1)]

theorem oldProjectionSound127 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node127 =
      Integer.Sparse.eval oldProjection127 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value127 oldProjection127
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound127 hH))

def oldProjection128 : Integer.Sparse (Fin 1613) := [(3, 4), (20, -1), (94, -1), (105, -16), (108, -16)]

theorem oldProjectionSound128 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node128 =
      Integer.Sparse.eval oldProjection128 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value128 oldProjection128
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound128 hH))

def oldProjection129 : Integer.Sparse (Fin 1613) := [(3, 2), (20, -1), (94, 1), (105, -8)]

theorem oldProjectionSound129 {H : CMatrix} (hH : IsHadamard H) :
    (24 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node129 =
      Integer.Sparse.eval oldProjection129 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 24 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value129 oldProjection129
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound129 hH))

def oldProjection130 : Integer.Sparse (Fin 1613) := [(3, 4), (4, -1), (20, 2), (94, -1), (106, -16)]

theorem oldProjectionSound130 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node130 =
      Integer.Sparse.eval oldProjection130 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value130 oldProjection130
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound130 hH))

def oldProjection131 : Integer.Sparse (Fin 1613) := [(19, -4), (20, -1), (94, -1)]

theorem oldProjectionSound131 {H : CMatrix} (hH : IsHadamard H) :
    (24 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node131 =
      Integer.Sparse.eval oldProjection131 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 24 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value131 oldProjection131
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound131 hH))

def oldProjection132 : Integer.Sparse (Fin 1613) := [(19, 4), (94, -1), (243, -16), (704, -16), (1251, -1)]

theorem oldProjectionSound132 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node132 =
      Integer.Sparse.eval oldProjection132 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value132 oldProjection132
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound132 hH))

def oldProjection133 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (94, -1), (244, -16), (701, -16)]

theorem oldProjectionSound133 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node133 =
      Integer.Sparse.eval oldProjection133 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value133 oldProjection133
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound133 hH))

end NoFourMUBs.Step2.SOS.Normalization

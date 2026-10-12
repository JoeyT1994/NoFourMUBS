import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes47
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes5
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes52
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput26112 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 0, -1, 1], ![1, 0, -1, 0], ![-2, -1, 1, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput26112 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3021⟩

theorem canonicalSound26112 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26112.moment H = canonicalOutput26112.moment H :=
  canonical_of_padded canonicalInput26112 canonicalOutput26112 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation264, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26113 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-1, 1, 3, -3], ![1, -2, -1, 2]]⟩

def canonicalOutput26113 : ExponentCode := normalNode6103

theorem canonicalSound26113 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26113.moment H = canonicalOutput26113.moment H :=
  canonical_of_padded canonicalInput26113 canonicalOutput26113 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput26114 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 0, -1, 1], ![-1, -1, 0, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput26114 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3387⟩

theorem canonicalSound26114 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26114.moment H = canonicalOutput26114.moment H :=
  canonical_of_padded canonicalInput26114 canonicalOutput26114 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation270, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26115 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 1, 3, -4], ![0, -2, -1, 3]]⟩

def canonicalOutput26115 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node320⟩

theorem canonicalSound26115 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26115.moment H = canonicalOutput26115.moment H :=
  canonical_of_padded canonicalInput26115 canonicalOutput26115 (by decide) (by decide)
    ⟨false, true, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26116 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, -1, 1], ![-2, -1, 1, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput26116 : ExponentCode := normalNode2393

theorem canonicalSound26116 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26116.moment H = canonicalOutput26116.moment H :=
  canonical_of_padded canonicalInput26116 canonicalOutput26116 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26117 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, -2, 1, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput26117 : ExponentCode := normalNode490

theorem canonicalSound26117 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26117.moment H = canonicalOutput26117.moment H :=
  canonical_of_padded canonicalInput26117 canonicalOutput26117 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26118 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, -1, 1, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput26118 : ExponentCode := normalNode2394

theorem canonicalSound26118 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26118.moment H = canonicalOutput26118.moment H :=
  canonical_of_padded canonicalInput26118 canonicalOutput26118 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26119 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![0, 0, 3, -3]]⟩

def canonicalOutput26119 : ExponentCode := normalNode8951

theorem canonicalSound26119 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26119.moment H = canonicalOutput26119.moment H :=
  canonical_of_padded canonicalInput26119 canonicalOutput26119 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation275, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26120 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, 0, 1], ![-1, 0, -2, 3], ![1, 0, 3, -4]]⟩

def canonicalOutput26120 : ExponentCode := normalNode9660

theorem canonicalSound26120 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26120.moment H = canonicalOutput26120.moment H :=
  canonical_of_padded canonicalInput26120 canonicalOutput26120 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26121 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 0, -2, 4], ![1, 0, 3, -4]]⟩

def canonicalOutput26121 : ExponentCode := normalNode3174

theorem canonicalSound26121 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26121.moment H = canonicalOutput26121.moment H :=
  canonical_of_padded canonicalInput26121 canonicalOutput26121 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26122 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 0, -2, 3], ![0, 0, 3, -3]]⟩

def canonicalOutput26122 : ExponentCode := normalNode9900

theorem canonicalSound26122 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26122.moment H = canonicalOutput26122.moment H :=
  canonical_of_padded canonicalInput26122 canonicalOutput26122 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation275, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26123 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 1, 3, -4], ![0, -1, -2, 3]]⟩

def canonicalOutput26123 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node243⟩

theorem canonicalSound26123 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26123.moment H = canonicalOutput26123.moment H :=
  canonical_of_padded canonicalInput26123 canonicalOutput26123 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26124 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, -1, 0, 1], ![-1, 1, -2, 2], ![0, 1, 3, -4]]⟩

def canonicalOutput26124 : ExponentCode := normalNode6934

theorem canonicalSound26124 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26124.moment H = canonicalOutput26124.moment H :=
  canonical_of_padded canonicalInput26124 canonicalOutput26124 (by decide) (by decide)
    ⟨false, false, canonicalPermutation321, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26125 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, 0, -1, 1], ![-1, 1, -2, 2], ![0, 0, 4, -4]]⟩

def canonicalOutput26125 : ExponentCode := normalNode11028

theorem canonicalSound26125 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26125.moment H = canonicalOutput26125.moment H :=
  canonical_of_padded canonicalInput26125 canonicalOutput26125 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation274, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26126 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 1, -2, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput26126 : ExponentCode := normalNode493

theorem canonicalSound26126 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26126.moment H = canonicalOutput26126.moment H :=
  canonical_of_padded canonicalInput26126 canonicalOutput26126 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation279, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26127 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 1, -2, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput26127 : ExponentCode := normalNode6082

theorem canonicalSound26127 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26127.moment H = canonicalOutput26127.moment H :=
  canonical_of_padded canonicalInput26127 canonicalOutput26127 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput26128 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 1, -2, 3], ![0, 0, 4, -4]]⟩

def canonicalOutput26128 : ExponentCode := normalNode4853

theorem canonicalSound26128 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26128.moment H = canonicalOutput26128.moment H :=
  canonical_of_padded canonicalInput26128 canonicalOutput26128 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation275, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26129 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, 1, -2, 2], ![-1, 0, 4, -3]]⟩

def canonicalOutput26129 : ExponentCode := normalNode9633

theorem canonicalSound26129 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26129.moment H = canonicalOutput26129.moment H :=
  canonical_of_padded canonicalInput26129 canonicalOutput26129 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26130 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 1, 0, -1], ![-1, 1, 0, 0], ![1, 0, -1, 0], ![1, 0, -3, 2], ![-1, -1, 4, -2]]⟩

def canonicalOutput26130 : ExponentCode := normalNode7308

theorem canonicalSound26130 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26130.moment H = canonicalOutput26130.moment H :=
  canonical_of_padded canonicalInput26130 canonicalOutput26130 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation325, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput26131 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 1, 0, -1], ![-1, 1, 3, -3], ![1, -1, -3, 3]]⟩

def canonicalOutput26131 : ExponentCode := normalNode10996

theorem canonicalSound26131 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26131.moment H = canonicalOutput26131.moment H :=
  canonical_of_padded canonicalInput26131 canonicalOutput26131 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput26132 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 1, 0, -1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![-1, 0, -2, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput26132 : ExponentCode := normalNode9874

theorem canonicalSound26132 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26132.moment H = canonicalOutput26132.moment H :=
  canonical_of_padded canonicalInput26132 canonicalOutput26132 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation265, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26133 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 1, 0, -1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![0, 1, -3, 2], ![-1, 0, 4, -3]]⟩

def canonicalOutput26133 : ExponentCode := normalNode9681

theorem canonicalSound26133 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26133.moment H = canonicalOutput26133.moment H :=
  canonical_of_padded canonicalInput26133 canonicalOutput26133 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation315, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26134 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 1, 0, -1], ![0, 0, -1, 1], ![0, -2, 1, 1], ![2, 0, -2, 0], ![-2, 2, 2, -2]]⟩

def canonicalOutput26134 : ExponentCode := normalNode777

theorem canonicalSound26134 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26134.moment H = canonicalOutput26134.moment H :=
  canonical_of_padded canonicalInput26134 canonicalOutput26134 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation337, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput26135 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![0, 0, -1, 1], ![1, 0, -3, 2], ![-1, -1, 4, -2]]⟩

def canonicalOutput26135 : ExponentCode := normalNode7394

theorem canonicalSound26135 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26135.moment H = canonicalOutput26135.moment H :=
  canonical_of_padded canonicalInput26135 canonicalOutput26135 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation320, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26136 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, 0, -3, 3], ![-1, -1, 4, -2]]⟩

def canonicalOutput26136 : ExponentCode := normalNode7400

theorem canonicalSound26136 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26136.moment H = canonicalOutput26136.moment H :=
  canonical_of_padded canonicalInput26136 canonicalOutput26136 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation326, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26137 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -3, 2], ![-2, -1, 4, -1]]⟩

def canonicalOutput26137 : ExponentCode := normalNode1268

theorem canonicalSound26137 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26137.moment H = canonicalOutput26137.moment H :=
  canonical_of_padded canonicalInput26137 canonicalOutput26137 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26138 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 1, 0, -1], ![0, 1, 2, -3], ![0, -1, -2, 3]]⟩

def canonicalOutput26138 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node168⟩

theorem canonicalSound26138 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26138.moment H = canonicalOutput26138.moment H :=
  canonical_of_padded canonicalInput26138 canonicalOutput26138 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26139 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 1, 0, -1], ![1, -2, 0, 1], ![1, 0, 0, -1], ![-1, 0, 3, -2], ![-1, 2, -3, 2]]⟩

def canonicalOutput26139 : ExponentCode := normalNode6209

theorem canonicalSound26139 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26139.moment H = canonicalOutput26139.moment H :=
  canonical_of_padded canonicalInput26139 canonicalOutput26139 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26140 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![0, 0, -1, 1], ![-1, 0, -2, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput26140 : ExponentCode := normalNode9887

theorem canonicalSound26140 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26140.moment H = canonicalOutput26140.moment H :=
  canonical_of_padded canonicalInput26140 canonicalOutput26140 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation271, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26141 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![0, 0, -1, 1], ![0, 1, -3, 2], ![-1, 0, 4, -3]]⟩

def canonicalOutput26141 : ExponentCode := normalNode9689

theorem canonicalSound26141 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26141.moment H = canonicalOutput26141.moment H :=
  canonical_of_padded canonicalInput26141 canonicalOutput26141 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation321, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26142 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 0, 3, -2], ![-1, 2, -3, 2]]⟩

def canonicalOutput26142 : ExponentCode := normalNode6203

theorem canonicalSound26142 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26142.moment H = canonicalOutput26142.moment H :=
  canonical_of_padded canonicalInput26142 canonicalOutput26142 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput26143 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 0, -2, 4], ![0, 1, 3, -4]]⟩

def canonicalOutput26143 : ExponentCode := normalNode3178

theorem canonicalSound26143 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26143.moment H = canonicalOutput26143.moment H :=
  canonical_of_padded canonicalInput26143 canonicalOutput26143 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26144 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, 0, -2, 3], ![-1, 1, 3, -3]]⟩

def canonicalOutput26144 : ExponentCode := normalNode9831

theorem canonicalSound26144 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26144.moment H = canonicalOutput26144.moment H :=
  canonical_of_padded canonicalInput26144 canonicalOutput26144 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26145 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, 1, -3, 3], ![-1, 0, 4, -3]]⟩

def canonicalOutput26145 : ExponentCode := normalNode9636

theorem canonicalSound26145 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26145.moment H = canonicalOutput26145.moment H :=
  canonical_of_padded canonicalInput26145 canonicalOutput26145 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26146 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![0, 1, -3, 2], ![-2, 0, 4, -2]]⟩

def canonicalOutput26146 : ExponentCode := normalNode3215

theorem canonicalSound26146 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26146.moment H = canonicalOutput26146.moment H :=
  canonical_of_padded canonicalInput26146 canonicalOutput26146 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26147 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, 3, -1], ![-1, 2, -3, 2]]⟩

def canonicalOutput26147 : ExponentCode := normalNode6205

theorem canonicalSound26147 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26147.moment H = canonicalOutput26147.moment H :=
  canonical_of_padded canonicalInput26147 canonicalOutput26147 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26148 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 0, 3, -2], ![-1, 1, -3, 3]]⟩

def canonicalOutput26148 : ExponentCode := normalNode10486

theorem canonicalSound26148 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26148.moment H = canonicalOutput26148.moment H :=
  canonical_of_padded canonicalInput26148 canonicalOutput26148 (by decide) (by decide)
    ⟨false, true, canonicalPermutation145, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26149 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, -2, 1, 2], ![2, 0, -2, 0], ![-2, 2, 2, -2]]⟩

def canonicalOutput26149 : ExponentCode := normalNode724

theorem canonicalSound26149 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26149.moment H = canonicalOutput26149.moment H :=
  canonical_of_padded canonicalInput26149 canonicalOutput26149 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation341, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput26150 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, -2, 1, 1], ![1, 0, -2, 1], ![-2, 2, 2, -2]]⟩

def canonicalOutput26150 : ExponentCode := normalNode784

theorem canonicalSound26150 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26150.moment H = canonicalOutput26150.moment H :=
  canonical_of_padded canonicalInput26150 canonicalOutput26150 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation333, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput26151 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, -2, 1, 1], ![2, 0, -2, 0], ![-3, 2, 2, -1]]⟩

def canonicalOutput26151 : ExponentCode := normalNode6142

theorem canonicalSound26151 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26151.moment H = canonicalOutput26151.moment H :=
  canonical_of_padded canonicalInput26151 canonicalOutput26151 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation341, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput26152 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 1, 1, -2], ![-1, 1, 1, -1], ![1, -1, -2, 2]]⟩

def canonicalOutput26152 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1362⟩

theorem canonicalSound26152 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26152.moment H = canonicalOutput26152.moment H :=
  canonical_of_padded canonicalInput26152 canonicalOutput26152 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26153 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 1, 1, -2], ![-1, 1, 2, -2], ![1, -1, -3, 3]]⟩

def canonicalOutput26153 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1367⟩

theorem canonicalSound26153 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26153.moment H = canonicalOutput26153.moment H :=
  canonical_of_padded canonicalInput26153 canonicalOutput26153 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26154 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 1, 1, -2], ![0, 1, 1, -2], ![0, -1, -2, 3]]⟩

def canonicalOutput26154 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node175⟩

theorem canonicalSound26154 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26154.moment H = canonicalOutput26154.moment H :=
  canonical_of_padded canonicalInput26154 canonicalOutput26154 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26155 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 1, 1, -2], ![0, 1, 2, -3], ![0, -1, -3, 4]]⟩

def canonicalOutput26155 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node241⟩

theorem canonicalSound26155 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26155.moment H = canonicalOutput26155.moment H :=
  canonical_of_padded canonicalInput26155 canonicalOutput26155 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26156 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![1, -1, -1, 1], ![1, 0, 0, -1], ![-1, 0, -1, 2], ![-1, -1, 3, -1], ![0, 3, -1, -2]]⟩

def canonicalOutput26156 : ExponentCode := normalNode8889

theorem canonicalSound26156 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26156.moment H = canonicalOutput26156.moment H :=
  canonical_of_padded canonicalInput26156 canonicalOutput26156 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26157 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![1, -1, 0, 0], ![0, 0, 0, 0], ![-1, 2, 0, -1], ![0, 0, -3, 3], ![0, 0, 3, -3]]⟩

def canonicalOutput26157 : ExponentCode := normalNode11155

theorem canonicalSound26157 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26157.moment H = canonicalOutput26157.moment H :=
  canonical_of_padded canonicalInput26157 canonicalOutput26157 (by decide) (by decide)
    ⟨false, true, canonicalPermutation322, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26158 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 2, 0, 0], ![0, 0, -3, 3], ![0, 0, 3, -3]]⟩

def canonicalOutput26158 : ExponentCode := normalNode5951

theorem canonicalSound26158 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26158.moment H = canonicalOutput26158.moment H :=
  canonical_of_padded canonicalInput26158 canonicalOutput26158 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation245, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26159 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 2, 0, -1], ![-1, 0, -3, 4], ![0, 0, 3, -3]]⟩

def canonicalOutput26159 : ExponentCode := normalNode5332

theorem canonicalSound26159 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26159.moment H = canonicalOutput26159.moment H :=
  canonical_of_padded canonicalInput26159 canonicalOutput26159 (by decide) (by decide)
    ⟨false, true, canonicalPermutation132, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput26160 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 2, 0, -1], ![0, 0, -3, 3], ![-1, 0, 3, -2]]⟩

def canonicalOutput26160 : ExponentCode := normalNode5352

theorem canonicalSound26160 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26160.moment H = canonicalOutput26160.moment H :=
  canonical_of_padded canonicalInput26160 canonicalOutput26160 (by decide) (by decide)
    ⟨false, true, canonicalPermutation133, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput26161 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![1, 0, -1, 0], ![1, -1, 0, 0], ![-1, 0, -1, 2], ![-1, -1, 3, -1], ![0, 3, -1, -2]]⟩

def canonicalOutput26161 : ExponentCode := normalNode7736

theorem canonicalSound26161 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26161.moment H = canonicalOutput26161.moment H :=
  canonical_of_padded canonicalInput26161 canonicalOutput26161 (by decide) (by decide)
    ⟨false, false, canonicalPermutation192, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26162 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -1, -1, 3], ![-1, -1, 3, -1], ![0, 3, -1, -2]]⟩

def canonicalOutput26162 : ExponentCode := normalNode7671

theorem canonicalSound26162 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26162.moment H = canonicalOutput26162.moment H :=
  canonical_of_padded canonicalInput26162 canonicalOutput26162 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26163 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, 0, -1, 2], ![-1, -2, 3, 0], ![0, 3, -1, -2]]⟩

def canonicalOutput26163 : ExponentCode := normalNode6665

theorem canonicalSound26163 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26163.moment H = canonicalOutput26163.moment H :=
  canonical_of_padded canonicalInput26163 canonicalOutput26163 (by decide) (by decide)
    ⟨false, false, canonicalPermutation192, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26164 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, 0, -1, 2], ![-1, -1, 3, -1], ![0, 2, -1, -1]]⟩

def canonicalOutput26164 : ExponentCode := normalNode4336

theorem canonicalSound26164 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26164.moment H = canonicalOutput26164.moment H :=
  canonical_of_padded canonicalInput26164 canonicalOutput26164 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation339, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput26165 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-4, 1, 1, 1, 1], ![1, 1, -2, -1, 1], ![3, -1, 1, -1, -2]]⟩

def canonicalOutput26165 : ExponentCode := normalNode11081

theorem canonicalSound26165 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26165.moment H = canonicalOutput26165.moment H :=
  canonical_of_padded canonicalInput26165 canonicalOutput26165 (by decide) (by decide)
    ⟨true, false, canonicalPermutation48, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput26166 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-4, 1, 1, 1, 1], ![2, -1, -2, 0, 1], ![2, 1, 1, -2, -2]]⟩

def canonicalOutput26166 : ExponentCode := normalNode9353

theorem canonicalSound26166 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26166.moment H = canonicalOutput26166.moment H :=
  canonical_of_padded canonicalInput26166 canonicalOutput26166 (by decide) (by decide)
    ⟨true, false, canonicalPermutation48, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput26167 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-3, 1, -1, 1, 2], ![1, -1, 2, 0, -2], ![2, 1, -1, -2, 0]]⟩

def canonicalOutput26167 : ExponentCode := normalNode9350

theorem canonicalSound26167 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26167.moment H = canonicalOutput26167.moment H :=
  canonical_of_padded canonicalInput26167 canonicalOutput26167 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput26168 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-3, 1, 0, 1, 1], ![1, 1, -2, -1, 1], ![2, -1, 2, -1, -2]]⟩

def canonicalOutput26168 : ExponentCode := normalNode9391

theorem canonicalSound26168 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26168.moment H = canonicalOutput26168.moment H :=
  canonical_of_padded canonicalInput26168 canonicalOutput26168 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26169 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-3, 1, 0, 1, 1], ![2, -1, -2, 0, 1], ![1, 1, 2, -2, -2]]⟩

def canonicalOutput26169 : ExponentCode := normalNode8931

theorem canonicalSound26169 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26169.moment H = canonicalOutput26169.moment H :=
  canonical_of_padded canonicalInput26169 canonicalOutput26169 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26170 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-3, 1, 1, 1, 0], ![0, 1, -2, -1, 2], ![3, -1, 1, -1, -2]]⟩

def canonicalOutput26170 : ExponentCode := normalNode9429

theorem canonicalSound26170 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26170.moment H = canonicalOutput26170.moment H :=
  canonical_of_padded canonicalInput26170 canonicalOutput26170 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26171 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-3, 1, 1, 1, 0], ![1, -1, -2, 0, 2], ![2, 1, 1, -2, -2]]⟩

def canonicalOutput26171 : ExponentCode := normalNode8988

theorem canonicalSound26171 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26171.moment H = canonicalOutput26171.moment H :=
  canonical_of_padded canonicalInput26171 canonicalOutput26171 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26172 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-3, 1, 1, 1, 0], ![1, 1, -2, -1, 1], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput26172 : ExponentCode := normalNode9385

theorem canonicalSound26172 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26172.moment H = canonicalOutput26172.moment H :=
  canonical_of_padded canonicalInput26172 canonicalOutput26172 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26173 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-3, 1, 1, 1, 0], ![1, 1, 1, -2, -1], ![2, -1, -2, 0, 1]]⟩

def canonicalOutput26173 : ExponentCode := normalNode8994

theorem canonicalSound26173 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26173.moment H = canonicalOutput26173.moment H :=
  canonical_of_padded canonicalInput26173 canonicalOutput26173 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26174 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-3, 1, 1, 1, 0], ![2, -1, -2, 0, 1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput26174 : ExponentCode := normalNode8994

theorem canonicalSound26174 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26174.moment H = canonicalOutput26174.moment H :=
  canonical_of_padded canonicalInput26174 canonicalOutput26174 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26175 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-2, -1, 1, 0, 2], ![-1, 2, 1, -2, 0], ![3, 0, -2, 1, -2]]⟩

def canonicalOutput26175 : ExponentCode := normalNode9544

theorem canonicalSound26175 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26175.moment H = canonicalOutput26175.moment H :=
  canonical_of_padded canonicalInput26175 canonicalOutput26175 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

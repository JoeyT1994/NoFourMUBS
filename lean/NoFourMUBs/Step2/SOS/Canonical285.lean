import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput18240 : ExponentCode := ⟨6, 4, ![![-1, -1, 1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![1, 2, 1, -4]]⟩

def canonicalOutput18240 : ExponentCode := normalNode1239

theorem canonicalSound18240 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18240.moment H = canonicalOutput18240.moment H :=
  canonical_of_padded canonicalInput18240 canonicalOutput18240 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation385, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18241 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 0, -1, 1], ![0, 0, 2, -2], ![0, 1, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput18241 : ExponentCode := normalNode9446

theorem canonicalSound18241 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18241.moment H = canonicalOutput18241.moment H :=
  canonical_of_padded canonicalInput18241 canonicalOutput18241 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18242 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 0, -1, 1], ![0, 1, -3, 2], ![0, 0, 0, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput18242 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1115⟩

theorem canonicalSound18242 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18242.moment H = canonicalOutput18242.moment H :=
  canonical_of_padded canonicalInput18242 canonicalOutput18242 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18243 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 0, -1, 1], ![0, 1, -3, 2], ![1, -1, 0, 0], ![0, 1, 3, -4]]⟩

def canonicalOutput18243 : ExponentCode := normalNode9462

theorem canonicalSound18243 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18243.moment H = canonicalOutput18243.moment H :=
  canonical_of_padded canonicalInput18243 canonicalOutput18243 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18244 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput18244 : ExponentCode := normalNode9447

theorem canonicalSound18244 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18244.moment H = canonicalOutput18244.moment H :=
  canonical_of_padded canonicalInput18244 canonicalOutput18244 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18245 : ExponentCode := ⟨6, 4, ![![-1, -1, 1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput18245 : ExponentCode := normalNode7281

theorem canonicalSound18245 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18245.moment H = canonicalOutput18245.moment H :=
  canonical_of_padded canonicalInput18245 canonicalOutput18245 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18246 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 0, -1, 1], ![0, 1, 2, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput18246 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1116⟩

theorem canonicalSound18246 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18246.moment H = canonicalOutput18246.moment H :=
  canonical_of_padded canonicalInput18246 canonicalOutput18246 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18247 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 0, -1, 1], ![0, 1, 3, -4], ![1, 0, -3, 2]]⟩

def canonicalOutput18247 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1115⟩

theorem canonicalSound18247 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18247.moment H = canonicalOutput18247.moment H :=
  canonical_of_padded canonicalInput18247 canonicalOutput18247 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18248 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 0, -1, 1], ![0, 2, -2, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput18248 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node837⟩

theorem canonicalSound18248 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18248.moment H = canonicalOutput18248.moment H :=
  canonical_of_padded canonicalInput18248 canonicalOutput18248 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput18249 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 0, -1, 1], ![0, 3, 1, -4], ![1, -2, -1, 2]]⟩

def canonicalOutput18249 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node922⟩

theorem canonicalSound18249 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18249.moment H = canonicalOutput18249.moment H :=
  canonical_of_padded canonicalInput18249 canonicalOutput18249 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18250 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 0, 0, 0], ![0, 1, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput18250 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node230⟩

theorem canonicalSound18250 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18250.moment H = canonicalOutput18250.moment H :=
  canonical_of_padded canonicalInput18250 canonicalOutput18250 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput18251 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 0, 0, 0], ![0, 1, 1, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput18251 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node230⟩

theorem canonicalSound18251 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18251.moment H = canonicalOutput18251.moment H :=
  canonical_of_padded canonicalInput18251 canonicalOutput18251 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput18252 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 0, 0, 0], ![0, 1, 2, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput18252 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node263⟩

theorem canonicalSound18252 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18252.moment H = canonicalOutput18252.moment H :=
  canonical_of_padded canonicalInput18252 canonicalOutput18252 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18253 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 0, 0, 0], ![0, 2, -1, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput18253 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node287⟩

theorem canonicalSound18253 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18253.moment H = canonicalOutput18253.moment H :=
  canonical_of_padded canonicalInput18253 canonicalOutput18253 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput18254 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 0, 0, 0], ![0, 2, 1, -3], ![1, -1, -2, 2]]⟩

def canonicalOutput18254 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node261⟩

theorem canonicalSound18254 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18254.moment H = canonicalOutput18254.moment H :=
  canonical_of_padded canonicalInput18254 canonicalOutput18254 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18255 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 0, 1, -1], ![0, 0, -2, 2], ![0, 2, -1, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput18255 : ExponentCode := normalNode9448

theorem canonicalSound18255 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18255.moment H = canonicalOutput18255.moment H :=
  canonical_of_padded canonicalInput18255 canonicalOutput18255 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18256 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 0, 1, -1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput18256 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2642⟩

theorem canonicalSound18256 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18256.moment H = canonicalOutput18256.moment H :=
  canonical_of_padded canonicalInput18256 canonicalOutput18256 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18257 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 0, 1, -1], ![0, 1, -4, 3], ![1, 0, 2, -3]]⟩

def canonicalOutput18257 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1115⟩

theorem canonicalSound18257 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18257.moment H = canonicalOutput18257.moment H :=
  canonical_of_padded canonicalInput18257 canonicalOutput18257 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18258 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 0, 1, -1], ![0, 1, -3, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput18258 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1116⟩

theorem canonicalSound18258 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18258.moment H = canonicalOutput18258.moment H :=
  canonical_of_padded canonicalInput18258 canonicalOutput18258 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18259 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, -1, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput18259 : ExponentCode := normalNode9467

theorem canonicalSound18259 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18259.moment H = canonicalOutput18259.moment H :=
  canonical_of_padded canonicalInput18259 canonicalOutput18259 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18260 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 2, -1, -1], ![1, -2, 1, 0]]⟩

def canonicalOutput18260 : ExponentCode := normalNode10302

theorem canonicalSound18260 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18260.moment H = canonicalOutput18260.moment H :=
  canonical_of_padded canonicalInput18260 canonicalOutput18260 (by decide) (by decide)
    ⟨false, true, canonicalPermutation33, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput18261 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 0, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput18261 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1118⟩

theorem canonicalSound18261 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18261.moment H = canonicalOutput18261.moment H :=
  canonical_of_padded canonicalInput18261 canonicalOutput18261 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18262 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, -1, 1]]⟩

def canonicalOutput18262 : ExponentCode := normalNode9465

theorem canonicalSound18262 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18262.moment H = canonicalOutput18262.moment H :=
  canonical_of_padded canonicalInput18262 canonicalOutput18262 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18263 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput18263 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1117⟩

theorem canonicalSound18263 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18263.moment H = canonicalOutput18263.moment H :=
  canonical_of_padded canonicalInput18263 canonicalOutput18263 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18264 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 0, 1, -1], ![0, 1, 1, -2], ![0, 1, -3, 2], ![1, -1, 0, 0]]⟩

def canonicalOutput18264 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2644⟩

theorem canonicalSound18264 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18264.moment H = canonicalOutput18264.moment H :=
  canonical_of_padded canonicalInput18264 canonicalOutput18264 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18265 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 0, 1, -1], ![0, 1, 1, -2], ![0, 2, -3, 1], ![1, -2, 0, 1]]⟩

def canonicalOutput18265 : ExponentCode := normalNode9031

theorem canonicalSound18265 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18265.moment H = canonicalOutput18265.moment H :=
  canonical_of_padded canonicalInput18265 canonicalOutput18265 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput18266 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, 0, -3, 2]]⟩

def canonicalOutput18266 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1116⟩

theorem canonicalSound18266 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18266.moment H = canonicalOutput18266.moment H :=
  canonical_of_padded canonicalInput18266 canonicalOutput18266 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18267 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 0, 1, -1], ![0, 2, -4, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput18267 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node921⟩

theorem canonicalSound18267 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18267.moment H = canonicalOutput18267.moment H :=
  canonical_of_padded canonicalInput18267 canonicalOutput18267 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18268 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 0, 2, -2], ![0, 1, -3, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput18268 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1109⟩

theorem canonicalSound18268 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18268.moment H = canonicalOutput18268.moment H :=
  canonical_of_padded canonicalInput18268 canonicalOutput18268 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18269 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 0, 2, -2], ![0, 1, -1, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput18269 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1110⟩

theorem canonicalSound18269 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18269.moment H = canonicalOutput18269.moment H :=
  canonical_of_padded canonicalInput18269 canonicalOutput18269 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18270 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, 0, -3, 2]]⟩

def canonicalOutput18270 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1109⟩

theorem canonicalSound18270 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18270.moment H = canonicalOutput18270.moment H :=
  canonical_of_padded canonicalInput18270 canonicalOutput18270 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18271 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 0, 2, -2], ![0, 2, -4, 2], ![1, -1, 1, -1]]⟩

def canonicalOutput18271 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1113⟩

theorem canonicalSound18271 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18271.moment H = canonicalOutput18271.moment H :=
  canonical_of_padded canonicalInput18271 canonicalOutput18271 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18272 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 0, 2, -2], ![0, 2, -1, -1], ![1, -1, -2, 2]]⟩

def canonicalOutput18272 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1111⟩

theorem canonicalSound18272 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18272.moment H = canonicalOutput18272.moment H :=
  canonical_of_padded canonicalInput18272 canonicalOutput18272 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18273 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 0, 2, -2], ![0, 3, -3, 0], ![1, -2, 0, 1]]⟩

def canonicalOutput18273 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1066⟩

theorem canonicalSound18273 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18273.moment H = canonicalOutput18273.moment H :=
  canonical_of_padded canonicalInput18273 canonicalOutput18273 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput18274 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 0, 3, -3], ![0, 1, -4, 3], ![1, 0, 0, -1]]⟩

def canonicalOutput18274 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1102⟩

theorem canonicalSound18274 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18274.moment H = canonicalOutput18274.moment H :=
  canonical_of_padded canonicalInput18274 canonicalOutput18274 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18275 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 0, 3, -3], ![0, 1, -3, 2], ![1, 0, -1, 0]]⟩

def canonicalOutput18275 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1103⟩

theorem canonicalSound18275 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18275.moment H = canonicalOutput18275.moment H :=
  canonical_of_padded canonicalInput18275 canonicalOutput18275 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18276 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 0, 3, -3], ![0, 2, -4, 2], ![1, -1, 0, 0]]⟩

def canonicalOutput18276 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1075⟩

theorem canonicalSound18276 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18276.moment H = canonicalOutput18276.moment H :=
  canonical_of_padded canonicalInput18276 canonicalOutput18276 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput18277 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 0, 3, -3], ![0, 2, -1, -1], ![1, -1, -3, 3]]⟩

def canonicalOutput18277 : ExponentCode := normalNode9441

theorem canonicalSound18277 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18277.moment H = canonicalOutput18277.moment H :=
  canonical_of_padded canonicalInput18277 canonicalOutput18277 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18278 : ExponentCode := ⟨3, 4, ![![-1, -1, 1, 1], ![0, 0, 3, -3], ![1, 1, -4, 2]]⟩

def canonicalOutput18278 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node248⟩

theorem canonicalSound18278 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18278.moment H = canonicalOutput18278.moment H :=
  canonical_of_padded canonicalInput18278 canonicalOutput18278 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18279 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 1, -3, 2], ![-1, 1, -1, 1], ![1, -1, 0, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput18279 : ExponentCode := normalNode9329

theorem canonicalSound18279 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18279.moment H = canonicalOutput18279.moment H :=
  canonical_of_padded canonicalInput18279 canonicalOutput18279 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18280 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 1, -3, 2], ![-1, 1, -1, 1], ![1, -1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput18280 : ExponentCode := normalNode9296

theorem canonicalSound18280 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18280.moment H = canonicalOutput18280.moment H :=
  canonical_of_padded canonicalInput18280 canonicalOutput18280 (by decide) (by decide)
    ⟨false, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18281 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 1, -3, 2], ![0, 0, -1, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput18281 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1115⟩

theorem canonicalSound18281 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18281.moment H = canonicalOutput18281.moment H :=
  canonical_of_padded canonicalInput18281 canonicalOutput18281 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18282 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 1, -3, 2], ![0, 1, -1, 0], ![0, -1, 0, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput18282 : ExponentCode := normalNode9420

theorem canonicalSound18282 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18282.moment H = canonicalOutput18282.moment H :=
  canonical_of_padded canonicalInput18282 canonicalOutput18282 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18283 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 1, -3, 2], ![0, 1, -1, 0], ![0, -1, 3, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput18283 : ExponentCode := normalNode9368

theorem canonicalSound18283 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18283.moment H = canonicalOutput18283.moment H :=
  canonical_of_padded canonicalInput18283 canonicalOutput18283 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18284 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 1, -3, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, 0, 3, -3]]⟩

def canonicalOutput18284 : ExponentCode := normalNode9440

theorem canonicalSound18284 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18284.moment H = canonicalOutput18284.moment H :=
  canonical_of_padded canonicalInput18284 canonicalOutput18284 (by decide) (by decide)
    ⟨false, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18285 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 1, -3, 2], ![0, 1, -1, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput18285 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1128⟩

theorem canonicalSound18285 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18285.moment H = canonicalOutput18285.moment H :=
  canonical_of_padded canonicalInput18285 canonicalOutput18285 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18286 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 1, -3, 2], ![0, 1, -1, 0], ![1, -1, 3, -3], ![0, 0, 0, 0]]⟩

def canonicalOutput18286 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1128⟩

theorem canonicalSound18286 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18286.moment H = canonicalOutput18286.moment H :=
  canonical_of_padded canonicalInput18286 canonicalOutput18286 (by decide) (by decide)
    ⟨false, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18287 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 1, -3, 2], ![0, 1, 3, -4], ![1, -1, -1, 1]]⟩

def canonicalOutput18287 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1121⟩

theorem canonicalSound18287 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18287.moment H = canonicalOutput18287.moment H :=
  canonical_of_padded canonicalInput18287 canonicalOutput18287 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18288 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 1, -3, 2], ![0, 2, 0, -2], ![1, -2, 2, -1]]⟩

def canonicalOutput18288 : ExponentCode := normalNode7052

theorem canonicalSound18288 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18288.moment H = canonicalOutput18288.moment H :=
  canonical_of_padded canonicalInput18288 canonicalOutput18288 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput18289 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 1, -3, 2], ![0, 2, 1, -3], ![1, -2, 1, 0]]⟩

def canonicalOutput18289 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1018⟩

theorem canonicalSound18289 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18289.moment H = canonicalOutput18289.moment H :=
  canonical_of_padded canonicalInput18289 canonicalOutput18289 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput18290 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 1, -2, 1], ![0, 0, -1, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput18290 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1116⟩

theorem canonicalSound18290 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18290.moment H = canonicalOutput18290.moment H :=
  canonical_of_padded canonicalInput18290 canonicalOutput18290 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18291 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 1, -2, 1], ![0, 1, -2, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput18291 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1129⟩

theorem canonicalSound18291 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18291.moment H = canonicalOutput18291.moment H :=
  canonical_of_padded canonicalInput18291 canonicalOutput18291 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18292 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 1, -2, 1], ![0, 1, -1, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput18292 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node835⟩

theorem canonicalSound18292 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18292.moment H = canonicalOutput18292.moment H :=
  canonical_of_padded canonicalInput18292 canonicalOutput18292 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput18293 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 1, -2, 1], ![0, 1, 3, -4], ![1, -1, -2, 2]]⟩

def canonicalOutput18293 : ExponentCode := normalNode9475

theorem canonicalSound18293 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18293.moment H = canonicalOutput18293.moment H :=
  canonical_of_padded canonicalInput18293 canonicalOutput18293 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18294 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 1, -2, 1], ![0, 2, -1, -1], ![1, -2, 2, -1]]⟩

def canonicalOutput18294 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1333⟩

theorem canonicalSound18294 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18294.moment H = canonicalOutput18294.moment H :=
  canonical_of_padded canonicalInput18294 canonicalOutput18294 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput18295 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 1, -1, 0], ![-1, 1, -1, 1], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput18295 : ExponentCode := normalNode9290

theorem canonicalSound18295 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18295.moment H = canonicalOutput18295.moment H :=
  canonical_of_padded canonicalInput18295 canonicalOutput18295 (by decide) (by decide)
    ⟨false, false, canonicalPermutation79, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput18296 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 1, -1, 0], ![-1, 1, 0, 0], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput18296 : ExponentCode := normalNode9465

theorem canonicalSound18296 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18296.moment H = canonicalOutput18296.moment H :=
  canonical_of_padded canonicalInput18296 canonicalOutput18296 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation196, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput18297 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 1, -1, 0], ![-1, 1, 0, 0], ![1, -1, 2, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput18297 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1824⟩

theorem canonicalSound18297 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18297.moment H = canonicalOutput18297.moment H :=
  canonical_of_padded canonicalInput18297 canonicalOutput18297 (by decide) (by decide)
    ⟨false, false, canonicalPermutation53, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput18298 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 1, -1, 0], ![-1, 1, 0, 0], ![1, -1, 3, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput18298 : ExponentCode := normalNode9300

theorem canonicalSound18298 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18298.moment H = canonicalOutput18298.moment H :=
  canonical_of_padded canonicalInput18298 canonicalOutput18298 (by decide) (by decide)
    ⟨false, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18299 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 1, -1, 0], ![-1, 1, 3, -3], ![1, -1, -2, 2], ![1, 0, -1, 0]]⟩

def canonicalOutput18299 : ExponentCode := normalNode9299

theorem canonicalSound18299 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18299.moment H = canonicalOutput18299.moment H :=
  canonical_of_padded canonicalInput18299 canonicalOutput18299 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18300 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 1, -1, 0], ![-1, 1, 3, -3], ![1, -1, 0, 0], ![1, 0, -3, 2]]⟩

def canonicalOutput18300 : ExponentCode := normalNode9298

theorem canonicalSound18300 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18300.moment H = canonicalOutput18300.moment H :=
  canonical_of_padded canonicalInput18300 canonicalOutput18300 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18301 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 1, -1, 0], ![0, -1, 1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput18301 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1349⟩

theorem canonicalSound18301 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18301.moment H = canonicalOutput18301.moment H :=
  canonical_of_padded canonicalInput18301 canonicalOutput18301 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput18302 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 1, -1, 0], ![0, 0, 2, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput18302 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1110⟩

theorem canonicalSound18302 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18302.moment H = canonicalOutput18302.moment H :=
  canonical_of_padded canonicalInput18302 canonicalOutput18302 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18303 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 1, -1, 0], ![0, 0, 3, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput18303 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1103⟩

theorem canonicalSound18303 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18303.moment H = canonicalOutput18303.moment H :=
  canonical_of_padded canonicalInput18303 canonicalOutput18303 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

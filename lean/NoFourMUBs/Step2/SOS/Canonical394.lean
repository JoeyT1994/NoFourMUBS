import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput25216 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![-1, 0, -1, 2, 0], ![2, -1, 0, 0, -1], ![-1, 2, 1, -1, -1]]⟩

def canonicalOutput25216 : ExponentCode := normalNode2188

theorem canonicalSound25216 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25216.moment H = canonicalOutput25216.moment H :=
  canonical_of_padded canonicalInput25216 canonicalOutput25216 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation359, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput25217 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![-1, 0, 0, 2, -1], ![0, -1, -1, 0, 2], ![1, 2, 1, -1, -3]]⟩

def canonicalOutput25217 : ExponentCode := normalNode6336

theorem canonicalSound25217 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25217.moment H = canonicalOutput25217.moment H :=
  canonical_of_padded canonicalInput25217 canonicalOutput25217 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25218 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![-1, 0, 0, 2, -1], ![1, -1, -1, 0, 1], ![0, 2, 1, -1, -2]]⟩

def canonicalOutput25218 : ExponentCode := normalNode10764

theorem canonicalSound25218 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25218.moment H = canonicalOutput25218.moment H :=
  canonical_of_padded canonicalInput25218 canonicalOutput25218 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation242, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25219 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![-1, 1, -1, -1, 2], ![2, -1, 0, 0, -1], ![-1, 1, 1, 2, -3]]⟩

def canonicalOutput25219 : ExponentCode := normalNode1150

theorem canonicalSound25219 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25219.moment H = canonicalOutput25219.moment H :=
  canonical_of_padded canonicalInput25219 canonicalOutput25219 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation395, canonicalPermutation53⟩ (by decide +kernel) hH

def canonicalInput25220 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![-1, 1, 1, -1, 0], ![-1, 1, 0, 1, -1], ![2, -1, -1, 1, -1]]⟩

def canonicalOutput25220 : ExponentCode := normalNode2206

theorem canonicalSound25220 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25220.moment H = canonicalOutput25220.moment H :=
  canonical_of_padded canonicalInput25220 canonicalOutput25220 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation309, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput25221 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![-1, 1, 1, -1, 0], ![0, 1, 0, 0, -1], ![1, -1, -1, 2, -1]]⟩

def canonicalOutput25221 : ExponentCode := normalNode6831

theorem canonicalSound25221 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25221.moment H = canonicalOutput25221.moment H :=
  canonical_of_padded canonicalInput25221 canonicalOutput25221 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation335, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput25222 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![-1, 1, 1, -1, 0], ![0, 1, 0, 1, -2], ![1, -1, -1, 1, 0]]⟩

def canonicalOutput25222 : ExponentCode := normalNode8517

theorem canonicalSound25222 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25222.moment H = canonicalOutput25222.moment H :=
  canonical_of_padded canonicalInput25222 canonicalOutput25222 (by decide) (by decide)
    ⟨false, false, canonicalPermutation160, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput25223 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![-1, 1, 1, -1, 0], ![1, 1, 0, 0, -2], ![0, -1, -1, 2, 0]]⟩

def canonicalOutput25223 : ExponentCode := normalNode8366

theorem canonicalSound25223 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25223.moment H = canonicalOutput25223.moment H :=
  canonical_of_padded canonicalInput25223 canonicalOutput25223 (by decide) (by decide)
    ⟨false, true, canonicalPermutation140, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25224 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![-1, 2, 0, -1, 0], ![2, -1, -1, 0, 0], ![-1, 0, 1, 2, -2]]⟩

def canonicalOutput25224 : ExponentCode := normalNode1568

theorem canonicalSound25224 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25224.moment H = canonicalOutput25224.moment H :=
  canonical_of_padded canonicalInput25224 canonicalOutput25224 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation387, OAI.MUB6.Certificate.PairSemantics.permutation197⟩ (by decide +kernel) hH

def canonicalInput25225 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![-1, 2, 0, -1, 0], ![2, 0, -1, 0, -1], ![-1, -1, 1, 2, -1]]⟩

def canonicalOutput25225 : ExponentCode := normalNode2218

theorem canonicalSound25225 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25225.moment H = canonicalOutput25225.moment H :=
  canonical_of_padded canonicalInput25225 canonicalOutput25225 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation194⟩ (by decide +kernel) hH

def canonicalInput25226 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![0, -1, -1, 1, 1], ![1, 0, 0, -1, 0], ![-1, 2, 1, 1, -3]]⟩

def canonicalOutput25226 : ExponentCode := normalNode10747

theorem canonicalSound25226 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25226.moment H = canonicalOutput25226.moment H :=
  canonical_of_padded canonicalInput25226 canonicalOutput25226 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25227 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![0, -1, -1, 1, 1], ![2, 0, 0, -1, -1], ![-2, 2, 1, 1, -2]]⟩

def canonicalOutput25227 : ExponentCode := normalNode1155

theorem canonicalSound25227 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25227.moment H = canonicalOutput25227.moment H :=
  canonical_of_padded canonicalInput25227 canonicalOutput25227 (by decide) (by decide)
    ⟨false, true, canonicalPermutation109, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput25228 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![0, -1, 0, 2, -1], ![1, 0, -1, -1, 1], ![-1, 2, 1, 0, -2]]⟩

def canonicalOutput25228 : ExponentCode := normalNode10873

theorem canonicalSound25228 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25228.moment H = canonicalOutput25228.moment H :=
  canonical_of_padded canonicalInput25228 canonicalOutput25228 (by decide) (by decide)
    ⟨false, true, canonicalPermutation269, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25229 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![0, -1, 0, 2, -1], ![1, 0, -1, 0, 0], ![-1, 2, 1, -1, -1]]⟩

def canonicalOutput25229 : ExponentCode := normalNode7555

theorem canonicalSound25229 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25229.moment H = canonicalOutput25229.moment H :=
  canonical_of_padded canonicalInput25229 canonicalOutput25229 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation357, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput25230 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![0, -1, 0, 2, -1], ![2, 0, -1, -1, 0], ![-2, 2, 1, 0, -1]]⟩

def canonicalOutput25230 : ExponentCode := normalNode1541

theorem canonicalSound25230 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25230.moment H = canonicalOutput25230.moment H :=
  canonical_of_padded canonicalInput25230 canonicalOutput25230 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation362, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput25231 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![0, -1, 0, 2, -1], ![2, 0, -1, 0, -1], ![-2, 2, 1, -1, 0]]⟩

def canonicalOutput25231 : ExponentCode := normalNode1486

theorem canonicalSound25231 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25231.moment H = canonicalOutput25231.moment H :=
  canonical_of_padded canonicalInput25231 canonicalOutput25231 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation357, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput25232 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![0, 0, -1, 2, -1], ![1, -1, 0, -1, 1], ![-1, 2, 1, 0, -2]]⟩

def canonicalOutput25232 : ExponentCode := normalNode10872

theorem canonicalSound25232 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25232.moment H = canonicalOutput25232.moment H :=
  canonical_of_padded canonicalInput25232 canonicalOutput25232 (by decide) (by decide)
    ⟨false, true, canonicalPermutation136, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25233 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![0, 0, -1, 2, -1], ![1, -1, 0, 0, 0], ![-1, 2, 1, -1, -1]]⟩

def canonicalOutput25233 : ExponentCode := normalNode7554

theorem canonicalSound25233 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25233.moment H = canonicalOutput25233.moment H :=
  canonical_of_padded canonicalInput25233 canonicalOutput25233 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation357, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput25234 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![0, 0, -1, 2, -1], ![2, -1, 0, -1, 0], ![-2, 2, 1, 0, -1]]⟩

def canonicalOutput25234 : ExponentCode := normalNode1537

theorem canonicalSound25234 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25234.moment H = canonicalOutput25234.moment H :=
  canonical_of_padded canonicalInput25234 canonicalOutput25234 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput25235 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![0, 0, -1, 2, -1], ![2, -1, 0, 0, -1], ![-2, 2, 1, -1, 0]]⟩

def canonicalOutput25235 : ExponentCode := normalNode1485

theorem canonicalSound25235 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25235.moment H = canonicalOutput25235.moment H :=
  canonical_of_padded canonicalInput25235 canonicalOutput25235 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation357, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput25236 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![0, 1, -1, -1, 1], ![1, -1, 0, 0, 0], ![-1, 1, 1, 2, -3]]⟩

def canonicalOutput25236 : ExponentCode := normalNode10749

theorem canonicalSound25236 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25236.moment H = canonicalOutput25236.moment H :=
  canonical_of_padded canonicalInput25236 canonicalOutput25236 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput25237 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![0, 1, -1, -1, 1], ![2, -1, 0, 0, -1], ![-2, 1, 1, 2, -2]]⟩

def canonicalOutput25237 : ExponentCode := normalNode1158

theorem canonicalSound25237 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25237.moment H = canonicalOutput25237.moment H :=
  canonical_of_padded canonicalInput25237 canonicalOutput25237 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation395, canonicalPermutation53⟩ (by decide +kernel) hH

def canonicalInput25238 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![0, 2, 0, -1, -1], ![1, -1, -1, 0, 1], ![-1, 0, 1, 2, -2]]⟩

def canonicalOutput25238 : ExponentCode := normalNode10874

theorem canonicalSound25238 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25238.moment H = canonicalOutput25238.moment H :=
  canonical_of_padded canonicalInput25238 canonicalOutput25238 (by decide) (by decide)
    ⟨false, true, canonicalPermutation161, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput25239 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![0, 2, 0, -1, -1], ![1, 0, -1, 0, 0], ![-1, -1, 1, 2, -1]]⟩

def canonicalOutput25239 : ExponentCode := normalNode7560

theorem canonicalSound25239 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25239.moment H = canonicalOutput25239.moment H :=
  canonical_of_padded canonicalInput25239 canonicalOutput25239 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput25240 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![0, 2, 0, -1, -1], ![2, -1, -1, 0, 0], ![-2, 0, 1, 2, -1]]⟩

def canonicalOutput25240 : ExponentCode := normalNode1566

theorem canonicalSound25240 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25240.moment H = canonicalOutput25240.moment H :=
  canonical_of_padded canonicalInput25240 canonicalOutput25240 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput25241 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![0, 2, 0, -1, -1], ![2, 0, -1, 0, -1], ![-2, -1, 1, 2, 0]]⟩

def canonicalOutput25241 : ExponentCode := normalNode1505

theorem canonicalSound25241 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25241.moment H = canonicalOutput25241.moment H :=
  canonical_of_padded canonicalInput25241 canonicalOutput25241 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput25242 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-2, -1, 0, 2, 1], ![0, 1, 1, -2, 0], ![2, 0, 1, 0, -3]]⟩

def canonicalOutput25242 : ExponentCode := normalNode1455

theorem canonicalSound25242 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25242.moment H = canonicalOutput25242.moment H :=
  canonical_of_padded canonicalInput25242 canonicalOutput25242 (by decide) (by decide)
    ⟨false, true, canonicalPermutation82, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25243 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-2, -1, 0, 2, 1], ![0, 1, 1, 0, -2], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput25243 : ExponentCode := normalNode1605

theorem canonicalSound25243 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25243.moment H = canonicalOutput25243.moment H :=
  canonical_of_padded canonicalInput25243 canonicalOutput25243 (by decide) (by decide)
    ⟨false, true, canonicalPermutation82, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25244 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-2, -1, 0, 2, 1], ![1, 0, 1, -2, 0], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput25244 : ExponentCode := normalNode1613

theorem canonicalSound25244 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25244.moment H = canonicalOutput25244.moment H :=
  canonical_of_padded canonicalInput25244 canonicalOutput25244 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25245 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-2, -1, 0, 2, 1], ![1, 0, 1, 0, -2], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput25245 : ExponentCode := normalNode1614

theorem canonicalSound25245 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25245.moment H = canonicalOutput25245.moment H :=
  canonical_of_padded canonicalInput25245 canonicalOutput25245 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25246 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-2, -1, 0, 2, 1], ![1, 1, 0, -2, 0], ![1, 0, 2, 0, -3]]⟩

def canonicalOutput25246 : ExponentCode := normalNode1463

theorem canonicalSound25246 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25246.moment H = canonicalOutput25246.moment H :=
  canonical_of_padded canonicalInput25246 canonicalOutput25246 (by decide) (by decide)
    ⟨false, true, canonicalPermutation293, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput25247 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-2, -1, 0, 2, 1], ![1, 1, 0, 0, -2], ![1, 0, 2, -2, -1]]⟩

def canonicalOutput25247 : ExponentCode := normalNode1610

theorem canonicalSound25247 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25247.moment H = canonicalOutput25247.moment H :=
  canonical_of_padded canonicalInput25247 canonicalOutput25247 (by decide) (by decide)
    ⟨false, true, canonicalPermutation293, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput25248 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-2, 0, 0, 2, 0], ![0, -1, 1, -1, 1], ![2, 1, 1, -1, -3]]⟩

def canonicalOutput25248 : ExponentCode := normalNode1138

theorem canonicalSound25248 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25248.moment H = canonicalOutput25248.moment H :=
  canonical_of_padded canonicalInput25248 canonicalOutput25248 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation361, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25249 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-2, 0, 0, 2, 0], ![0, 1, 1, 0, -2], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput25249 : ExponentCode := normalNode1506

theorem canonicalSound25249 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25249.moment H = canonicalOutput25249.moment H :=
  canonical_of_padded canonicalInput25249 canonicalOutput25249 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput25250 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-2, 0, 0, 2, 0], ![1, 1, 0, 0, -2], ![1, -1, 2, -2, 0]]⟩

def canonicalOutput25250 : ExponentCode := normalNode1514

theorem canonicalSound25250 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25250.moment H = canonicalOutput25250.moment H :=
  canonical_of_padded canonicalInput25250 canonicalOutput25250 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation190⟩ (by decide +kernel) hH

def canonicalInput25251 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-2, 0, 1, 1, 0], ![0, 1, 0, 1, -2], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput25251 : ExponentCode := normalNode1511

theorem canonicalSound25251 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25251.moment H = canonicalOutput25251.moment H :=
  canonical_of_padded canonicalInput25251 canonicalOutput25251 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput25252 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, -1, 0, 2, 0], ![-1, 1, 1, -2, 1], ![2, 0, 1, 0, -3]]⟩

def canonicalOutput25252 : ExponentCode := normalNode1484

theorem canonicalSound25252 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25252.moment H = canonicalOutput25252.moment H :=
  canonical_of_padded canonicalInput25252 canonicalOutput25252 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation315, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput25253 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, -1, 0, 2, 0], ![-1, 1, 1, 0, -1], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput25253 : ExponentCode := normalNode1546

theorem canonicalSound25253 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25253.moment H = canonicalOutput25253.moment H :=
  canonical_of_padded canonicalInput25253 canonicalOutput25253 (by decide) (by decide)
    ⟨false, false, canonicalPermutation107, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput25254 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, -1, 0, 2, 0], ![0, 0, 1, -2, 1], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput25254 : ExponentCode := normalNode7501

theorem canonicalSound25254 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25254.moment H = canonicalOutput25254.moment H :=
  canonical_of_padded canonicalInput25254 canonicalOutput25254 (by decide) (by decide)
    ⟨false, true, canonicalPermutation82, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25255 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, -1, 0, 2, 0], ![0, 0, 1, 0, -1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput25255 : ExponentCode := normalNode7556

theorem canonicalSound25255 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25255.moment H = canonicalOutput25255.moment H :=
  canonical_of_padded canonicalInput25255 canonicalOutput25255 (by decide) (by decide)
    ⟨false, true, canonicalPermutation82, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput25256 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, -1, 0, 2, 0], ![0, 1, 0, -2, 1], ![1, 0, 2, 0, -3]]⟩

def canonicalOutput25256 : ExponentCode := normalNode6542

theorem canonicalSound25256 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25256.moment H = canonicalOutput25256.moment H :=
  canonical_of_padded canonicalInput25256 canonicalOutput25256 (by decide) (by decide)
    ⟨false, true, canonicalPermutation82, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25257 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, -1, 0, 2, 0], ![0, 1, 0, 0, -1], ![1, 0, 2, -2, -1]]⟩

def canonicalOutput25257 : ExponentCode := normalNode6558

theorem canonicalSound25257 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25257.moment H = canonicalOutput25257.moment H :=
  canonical_of_padded canonicalInput25257 canonicalOutput25257 (by decide) (by decide)
    ⟨false, true, canonicalPermutation82, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput25258 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, -1, 0, 2, 0], ![0, 1, 1, -2, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput25258 : ExponentCode := normalNode8116

theorem canonicalSound25258 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25258.moment H = canonicalOutput25258.moment H :=
  canonical_of_padded canonicalInput25258 canonicalOutput25258 (by decide) (by decide)
    ⟨false, true, canonicalPermutation82, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25259 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, -1, 0, 2, 0], ![0, 1, 1, 0, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput25259 : ExponentCode := normalNode8109

theorem canonicalSound25259 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25259.moment H = canonicalOutput25259.moment H :=
  canonical_of_padded canonicalInput25259 canonicalOutput25259 (by decide) (by decide)
    ⟨false, true, canonicalPermutation82, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput25260 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, -1, 0, 2, 0], ![1, 0, 1, -2, 0], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput25260 : ExponentCode := normalNode8109

theorem canonicalSound25260 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25260.moment H = canonicalOutput25260.moment H :=
  canonical_of_padded canonicalInput25260 canonicalOutput25260 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation296, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput25261 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, -1, 0, 2, 0], ![1, 0, 1, 0, -2], ![0, 1, 1, -2, 0]]⟩

def canonicalOutput25261 : ExponentCode := normalNode8116

theorem canonicalSound25261 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25261.moment H = canonicalOutput25261.moment H :=
  canonical_of_padded canonicalInput25261 canonicalOutput25261 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation296, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25262 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, -1, 0, 2, 0], ![1, 1, 0, -2, 0], ![0, 0, 2, 0, -2]]⟩

def canonicalOutput25262 : ExponentCode := normalNode8146

theorem canonicalSound25262 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25262.moment H = canonicalOutput25262.moment H :=
  canonical_of_padded canonicalInput25262 canonicalOutput25262 (by decide) (by decide)
    ⟨false, false, canonicalPermutation155, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25263 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, -1, 0, 2, 0], ![1, 1, 0, 0, -2], ![0, 0, 2, -2, 0]]⟩

def canonicalOutput25263 : ExponentCode := normalNode8149

theorem canonicalSound25263 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25263.moment H = canonicalOutput25263.moment H :=
  canonical_of_padded canonicalInput25263 canonicalOutput25263 (by decide) (by decide)
    ⟨false, false, canonicalPermutation155, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25264 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, -1, 1, -1, 2], ![-1, 0, 1, 2, -2], ![2, 1, 0, -1, -2]]⟩

def canonicalOutput25264 : ExponentCode := normalNode1522

theorem canonicalSound25264 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25264.moment H = canonicalOutput25264.moment H :=
  canonical_of_padded canonicalInput25264 canonicalOutput25264 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25265 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, -1, 1, -1, 2], ![2, 0, 0, -1, -1], ![-1, 1, 1, 2, -3]]⟩

def canonicalOutput25265 : ExponentCode := normalNode1140

theorem canonicalSound25265 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25265.moment H = canonicalOutput25265.moment H :=
  canonical_of_padded canonicalInput25265 canonicalOutput25265 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput25266 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, -1, 2, -1, 1], ![2, 0, 0, -1, -1], ![-1, 1, 0, 2, -2]]⟩

def canonicalOutput25266 : ExponentCode := normalNode1523

theorem canonicalSound25266 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25266.moment H = canonicalOutput25266.moment H :=
  canonical_of_padded canonicalInput25266 canonicalOutput25266 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput25267 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, 0, 0, 2, -1], ![-1, -1, 1, -1, 2], ![2, 1, 1, -1, -3]]⟩

def canonicalOutput25267 : ExponentCode := normalNode1140

theorem canonicalSound25267 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25267.moment H = canonicalOutput25267.moment H :=
  canonical_of_padded canonicalInput25267 canonicalOutput25267 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25268 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, 0, 0, 2, -1], ![-1, 1, 1, 0, -1], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput25268 : ExponentCode := normalNode1508

theorem canonicalSound25268 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25268.moment H = canonicalOutput25268.moment H :=
  canonical_of_padded canonicalInput25268 canonicalOutput25268 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput25269 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, 0, 0, 2, -1], ![0, -1, 1, -1, 1], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput25269 : ExponentCode := normalNode7565

theorem canonicalSound25269 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25269.moment H = canonicalOutput25269.moment H :=
  canonical_of_padded canonicalInput25269 canonicalOutput25269 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation361, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25270 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, 0, 0, 2, -1], ![0, 1, 0, 0, -1], ![1, -1, 2, -2, 0]]⟩

def canonicalOutput25270 : ExponentCode := normalNode6558

theorem canonicalSound25270 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25270.moment H = canonicalOutput25270.moment H :=
  canonical_of_padded canonicalInput25270 canonicalOutput25270 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation326, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput25271 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, 0, 0, 2, -1], ![0, 1, 1, 0, -2], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput25271 : ExponentCode := normalNode9501

theorem canonicalSound25271 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25271.moment H = canonicalOutput25271.moment H :=
  canonical_of_padded canonicalInput25271 canonicalOutput25271 (by decide) (by decide)
    ⟨false, true, canonicalPermutation82, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25272 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, 0, 0, 2, -1], ![1, 1, 0, 0, -2], ![0, -1, 2, -2, 1]]⟩

def canonicalOutput25272 : ExponentCode := normalNode8151

theorem canonicalSound25272 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25272.moment H = canonicalOutput25272.moment H :=
  canonical_of_padded canonicalInput25272 canonicalOutput25272 (by decide) (by decide)
    ⟨false, true, canonicalPermutation140, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25273 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, 0, 1, 1, -1], ![-1, 1, 0, 1, -1], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput25273 : ExponentCode := normalNode1510

theorem canonicalSound25273 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25273.moment H = canonicalOutput25273.moment H :=
  canonical_of_padded canonicalInput25273 canonicalOutput25273 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput25274 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, 0, 1, 1, -1], ![0, 1, 0, 1, -2], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput25274 : ExponentCode := normalNode9506

theorem canonicalSound25274 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25274.moment H = canonicalOutput25274.moment H :=
  canonical_of_padded canonicalInput25274 canonicalOutput25274 (by decide) (by decide)
    ⟨false, true, canonicalPermutation82, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25275 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, 0, 2, -2, 1], ![2, -1, 0, 0, -1], ![-1, 1, 0, 2, -2]]⟩

def canonicalOutput25275 : ExponentCode := normalNode1518

theorem canonicalSound25275 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25275.moment H = canonicalOutput25275.moment H :=
  canonical_of_padded canonicalInput25275 canonicalOutput25275 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation361, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput25276 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![0, -1, 1, -1, 1], ![-2, 0, 1, 2, -1], ![2, 1, 0, -1, -2]]⟩

def canonicalOutput25276 : ExponentCode := normalNode1516

theorem canonicalSound25276 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25276.moment H = canonicalOutput25276.moment H :=
  canonical_of_padded canonicalInput25276 canonicalOutput25276 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation359, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25277 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![0, -1, 1, -1, 1], ![-1, 0, 1, 2, -2], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput25277 : ExponentCode := normalNode8541

theorem canonicalSound25277 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25277.moment H = canonicalOutput25277.moment H :=
  canonical_of_padded canonicalInput25277 canonicalOutput25277 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation359, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25278 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![0, -1, 1, -1, 1], ![1, 0, 0, -1, 0], ![-1, 1, 1, 2, -3]]⟩

def canonicalOutput25278 : ExponentCode := normalNode10750

theorem canonicalSound25278 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25278.moment H = canonicalOutput25278.moment H :=
  canonical_of_padded canonicalInput25278 canonicalOutput25278 (by decide) (by decide)
    ⟨false, true, canonicalPermutation269, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25279 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![0, -1, 1, -1, 1], ![2, 0, 0, -1, -1], ![-2, 1, 1, 2, -2]]⟩

def canonicalOutput25279 : ExponentCode := normalNode1156

theorem canonicalSound25279 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25279.moment H = canonicalOutput25279.moment H :=
  canonical_of_padded canonicalInput25279 canonicalOutput25279 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

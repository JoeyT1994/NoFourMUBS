import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput25024 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![-1, 0, -1, 1, 1], ![0, 1, -1, 1, -1], ![2, 0, 0, 0, -2], ![-1, 1, 2, -2, 0]]⟩

def canonicalOutput25024 : ExponentCode := normalNode2875

theorem canonicalSound25024 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25024.moment H = canonicalOutput25024.moment H :=
  canonical_of_padded canonicalInput25024 canonicalOutput25024 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation396, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput25025 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![-1, 0, -1, 1, 1], ![0, 1, 0, -2, 1], ![-1, 0, 2, 1, -2], ![2, 1, -1, 0, -2]]⟩

def canonicalOutput25025 : ExponentCode := normalNode1574

theorem canonicalSound25025 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25025.moment H = canonicalOutput25025.moment H :=
  canonical_of_padded canonicalInput25025 canonicalOutput25025 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation374, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25026 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![-1, 0, -1, 1, 1], ![0, 1, 0, -2, 1], ![-1, 1, 2, 0, -2], ![2, 0, -1, 1, -2]]⟩

def canonicalOutput25026 : ExponentCode := normalNode1574

theorem canonicalSound25026 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25026.moment H = canonicalOutput25026.moment H :=
  canonical_of_padded canonicalInput25026 canonicalOutput25026 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation289, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput25027 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![-1, 0, -1, 1, 1], ![0, 1, 0, 1, -2], ![2, 0, -1, -1, 0], ![-1, 1, 2, -1, -1]]⟩

def canonicalOutput25027 : ExponentCode := normalNode2167

theorem canonicalSound25027 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25027.moment H = canonicalOutput25027.moment H :=
  canonical_of_padded canonicalInput25027 canonicalOutput25027 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation373, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput25028 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![-1, 0, -1, 1, 1], ![0, 1, 0, 1, -2], ![2, 0, -1, 0, -1], ![-1, 1, 2, -2, 0]]⟩

def canonicalOutput25028 : ExponentCode := normalNode2871

theorem canonicalSound25028 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25028.moment H = canonicalOutput25028.moment H :=
  canonical_of_padded canonicalInput25028 canonicalOutput25028 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation374, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput25029 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![-1, 0, -1, 1, 1], ![0, 1, 1, -2, 0], ![2, 0, -1, 0, -1], ![-1, 1, 1, 1, -2]]⟩

def canonicalOutput25029 : ExponentCode := normalNode3700

theorem canonicalSound25029 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25029.moment H = canonicalOutput25029.moment H :=
  canonical_of_padded canonicalInput25029 canonicalOutput25029 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation289, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25030 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![-1, 0, -1, 1, 1], ![0, 2, 0, -2, 0], ![2, 0, -1, 0, -1], ![-1, 0, 2, 1, -2]]⟩

def canonicalOutput25030 : ExponentCode := normalNode1595

theorem canonicalSound25030 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25030.moment H = canonicalOutput25030.moment H :=
  canonical_of_padded canonicalInput25030 canonicalOutput25030 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput25031 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![-1, 0, -1, 1, 1], ![2, 0, -1, 0, -1], ![-1, 1, 1, -2, 1], ![0, 1, 1, 1, -3]]⟩

def canonicalOutput25031 : ExponentCode := normalNode2203

theorem canonicalSound25031 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25031.moment H = canonicalOutput25031.moment H :=
  canonical_of_padded canonicalInput25031 canonicalOutput25031 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, canonicalPermutation34⟩ (by decide +kernel) hH

def canonicalInput25032 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 0, -1, 2, 0], ![0, 1, 1, 0, -2], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput25032 : ExponentCode := normalNode7634

theorem canonicalSound25032 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25032.moment H = canonicalOutput25032.moment H :=
  canonical_of_padded canonicalInput25032 canonicalOutput25032 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25033 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 1, 0, -1, 1], ![0, 1, -1, 2, -2], ![1, 0, 2, -1, -2]]⟩

def canonicalOutput25033 : ExponentCode := normalNode6593

theorem canonicalSound25033 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25033.moment H = canonicalOutput25033.moment H :=
  canonical_of_padded canonicalInput25033 canonicalOutput25033 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25034 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-2, 0, 1, 1, 0], ![0, 1, 1, 0, -2], ![2, 1, -1, -2, 0]]⟩

def canonicalOutput25034 : ExponentCode := normalNode1559

theorem canonicalSound25034 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25034.moment H = canonicalOutput25034.moment H :=
  canonical_of_padded canonicalInput25034 canonicalOutput25034 (by decide) (by decide)
    ⟨false, true, canonicalPermutation107, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput25035 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-2, 0, 2, 0, 0], ![0, 1, -1, 1, -1], ![2, 1, 0, -2, -1]]⟩

def canonicalOutput25035 : ExponentCode := normalNode1549

theorem canonicalSound25035 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25035.moment H = canonicalOutput25035.moment H :=
  canonical_of_padded canonicalInput25035 canonicalOutput25035 (by decide) (by decide)
    ⟨false, true, canonicalPermutation107, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25036 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-2, 0, 2, 0, 0], ![0, 2, 0, -2, 0], ![2, 0, -1, 1, -2]]⟩

def canonicalOutput25036 : ExponentCode := normalNode1488

theorem canonicalSound25036 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25036.moment H = canonicalOutput25036.moment H :=
  canonical_of_padded canonicalInput25036 canonicalOutput25036 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput25037 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-2, 0, 2, 0, 0], ![1, 1, -1, -2, 1], ![1, 1, 0, 1, -3]]⟩

def canonicalOutput25037 : ExponentCode := normalNode2202

theorem canonicalSound25037 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25037.moment H = canonicalOutput25037.moment H :=
  canonical_of_padded canonicalInput25037 canonicalOutput25037 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, canonicalPermutation53⟩ (by decide +kernel) hH

def canonicalInput25038 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-2, 0, 2, 0, 0], ![1, 1, 0, -2, 0], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput25038 : ExponentCode := normalNode2185

theorem canonicalSound25038 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25038.moment H = canonicalOutput25038.moment H :=
  canonical_of_padded canonicalInput25038 canonicalOutput25038 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation371, OAI.MUB6.Certificate.PairSemantics.permutation200⟩ (by decide +kernel) hH

def canonicalInput25039 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-2, 1, -1, 1, 1], ![2, 0, 0, -2, 0], ![0, 1, 2, 0, -3]]⟩

def canonicalOutput25039 : ExponentCode := normalNode1478

theorem canonicalSound25039 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25039.moment H = canonicalOutput25039.moment H :=
  canonical_of_padded canonicalInput25039 canonicalOutput25039 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation396, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput25040 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-2, 1, -1, 1, 1], ![2, 0, 0, 0, -2], ![0, 1, 2, -2, -1]]⟩

def canonicalOutput25040 : ExponentCode := normalNode1631

theorem canonicalSound25040 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25040.moment H = canonicalOutput25040.moment H :=
  canonical_of_padded canonicalInput25040 canonicalOutput25040 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation396, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput25041 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-2, 2, 0, -1, 1], ![0, 0, 2, -1, -1], ![2, 0, -1, 1, -2]]⟩

def canonicalOutput25041 : ExponentCode := normalNode1487

theorem canonicalSound25041 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25041.moment H = canonicalOutput25041.moment H :=
  canonical_of_padded canonicalInput25041 canonicalOutput25041 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput25042 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 0, 1, 1, -1], ![-1, 1, 1, 0, -1], ![2, 1, -1, -2, 0]]⟩

def canonicalOutput25042 : ExponentCode := normalNode1590

theorem canonicalSound25042 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25042.moment H = canonicalOutput25042.moment H :=
  canonical_of_padded canonicalInput25042 canonicalOutput25042 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput25043 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 0, 1, 1, -1], ![0, 1, 1, 0, -2], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput25043 : ExponentCode := normalNode9500

theorem canonicalSound25043 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25043.moment H = canonicalOutput25043.moment H :=
  canonical_of_padded canonicalInput25043 canonicalOutput25043 (by decide) (by decide)
    ⟨false, true, canonicalPermutation107, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25044 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 0, 2, 0, -1], ![-1, 1, -1, 1, 0], ![2, 1, 0, -2, -1]]⟩

def canonicalOutput25044 : ExponentCode := normalNode1572

theorem canonicalSound25044 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25044.moment H = canonicalOutput25044.moment H :=
  canonical_of_padded canonicalInput25044 canonicalOutput25044 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput25045 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 0, 2, 0, -1], ![-1, 2, 0, -2, 1], ![2, 0, -1, 1, -2]]⟩

def canonicalOutput25045 : ExponentCode := normalNode1491

theorem canonicalSound25045 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25045.moment H = canonicalOutput25045.moment H :=
  canonical_of_padded canonicalInput25045 canonicalOutput25045 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput25046 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 0, 2, 0, -1], ![0, 1, -1, -2, 2], ![1, 1, 0, 1, -3]]⟩

def canonicalOutput25046 : ExponentCode := normalNode7492

theorem canonicalSound25046 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25046.moment H = canonicalOutput25046.moment H :=
  canonical_of_padded canonicalInput25046 canonicalOutput25046 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput25047 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 0, 2, 0, -1], ![0, 1, -1, 1, -1], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput25047 : ExponentCode := normalNode8196

theorem canonicalSound25047 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25047.moment H = canonicalOutput25047.moment H :=
  canonical_of_padded canonicalInput25047 canonicalOutput25047 (by decide) (by decide)
    ⟨false, false, canonicalPermutation280, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput25048 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 0, 2, 0, -1], ![0, 1, 0, -2, 1], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput25048 : ExponentCode := normalNode7557

theorem canonicalSound25048 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25048.moment H = canonicalOutput25048.moment H :=
  canonical_of_padded canonicalInput25048 canonicalOutput25048 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput25049 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 0, 2, 0, -1], ![0, 2, 0, -2, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput25049 : ExponentCode := normalNode8290

theorem canonicalSound25049 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25049.moment H = canonicalOutput25049.moment H :=
  canonical_of_padded canonicalInput25049 canonicalOutput25049 (by decide) (by decide)
    ⟨false, false, canonicalPermutation280, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput25050 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 0, 2, 0, -1], ![1, 1, -1, -2, 1], ![0, 1, 0, 1, -2]]⟩

def canonicalOutput25050 : ExponentCode := normalNode9502

theorem canonicalSound25050 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25050.moment H = canonicalOutput25050.moment H :=
  canonical_of_padded canonicalInput25050 canonicalOutput25050 (by decide) (by decide)
    ⟨false, true, canonicalPermutation67, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25051 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 0, 2, 0, -1], ![1, 1, 0, -2, 0], ![0, 1, -1, 1, -1]]⟩

def canonicalOutput25051 : ExponentCode := normalNode8196

theorem canonicalSound25051 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25051.moment H = canonicalOutput25051.moment H :=
  canonical_of_padded canonicalInput25051 canonicalOutput25051 (by decide) (by decide)
    ⟨false, false, canonicalPermutation279, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput25052 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 1, -1, 1, 0], ![1, 0, 0, -2, 1], ![0, 1, 2, 0, -3]]⟩

def canonicalOutput25052 : ExponentCode := normalNode9484

theorem canonicalSound25052 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25052.moment H = canonicalOutput25052.moment H :=
  canonical_of_padded canonicalInput25052 canonicalOutput25052 (by decide) (by decide)
    ⟨false, false, canonicalPermutation281, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25053 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 1, -1, 1, 0], ![1, 0, 0, 0, -1], ![0, 1, 2, -2, -1]]⟩

def canonicalOutput25053 : ExponentCode := normalNode8516

theorem canonicalSound25053 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25053.moment H = canonicalOutput25053.moment H :=
  canonical_of_padded canonicalInput25053 canonicalOutput25053 (by decide) (by decide)
    ⟨false, false, canonicalPermutation281, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput25054 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 1, -1, 1, 0], ![2, 0, 0, -2, 0], ![-1, 1, 2, 0, -2]]⟩

def canonicalOutput25054 : ExponentCode := normalNode1552

theorem canonicalSound25054 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25054.moment H = canonicalOutput25054.moment H :=
  canonical_of_padded canonicalInput25054 canonicalOutput25054 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation387, OAI.MUB6.Certificate.PairSemantics.permutation198⟩ (by decide +kernel) hH

def canonicalInput25055 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 1, -1, 1, 0], ![2, 0, 0, 0, -2], ![-1, 1, 2, -2, 0]]⟩

def canonicalOutput25055 : ExponentCode := normalNode1591

theorem canonicalSound25055 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25055.moment H = canonicalOutput25055.moment H :=
  canonical_of_padded canonicalInput25055 canonicalOutput25055 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation313, OAI.MUB6.Certificate.PairSemantics.permutation185⟩ (by decide +kernel) hH

def canonicalInput25056 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 1, 0, -2, 2], ![-1, 0, 2, 1, -2], ![2, 1, -1, 0, -2]]⟩

def canonicalOutput25056 : ExponentCode := normalNode1583

theorem canonicalSound25056 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25056.moment H = canonicalOutput25056.moment H :=
  canonical_of_padded canonicalInput25056 canonicalOutput25056 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25057 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 1, 0, -2, 2], ![-1, 1, 2, 0, -2], ![2, 0, -1, 1, -2]]⟩

def canonicalOutput25057 : ExponentCode := normalNode1490

theorem canonicalSound25057 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25057.moment H = canonicalOutput25057.moment H :=
  canonical_of_padded canonicalInput25057 canonicalOutput25057 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput25058 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 1, 0, 1, -1], ![2, 0, -1, -1, 0], ![-1, 1, 2, -1, -1]]⟩

def canonicalOutput25058 : ExponentCode := normalNode2174

theorem canonicalSound25058 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25058.moment H = canonicalOutput25058.moment H :=
  canonical_of_padded canonicalInput25058 canonicalOutput25058 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation373, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput25059 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 1, 0, 1, -1], ![2, 0, -1, 0, -1], ![-1, 1, 2, -2, 0]]⟩

def canonicalOutput25059 : ExponentCode := normalNode1555

theorem canonicalSound25059 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25059.moment H = canonicalOutput25059.moment H :=
  canonical_of_padded canonicalInput25059 canonicalOutput25059 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation373, canonicalPermutation79⟩ (by decide +kernel) hH

def canonicalInput25060 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 1, 1, -2, 1], ![2, 0, -1, 0, -1], ![-1, 1, 1, 1, -2]]⟩

def canonicalOutput25060 : ExponentCode := normalNode2204

theorem canonicalSound25060 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25060.moment H = canonicalOutput25060.moment H :=
  canonical_of_padded canonicalInput25060 canonicalOutput25060 (by decide) (by decide)
    ⟨false, false, canonicalPermutation151, canonicalPermutation34⟩ (by decide +kernel) hH

def canonicalInput25061 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 2, 0, -2, 1], ![2, 0, -1, 0, -1], ![-1, 0, 2, 1, -2]]⟩

def canonicalOutput25061 : ExponentCode := normalNode1596

theorem canonicalSound25061 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25061.moment H = canonicalOutput25061.moment H :=
  canonical_of_padded canonicalInput25061 canonicalOutput25061 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput25062 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 2, 0, -1, 0], ![-1, 0, 2, -1, 0], ![2, 0, -1, 1, -2]]⟩

def canonicalOutput25062 : ExponentCode := normalNode1492

theorem canonicalSound25062 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25062.moment H = canonicalOutput25062.moment H :=
  canonical_of_padded canonicalInput25062 canonicalOutput25062 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput25063 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 2, 0, -1, 0], ![0, 0, 2, -1, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput25063 : ExponentCode := normalNode8114

theorem canonicalSound25063 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25063.moment H = canonicalOutput25063.moment H :=
  canonical_of_padded canonicalInput25063 canonicalOutput25063 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput25064 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, -1, 1, -1], ![1, 0, 0, 0, -1], ![-1, 1, 2, -2, 0]]⟩

def canonicalOutput25064 : ExponentCode := normalNode6587

theorem canonicalSound25064 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25064.moment H = canonicalOutput25064.moment H :=
  canonical_of_padded canonicalInput25064 canonicalOutput25064 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput25065 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, -1, 1, -1], ![2, 0, 0, 0, -2], ![-2, 1, 2, -2, 1]]⟩

def canonicalOutput25065 : ExponentCode := normalNode484

theorem canonicalSound25065 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25065.moment H = canonicalOutput25065.moment H :=
  canonical_of_padded canonicalInput25065 canonicalOutput25065 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput25066 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, 0, -2, 1], ![-2, 0, 2, 1, -1], ![2, 1, -1, 0, -2]]⟩

def canonicalOutput25066 : ExponentCode := normalNode1564

theorem canonicalSound25066 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25066.moment H = canonicalOutput25066.moment H :=
  canonical_of_padded canonicalInput25066 canonicalOutput25066 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25067 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, 0, -2, 1], ![-2, 1, 2, 0, -1], ![2, 0, -1, 1, -2]]⟩

def canonicalOutput25067 : ExponentCode := normalNode1489

theorem canonicalSound25067 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25067.moment H = canonicalOutput25067.moment H :=
  canonical_of_padded canonicalInput25067 canonicalOutput25067 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput25068 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, 0, -2, 1], ![-1, 0, 2, 1, -2], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput25068 : ExponentCode := normalNode8568

theorem canonicalSound25068 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25068.moment H = canonicalOutput25068.moment H :=
  canonical_of_padded canonicalInput25068 canonicalOutput25068 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25069 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, 0, -2, 1], ![-1, 1, 2, 0, -2], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput25069 : ExponentCode := normalNode8519

theorem canonicalSound25069 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25069.moment H = canonicalOutput25069.moment H :=
  canonical_of_padded canonicalInput25069 canonicalOutput25069 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput25070 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, 0, 1, -2], ![1, 0, -1, -1, 1], ![-1, 1, 2, -1, -1]]⟩

def canonicalOutput25070 : ExponentCode := normalNode9508

theorem canonicalSound25070 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25070.moment H = canonicalOutput25070.moment H :=
  canonical_of_padded canonicalInput25070 canonicalOutput25070 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput25071 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, 0, 1, -2], ![1, 0, -1, 0, 0], ![-1, 1, 2, -2, 0]]⟩

def canonicalOutput25071 : ExponentCode := normalNode6586

theorem canonicalSound25071 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25071.moment H = canonicalOutput25071.moment H :=
  canonical_of_padded canonicalInput25071 canonicalOutput25071 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput25072 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, 0, 1, -2], ![2, 0, -1, -1, 0], ![-2, 1, 2, -1, 0]]⟩

def canonicalOutput25072 : ExponentCode := normalNode1560

theorem canonicalSound25072 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25072.moment H = canonicalOutput25072.moment H :=
  canonical_of_padded canonicalInput25072 canonicalOutput25072 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation373, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput25073 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, 0, 1, -2], ![2, 0, -1, 0, -1], ![-2, 1, 2, -2, 1]]⟩

def canonicalOutput25073 : ExponentCode := normalNode485

theorem canonicalSound25073 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25073.moment H = canonicalOutput25073.moment H :=
  canonical_of_padded canonicalInput25073 canonicalOutput25073 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput25074 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, 1, -2, 0], ![1, 0, -1, 0, 0], ![-1, 1, 1, 1, -2]]⟩

def canonicalOutput25074 : ExponentCode := normalNode6821

theorem canonicalSound25074 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25074.moment H = canonicalOutput25074.moment H :=
  canonical_of_padded canonicalInput25074 canonicalOutput25074 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation383, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput25075 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, 1, -2, 0], ![2, 0, -1, 0, -1], ![-2, 1, 1, 1, -1]]⟩

def canonicalOutput25075 : ExponentCode := normalNode2197

theorem canonicalSound25075 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25075.moment H = canonicalOutput25075.moment H :=
  canonical_of_padded canonicalInput25075 canonicalOutput25075 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation383, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput25076 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 2, 0, -2, 0], ![1, 0, -1, 0, 0], ![-1, 0, 2, 1, -2]]⟩

def canonicalOutput25076 : ExponentCode := normalNode6573

theorem canonicalSound25076 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25076.moment H = canonicalOutput25076.moment H :=
  canonical_of_padded canonicalInput25076 canonicalOutput25076 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation363, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput25077 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 2, 0, -2, 0], ![2, 0, -1, 0, -1], ![-2, 0, 2, 1, -1]]⟩

def canonicalOutput25077 : ExponentCode := normalNode1589

theorem canonicalSound25077 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25077.moment H = canonicalOutput25077.moment H :=
  canonical_of_padded canonicalInput25077 canonicalOutput25077 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation363, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput25078 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![1, 0, -1, 0, 0], ![-1, 1, 1, -2, 1], ![0, 1, 1, 1, -3]]⟩

def canonicalOutput25078 : ExponentCode := normalNode6830

theorem canonicalSound25078 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25078.moment H = canonicalOutput25078.moment H :=
  canonical_of_padded canonicalInput25078 canonicalOutput25078 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput25079 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![2, 0, -1, 0, -1], ![-2, 1, 1, -2, 2], ![0, 1, 1, 1, -3]]⟩

def canonicalOutput25079 : ExponentCode := normalNode479

theorem canonicalSound25079 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25079.moment H = canonicalOutput25079.moment H :=
  canonical_of_padded canonicalInput25079 canonicalOutput25079 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput25080 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![2, 0, -1, 0, -1], ![-1, 1, 1, -2, 1], ![-1, 1, 1, 1, -2]]⟩

def canonicalOutput25080 : ExponentCode := normalNode2204

theorem canonicalSound25080 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25080.moment H = canonicalOutput25080.moment H :=
  canonical_of_padded canonicalInput25080 canonicalOutput25080 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation261, canonicalPermutation34⟩ (by decide +kernel) hH

def canonicalInput25081 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![1, 0, -1, 0, 0], ![-2, 0, -1, 2, 1], ![0, 1, 1, 0, -2], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput25081 : ExponentCode := normalNode1633

theorem canonicalSound25081 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25081.moment H = canonicalOutput25081.moment H :=
  canonical_of_padded canonicalInput25081 canonicalOutput25081 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25082 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![1, 0, -1, 0, 0], ![-2, 1, 0, -1, 2], ![0, 1, -1, 2, -2], ![1, 0, 2, -1, -2]]⟩

def canonicalOutput25082 : ExponentCode := normalNode1583

theorem canonicalSound25082 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25082.moment H = canonicalOutput25082.moment H :=
  canonical_of_padded canonicalInput25082 canonicalOutput25082 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation283, canonicalPermutation72⟩ (by decide +kernel) hH

def canonicalInput25083 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![1, 0, -1, 0, 0], ![-1, 0, -1, 2, 0], ![-1, 1, 1, 0, -1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput25083 : ExponentCode := normalNode2172

theorem canonicalSound25083 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25083.moment H = canonicalOutput25083.moment H :=
  canonical_of_padded canonicalInput25083 canonicalOutput25083 (by decide) (by decide)
    ⟨false, false, canonicalPermutation107, canonicalPermutation58⟩ (by decide +kernel) hH

def canonicalInput25084 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![1, 0, -1, 0, 0], ![-1, 0, -1, 2, 0], ![0, 1, 1, 0, -2], ![0, 1, 1, -2, 0]]⟩

def canonicalOutput25084 : ExponentCode := normalNode8343

theorem canonicalSound25084 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25084.moment H = canonicalOutput25084.moment H :=
  canonical_of_padded canonicalInput25084 canonicalOutput25084 (by decide) (by decide)
    ⟨false, false, canonicalPermutation151, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput25085 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![1, 0, -1, 0, 0], ![-1, 1, 0, -1, 1], ![-1, 1, -1, 2, -1], ![1, 0, 2, -1, -2]]⟩

def canonicalOutput25085 : ExponentCode := normalNode1593

theorem canonicalSound25085 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25085.moment H = canonicalOutput25085.moment H :=
  canonical_of_padded canonicalInput25085 canonicalOutput25085 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput25086 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![1, 0, -1, 0, 0], ![-1, 1, 0, -1, 1], ![0, 1, -1, 2, -2], ![0, 0, 2, -1, -1]]⟩

def canonicalOutput25086 : ExponentCode := normalNode8572

theorem canonicalSound25086 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25086.moment H = canonicalOutput25086.moment H :=
  canonical_of_padded canonicalInput25086 canonicalOutput25086 (by decide) (by decide)
    ⟨false, false, canonicalPermutation115, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput25087 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![1, 0, 0, 0, -1], ![-1, 2, 0, 0, -1], ![0, 0, -2, 3, -1], ![0, 0, 2, -3, 1]]⟩

def canonicalOutput25087 : ExponentCode := normalNode10443

theorem canonicalSound25087 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25087.moment H = canonicalOutput25087.moment H :=
  canonical_of_padded canonicalInput25087 canonicalOutput25087 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation236, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

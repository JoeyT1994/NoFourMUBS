import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput25280 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![0, -1, 2, -1, 0], ![1, 0, 0, -1, 0], ![-1, 1, 0, 2, -2]]⟩

def canonicalOutput25280 : ExponentCode := normalNode6561

theorem canonicalSound25280 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25280.moment H = canonicalOutput25280.moment H :=
  canonical_of_padded canonicalInput25280 canonicalOutput25280 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation364, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput25281 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![0, -1, 2, -1, 0], ![2, 0, 0, -1, -1], ![-2, 1, 0, 2, -1]]⟩

def canonicalOutput25281 : ExponentCode := normalNode1511

theorem canonicalSound25281 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25281.moment H = canonicalOutput25281.moment H :=
  canonical_of_padded canonicalInput25281 canonicalOutput25281 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput25282 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![0, 0, 2, -2, 0], ![1, -1, 0, 0, 0], ![-1, 1, 0, 2, -2]]⟩

def canonicalOutput25282 : ExponentCode := normalNode6563

theorem canonicalSound25282 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25282.moment H = canonicalOutput25282.moment H :=
  canonical_of_padded canonicalInput25282 canonicalOutput25282 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation364, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput25283 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![0, 0, 2, -2, 0], ![2, -1, 0, 0, -1], ![-2, 1, 0, 2, -1]]⟩

def canonicalOutput25283 : ExponentCode := normalNode1509

theorem canonicalSound25283 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25283.moment H = canonicalOutput25283.moment H :=
  canonical_of_padded canonicalInput25283 canonicalOutput25283 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput25284 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 0, -1, 1, 1], ![-1, -1, 1, 0, 1], ![0, 1, 1, -2, 0], ![2, 1, 0, 0, -3]]⟩

def canonicalOutput25284 : ExponentCode := normalNode1452

theorem canonicalSound25284 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25284.moment H = canonicalOutput25284.moment H :=
  canonical_of_padded canonicalInput25284 canonicalOutput25284 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25285 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 0, -1, 1, 1], ![-1, 2, 0, 0, -1], ![0, 0, 2, -2, 0], ![2, -1, 0, 0, -1]]⟩

def canonicalOutput25285 : ExponentCode := normalNode3661

theorem canonicalSound25285 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25285.moment H = canonicalOutput25285.moment H :=
  canonical_of_padded canonicalInput25285 canonicalOutput25285 (by decide) (by decide)
    ⟨false, true, canonicalPermutation83, canonicalPermutation18⟩ (by decide +kernel) hH

def canonicalInput25286 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 0, -1, 1, 1], ![0, 0, 1, -2, 1], ![2, -1, 0, 0, -1], ![-1, 2, 1, 0, -2]]⟩

def canonicalOutput25286 : ExponentCode := normalNode1570

theorem canonicalSound25286 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25286.moment H = canonicalOutput25286.moment H :=
  canonical_of_padded canonicalInput25286 canonicalOutput25286 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation380, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput25287 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 0, 0, 1, 0], ![-1, 0, 2, -1, 0], ![0, 2, -1, -1, 0], ![2, -1, 0, 0, -1]]⟩

def canonicalOutput25287 : ExponentCode := normalNode8349

theorem canonicalSound25287 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25287.moment H = canonicalOutput25287.moment H :=
  canonical_of_padded canonicalInput25287 canonicalOutput25287 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation340, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput25288 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 0, 0, 1, 0], ![-1, 2, 0, 0, -1], ![0, 0, 2, -2, 0], ![2, -1, -1, 0, 0]]⟩

def canonicalOutput25288 : ExponentCode := normalNode8148

theorem canonicalSound25288 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25288.moment H = canonicalOutput25288.moment H :=
  canonical_of_padded canonicalInput25288 canonicalOutput25288 (by decide) (by decide)
    ⟨false, false, canonicalPermutation302, canonicalPermutation14⟩ (by decide +kernel) hH

def canonicalInput25289 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 0, 0, 1, 0], ![-1, 2, 0, 0, -1], ![1, -1, -1, -1, 2], ![1, 0, 2, -1, -2]]⟩

def canonicalOutput25289 : ExponentCode := normalNode1598

theorem canonicalSound25289 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25289.moment H = canonicalOutput25289.moment H :=
  canonical_of_padded canonicalInput25289 canonicalOutput25289 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation323, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput25290 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 0, 0, 1, 0], ![0, 0, -1, -1, 2], ![-1, 2, 1, 0, -2], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput25290 : ExponentCode := normalNode1582

theorem canonicalSound25290 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25290.moment H = canonicalOutput25290.moment H :=
  canonical_of_padded canonicalInput25290 canonicalOutput25290 (by decide) (by decide)
    ⟨false, true, canonicalPermutation117, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput25291 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 0, 0, 1, 0], ![0, 0, -1, -1, 2], ![2, -1, 0, 0, -1], ![-1, 2, 2, -1, -2]]⟩

def canonicalOutput25291 : ExponentCode := normalNode483

theorem canonicalSound25291 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25291.moment H = canonicalOutput25291.moment H :=
  canonical_of_padded canonicalInput25291 canonicalOutput25291 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation360, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput25292 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 0, 0, 1, 0], ![0, 0, 2, -1, -1], ![2, -1, 0, 0, -1], ![-1, 2, -1, -1, 1]]⟩

def canonicalOutput25292 : ExponentCode := normalNode2207

theorem canonicalSound25292 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25292.moment H = canonicalOutput25292.moment H :=
  canonical_of_padded canonicalInput25292 canonicalOutput25292 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation359, canonicalPermutation24⟩ (by decide +kernel) hH

def canonicalInput25293 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 1, -1, 0, 1], ![-1, -1, 0, 1, 1], ![0, 0, 2, -2, 0], ![2, 1, 0, 0, -3]]⟩

def canonicalOutput25293 : ExponentCode := normalNode1472

theorem canonicalSound25293 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25293.moment H = canonicalOutput25293.moment H :=
  canonical_of_padded canonicalInput25293 canonicalOutput25293 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25294 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 1, -1, 0, 1], ![-1, -1, 0, 1, 1], ![0, 1, 1, -2, 0], ![2, 0, 1, 0, -3]]⟩

def canonicalOutput25294 : ExponentCode := normalNode1458

theorem canonicalSound25294 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25294.moment H = canonicalOutput25294.moment H :=
  canonical_of_padded canonicalInput25294 canonicalOutput25294 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation396, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25295 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 1, -1, 0, 1], ![-1, 0, 1, 1, -1], ![0, 1, 1, -2, 0], ![2, -1, 0, 0, -1]]⟩

def canonicalOutput25295 : ExponentCode := normalNode3692

theorem canonicalSound25295 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25295.moment H = canonicalOutput25295.moment H :=
  canonical_of_padded canonicalInput25295 canonicalOutput25295 (by decide) (by decide)
    ⟨false, false, canonicalPermutation191, OAI.MUB6.Certificate.PairSemantics.permutation186⟩ (by decide +kernel) hH

def canonicalInput25296 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, -1, 0, 0, 1], ![-1, 1, -1, 1, 0], ![0, 0, 2, -3, 1], ![1, 1, 0, 1, -3]]⟩

def canonicalOutput25296 : ExponentCode := normalNode8029

theorem canonicalSound25296 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25296.moment H = canonicalOutput25296.moment H :=
  canonical_of_padded canonicalInput25296 canonicalOutput25296 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25297 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, -1, 0, 0, 1], ![-1, 1, -1, 1, 0], ![0, 0, 2, 1, -3], ![1, 1, 0, -3, 1]]⟩

def canonicalOutput25297 : ExponentCode := normalNode8032

theorem canonicalSound25297 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25297.moment H = canonicalOutput25297.moment H :=
  canonical_of_padded canonicalInput25297 canonicalOutput25297 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25298 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, -1, 1, 0], ![-2, -1, 1, 0, 2], ![0, 1, 1, -2, 0], ![2, 1, 0, 0, -3]]⟩

def canonicalOutput25298 : ExponentCode := normalNode1447

theorem canonicalSound25298 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25298.moment H = canonicalOutput25298.moment H :=
  canonical_of_padded canonicalInput25298 canonicalOutput25298 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation400, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25299 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, -1, 1, 0], ![-2, 2, 0, 0, 0], ![0, 0, 2, -2, 0], ![2, -1, 0, 0, -1]]⟩

def canonicalOutput25299 : ExponentCode := normalNode8283

theorem canonicalSound25299 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25299.moment H = canonicalOutput25299.moment H :=
  canonical_of_padded canonicalInput25299 canonicalOutput25299 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation401, canonicalPermutation13⟩ (by decide +kernel) hH

def canonicalInput25300 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, -1, 1, 0], ![-1, -1, 1, 0, 1], ![-1, 1, 1, -2, 1], ![2, 1, 0, 0, -3]]⟩

def canonicalOutput25300 : ExponentCode := normalNode1480

theorem canonicalSound25300 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25300.moment H = canonicalOutput25300.moment H :=
  canonical_of_padded canonicalInput25300 canonicalOutput25300 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation338, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25301 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, -1, 1, 0], ![-1, -1, 1, 0, 1], ![0, 1, 1, -2, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput25301 : ExponentCode := normalNode8107

theorem canonicalSound25301 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25301.moment H = canonicalOutput25301.moment H :=
  canonical_of_padded canonicalInput25301 canonicalOutput25301 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation400, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25302 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, -1, 1, 0], ![-1, 0, 1, -2, 2], ![2, -1, 0, 0, -1], ![-1, 2, 1, 0, -2]]⟩

def canonicalOutput25302 : ExponentCode := normalNode1575

theorem canonicalSound25302 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25302.moment H = canonicalOutput25302.moment H :=
  canonical_of_padded canonicalInput25302 canonicalOutput25302 (by decide) (by decide)
    ⟨false, false, canonicalPermutation171, canonicalPermutation34⟩ (by decide +kernel) hH

def canonicalInput25303 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, -1, 1, 0], ![-1, 2, 0, 0, -1], ![-1, 0, 2, -2, 1], ![2, -1, 0, 0, -1]]⟩

def canonicalOutput25303 : ExponentCode := normalNode1539

theorem canonicalSound25303 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25303.moment H = canonicalOutput25303.moment H :=
  canonical_of_padded canonicalInput25303 canonicalOutput25303 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation274, canonicalPermutation77⟩ (by decide +kernel) hH

def canonicalInput25304 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, -1, 1, 0], ![-1, 2, 0, 0, -1], ![0, 0, 2, -2, 0], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput25304 : ExponentCode := normalNode8282

theorem canonicalSound25304 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25304.moment H = canonicalOutput25304.moment H :=
  canonical_of_padded canonicalInput25304 canonicalOutput25304 (by decide) (by decide)
    ⟨false, false, canonicalPermutation167, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput25305 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, -1, 1, 0], ![0, 0, 1, -2, 1], ![1, -1, 0, 0, 0], ![-1, 2, 1, 0, -2]]⟩

def canonicalOutput25305 : ExponentCode := normalNode6586

theorem canonicalSound25305 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25305.moment H = canonicalOutput25305.moment H :=
  canonical_of_padded canonicalInput25305 canonicalOutput25305 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation339, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput25306 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, -1, 1, 0], ![0, 0, 1, -2, 1], ![2, -1, 0, 0, -1], ![-2, 2, 1, 0, -1]]⟩

def canonicalOutput25306 : ExponentCode := normalNode1560

theorem canonicalSound25306 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25306.moment H = canonicalOutput25306.moment H :=
  canonical_of_padded canonicalInput25306 canonicalOutput25306 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation379, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput25307 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 0, 1, -1], ![-2, 0, 2, -1, 1], ![0, 2, -1, -1, 0], ![2, -1, 0, 0, -1]]⟩

def canonicalOutput25307 : ExponentCode := normalNode1541

theorem canonicalSound25307 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25307.moment H = canonicalOutput25307.moment H :=
  canonical_of_padded canonicalInput25307 canonicalOutput25307 (by decide) (by decide)
    ⟨false, true, canonicalPermutation303, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput25308 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 0, 1, -1], ![-2, 2, 0, 0, 0], ![0, 0, 2, -2, 0], ![2, -1, -1, 0, 0]]⟩

def canonicalOutput25308 : ExponentCode := normalNode10436

theorem canonicalSound25308 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25308.moment H = canonicalOutput25308.moment H :=
  canonical_of_padded canonicalInput25308 canonicalOutput25308 (by decide) (by decide)
    ⟨false, true, canonicalPermutation21, canonicalPermutation21⟩ (by decide +kernel) hH

def canonicalInput25309 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 0, 1, -1], ![-2, 2, 0, 0, 0], ![1, -1, -1, -1, 2], ![1, 0, 2, -1, -2]]⟩

def canonicalOutput25309 : ExponentCode := normalNode1586

theorem canonicalSound25309 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25309.moment H = canonicalOutput25309.moment H :=
  canonical_of_padded canonicalInput25309 canonicalOutput25309 (by decide) (by decide)
    ⟨false, true, canonicalPermutation292, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput25310 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 0, 1, -1], ![-1, 0, -1, -1, 3], ![-1, 2, 1, 0, -2], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput25310 : ExponentCode := normalNode1579

theorem canonicalSound25310 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25310.moment H = canonicalOutput25310.moment H :=
  canonical_of_padded canonicalInput25310 canonicalOutput25310 (by decide) (by decide)
    ⟨false, true, canonicalPermutation117, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput25311 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 0, 1, -1], ![-1, 0, -1, -1, 3], ![2, -1, 0, 0, -1], ![-1, 2, 2, -1, -2]]⟩

def canonicalOutput25311 : ExponentCode := normalNode481

theorem canonicalSound25311 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25311.moment H = canonicalOutput25311.moment H :=
  canonical_of_padded canonicalInput25311 canonicalOutput25311 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation360, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput25312 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 0, 1, -1], ![-1, 0, 2, -1, 0], ![-1, 2, -1, -1, 1], ![2, -1, 0, 0, -1]]⟩

def canonicalOutput25312 : ExponentCode := normalNode2196

theorem canonicalSound25312 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25312.moment H = canonicalOutput25312.moment H :=
  canonical_of_padded canonicalInput25312 canonicalOutput25312 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation290, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput25313 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 0, 1, -1], ![-1, 0, 2, -1, 0], ![0, 2, -1, -1, 0], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput25313 : ExponentCode := normalNode10090

theorem canonicalSound25313 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25313.moment H = canonicalOutput25313.moment H :=
  canonical_of_padded canonicalInput25313 canonicalOutput25313 (by decide) (by decide)
    ⟨false, false, canonicalPermutation304, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput25314 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 0, 1, -1], ![-1, 0, 2, -1, 0], ![2, -1, 0, 0, -1], ![-1, 2, -1, -1, 1]]⟩

def canonicalOutput25314 : ExponentCode := normalNode2196

theorem canonicalSound25314 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25314.moment H = canonicalOutput25314.moment H :=
  canonical_of_padded canonicalInput25314 canonicalOutput25314 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation379, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput25315 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 0, 1, -1], ![-1, 2, 0, 0, -1], ![-1, 0, 2, -2, 1], ![2, -1, -1, 0, 0]]⟩

def canonicalOutput25315 : ExponentCode := normalNode1538

theorem canonicalSound25315 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25315.moment H = canonicalOutput25315.moment H :=
  canonical_of_padded canonicalInput25315 canonicalOutput25315 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation272, canonicalPermutation77⟩ (by decide +kernel) hH

def canonicalInput25316 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 0, 1, -1], ![-1, 2, 0, 0, -1], ![0, -1, -1, -1, 3], ![1, 0, 2, -1, -2]]⟩

def canonicalOutput25316 : ExponentCode := normalNode6570

theorem canonicalSound25316 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25316.moment H = canonicalOutput25316.moment H :=
  canonical_of_padded canonicalInput25316 canonicalOutput25316 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25317 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 0, 1, -1], ![-1, 2, 0, 0, -1], ![0, 0, 2, -2, 0], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput25317 : ExponentCode := normalNode8147

theorem canonicalSound25317 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25317.moment H = canonicalOutput25317.moment H :=
  canonical_of_padded canonicalInput25317 canonicalOutput25317 (by decide) (by decide)
    ⟨false, false, canonicalPermutation305, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput25318 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 0, 1, -1], ![-1, 2, 0, 0, -1], ![1, -1, -1, -1, 2], ![0, 0, 2, -1, -1]]⟩

def canonicalOutput25318 : ExponentCode := normalNode10765

theorem canonicalSound25318 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25318.moment H = canonicalOutput25318.moment H :=
  canonical_of_padded canonicalInput25318 canonicalOutput25318 (by decide) (by decide)
    ⟨false, false, canonicalPermutation200, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput25319 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 0, 1, -1], ![0, 0, -1, -1, 2], ![-2, 2, 1, 0, -1], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput25319 : ExponentCode := normalNode1634

theorem canonicalSound25319 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25319.moment H = canonicalOutput25319.moment H :=
  canonical_of_padded canonicalInput25319 canonicalOutput25319 (by decide) (by decide)
    ⟨false, true, canonicalPermutation117, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput25320 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 0, 1, -1], ![0, 0, -1, -1, 2], ![-1, 2, 1, 0, -2], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput25320 : ExponentCode := normalNode9496

theorem canonicalSound25320 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25320.moment H = canonicalOutput25320.moment H :=
  canonical_of_padded canonicalInput25320 canonicalOutput25320 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput25321 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 0, 1, -1], ![0, 0, -1, -1, 2], ![1, -1, 0, 0, 0], ![-1, 2, 2, -1, -2]]⟩

def canonicalOutput25321 : ExponentCode := normalNode9572

theorem canonicalSound25321 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25321.moment H = canonicalOutput25321.moment H :=
  canonical_of_padded canonicalInput25321 canonicalOutput25321 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput25322 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 0, 1, -1], ![0, 0, -1, -1, 2], ![2, -1, 0, 0, -1], ![-2, 2, 2, -1, -1]]⟩

def canonicalOutput25322 : ExponentCode := normalNode489

theorem canonicalSound25322 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25322.moment H = canonicalOutput25322.moment H :=
  canonical_of_padded canonicalInput25322 canonicalOutput25322 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation360, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput25323 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 0, 1, -1], ![0, 0, 2, -1, -1], ![1, -1, 0, 0, 0], ![-1, 2, -1, -1, 1]]⟩

def canonicalOutput25323 : ExponentCode := normalNode7559

theorem canonicalSound25323 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25323.moment H = canonicalOutput25323.moment H :=
  canonical_of_padded canonicalInput25323 canonicalOutput25323 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation331, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput25324 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 0, 1, -1], ![0, 0, 2, -1, -1], ![2, -1, 0, 0, -1], ![-2, 2, -1, -1, 2]]⟩

def canonicalOutput25324 : ExponentCode := normalNode1154

theorem canonicalSound25324 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25324.moment H = canonicalOutput25324.moment H :=
  canonical_of_padded canonicalInput25324 canonicalOutput25324 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation331, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput25325 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, -1, 0, 0], ![-2, -1, 0, 1, 2], ![0, 0, 2, -2, 0], ![2, 1, 0, 0, -3]]⟩

def canonicalOutput25325 : ExponentCode := normalNode1468

theorem canonicalSound25325 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25325.moment H = canonicalOutput25325.moment H :=
  canonical_of_padded canonicalInput25325 canonicalOutput25325 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation361, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25326 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, -1, 0, 0], ![-2, -1, 0, 1, 2], ![0, 1, 1, -2, 0], ![2, 0, 1, 0, -3]]⟩

def canonicalOutput25326 : ExponentCode := normalNode1454

theorem canonicalSound25326 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25326.moment H = canonicalOutput25326.moment H :=
  canonical_of_padded canonicalInput25326 canonicalOutput25326 (by decide) (by decide)
    ⟨false, true, canonicalPermutation82, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25327 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, -1, 0, 0], ![-2, 0, 1, 1, 0], ![0, 1, 1, -2, 0], ![2, -1, 0, 0, -1]]⟩

def canonicalOutput25327 : ExponentCode := normalNode8368

theorem canonicalSound25327 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25327.moment H = canonicalOutput25327.moment H :=
  canonical_of_padded canonicalInput25327 canonicalOutput25327 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation346, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput25328 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, -1, 0, 0], ![-1, -1, 0, 1, 1], ![-1, 0, 2, -2, 1], ![2, 1, 0, 0, -3]]⟩

def canonicalOutput25328 : ExponentCode := normalNode1470

theorem canonicalSound25328 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25328.moment H = canonicalOutput25328.moment H :=
  canonical_of_padded canonicalInput25328 canonicalOutput25328 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25329 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, -1, 0, 0], ![-1, -1, 0, 1, 1], ![-1, 1, 1, -2, 1], ![2, 0, 1, 0, -3]]⟩

def canonicalOutput25329 : ExponentCode := normalNode1482

theorem canonicalSound25329 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25329.moment H = canonicalOutput25329.moment H :=
  canonical_of_padded canonicalInput25329 canonicalOutput25329 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput25330 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, -1, 0, 0], ![-1, -1, 0, 1, 1], ![0, 0, 2, -2, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput25330 : ExponentCode := normalNode8147

theorem canonicalSound25330 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25330.moment H = canonicalOutput25330.moment H :=
  canonical_of_padded canonicalInput25330 canonicalOutput25330 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation361, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25331 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, -1, 0, 0], ![-1, -1, 0, 1, 1], ![0, 1, 1, -2, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput25331 : ExponentCode := normalNode8115

theorem canonicalSound25331 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25331.moment H = canonicalOutput25331.moment H :=
  canonical_of_padded canonicalInput25331 canonicalOutput25331 (by decide) (by decide)
    ⟨false, true, canonicalPermutation82, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25332 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, -1, 0, 0], ![-1, 0, 1, 1, -1], ![-1, 1, 1, -2, 1], ![2, -1, 0, 0, -1]]⟩

def canonicalOutput25332 : ExponentCode := normalNode2212

theorem canonicalSound25332 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25332.moment H = canonicalOutput25332.moment H :=
  canonical_of_padded canonicalInput25332 canonicalOutput25332 (by decide) (by decide)
    ⟨false, false, canonicalPermutation191, OAI.MUB6.Certificate.PairSemantics.permutation184⟩ (by decide +kernel) hH

def canonicalInput25333 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, -1, 0, 0], ![-1, 0, 1, 1, -1], ![0, 1, 1, -2, 0], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput25333 : ExponentCode := normalNode8736

theorem canonicalSound25333 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25333.moment H = canonicalOutput25333.moment H :=
  canonical_of_padded canonicalInput25333 canonicalOutput25333 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation246, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput25334 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![1, -1, 0, 0, 0], ![-2, 1, -1, 1, 1], ![0, 0, 2, -3, 1], ![1, 1, 0, 1, -3]]⟩

def canonicalOutput25334 : ExponentCode := normalNode2183

theorem canonicalSound25334 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25334.moment H = canonicalOutput25334.moment H :=
  canonical_of_padded canonicalInput25334 canonicalOutput25334 (by decide) (by decide)
    ⟨false, false, canonicalPermutation298, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput25335 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![1, -1, 0, 0, 0], ![-2, 1, -1, 1, 1], ![0, 0, 2, 1, -3], ![1, 1, 0, -3, 1]]⟩

def canonicalOutput25335 : ExponentCode := normalNode2182

theorem canonicalSound25335 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25335.moment H = canonicalOutput25335.moment H :=
  canonical_of_padded canonicalInput25335 canonicalOutput25335 (by decide) (by decide)
    ⟨false, false, canonicalPermutation298, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput25336 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![1, -1, 0, 0, 0], ![-1, 1, -1, 1, 0], ![-1, 0, 2, -3, 2], ![1, 1, 0, 1, -3]]⟩

def canonicalOutput25336 : ExponentCode := normalNode4136

theorem canonicalSound25336 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25336.moment H = canonicalOutput25336.moment H :=
  canonical_of_padded canonicalInput25336 canonicalOutput25336 (by decide) (by decide)
    ⟨false, true, canonicalPermutation111, canonicalPermutation73⟩ (by decide +kernel) hH

def canonicalInput25337 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![1, -1, 0, 0, 0], ![-1, 1, -1, 1, 0], ![-1, 0, 2, 1, -2], ![1, 1, 0, -3, 1]]⟩

def canonicalOutput25337 : ExponentCode := normalNode1616

theorem canonicalSound25337 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25337.moment H = canonicalOutput25337.moment H :=
  canonical_of_padded canonicalInput25337 canonicalOutput25337 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation290, OAI.MUB6.Certificate.PairSemantics.permutation197⟩ (by decide +kernel) hH

def canonicalInput25338 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![1, -1, 0, 0, 0], ![-1, 1, -1, 1, 0], ![0, 0, 2, -3, 1], ![0, 1, 0, 1, -2]]⟩

def canonicalOutput25338 : ExponentCode := normalNode8515

theorem canonicalSound25338 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25338.moment H = canonicalOutput25338.moment H :=
  canonical_of_padded canonicalInput25338 canonicalOutput25338 (by decide) (by decide)
    ⟨false, false, canonicalPermutation306, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput25339 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![1, -1, 0, 0, 0], ![-1, 1, -1, 1, 0], ![0, 0, 2, 1, -3], ![0, 1, 0, -3, 2]]⟩

def canonicalOutput25339 : ExponentCode := normalNode9204

theorem canonicalSound25339 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25339.moment H = canonicalOutput25339.moment H :=
  canonical_of_padded canonicalInput25339 canonicalOutput25339 (by decide) (by decide)
    ⟨false, false, canonicalPermutation205, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput25340 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 2, -1], ![0, 0, 2, -1, -1], ![0, 1, -1, -1, 1]]⟩

def canonicalOutput25340 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1126⟩

theorem canonicalSound25340 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25340.moment H = canonicalOutput25340.moment H :=
  canonical_of_padded canonicalInput25340 canonicalOutput25340 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput25341 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 0, 1], ![0, 0, 0, -2, 2], ![0, 0, 1, 1, -2], ![0, 1, -1, 1, -1]]⟩

def canonicalOutput25341 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1265⟩

theorem canonicalSound25341 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25341.moment H = canonicalOutput25341.moment H :=
  canonical_of_padded canonicalInput25341 canonicalOutput25341 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25342 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, 0, 1, -1], ![-1, 0, 1, 0, 0], ![-1, -1, 1, 1, 0], ![0, 2, 0, -2, 0], ![2, 0, -2, 0, 0]]⟩

def canonicalOutput25342 : ExponentCode := normalNode10442

theorem canonicalSound25342 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25342.moment H = canonicalOutput25342.moment H :=
  canonical_of_padded canonicalInput25342 canonicalOutput25342 (by decide) (by decide)
    ⟨false, false, canonicalPermutation99, canonicalPermutation80⟩ (by decide +kernel) hH

def canonicalInput25343 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, 0, 1, -1], ![-1, 0, 1, 0, 0], ![-1, 1, -1, 1, 0], ![1, -1, 1, -1, 0], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput25343 : ExponentCode := normalNode10448

theorem canonicalSound25343 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25343.moment H = canonicalOutput25343.moment H :=
  canonical_of_padded canonicalInput25343 canonicalOutput25343 (by decide) (by decide)
    ⟨false, false, canonicalPermutation307, canonicalPermutation65⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

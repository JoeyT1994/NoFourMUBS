import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput25344 : ExponentCode := ⟨5, 5, ![![0, -1, 0, 0, 1], ![0, 0, 0, 1, -1], ![-1, 0, 1, 0, 0], ![0, 1, -1, 0, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput25344 : ExponentCode := normalNode10454

theorem canonicalSound25344 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25344.moment H = canonicalOutput25344.moment H :=
  canonical_of_padded canonicalInput25344 canonicalOutput25344 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput25345 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, 0, 1, -1], ![-1, 1, -1, 0, 1], ![-1, 1, -1, 1, 0], ![0, 0, 2, -2, 0], ![2, -1, 0, 0, -1]]⟩

def canonicalOutput25345 : ExponentCode := normalNode3659

theorem canonicalSound25345 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25345.moment H = canonicalOutput25345.moment H :=
  canonical_of_padded canonicalInput25345 canonicalOutput25345 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation294, canonicalPermutation18⟩ (by decide +kernel) hH

def canonicalInput25346 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, 0, 1, -1], ![-1, 1, -1, 0, 1], ![-1, 1, 1, 0, -1], ![1, -1, -1, 1, 0], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput25346 : ExponentCode := normalNode3693

theorem canonicalSound25346 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25346.moment H = canonicalOutput25346.moment H :=
  canonical_of_padded canonicalInput25346 canonicalOutput25346 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation375, canonicalPermutation75⟩ (by decide +kernel) hH

def canonicalInput25347 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, 0, 1, -1], ![-1, 1, 0, 0, 0], ![-1, 0, 2, -1, 0], ![0, 1, -2, 1, 0], ![2, -1, 0, -1, 0]]⟩

def canonicalOutput25347 : ExponentCode := normalNode10438

theorem canonicalSound25347 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25347.moment H = canonicalOutput25347.moment H :=
  canonical_of_padded canonicalInput25347 canonicalOutput25347 (by decide) (by decide)
    ⟨false, false, canonicalPermutation308, OAI.MUB6.Certificate.PairSemantics.permutation200⟩ (by decide +kernel) hH

def canonicalInput25348 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, 0, 1, -1], ![0, -1, 0, 0, 1], ![-1, 2, 0, 0, -1], ![0, 0, 2, -2, 0], ![1, 0, -2, 1, 0]]⟩

def canonicalOutput25348 : ExponentCode := normalNode8153

theorem canonicalSound25348 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25348.moment H = canonicalOutput25348.moment H :=
  canonical_of_padded canonicalInput25348 canonicalOutput25348 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation332, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput25349 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, 0, 1, -1], ![0, 0, 1, 0, -1], ![-2, -1, 1, 1, 1], ![0, 2, 0, -2, 0], ![2, 0, -2, 0, 0]]⟩

def canonicalOutput25349 : ExponentCode := normalNode2184

theorem canonicalSound25349 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25349.moment H = canonicalOutput25349.moment H :=
  canonical_of_padded canonicalInput25349 canonicalOutput25349 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation243, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25350 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, 0, 1, -1], ![0, 0, 1, 0, -1], ![-2, 1, -1, 1, 1], ![1, -1, 1, -1, 0], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput25350 : ExponentCode := normalNode2211

theorem canonicalSound25350 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25350.moment H = canonicalOutput25350.moment H :=
  canonical_of_padded canonicalInput25350 canonicalOutput25350 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation242, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25351 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, 0, 1, -1], ![0, 0, 1, 0, -1], ![-1, -1, 1, 1, 0], ![-1, 2, 0, -2, 1], ![2, 0, -2, 0, 0]]⟩

def canonicalOutput25351 : ExponentCode := normalNode1588

theorem canonicalSound25351 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25351.moment H = canonicalOutput25351.moment H :=
  canonical_of_padded canonicalInput25351 canonicalOutput25351 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation269, OAI.MUB6.Certificate.PairSemantics.permutation184⟩ (by decide +kernel) hH

def canonicalInput25352 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, 0, 1, -1], ![0, 0, 1, 0, -1], ![-1, -1, 1, 1, 0], ![0, 2, 0, -2, 0], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput25352 : ExponentCode := normalNode8156

theorem canonicalSound25352 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25352.moment H = canonicalOutput25352.moment H :=
  canonical_of_padded canonicalInput25352 canonicalOutput25352 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation326, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput25353 : ExponentCode := ⟨5, 5, ![![0, -1, 0, 0, 1], ![0, 0, 0, 1, -1], ![0, 0, 1, 0, -1], ![-1, 1, -1, 0, 1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput25353 : ExponentCode := normalNode8743

theorem canonicalSound25353 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25353.moment H = canonicalOutput25353.moment H :=
  canonical_of_padded canonicalInput25353 canonicalOutput25353 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation182, canonicalPermutation42⟩ (by decide +kernel) hH

def canonicalInput25354 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, 0, 1, -1], ![0, 0, 1, 0, -1], ![-1, 1, -1, 1, 0], ![0, -1, 1, -1, 1], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput25354 : ExponentCode := normalNode8698

theorem canonicalSound25354 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25354.moment H = canonicalOutput25354.moment H :=
  canonical_of_padded canonicalInput25354 canonicalOutput25354 (by decide) (by decide)
    ⟨false, false, canonicalPermutation135, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput25355 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, 0, 1, -1], ![0, 0, 1, 0, -1], ![-1, 1, -1, 1, 0], ![1, -1, 1, -1, 0], ![0, 1, -1, -1, 1]]⟩

def canonicalOutput25355 : ExponentCode := normalNode8525

theorem canonicalSound25355 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25355.moment H = canonicalOutput25355.moment H :=
  canonical_of_padded canonicalInput25355 canonicalOutput25355 (by decide) (by decide)
    ⟨false, false, canonicalPermutation284, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput25356 : ExponentCode := ⟨5, 5, ![![0, -1, 0, 0, 1], ![0, 0, 0, 1, -1], ![0, 0, 1, 0, -1], ![0, 1, -1, 0, 0], ![0, 0, 0, -1, 1]]⟩

def canonicalOutput25356 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2756⟩

theorem canonicalSound25356 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25356.moment H = canonicalOutput25356.moment H :=
  canonical_of_padded canonicalInput25356 canonicalOutput25356 (by decide) (by decide)
    ⟨false, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput25357 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, 0, 1, -1], ![0, 1, -1, 0, 0], ![-2, 1, -1, 1, 1], ![0, 0, 2, -2, 0], ![2, -1, 0, 0, -1]]⟩

def canonicalOutput25357 : ExponentCode := normalNode2180

theorem canonicalSound25357 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25357.moment H = canonicalOutput25357.moment H :=
  canonical_of_padded canonicalInput25357 canonicalOutput25357 (by decide) (by decide)
    ⟨false, false, canonicalPermutation146, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput25358 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, 0, 1, -1], ![0, 1, -1, 0, 0], ![-2, 1, 1, 0, 0], ![1, -1, -1, 1, 0], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput25358 : ExponentCode := normalNode10444

theorem canonicalSound25358 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25358.moment H = canonicalOutput25358.moment H :=
  canonical_of_padded canonicalInput25358 canonicalOutput25358 (by decide) (by decide)
    ⟨false, false, canonicalPermutation148, canonicalPermutation65⟩ (by decide +kernel) hH

def canonicalInput25359 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, 0, 1, -1], ![0, 1, -1, 0, 0], ![-1, 1, -1, 1, 0], ![-1, 0, 2, -2, 1], ![2, -1, 0, 0, -1]]⟩

def canonicalOutput25359 : ExponentCode := normalNode1544

theorem canonicalSound25359 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25359.moment H = canonicalOutput25359.moment H :=
  canonical_of_padded canonicalInput25359 canonicalOutput25359 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation262, canonicalPermutation77⟩ (by decide +kernel) hH

def canonicalInput25360 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, 0, 1, -1], ![0, 1, -1, 0, 0], ![-1, 1, -1, 1, 0], ![0, 0, 2, -2, 0], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput25360 : ExponentCode := normalNode10146

theorem canonicalSound25360 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25360.moment H = canonicalOutput25360.moment H :=
  canonical_of_padded canonicalInput25360 canonicalOutput25360 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation246, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput25361 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, 0, 1, -1], ![0, 1, -1, 0, 0], ![-1, 1, 1, 0, -1], ![0, -1, -1, 1, 1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput25361 : ExponentCode := normalNode8362

theorem canonicalSound25361 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25361.moment H = canonicalOutput25361.moment H :=
  canonical_of_padded canonicalInput25361 canonicalOutput25361 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput25362 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, 0, 1, -1], ![0, 1, -1, 0, 0], ![-1, 1, 1, 0, -1], ![1, -1, -1, 1, 0], ![0, 0, 1, -2, 1]]⟩

def canonicalOutput25362 : ExponentCode := normalNode8538

theorem canonicalSound25362 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25362.moment H = canonicalOutput25362.moment H :=
  canonical_of_padded canonicalInput25362 canonicalOutput25362 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation278, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput25363 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, 0, 1, -1], ![0, 1, 0, 0, -1], ![-2, 0, 2, -1, 1], ![0, 1, -2, 1, 0], ![2, -1, 0, -1, 0]]⟩

def canonicalOutput25363 : ExponentCode := normalNode1529

theorem canonicalSound25363 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25363.moment H = canonicalOutput25363.moment H :=
  canonical_of_padded canonicalInput25363 canonicalOutput25363 (by decide) (by decide)
    ⟨false, true, canonicalPermutation125, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput25364 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, 0, 1, -1], ![0, 1, 0, 0, -1], ![-1, 0, 2, -1, 0], ![-1, 1, -2, 1, 1], ![2, -1, 0, -1, 0]]⟩

def canonicalOutput25364 : ExponentCode := normalNode2205

theorem canonicalSound25364 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25364.moment H = canonicalOutput25364.moment H :=
  canonical_of_padded canonicalInput25364 canonicalOutput25364 (by decide) (by decide)
    ⟨false, false, canonicalPermutation164, canonicalPermutation18⟩ (by decide +kernel) hH

def canonicalInput25365 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, 0, 1, -1], ![0, 1, 0, 0, -1], ![-1, 0, 2, -1, 0], ![0, 1, -2, 1, 0], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput25365 : ExponentCode := normalNode8358

theorem canonicalSound25365 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25365.moment H = canonicalOutput25365.moment H :=
  canonical_of_padded canonicalInput25365 canonicalOutput25365 (by decide) (by decide)
    ⟨false, false, canonicalPermutation160, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput25366 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, 0, 1, -1], ![1, -1, 0, 0, 0], ![-2, 2, 0, 0, 0], ![0, 0, 2, -2, 0], ![1, 0, -2, 1, 0]]⟩

def canonicalOutput25366 : ExponentCode := normalNode10436

theorem canonicalSound25366 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25366.moment H = canonicalOutput25366.moment H :=
  canonical_of_padded canonicalInput25366 canonicalOutput25366 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation219, canonicalPermutation80⟩ (by decide +kernel) hH

def canonicalInput25367 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, 0, 1, -1], ![1, -1, 0, 0, 0], ![-1, 2, 0, 0, -1], ![-1, 0, 2, -2, 1], ![1, 0, -2, 1, 0]]⟩

def canonicalOutput25367 : ExponentCode := normalNode1507

theorem canonicalSound25367 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25367.moment H = canonicalOutput25367.moment H :=
  canonical_of_padded canonicalInput25367 canonicalOutput25367 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation266, canonicalPermutation77⟩ (by decide +kernel) hH

def canonicalInput25368 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, 0, 1, -1], ![1, -1, 0, 0, 0], ![-1, 2, 0, 0, -1], ![0, 0, 2, -2, 0], ![0, 0, -2, 1, 1]]⟩

def canonicalOutput25368 : ExponentCode := normalNode8155

theorem canonicalSound25368 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25368.moment H = canonicalOutput25368.moment H :=
  canonical_of_padded canonicalInput25368 canonicalOutput25368 (by decide) (by decide)
    ⟨false, false, canonicalPermutation264, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput25369 : ExponentCode := ⟨5, 5, ![![0, -1, 0, 0, 1], ![0, 0, 0, 2, -2], ![-1, 0, 1, 0, 0], ![0, 1, -1, 0, 0], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput25369 : ExponentCode := normalNode10416

theorem canonicalSound25369 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25369.moment H = canonicalOutput25369.moment H :=
  canonical_of_padded canonicalInput25369 canonicalOutput25369 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25370 : ExponentCode := ⟨5, 5, ![![0, -1, 0, 0, 1], ![0, 0, 0, 2, -2], ![0, 0, 1, 0, -1], ![-1, 1, -1, 0, 1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput25370 : ExponentCode := normalNode9228

theorem canonicalSound25370 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25370.moment H = canonicalOutput25370.moment H :=
  canonical_of_padded canonicalInput25370 canonicalOutput25370 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput25371 : ExponentCode := ⟨5, 5, ![![0, -1, 0, 0, 1], ![0, 0, 0, 2, -2], ![0, 0, 1, 0, -1], ![0, 1, -1, 0, 0], ![0, 0, 0, -2, 2]]⟩

def canonicalOutput25371 : ExponentCode := normalNode10686

theorem canonicalSound25371 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25371.moment H = canonicalOutput25371.moment H :=
  canonical_of_padded canonicalInput25371 canonicalOutput25371 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25372 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![1, -1, 0, 0, 0], ![0, 0, 0, 0, 0], ![-1, 2, 0, 0, -1], ![0, 0, -2, 3, -1], ![0, 0, 2, -3, 1]]⟩

def canonicalOutput25372 : ExponentCode := normalNode9560

theorem canonicalSound25372 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25372.moment H = canonicalOutput25372.moment H :=
  canonical_of_padded canonicalInput25372 canonicalOutput25372 (by decide) (by decide)
    ⟨true, false, canonicalPermutation64, canonicalPermutation126⟩ (by decide +kernel) hH

def canonicalInput25373 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![1, -1, 0, 0, 0], ![1, 0, 0, 0, -1], ![-2, 2, 0, 0, 0], ![0, 0, -2, 3, -1], ![0, 0, 2, -3, 1]]⟩

def canonicalOutput25373 : ExponentCode := normalNode1467

theorem canonicalSound25373 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25373.moment H = canonicalOutput25373.moment H :=
  canonical_of_padded canonicalInput25373 canonicalOutput25373 (by decide) (by decide)
    ⟨false, false, canonicalPermutation269, canonicalPermutation77⟩ (by decide +kernel) hH

def canonicalInput25374 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![1, -1, 0, 0, 0], ![1, 0, 0, 0, -1], ![-1, 2, 0, 0, -1], ![-1, 0, -2, 3, 0], ![0, 0, 2, -3, 1]]⟩

def canonicalOutput25374 : ExponentCode := normalNode1451

theorem canonicalSound25374 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25374.moment H = canonicalOutput25374.moment H :=
  canonical_of_padded canonicalInput25374 canonicalOutput25374 (by decide) (by decide)
    ⟨false, false, canonicalPermutation130, canonicalPermutation18⟩ (by decide +kernel) hH

def canonicalInput25375 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![1, -1, 0, 0, 0], ![1, 0, 0, 0, -1], ![-1, 2, 0, 0, -1], ![0, 0, -2, 3, -1], ![-1, 0, 2, -3, 2]]⟩

def canonicalOutput25375 : ExponentCode := normalNode3653

theorem canonicalSound25375 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25375.moment H = canonicalOutput25375.moment H :=
  canonical_of_padded canonicalInput25375 canonicalOutput25375 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, canonicalPermutation73⟩ (by decide +kernel) hH

def canonicalInput25376 : ExponentCode := ⟨5, 6, ![![0, -1, 0, 0, 1, 0], ![-1, 0, 0, 1, -1, 1], ![0, 0, 1, 0, 0, -1], ![0, 1, 0, -1, 0, 0], ![1, 0, -1, 0, 0, 0]]⟩

def canonicalOutput25376 : ExponentCode := normalNode10451

theorem canonicalSound25376 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25376.moment H = canonicalOutput25376.moment H :=
  canonical_of_padded canonicalInput25376 canonicalOutput25376 (by decide) (by decide)
    ⟨true, false, canonicalPermutation301, canonicalPermutation36⟩ (by decide +kernel) hH

def canonicalInput25377 : ExponentCode := ⟨5, 6, ![![0, -1, 0, 0, 1, 0], ![0, 0, 0, 1, -1, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, 0, -1, 0, 0], ![1, 0, -1, 0, 0, 0]]⟩

def canonicalOutput25377 : ExponentCode := normalNode10453

theorem canonicalSound25377 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25377.moment H = canonicalOutput25377.moment H :=
  canonical_of_padded canonicalInput25377 canonicalOutput25377 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation311⟩ (by decide +kernel) hH

def canonicalInput25378 : ExponentCode := ⟨5, 6, ![![0, -1, 0, 0, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 1, 0, 0, -1], ![-1, 1, 0, -1, 0, 1], ![1, 0, -1, 0, 0, 0]]⟩

def canonicalOutput25378 : ExponentCode := normalNode10451

theorem canonicalSound25378 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25378.moment H = canonicalOutput25378.moment H :=
  canonical_of_padded canonicalInput25378 canonicalOutput25378 (by decide) (by decide)
    ⟨true, false, canonicalPermutation309, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput25379 : ExponentCode := ⟨5, 6, ![![0, -1, 0, 0, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 1, 0, 0, -1], ![0, 1, 0, -1, 0, 0], ![0, 0, -1, 0, 0, 1]]⟩

def canonicalOutput25379 : ExponentCode := normalNode10453

theorem canonicalSound25379 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25379.moment H = canonicalOutput25379.moment H :=
  canonical_of_padded canonicalInput25379 canonicalOutput25379 (by decide) (by decide)
    ⟨false, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput25380 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-2, 1, -1, 2], ![0, -1, 2, -1], ![0, 1, 1, -2], ![1, -1, -1, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput25380 : ExponentCode := normalNode2708

theorem canonicalSound25380 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25380.moment H = canonicalOutput25380.moment H :=
  canonical_of_padded canonicalInput25380 canonicalOutput25380 (by decide) (by decide)
    ⟨false, false, canonicalPermutation203, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25381 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-2, 1, 1, 0], ![0, -1, -1, 2], ![0, -1, 2, -1], ![1, 1, -1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput25381 : ExponentCode := normalNode4290

theorem canonicalSound25381 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25381.moment H = canonicalOutput25381.moment H :=
  canonical_of_padded canonicalInput25381 canonicalOutput25381 (by decide) (by decide)
    ⟨false, false, canonicalPermutation116, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput25382 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 0, 2], ![0, -1, 1, 0], ![-1, 0, 2, -1], ![-1, 2, 0, -1], ![3, 1, -3, -1]]⟩

def canonicalOutput25382 : ExponentCode := normalNode84

theorem canonicalSound25382 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25382.moment H = canonicalOutput25382.moment H :=
  canonical_of_padded canonicalInput25382 canonicalOutput25382 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput25383 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 0, 2], ![0, -1, 1, 0], ![-1, 1, 1, -1], ![-1, 1, 1, -1], ![3, 1, -3, -1]]⟩

def canonicalOutput25383 : ExponentCode := normalNode93

theorem canonicalSound25383 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25383.moment H = canonicalOutput25383.moment H :=
  canonical_of_padded canonicalInput25383 canonicalOutput25383 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation317, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25384 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 0, 2], ![0, -1, 1, 0], ![0, 1, -1, 0], ![-1, 2, -2, 1], ![2, 0, 2, -4]]⟩

def canonicalOutput25384 : ExponentCode := normalNode394

theorem canonicalSound25384 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25384.moment H = canonicalOutput25384.moment H :=
  canonical_of_padded canonicalInput25384 canonicalOutput25384 (by decide) (by decide)
    ⟨false, true, canonicalPermutation105, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25385 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 0, 2], ![0, -1, 1, 0], ![1, 0, -1, 0], ![-1, 2, -2, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput25385 : ExponentCode := normalNode6415

theorem canonicalSound25385 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25385.moment H = canonicalOutput25385.moment H :=
  canonical_of_padded canonicalInput25385 canonicalOutput25385 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25386 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 0, 2], ![0, -1, 1, 0], ![1, 1, -2, 0], ![2, 0, -1, -1], ![-2, 2, 2, -2]]⟩

def canonicalOutput25386 : ExponentCode := normalNode737

theorem canonicalSound25386 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25386.moment H = canonicalOutput25386.moment H :=
  canonical_of_padded canonicalInput25386 canonicalOutput25386 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput25387 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 0, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 0, 3, -2], ![2, 2, -1, -3]]⟩

def canonicalOutput25387 : ExponentCode := normalNode625

theorem canonicalSound25387 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25387.moment H = canonicalOutput25387.moment H :=
  canonical_of_padded canonicalInput25387 canonicalOutput25387 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25388 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 0, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 2, -1, 0], ![2, 0, 3, -5]]⟩

def canonicalOutput25388 : ExponentCode := normalNode3081

theorem canonicalSound25388 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25388.moment H = canonicalOutput25388.moment H :=
  canonical_of_padded canonicalInput25388 canonicalOutput25388 (by decide) (by decide)
    ⟨false, true, canonicalPermutation103, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25389 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 0, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 1, -1, 1], ![2, 0, 3, -5]]⟩

def canonicalOutput25389 : ExponentCode := normalNode3055

theorem canonicalSound25389 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25389.moment H = canonicalOutput25389.moment H :=
  canonical_of_padded canonicalInput25389 canonicalOutput25389 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation384, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25390 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 0, 2], ![0, 0, -1, 1], ![1, 0, -1, 0], ![-1, 1, -1, 1], ![1, 1, 3, -5]]⟩

def canonicalOutput25390 : ExponentCode := normalNode7155

theorem canonicalSound25390 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25390.moment H = canonicalOutput25390.moment H :=
  canonical_of_padded canonicalInput25390 canonicalOutput25390 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation384, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25391 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![-1, -1, 0, 2], ![0, 0, 1, -1], ![0, 2, 2, -4], ![1, 0, -3, 2]]⟩

def canonicalOutput25391 : ExponentCode := normalNode8944

theorem canonicalSound25391 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25391.moment H = canonicalOutput25391.moment H :=
  canonical_of_padded canonicalInput25391 canonicalOutput25391 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25392 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 0, 2], ![0, 0, 1, -1], ![1, 0, -1, 0], ![-1, 1, -2, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput25392 : ExponentCode := normalNode7297

theorem canonicalSound25392 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25392.moment H = canonicalOutput25392.moment H :=
  canonical_of_padded canonicalInput25392 canonicalOutput25392 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation384, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25393 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 0, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-1, 0, -1, 2], ![2, 0, 3, -5]]⟩

def canonicalOutput25393 : ExponentCode := normalNode3046

theorem canonicalSound25393 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25393.moment H = canonicalOutput25393.moment H :=
  canonical_of_padded canonicalInput25393 canonicalOutput25393 (by decide) (by decide)
    ⟨false, true, canonicalPermutation103, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25394 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 0, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, -3, 1], ![-1, 0, 4, -3]]⟩

def canonicalOutput25394 : ExponentCode := normalNode3414

theorem canonicalSound25394 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25394.moment H = canonicalOutput25394.moment H :=
  canonical_of_padded canonicalInput25394 canonicalOutput25394 (by decide) (by decide)
    ⟨false, true, canonicalPermutation310, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25395 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 0, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, 2, -2, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput25395 : ExponentCode := normalNode6004

theorem canonicalSound25395 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25395.moment H = canonicalOutput25395.moment H :=
  canonical_of_padded canonicalInput25395 canonicalOutput25395 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation375, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25396 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 0, 2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, 0, -1, 2], ![1, 1, 3, -5]]⟩

def canonicalOutput25396 : ExponentCode := normalNode7153

theorem canonicalSound25396 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25396.moment H = canonicalOutput25396.moment H :=
  canonical_of_padded canonicalInput25396 canonicalOutput25396 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation384, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25397 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 0, 2], ![0, 1, 0, -1], ![0, 2, -1, -1], ![-2, -1, 3, 0], ![3, 0, -2, -1]]⟩

def canonicalOutput25397 : ExponentCode := normalNode145

theorem canonicalSound25397 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25397.moment H = canonicalOutput25397.moment H :=
  canonical_of_padded canonicalInput25397 canonicalOutput25397 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25398 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 0, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, 1, -2, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput25398 : ExponentCode := normalNode8805

theorem canonicalSound25398 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25398.moment H = canonicalOutput25398.moment H :=
  canonical_of_padded canonicalInput25398 canonicalOutput25398 (by decide) (by decide)
    ⟨false, false, canonicalPermutation229, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25399 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 0, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, -3, 1], ![-1, 0, 4, -3]]⟩

def canonicalOutput25399 : ExponentCode := normalNode7700

theorem canonicalSound25399 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25399.moment H = canonicalOutput25399.moment H :=
  canonical_of_padded canonicalInput25399 canonicalOutput25399 (by decide) (by decide)
    ⟨false, true, canonicalPermutation311, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25400 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 0, 2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, -3, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput25400 : ExponentCode := normalNode8802

theorem canonicalSound25400 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25400.moment H = canonicalOutput25400.moment H :=
  canonical_of_padded canonicalInput25400 canonicalOutput25400 (by decide) (by decide)
    ⟨false, false, canonicalPermutation234, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25401 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![-1, -1, 0, 2], ![0, 2, 3, -5], ![1, 0, -3, 2]]⟩

def canonicalOutput25401 : ExponentCode := normalNode6327

theorem canonicalSound25401 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25401.moment H = canonicalOutput25401.moment H :=
  canonical_of_padded canonicalInput25401 canonicalOutput25401 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25402 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 0, 2], ![1, 0, -1, 0], ![-1, -1, 2, 0], ![-1, 1, 1, -1], ![2, 2, -2, -2]]⟩

def canonicalOutput25402 : ExponentCode := normalNode726

theorem canonicalSound25402 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25402.moment H = canonicalOutput25402.moment H :=
  canonical_of_padded canonicalInput25402 canonicalOutput25402 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation356, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput25403 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 0, 2], ![1, 0, -1, 0], ![-1, -1, 2, 0], ![2, 0, -2, 0], ![-1, 3, 1, -3]]⟩

def canonicalOutput25403 : ExponentCode := normalNode83

theorem canonicalSound25403 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25403.moment H = canonicalOutput25403.moment H :=
  canonical_of_padded canonicalInput25403 canonicalOutput25403 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation387, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput25404 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 0, 2], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, 0, -1, 2], ![0, 2, 3, -5]]⟩

def canonicalOutput25404 : ExponentCode := normalNode3047

theorem canonicalSound25404 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25404.moment H = canonicalOutput25404.moment H :=
  canonical_of_padded canonicalInput25404 canonicalOutput25404 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25405 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 0, 2], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, 2, -2, 1], ![0, 0, 4, -4]]⟩

def canonicalOutput25405 : ExponentCode := normalNode5030

theorem canonicalSound25405 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25405.moment H = canonicalOutput25405.moment H :=
  canonical_of_padded canonicalInput25405 canonicalOutput25405 (by decide) (by decide)
    ⟨false, true, canonicalPermutation206, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput25406 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 0, 2], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, 1, -2, 2], ![0, 1, 3, -4]]⟩

def canonicalOutput25406 : ExponentCode := normalNode8803

theorem canonicalSound25406 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25406.moment H = canonicalOutput25406.moment H :=
  canonical_of_padded canonicalInput25406 canonicalOutput25406 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation202, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25407 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 0, 2], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, 2, -3, 1], ![-1, 0, 4, -3]]⟩

def canonicalOutput25407 : ExponentCode := normalNode3415

theorem canonicalSound25407 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25407.moment H = canonicalOutput25407.moment H :=
  canonical_of_padded canonicalInput25407 canonicalOutput25407 (by decide) (by decide)
    ⟨false, true, canonicalPermutation206, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

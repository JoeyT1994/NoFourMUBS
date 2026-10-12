import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput6400 : ExponentCode := ⟨5, 5, ![![-2, 0, -1, 1, 2], ![0, -1, 2, -1, 0], ![0, 1, -1, 0, 0], ![1, 0, 0, -1, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput6400 : ExponentCode := normalNode10065

theorem canonicalSound6400 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6400.moment H = canonicalOutput6400.moment H :=
  canonical_of_padded canonicalInput6400 canonicalOutput6400 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput6401 : ExponentCode := ⟨5, 5, ![![-2, 0, -1, 1, 2], ![0, -1, 2, -1, 0], ![0, 1, 0, -1, 0], ![1, 0, -1, 0, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput6401 : ExponentCode := normalNode10064

theorem canonicalSound6401 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6401.moment H = canonicalOutput6401.moment H :=
  canonical_of_padded canonicalInput6401 canonicalOutput6401 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput6402 : ExponentCode := ⟨5, 5, ![![-2, 0, -1, 1, 2], ![0, -1, 2, -1, 0], ![0, 1, 0, 1, -2], ![1, 0, -1, 0, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput6402 : ExponentCode := normalNode8377

theorem canonicalSound6402 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6402.moment H = canonicalOutput6402.moment H :=
  canonical_of_padded canonicalInput6402 canonicalOutput6402 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput6403 : ExponentCode := ⟨5, 5, ![![-2, 0, -1, 1, 2], ![0, -1, 2, 0, -1], ![0, 1, -1, 0, 0], ![1, 0, 0, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput6403 : ExponentCode := normalNode10746

theorem canonicalSound6403 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6403.moment H = canonicalOutput6403.moment H :=
  canonical_of_padded canonicalInput6403 canonicalOutput6403 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput6404 : ExponentCode := ⟨5, 5, ![![-2, 0, -1, 1, 2], ![0, -1, 2, 0, -1], ![0, 1, -1, 1, -1], ![1, 0, 0, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput6404 : ExponentCode := normalNode7563

theorem canonicalSound6404 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6404.moment H = canonicalOutput6404.moment H :=
  canonical_of_padded canonicalInput6404 canonicalOutput6404 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput6405 : ExponentCode := ⟨5, 5, ![![-2, 0, -1, 1, 2], ![0, -1, 2, 0, -1], ![0, 1, 0, -1, 0], ![1, 0, -1, 1, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput6405 : ExponentCode := normalNode8671

theorem canonicalSound6405 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6405.moment H = canonicalOutput6405.moment H :=
  canonical_of_padded canonicalInput6405 canonicalOutput6405 (by decide) (by decide)
    ⟨true, false, canonicalPermutation52, canonicalPermutation33⟩ (by decide +kernel) hH

def canonicalInput6406 : ExponentCode := ⟨5, 5, ![![-2, 0, -1, 1, 2], ![0, 0, 1, -2, 1], ![0, 0, 1, 1, -2], ![1, -1, 0, 0, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput6406 : ExponentCode := normalNode8399

theorem canonicalSound6406 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6406.moment H = canonicalOutput6406.moment H :=
  canonical_of_padded canonicalInput6406 canonicalOutput6406 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput6407 : ExponentCode := ⟨5, 5, ![![-2, 0, -1, 2, 1], ![0, -1, -1, 0, 2], ![0, 1, 0, 0, -1], ![1, 0, 1, -2, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput6407 : ExponentCode := normalNode6629

theorem canonicalSound6407 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6407.moment H = canonicalOutput6407.moment H :=
  canonical_of_padded canonicalInput6407 canonicalOutput6407 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput6408 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -3, 2, 1], ![0, 3, 1, -4], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput6408 : ExponentCode := normalNode2144

theorem canonicalSound6408 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6408.moment H = canonicalOutput6408.moment H :=
  canonical_of_padded canonicalInput6408 canonicalOutput6408 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6409 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -3, 3, 0], ![0, 1, -1, 0], ![0, 2, 0, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput6409 : ExponentCode := normalNode1790

theorem canonicalSound6409 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6409.moment H = canonicalOutput6409.moment H :=
  canonical_of_padded canonicalInput6409 canonicalOutput6409 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6410 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -3, 3, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput6410 : ExponentCode := normalNode1816

theorem canonicalSound6410 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6410.moment H = canonicalOutput6410.moment H :=
  canonical_of_padded canonicalInput6410 canonicalOutput6410 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6411 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -3, 3, 0], ![0, 1, -1, 0], ![1, 1, -1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput6411 : ExponentCode := normalNode1815

theorem canonicalSound6411 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6411.moment H = canonicalOutput6411.moment H :=
  canonical_of_padded canonicalInput6411 canonicalOutput6411 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6412 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -3, 3, 0], ![0, 1, 0, -1], ![0, 2, -1, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput6412 : ExponentCode := normalNode1844

theorem canonicalSound6412 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6412.moment H = canonicalOutput6412.moment H :=
  canonical_of_padded canonicalInput6412 canonicalOutput6412 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6413 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -3, 3, 0], ![0, 2, -2, 0], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput6413 : ExponentCode := normalNode1655

theorem canonicalSound6413 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6413.moment H = canonicalOutput6413.moment H :=
  canonical_of_padded canonicalInput6413 canonicalOutput6413 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6414 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -2, 0, 2], ![1, 0, -1, 0], ![1, 2, 2, -5]]⟩

def canonicalOutput6414 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1233⟩

theorem canonicalSound6414 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6414.moment H = canonicalOutput6414.moment H :=
  canonical_of_padded canonicalInput6414 canonicalOutput6414 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput6415 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -2, 0, 2], ![1, 1, -2, 0], ![1, 1, 3, -5]]⟩

def canonicalOutput6415 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code708

theorem canonicalSound6415 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6415.moment H = canonicalOutput6415.moment H :=
  canonical_of_padded canonicalInput6415 canonicalOutput6415 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput6416 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -2, 1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, 1, -3]]⟩

def canonicalOutput6416 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1629⟩

theorem canonicalSound6416 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6416.moment H = canonicalOutput6416.moment H :=
  canonical_of_padded canonicalInput6416 canonicalOutput6416 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6417 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -2, 1, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput6417 : ExponentCode := normalNode1796

theorem canonicalSound6417 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6417.moment H = canonicalOutput6417.moment H :=
  canonical_of_padded canonicalInput6417 canonicalOutput6417 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6418 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -2, 1, 1], ![0, 1, -1, 0], ![1, 1, -1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput6418 : ExponentCode := normalNode3337

theorem canonicalSound6418 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6418.moment H = canonicalOutput6418.moment H :=
  canonical_of_padded canonicalInput6418 canonicalOutput6418 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6419 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -2, 1, 1], ![0, 1, 2, -3], ![1, 1, -2, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput6419 : ExponentCode := normalNode3341

theorem canonicalSound6419 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6419.moment H = canonicalOutput6419.moment H :=
  canonical_of_padded canonicalInput6419 canonicalOutput6419 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6420 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -2, 1, 1], ![0, 1, 2, -3], ![1, 1, -1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput6420 : ExponentCode := normalNode3340

theorem canonicalSound6420 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6420.moment H = canonicalOutput6420.moment H :=
  canonical_of_padded canonicalInput6420 canonicalOutput6420 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6421 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -2, 1, 1], ![0, 1, 2, -3], ![2, 1, -2, -1]]⟩

def canonicalOutput6421 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code659

theorem canonicalSound6421 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6421.moment H = canonicalOutput6421.moment H :=
  canonical_of_padded canonicalInput6421 canonicalOutput6421 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6422 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -2, 1, 1], ![0, 1, 3, -4], ![2, 1, -3, 0]]⟩

def canonicalOutput6422 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code449

theorem canonicalSound6422 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6422.moment H = canonicalOutput6422.moment H :=
  canonical_of_padded canonicalInput6422 canonicalOutput6422 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput6423 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -2, 1, 1], ![0, 2, -2, 0], ![2, 0, 2, -4]]⟩

def canonicalOutput6423 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node576⟩

theorem canonicalSound6423 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6423.moment H = canonicalOutput6423.moment H :=
  canonical_of_padded canonicalInput6423 canonicalOutput6423 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6424 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -2, 1, 1], ![0, 2, 1, -3], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput6424 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1668⟩

theorem canonicalSound6424 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6424.moment H = canonicalOutput6424.moment H :=
  canonical_of_padded canonicalInput6424 canonicalOutput6424 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput6425 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -2, 1, 1], ![0, 2, 2, -4], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput6425 : ExponentCode := normalNode3190

theorem canonicalSound6425 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6425.moment H = canonicalOutput6425.moment H :=
  canonical_of_padded canonicalInput6425 canonicalOutput6425 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6426 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -2, 1, 1], ![1, 0, 2, -3], ![1, 2, -2, -1]]⟩

def canonicalOutput6426 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code660

theorem canonicalSound6426 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6426.moment H = canonicalOutput6426.moment H :=
  canonical_of_padded canonicalInput6426 canonicalOutput6426 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6427 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -2, 1, 1], ![1, 0, 3, -4], ![1, 2, -3, 0]]⟩

def canonicalOutput6427 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code448

theorem canonicalSound6427 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6427.moment H = canonicalOutput6427.moment H :=
  canonical_of_padded canonicalInput6427 canonicalOutput6427 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6428 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -2, 1, 1], ![1, 1, 1, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput6428 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node487⟩

theorem canonicalSound6428 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6428.moment H = canonicalOutput6428.moment H :=
  canonical_of_padded canonicalInput6428 canonicalOutput6428 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6429 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -2, 1, 1], ![1, 1, 2, -4], ![1, 1, -2, 0]]⟩

def canonicalOutput6429 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node586⟩

theorem canonicalSound6429 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6429.moment H = canonicalOutput6429.moment H :=
  canonical_of_padded canonicalInput6429 canonicalOutput6429 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6430 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -2, 1, 1], ![1, 2, -2, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput6430 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code660

theorem canonicalSound6430 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6430.moment H = canonicalOutput6430.moment H :=
  canonical_of_padded canonicalInput6430 canonicalOutput6430 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6431 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -2, 2, 0], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput6431 : ExponentCode := normalNode2137

theorem canonicalSound6431 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6431.moment H = canonicalOutput6431.moment H :=
  canonical_of_padded canonicalInput6431 canonicalOutput6431 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6432 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -2, 2, 0], ![0, 1, -2, 1], ![2, 1, 1, -4]]⟩

def canonicalOutput6432 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node448⟩

theorem canonicalSound6432 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6432.moment H = canonicalOutput6432.moment H :=
  canonical_of_padded canonicalInput6432 canonicalOutput6432 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6433 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -2, 2, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput6433 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1632⟩

theorem canonicalSound6433 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6433.moment H = canonicalOutput6433.moment H :=
  canonical_of_padded canonicalInput6433 canonicalOutput6433 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6434 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -2, 2, 0], ![0, 1, -1, 0], ![0, 2, 1, -3], ![2, -1, -1, 0]]⟩

def canonicalOutput6434 : ExponentCode := normalNode1810

theorem canonicalSound6434 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6434.moment H = canonicalOutput6434.moment H :=
  canonical_of_padded canonicalInput6434 canonicalOutput6434 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6435 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -2, 2, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput6435 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1642⟩

theorem canonicalSound6435 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6435.moment H = canonicalOutput6435.moment H :=
  canonical_of_padded canonicalInput6435 canonicalOutput6435 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6436 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -2, 2, 0], ![0, 1, -1, 0], ![1, 1, -1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput6436 : ExponentCode := normalNode3369

theorem canonicalSound6436 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6436.moment H = canonicalOutput6436.moment H :=
  canonical_of_padded canonicalInput6436 canonicalOutput6436 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6437 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -2, 2, 0], ![0, 1, -1, 0], ![2, 1, 0, -3]]⟩

def canonicalOutput6437 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1374⟩

theorem canonicalSound6437 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6437.moment H = canonicalOutput6437.moment H :=
  canonical_of_padded canonicalInput6437 canonicalOutput6437 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput6438 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -2, 2, 0], ![0, 1, 0, -1], ![0, 1, -1, 0], ![2, 0, 0, -2]]⟩

def canonicalOutput6438 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1632⟩

theorem canonicalSound6438 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6438.moment H = canonicalOutput6438.moment H :=
  canonical_of_padded canonicalInput6438 canonicalOutput6438 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6439 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -2, 2, 0], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput6439 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1672⟩

theorem canonicalSound6439 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6439.moment H = canonicalOutput6439.moment H :=
  canonical_of_padded canonicalInput6439 canonicalOutput6439 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6440 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -2, 2, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput6440 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1687⟩

theorem canonicalSound6440 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6440.moment H = canonicalOutput6440.moment H :=
  canonical_of_padded canonicalInput6440 canonicalOutput6440 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6441 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -2, 2, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput6441 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1688⟩

theorem canonicalSound6441 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6441.moment H = canonicalOutput6441.moment H :=
  canonical_of_padded canonicalInput6441 canonicalOutput6441 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6442 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -2, 2, 0], ![0, 1, 0, -1], ![1, 1, -2, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput6442 : ExponentCode := normalNode3372

theorem canonicalSound6442 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6442.moment H = canonicalOutput6442.moment H :=
  canonical_of_padded canonicalInput6442 canonicalOutput6442 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6443 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -2, 2, 0], ![0, 1, 1, -2], ![0, 1, 0, -1], ![2, 0, -2, 0]]⟩

def canonicalOutput6443 : ExponentCode := normalNode3371

theorem canonicalSound6443 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6443.moment H = canonicalOutput6443.moment H :=
  canonical_of_padded canonicalInput6443 canonicalOutput6443 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6444 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -2, 2, 0], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput6444 : ExponentCode := normalNode2143

theorem canonicalSound6444 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6444.moment H = canonicalOutput6444.moment H :=
  canonical_of_padded canonicalInput6444 canonicalOutput6444 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6445 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -2, 2, 0], ![0, 1, 1, -2], ![1, 1, -2, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput6445 : ExponentCode := normalNode3374

theorem canonicalSound6445 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6445.moment H = canonicalOutput6445.moment H :=
  canonical_of_padded canonicalInput6445 canonicalOutput6445 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6446 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -2, 2, 0], ![0, 1, 1, -2], ![1, 1, -1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput6446 : ExponentCode := normalNode3373

theorem canonicalSound6446 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6446.moment H = canonicalOutput6446.moment H :=
  canonical_of_padded canonicalInput6446 canonicalOutput6446 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6447 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -2, 2, 0], ![0, 1, 1, -2], ![2, 1, -2, -1]]⟩

def canonicalOutput6447 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node504⟩

theorem canonicalSound6447 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6447.moment H = canonicalOutput6447.moment H :=
  canonical_of_padded canonicalInput6447 canonicalOutput6447 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput6448 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -2, 2, 0], ![0, 2, -2, 0], ![1, 0, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput6448 : ExponentCode := normalNode3375

theorem canonicalSound6448 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6448.moment H = canonicalOutput6448.moment H :=
  canonical_of_padded canonicalInput6448 canonicalOutput6448 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6449 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -2, 2, 0], ![0, 2, -1, -1], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput6449 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1654⟩

theorem canonicalSound6449 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6449.moment H = canonicalOutput6449.moment H :=
  canonical_of_padded canonicalInput6449 canonicalOutput6449 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6450 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -2, 2, 0], ![0, 2, 0, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput6450 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1702⟩

theorem canonicalSound6450 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6450.moment H = canonicalOutput6450.moment H :=
  canonical_of_padded canonicalInput6450 canonicalOutput6450 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6451 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -2, 2, 0], ![0, 2, 0, -2], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput6451 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1702⟩

theorem canonicalSound6451 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6451.moment H = canonicalOutput6451.moment H :=
  canonical_of_padded canonicalInput6451 canonicalOutput6451 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6452 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -2, 2, 0], ![1, 0, -1, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput6452 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1269⟩

theorem canonicalSound6452 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6452.moment H = canonicalOutput6452.moment H :=
  canonical_of_padded canonicalInput6452 canonicalOutput6452 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput6453 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -2, 2, 0], ![1, 0, 1, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput6453 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code555

theorem canonicalSound6453 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6453.moment H = canonicalOutput6453.moment H :=
  canonical_of_padded canonicalInput6453 canonicalOutput6453 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6454 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -2, 2, 0], ![1, 1, 0, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput6454 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node476⟩

theorem canonicalSound6454 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6454.moment H = canonicalOutput6454.moment H :=
  canonical_of_padded canonicalInput6454 canonicalOutput6454 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput6455 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -2, 2, 0], ![1, 1, 1, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput6455 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code761

theorem canonicalSound6455 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6455.moment H = canonicalOutput6455.moment H :=
  canonical_of_padded canonicalInput6455 canonicalOutput6455 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6456 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -2, 2, 0], ![1, 2, -2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput6456 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code555

theorem canonicalSound6456 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6456.moment H = canonicalOutput6456.moment H :=
  canonical_of_padded canonicalInput6456 canonicalOutput6456 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6457 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -2, 2, 0], ![1, 2, 0, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput6457 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1269⟩

theorem canonicalSound6457 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6457.moment H = canonicalOutput6457.moment H :=
  canonical_of_padded canonicalInput6457 canonicalOutput6457 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput6458 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -2, 2, 0], ![1, 2, 1, -4], ![1, 0, -2, 1]]⟩

def canonicalOutput6458 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node451⟩

theorem canonicalSound6458 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6458.moment H = canonicalOutput6458.moment H :=
  canonical_of_padded canonicalInput6458 canonicalOutput6458 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6459 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -2, 3, -1], ![0, 1, -2, 1], ![1, 1, 0, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput6459 : ExponentCode := normalNode3386

theorem canonicalSound6459 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6459.moment H = canonicalOutput6459.moment H :=
  canonical_of_padded canonicalInput6459 canonicalOutput6459 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6460 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -2, 3, -1], ![0, 1, -2, 1], ![2, 1, 0, -3]]⟩

def canonicalOutput6460 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code421

theorem canonicalSound6460 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6460.moment H = canonicalOutput6460.moment H :=
  canonical_of_padded canonicalInput6460 canonicalOutput6460 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6461 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -2, 3, -1], ![0, 1, -1, 0], ![1, 1, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput6461 : ExponentCode := normalNode3392

theorem canonicalSound6461 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6461.moment H = canonicalOutput6461.moment H :=
  canonical_of_padded canonicalInput6461 canonicalOutput6461 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6462 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -2, 3, -1], ![0, 1, -1, 0], ![2, 1, -1, -2]]⟩

def canonicalOutput6462 : ExponentCode := normalNode7824

theorem canonicalSound6462 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6462.moment H = canonicalOutput6462.moment H :=
  canonical_of_padded canonicalInput6462 canonicalOutput6462 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput6463 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -2, 3, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput6463 : ExponentCode := normalNode3391

theorem canonicalSound6463 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6463.moment H = canonicalOutput6463.moment H :=
  canonical_of_padded canonicalInput6463 canonicalOutput6463 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

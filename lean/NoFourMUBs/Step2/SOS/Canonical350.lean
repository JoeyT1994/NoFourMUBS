import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput22400 : ExponentCode := ⟨4, 4, ![![-1, 0, 2, -1], ![0, 0, -3, 3], ![0, 1, 0, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput22400 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1268⟩

theorem canonicalSound22400 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22400.moment H = canonicalOutput22400.moment H :=
  canonical_of_padded canonicalInput22400 canonicalOutput22400 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22401 : ExponentCode := ⟨4, 4, ![![-1, 0, 2, -1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput22401 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1264⟩

theorem canonicalSound22401 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22401.moment H = canonicalOutput22401.moment H :=
  canonical_of_padded canonicalInput22401 canonicalOutput22401 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22402 : ExponentCode := ⟨4, 4, ![![-1, 0, 2, -1], ![0, 0, -2, 2], ![0, 1, 1, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput22402 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1263⟩

theorem canonicalSound22402 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22402.moment H = canonicalOutput22402.moment H :=
  canonical_of_padded canonicalInput22402 canonicalOutput22402 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22403 : ExponentCode := ⟨4, 4, ![![-1, 0, 2, -1], ![0, 0, -1, 1], ![0, 1, 1, -2], ![1, -1, -2, 2]]⟩

def canonicalOutput22403 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1261⟩

theorem canonicalSound22403 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22403.moment H = canonicalOutput22403.moment H :=
  canonical_of_padded canonicalInput22403 canonicalOutput22403 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22404 : ExponentCode := ⟨4, 4, ![![-1, 0, 2, -1], ![0, 1, -3, 2], ![0, 1, 0, -1], ![1, -2, 1, 0]]⟩

def canonicalOutput22404 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1003⟩

theorem canonicalSound22404 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22404.moment H = canonicalOutput22404.moment H :=
  canonical_of_padded canonicalInput22404 canonicalOutput22404 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput22405 : ExponentCode := ⟨4, 4, ![![-1, 0, 2, -1], ![0, 1, -3, 2], ![0, 1, 1, -2], ![1, -2, 0, 1]]⟩

def canonicalOutput22405 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1277⟩

theorem canonicalSound22405 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22405.moment H = canonicalOutput22405.moment H :=
  canonical_of_padded canonicalInput22405 canonicalOutput22405 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22406 : ExponentCode := ⟨4, 4, ![![-1, 0, 2, -1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![1, -2, 0, 1]]⟩

def canonicalOutput22406 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1000⟩

theorem canonicalSound22406 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22406.moment H = canonicalOutput22406.moment H :=
  canonical_of_padded canonicalInput22406 canonicalOutput22406 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput22407 : ExponentCode := ⟨4, 4, ![![-1, 0, 2, -1], ![0, 1, -2, 1], ![0, 1, 1, -2], ![1, -2, -1, 2]]⟩

def canonicalOutput22407 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1276⟩

theorem canonicalSound22407 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22407.moment H = canonicalOutput22407.moment H :=
  canonical_of_padded canonicalInput22407 canonicalOutput22407 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22408 : ExponentCode := ⟨4, 4, ![![-1, 0, 2, -1], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -2, -2, 3]]⟩

def canonicalOutput22408 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1050⟩

theorem canonicalSound22408 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22408.moment H = canonicalOutput22408.moment H :=
  canonical_of_padded canonicalInput22408 canonicalOutput22408 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput22409 : ExponentCode := ⟨3, 4, ![![-1, 0, 2, -1], ![0, 4, -2, -2], ![1, -4, 0, 3]]⟩

def canonicalOutput22409 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node217⟩

theorem canonicalSound22409 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22409.moment H = canonicalOutput22409.moment H :=
  canonical_of_padded canonicalInput22409 canonicalOutput22409 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22410 : ExponentCode := ⟨3, 4, ![![-1, 0, 2, -1], ![0, 4, -1, -3], ![1, -4, -1, 4]]⟩

def canonicalOutput22410 : ExponentCode := normalNode5583

theorem canonicalSound22410 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22410.moment H = canonicalOutput22410.moment H :=
  canonical_of_padded canonicalInput22410 canonicalOutput22410 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22411 : ExponentCode := ⟨3, 4, ![![-1, 0, 2, -1], ![1, -4, 2, 1], ![0, 4, -4, 0]]⟩

def canonicalOutput22411 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node157⟩

theorem canonicalSound22411 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22411.moment H = canonicalOutput22411.moment H :=
  canonical_of_padded canonicalInput22411 canonicalOutput22411 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22412 : ExponentCode := ⟨3, 4, ![![-1, 0, 2, -1], ![1, -3, -1, 3], ![0, 3, -1, -2]]⟩

def canonicalOutput22412 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node222⟩

theorem canonicalSound22412 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22412.moment H = canonicalOutput22412.moment H :=
  canonical_of_padded canonicalInput22412 canonicalOutput22412 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22413 : ExponentCode := ⟨3, 4, ![![-1, 0, 2, -1], ![1, -3, 0, 2], ![0, 3, -2, -1]]⟩

def canonicalOutput22413 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node215⟩

theorem canonicalSound22413 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22413.moment H = canonicalOutput22413.moment H :=
  canonical_of_padded canonicalInput22413 canonicalOutput22413 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22414 : ExponentCode := ⟨3, 4, ![![-1, 0, 2, -1], ![1, -3, 3, -1], ![0, 3, -5, 2]]⟩

def canonicalOutput22414 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node128⟩

theorem canonicalSound22414 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22414.moment H = canonicalOutput22414.moment H :=
  canonical_of_padded canonicalInput22414 canonicalOutput22414 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22415 : ExponentCode := ⟨4, 4, ![![-1, 0, 2, -1], ![1, -2, -1, 2], ![0, 0, -2, 2], ![0, 2, 1, -3]]⟩

def canonicalOutput22415 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1315⟩

theorem canonicalSound22415 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22415.moment H = canonicalOutput22415.moment H :=
  canonical_of_padded canonicalInput22415 canonicalOutput22415 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22416 : ExponentCode := ⟨3, 4, ![![-1, 0, 2, -1], ![1, -2, 3, -2], ![0, 2, -5, 3]]⟩

def canonicalOutput22416 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node126⟩

theorem canonicalSound22416 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22416.moment H = canonicalOutput22416.moment H :=
  canonical_of_padded canonicalInput22416 canonicalOutput22416 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22417 : ExponentCode := ⟨3, 4, ![![-1, 0, 2, -1], ![1, 2, 1, -4], ![0, -2, -3, 5]]⟩

def canonicalOutput22417 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node165⟩

theorem canonicalSound22417 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22417.moment H = canonicalOutput22417.moment H :=
  canonical_of_padded canonicalInput22417 canonicalOutput22417 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22418 : ExponentCode := ⟨3, 4, ![![-1, 0, 2, -1], ![2, -4, 2, 0], ![-1, 4, -4, 1]]⟩

def canonicalOutput22418 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node156⟩

theorem canonicalSound22418 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22418.moment H = canonicalOutput22418.moment H :=
  canonical_of_padded canonicalInput22418 canonicalOutput22418 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22419 : ExponentCode := ⟨3, 4, ![![-1, 0, 2, -1], ![2, -2, 2, -2], ![-1, 2, -4, 3]]⟩

def canonicalOutput22419 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node152⟩

theorem canonicalSound22419 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22419.moment H = canonicalOutput22419.moment H :=
  canonical_of_padded canonicalInput22419 canonicalOutput22419 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22420 : ExponentCode := ⟨3, 4, ![![-1, 0, 2, -1], ![4, -2, 0, -2], ![-3, 2, -2, 3]]⟩

def canonicalOutput22420 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node211⟩

theorem canonicalSound22420 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22420.moment H = canonicalOutput22420.moment H :=
  canonical_of_padded canonicalInput22420 canonicalOutput22420 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22421 : ExponentCode := ⟨3, 4, ![![-1, 0, 3, -2], ![-3, 2, -2, 3], ![4, -2, -1, -1]]⟩

def canonicalOutput22421 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code78

theorem canonicalSound22421 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22421.moment H = canonicalOutput22421.moment H :=
  canonical_of_padded canonicalInput22421 canonicalOutput22421 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22422 : ExponentCode := ⟨3, 4, ![![-1, 0, 3, -2], ![-3, 3, -2, 2], ![4, -3, -1, 0]]⟩

def canonicalOutput22422 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code83

theorem canonicalSound22422 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22422.moment H = canonicalOutput22422.moment H :=
  canonical_of_padded canonicalInput22422 canonicalOutput22422 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22423 : ExponentCode := ⟨3, 4, ![![-1, 0, 3, -2], ![-2, 2, -2, 2], ![3, -2, -1, 0]]⟩

def canonicalOutput22423 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node110⟩

theorem canonicalSound22423 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22423.moment H = canonicalOutput22423.moment H :=
  canonical_of_padded canonicalInput22423 canonicalOutput22423 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22424 : ExponentCode := ⟨3, 4, ![![-1, 0, 3, -2], ![-2, 3, -2, 1], ![3, -3, -1, 1]]⟩

def canonicalOutput22424 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code84

theorem canonicalSound22424 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22424.moment H = canonicalOutput22424.moment H :=
  canonical_of_padded canonicalInput22424 canonicalOutput22424 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22425 : ExponentCode := ⟨3, 4, ![![-1, 0, 3, -2], ![-1, -3, 2, 2], ![2, 3, -5, 0]]⟩

def canonicalOutput22425 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code25

theorem canonicalSound22425 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22425.moment H = canonicalOutput22425.moment H :=
  canonical_of_padded canonicalInput22425 canonicalOutput22425 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22426 : ExponentCode := ⟨3, 4, ![![-1, 0, 3, -2], ![-1, -2, -2, 5], ![2, 2, -1, -3]]⟩

def canonicalOutput22426 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code75

theorem canonicalSound22426 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22426.moment H = canonicalOutput22426.moment H :=
  canonical_of_padded canonicalInput22426 canonicalOutput22426 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22427 : ExponentCode := ⟨5, 4, ![![-1, 0, 3, -2], ![-1, 2, 0, -1], ![0, -2, -2, 4], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput22427 : ExponentCode := normalNode3254

theorem canonicalSound22427 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22427.moment H = canonicalOutput22427.moment H :=
  canonical_of_padded canonicalInput22427 canonicalOutput22427 (by decide) (by decide)
    ⟨false, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22428 : ExponentCode := ⟨5, 4, ![![-1, 0, 3, -2], ![-1, 2, 0, -1], ![0, -2, -1, 3], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput22428 : ExponentCode := normalNode3533

theorem canonicalSound22428 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22428.moment H = canonicalOutput22428.moment H :=
  canonical_of_padded canonicalInput22428 canonicalOutput22428 (by decide) (by decide)
    ⟨false, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22429 : ExponentCode := ⟨3, 4, ![![-1, 0, 3, -2], ![-1, 3, -3, 1], ![2, -3, 0, 1]]⟩

def canonicalOutput22429 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node98⟩

theorem canonicalSound22429 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22429.moment H = canonicalOutput22429.moment H :=
  canonical_of_padded canonicalInput22429 canonicalOutput22429 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput22430 : ExponentCode := ⟨3, 4, ![![-1, 0, 3, -2], ![-1, 3, -2, 0], ![2, -3, -1, 2]]⟩

def canonicalOutput22430 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node97⟩

theorem canonicalSound22430 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22430.moment H = canonicalOutput22430.moment H :=
  canonical_of_padded canonicalInput22430 canonicalOutput22430 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput22431 : ExponentCode := ⟨3, 4, ![![-1, 0, 3, -2], ![-1, 4, -4, 1], ![2, -4, 1, 1]]⟩

def canonicalOutput22431 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code43

theorem canonicalSound22431 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22431.moment H = canonicalOutput22431.moment H :=
  canonical_of_padded canonicalInput22431 canonicalOutput22431 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22432 : ExponentCode := ⟨3, 4, ![![-1, 0, 3, -2], ![-1, 4, -3, 0], ![2, -4, 0, 2]]⟩

def canonicalOutput22432 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node99⟩

theorem canonicalSound22432 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22432.moment H = canonicalOutput22432.moment H :=
  canonical_of_padded canonicalInput22432 canonicalOutput22432 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22433 : ExponentCode := ⟨4, 4, ![![-1, 0, 3, -2], ![0, -3, -1, 4], ![0, 2, -2, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput22433 : ExponentCode := normalNode8905

theorem canonicalSound22433 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22433.moment H = canonicalOutput22433.moment H :=
  canonical_of_padded canonicalInput22433 canonicalOutput22433 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22434 : ExponentCode := ⟨4, 4, ![![-1, 0, 3, -2], ![0, -3, -1, 4], ![0, 2, -1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput22434 : ExponentCode := normalNode9355

theorem canonicalSound22434 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22434.moment H = canonicalOutput22434.moment H :=
  canonical_of_padded canonicalInput22434 canonicalOutput22434 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22435 : ExponentCode := ⟨3, 4, ![![-1, 0, 3, -2], ![0, -3, -1, 4], ![1, 3, -2, -2]]⟩

def canonicalOutput22435 : ExponentCode := normalNode241

theorem canonicalSound22435 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22435.moment H = canonicalOutput22435.moment H :=
  canonical_of_padded canonicalInput22435 canonicalOutput22435 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22436 : ExponentCode := ⟨3, 4, ![![-1, 0, 3, -2], ![0, -3, 2, 1], ![1, 3, -5, 1]]⟩

def canonicalOutput22436 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node76⟩

theorem canonicalSound22436 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22436.moment H = canonicalOutput22436.moment H :=
  canonical_of_padded canonicalInput22436 canonicalOutput22436 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22437 : ExponentCode := ⟨3, 4, ![![-1, 0, 3, -2], ![0, -2, -2, 4], ![1, 2, -1, -2]]⟩

def canonicalOutput22437 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node102⟩

theorem canonicalSound22437 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22437.moment H = canonicalOutput22437.moment H :=
  canonical_of_padded canonicalInput22437 canonicalOutput22437 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22438 : ExponentCode := ⟨4, 4, ![![-1, 0, 3, -2], ![0, -2, 0, 2], ![0, 0, -2, 2], ![1, 2, -1, -2]]⟩

def canonicalOutput22438 : ExponentCode := normalNode7051

theorem canonicalSound22438 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22438.moment H = canonicalOutput22438.moment H :=
  canonical_of_padded canonicalInput22438 canonicalOutput22438 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22439 : ExponentCode := ⟨4, 4, ![![-1, 0, 3, -2], ![0, -2, 0, 2], ![0, 1, 0, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput22439 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node938⟩

theorem canonicalSound22439 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22439.moment H = canonicalOutput22439.moment H :=
  canonical_of_padded canonicalInput22439 canonicalOutput22439 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22440 : ExponentCode := ⟨3, 4, ![![-1, 0, 3, -2], ![0, -2, 2, 0], ![1, 2, -5, 2]]⟩

def canonicalOutput22440 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node120⟩

theorem canonicalSound22440 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22440.moment H = canonicalOutput22440.moment H :=
  canonical_of_padded canonicalInput22440 canonicalOutput22440 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput22441 : ExponentCode := ⟨4, 4, ![![-1, 0, 3, -2], ![0, -1, -2, 3], ![0, 1, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput22441 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1211⟩

theorem canonicalSound22441 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22441.moment H = canonicalOutput22441.moment H :=
  canonical_of_padded canonicalInput22441 canonicalOutput22441 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22442 : ExponentCode := ⟨4, 4, ![![-1, 0, 3, -2], ![0, -1, -2, 3], ![0, 2, -1, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput22442 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1214⟩

theorem canonicalSound22442 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22442.moment H = canonicalOutput22442.moment H :=
  canonical_of_padded canonicalInput22442 canonicalOutput22442 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22443 : ExponentCode := ⟨4, 4, ![![-1, 0, 3, -2], ![0, -1, -1, 2], ![0, -1, -1, 2], ![1, 2, -1, -2]]⟩

def canonicalOutput22443 : ExponentCode := normalNode7077

theorem canonicalSound22443 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22443.moment H = canonicalOutput22443.moment H :=
  canonical_of_padded canonicalInput22443 canonicalOutput22443 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22444 : ExponentCode := ⟨4, 4, ![![-1, 0, 3, -2], ![0, -1, -1, 2], ![0, 2, -1, -1], ![1, -1, -1, 1]]⟩

def canonicalOutput22444 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1208⟩

theorem canonicalSound22444 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22444.moment H = canonicalOutput22444.moment H :=
  canonical_of_padded canonicalInput22444 canonicalOutput22444 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22445 : ExponentCode := ⟨4, 4, ![![-1, 0, 3, -2], ![0, -1, -1, 2], ![1, -1, -2, 2], ![0, 2, 0, -2]]⟩

def canonicalOutput22445 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1319⟩

theorem canonicalSound22445 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22445.moment H = canonicalOutput22445.moment H :=
  canonical_of_padded canonicalInput22445 canonicalOutput22445 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22446 : ExponentCode := ⟨4, 4, ![![-1, 0, 3, -2], ![0, -1, 0, 1], ![0, 1, 0, -1], ![1, 0, -3, 2]]⟩

def canonicalOutput22446 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1201⟩

theorem canonicalSound22446 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22446.moment H = canonicalOutput22446.moment H :=
  canonical_of_padded canonicalInput22446 canonicalOutput22446 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22447 : ExponentCode := ⟨4, 4, ![![-1, 0, 3, -2], ![0, 0, -3, 3], ![0, 1, 0, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput22447 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1225⟩

theorem canonicalSound22447 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22447.moment H = canonicalOutput22447.moment H :=
  canonical_of_padded canonicalInput22447 canonicalOutput22447 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22448 : ExponentCode := ⟨4, 4, ![![-1, 0, 3, -2], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -1, -1, 1]]⟩

def canonicalOutput22448 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1220⟩

theorem canonicalSound22448 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22448.moment H = canonicalOutput22448.moment H :=
  canonical_of_padded canonicalInput22448 canonicalOutput22448 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22449 : ExponentCode := ⟨4, 4, ![![-1, 0, 3, -2], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, -3, 3]]⟩

def canonicalOutput22449 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node269⟩

theorem canonicalSound22449 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22449.moment H = canonicalOutput22449.moment H :=
  canonical_of_padded canonicalInput22449 canonicalOutput22449 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput22450 : ExponentCode := ⟨4, 4, ![![-1, 0, 3, -2], ![0, 1, -3, 2], ![0, 1, 0, -1], ![1, -2, 0, 1]]⟩

def canonicalOutput22450 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1231⟩

theorem canonicalSound22450 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22450.moment H = canonicalOutput22450.moment H :=
  canonical_of_padded canonicalInput22450 canonicalOutput22450 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22451 : ExponentCode := ⟨4, 4, ![![-1, 0, 3, -2], ![0, 1, -2, 1], ![0, 1, 0, -1], ![1, -2, -1, 2]]⟩

def canonicalOutput22451 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1049⟩

theorem canonicalSound22451 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22451.moment H = canonicalOutput22451.moment H :=
  canonical_of_padded canonicalInput22451 canonicalOutput22451 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput22452 : ExponentCode := ⟨4, 4, ![![-1, 0, 3, -2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -2, -1, 2]]⟩

def canonicalOutput22452 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node967⟩

theorem canonicalSound22452 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22452.moment H = canonicalOutput22452.moment H :=
  canonical_of_padded canonicalInput22452 canonicalOutput22452 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput22453 : ExponentCode := ⟨4, 4, ![![-1, 0, 3, -2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -2, -2, 3]]⟩

def canonicalOutput22453 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1046⟩

theorem canonicalSound22453 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22453.moment H = canonicalOutput22453.moment H :=
  canonical_of_padded canonicalInput22453 canonicalOutput22453 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput22454 : ExponentCode := ⟨4, 4, ![![-1, 0, 3, -2], ![0, 1, 0, -1], ![0, 0, 0, 0], ![1, -1, -3, 3]]⟩

def canonicalOutput22454 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node269⟩

theorem canonicalSound22454 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22454.moment H = canonicalOutput22454.moment H :=
  canonical_of_padded canonicalInput22454 canonicalOutput22454 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput22455 : ExponentCode := ⟨4, 4, ![![-1, 0, 3, -2], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, -2, -2, 3]]⟩

def canonicalOutput22455 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1046⟩

theorem canonicalSound22455 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22455.moment H = canonicalOutput22455.moment H :=
  canonical_of_padded canonicalInput22455 canonicalOutput22455 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput22456 : ExponentCode := ⟨4, 4, ![![-1, 0, 3, -2], ![0, 1, 0, -1], ![0, 2, -1, -1], ![1, -3, -2, 4]]⟩

def canonicalOutput22456 : ExponentCode := normalNode6771

theorem canonicalSound22456 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22456.moment H = canonicalOutput22456.moment H :=
  canonical_of_padded canonicalInput22456 canonicalOutput22456 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput22457 : ExponentCode := ⟨4, 4, ![![-1, 0, 3, -2], ![0, 2, -1, -1], ![0, 1, 0, -1], ![1, -3, -2, 4]]⟩

def canonicalOutput22457 : ExponentCode := normalNode6771

theorem canonicalSound22457 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22457.moment H = canonicalOutput22457.moment H :=
  canonical_of_padded canonicalInput22457 canonicalOutput22457 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput22458 : ExponentCode := ⟨3, 4, ![![-1, 0, 3, -2], ![0, 2, -1, -1], ![1, -2, -2, 3]]⟩

def canonicalOutput22458 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node209⟩

theorem canonicalSound22458 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22458.moment H = canonicalOutput22458.moment H :=
  canonical_of_padded canonicalInput22458 canonicalOutput22458 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput22459 : ExponentCode := ⟨3, 4, ![![-1, 0, 3, -2], ![0, 3, -3, 0], ![1, -3, 0, 2]]⟩

def canonicalOutput22459 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node93⟩

theorem canonicalSound22459 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22459.moment H = canonicalOutput22459.moment H :=
  canonical_of_padded canonicalInput22459 canonicalOutput22459 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput22460 : ExponentCode := ⟨3, 4, ![![-1, 0, 3, -2], ![0, 3, -2, -1], ![1, -3, -1, 3]]⟩

def canonicalOutput22460 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node95⟩

theorem canonicalSound22460 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22460.moment H = canonicalOutput22460.moment H :=
  canonical_of_padded canonicalInput22460 canonicalOutput22460 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput22461 : ExponentCode := ⟨3, 4, ![![-1, 0, 3, -2], ![0, 4, -4, 0], ![1, -4, 1, 2]]⟩

def canonicalOutput22461 : ExponentCode := normalNode141

theorem canonicalSound22461 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22461.moment H = canonicalOutput22461.moment H :=
  canonical_of_padded canonicalInput22461 canonicalOutput22461 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22462 : ExponentCode := ⟨3, 4, ![![-1, 0, 3, -2], ![0, 4, -3, -1], ![1, -4, 0, 3]]⟩

def canonicalOutput22462 : ExponentCode := normalNode174

theorem canonicalSound22462 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22462.moment H = canonicalOutput22462.moment H :=
  canonical_of_padded canonicalInput22462 canonicalOutput22462 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22463 : ExponentCode := ⟨3, 4, ![![-1, 0, 3, -2], ![1, -3, -1, 3], ![0, 3, -2, -1]]⟩

def canonicalOutput22463 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node95⟩

theorem canonicalSound22463 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22463.moment H = canonicalOutput22463.moment H :=
  canonical_of_padded canonicalInput22463 canonicalOutput22463 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

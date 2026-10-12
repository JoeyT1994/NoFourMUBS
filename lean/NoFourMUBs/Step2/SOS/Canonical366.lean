import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput23424 : ExponentCode := ⟨3, 4, ![![-1, 1, 2, -2], ![1, -4, 1, 2], ![0, 3, -3, 0]]⟩

def canonicalOutput23424 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node81⟩

theorem canonicalSound23424 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23424.moment H = canonicalOutput23424.moment H :=
  canonical_of_padded canonicalInput23424 canonicalOutput23424 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput23425 : ExponentCode := ⟨3, 4, ![![-1, 1, 2, -2], ![1, -4, 2, 1], ![0, 3, -4, 1]]⟩

def canonicalOutput23425 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node137⟩

theorem canonicalSound23425 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23425.moment H = canonicalOutput23425.moment H :=
  canonical_of_padded canonicalInput23425 canonicalOutput23425 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23426 : ExponentCode := ⟨3, 4, ![![-1, 1, 2, -2], ![1, 1, 0, -2], ![0, -2, -2, 4]]⟩

def canonicalOutput23426 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node153⟩

theorem canonicalSound23426 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23426.moment H = canonicalOutput23426.moment H :=
  canonical_of_padded canonicalInput23426 canonicalOutput23426 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23427 : ExponentCode := ⟨3, 4, ![![-1, 1, 2, -2], ![1, 2, -1, -2], ![0, -3, -1, 4]]⟩

def canonicalOutput23427 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node132⟩

theorem canonicalSound23427 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23427.moment H = canonicalOutput23427.moment H :=
  canonical_of_padded canonicalInput23427 canonicalOutput23427 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23428 : ExponentCode := ⟨3, 4, ![![-1, 1, 2, -2], ![1, 2, 0, -3], ![0, -3, -2, 5]]⟩

def canonicalOutput23428 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node73⟩

theorem canonicalSound23428 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23428.moment H = canonicalOutput23428.moment H :=
  canonical_of_padded canonicalInput23428 canonicalOutput23428 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23429 : ExponentCode := ⟨3, 4, ![![-1, 1, 2, -2], ![2, -3, 1, 0], ![-1, 2, -3, 2]]⟩

def canonicalOutput23429 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node103⟩

theorem canonicalSound23429 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23429.moment H = canonicalOutput23429.moment H :=
  canonical_of_padded canonicalInput23429 canonicalOutput23429 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23430 : ExponentCode := ⟨3, 4, ![![-1, 1, 2, -2], ![2, -2, 1, -1], ![-1, 1, -3, 3]]⟩

def canonicalOutput23430 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node159⟩

theorem canonicalSound23430 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23430.moment H = canonicalOutput23430.moment H :=
  canonical_of_padded canonicalInput23430 canonicalOutput23430 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23431 : ExponentCode := ⟨3, 4, ![![-1, 1, 2, -2], ![2, 1, -1, -2], ![-1, -2, -1, 4]]⟩

def canonicalOutput23431 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node134⟩

theorem canonicalSound23431 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23431.moment H = canonicalOutput23431.moment H :=
  canonical_of_padded canonicalInput23431 canonicalOutput23431 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23432 : ExponentCode := ⟨3, 4, ![![-1, 1, 2, -2], ![2, 1, 0, -3], ![-1, -2, -2, 5]]⟩

def canonicalOutput23432 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node74⟩

theorem canonicalSound23432 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23432.moment H = canonicalOutput23432.moment H :=
  canonical_of_padded canonicalInput23432 canonicalOutput23432 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23433 : ExponentCode := ⟨3, 4, ![![-1, 1, 2, -2], ![3, -2, 0, -1], ![-2, 1, -2, 3]]⟩

def canonicalOutput23433 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node103⟩

theorem canonicalSound23433 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23433.moment H = canonicalOutput23433.moment H :=
  canonical_of_padded canonicalInput23433 canonicalOutput23433 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23434 : ExponentCode := ⟨6, 6, ![![-1, 1, 2, -2, 0, 0], ![-1, -2, 2, 1, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, 0, -2, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23434 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code616

theorem canonicalSound23434 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23434.moment H = canonicalOutput23434.moment H :=
  canonical_of_padded canonicalInput23434 canonicalOutput23434 (by decide) (by decide)
    ⟨false, false, canonicalPermutation10, OAI.MUB6.Certificate.PairSemantics.permutation299⟩ (by decide +kernel) hH

def canonicalInput23435 : ExponentCode := ⟨6, 6, ![![-1, 1, 2, -2, 0, 0], ![-1, -2, 2, 1, 0, 0], ![2, 1, -4, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23435 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node134⟩

theorem canonicalSound23435 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23435.moment H = canonicalOutput23435.moment H :=
  canonical_of_padded canonicalInput23435 canonicalOutput23435 (by decide) (by decide)
    ⟨true, true, canonicalPermutation66, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput23436 : ExponentCode := ⟨6, 6, ![![-1, 1, 2, -2, 0, 0], ![1, -2, 1, 0, 0, 0], ![-1, 1, -1, 1, 0, 0], ![1, 0, -2, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23436 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node513⟩

theorem canonicalSound23436 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23436.moment H = canonicalOutput23436.moment H :=
  canonical_of_padded canonicalInput23436 canonicalOutput23436 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation303⟩ (by decide +kernel) hH

def canonicalInput23437 : ExponentCode := ⟨6, 6, ![![-1, 1, 2, -2, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-2, 0, 1, 1, 0, 0], ![1, 0, -2, 1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23437 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound23437 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23437.moment H = canonicalOutput23437.moment H :=
  canonical_of_padded canonicalInput23437 canonicalOutput23437 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation347, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput23438 : ExponentCode := ⟨6, 6, ![![-1, 1, 2, -2, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, 0, -2, 1, 0, 0], ![-2, 0, 1, 1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23438 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound23438 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23438.moment H = canonicalOutput23438.moment H :=
  canonical_of_padded canonicalInput23438 canonicalOutput23438 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation353, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput23439 : ExponentCode := ⟨6, 6, ![![-1, 1, 2, -2, 0, 0], ![1, -2, 1, 0, 0, 0], ![2, 1, -4, 1, 0, 0], ![-2, 0, 1, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23439 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node618⟩

theorem canonicalSound23439 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23439.moment H = canonicalOutput23439.moment H :=
  canonical_of_padded canonicalInput23439 canonicalOutput23439 (by decide) (by decide)
    ⟨false, false, canonicalPermutation10, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput23440 : ExponentCode := ⟨6, 6, ![![-1, 1, 2, -2, 0, 0], ![2, -2, -1, 1, 0, 0], ![-1, 1, -1, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23440 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node276⟩

theorem canonicalSound23440 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23440.moment H = canonicalOutput23440.moment H :=
  canonical_of_padded canonicalInput23440 canonicalOutput23440 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation297, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput23441 : ExponentCode := ⟨6, 6, ![![-1, 1, 2, -2, 0, 0], ![2, -2, -1, 1, 0, 0], ![1, 1, -2, 0, 0, 0], ![-2, 0, 1, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23441 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node686⟩

theorem canonicalSound23441 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23441.moment H = canonicalOutput23441.moment H :=
  canonical_of_padded canonicalInput23441 canonicalOutput23441 (by decide) (by decide)
    ⟨false, false, canonicalPermutation10, canonicalPermutation4⟩ (by decide +kernel) hH

def canonicalInput23442 : ExponentCode := ⟨4, 4, ![![-1, 1, 3, -3], ![-1, 1, -1, 1], ![1, -1, -2, 2], ![1, -1, 0, 0]]⟩

def canonicalOutput23442 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1339⟩

theorem canonicalSound23442 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23442.moment H = canonicalOutput23442.moment H :=
  canonical_of_padded canonicalInput23442 canonicalOutput23442 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput23443 : ExponentCode := ⟨4, 4, ![![-1, 1, 3, -3], ![0, -2, 0, 2], ![0, 1, 0, -1], ![1, 0, -3, 2]]⟩

def canonicalOutput23443 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1320⟩

theorem canonicalSound23443 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23443.moment H = canonicalOutput23443.moment H :=
  canonical_of_padded canonicalInput23443 canonicalOutput23443 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23444 : ExponentCode := ⟨4, 4, ![![-1, 1, 3, -3], ![0, -1, -3, 4], ![0, 1, 0, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput23444 : ExponentCode := normalNode9748

theorem canonicalSound23444 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23444.moment H = canonicalOutput23444.moment H :=
  canonical_of_padded canonicalInput23444 canonicalOutput23444 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput23445 : ExponentCode := ⟨4, 4, ![![-1, 1, 3, -3], ![0, -1, -2, 3], ![0, 1, 0, -1], ![1, -1, -1, 1]]⟩

def canonicalOutput23445 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1363⟩

theorem canonicalSound23445 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23445.moment H = canonicalOutput23445.moment H :=
  canonical_of_padded canonicalInput23445 canonicalOutput23445 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23446 : ExponentCode := ⟨4, 4, ![![-1, 1, 3, -3], ![0, -1, -1, 2], ![0, -1, -1, 2], ![1, 1, -1, -1]]⟩

def canonicalOutput23446 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1129⟩

theorem canonicalSound23446 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23446.moment H = canonicalOutput23446.moment H :=
  canonical_of_padded canonicalInput23446 canonicalOutput23446 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23447 : ExponentCode := ⟨3, 4, ![![-1, 1, 3, -3], ![0, 0, -3, 3], ![1, -1, 0, 0]]⟩

def canonicalOutput23447 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node289⟩

theorem canonicalSound23447 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23447.moment H = canonicalOutput23447.moment H :=
  canonical_of_padded canonicalInput23447 canonicalOutput23447 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput23448 : ExponentCode := ⟨4, 4, ![![-1, 1, 3, -3], ![0, 0, -2, 2], ![0, 1, -1, 0], ![1, -2, 0, 1]]⟩

def canonicalOutput23448 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node803⟩

theorem canonicalSound23448 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23448.moment H = canonicalOutput23448.moment H :=
  canonical_of_padded canonicalInput23448 canonicalOutput23448 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput23449 : ExponentCode := ⟨4, 4, ![![-1, 1, 3, -3], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -2, -1, 2]]⟩

def canonicalOutput23449 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1317⟩

theorem canonicalSound23449 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23449.moment H = canonicalOutput23449.moment H :=
  canonical_of_padded canonicalInput23449 canonicalOutput23449 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput23450 : ExponentCode := ⟨5, 4, ![![-1, 1, 3, -3], ![0, 0, -1, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -2, 0, 1]]⟩

def canonicalOutput23450 : ExponentCode := normalNode11192

theorem canonicalSound23450 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23450.moment H = canonicalOutput23450.moment H :=
  canonical_of_padded canonicalInput23450 canonicalOutput23450 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23451 : ExponentCode := ⟨5, 4, ![![-1, 1, 3, -3], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -2, 0, 1]]⟩

def canonicalOutput23451 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2836⟩

theorem canonicalSound23451 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23451.moment H = canonicalOutput23451.moment H :=
  canonical_of_padded canonicalInput23451 canonicalOutput23451 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23452 : ExponentCode := ⟨4, 4, ![![-1, 1, 3, -3], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -2, -1, 2]]⟩

def canonicalOutput23452 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node968⟩

theorem canonicalSound23452 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23452.moment H = canonicalOutput23452.moment H :=
  canonical_of_padded canonicalInput23452 canonicalOutput23452 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput23453 : ExponentCode := ⟨4, 4, ![![-1, 1, 3, -3], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -2, -2, 3]]⟩

def canonicalOutput23453 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1218⟩

theorem canonicalSound23453 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23453.moment H = canonicalOutput23453.moment H :=
  canonical_of_padded canonicalInput23453 canonicalOutput23453 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput23454 : ExponentCode := ⟨3, 4, ![![-1, 1, 3, -3], ![0, 1, -3, 2], ![1, -2, 0, 1]]⟩

def canonicalOutput23454 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node222⟩

theorem canonicalSound23454 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23454.moment H = canonicalOutput23454.moment H :=
  canonical_of_padded canonicalInput23454 canonicalOutput23454 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput23455 : ExponentCode := ⟨4, 4, ![![-1, 1, 3, -3], ![0, 1, -1, 0], ![0, -1, -2, 3], ![1, -1, 0, 0]]⟩

def canonicalOutput23455 : ExponentCode := normalNode9973

theorem canonicalSound23455 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23455.moment H = canonicalOutput23455.moment H :=
  canonical_of_padded canonicalInput23455 canonicalOutput23455 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput23456 : ExponentCode := ⟨4, 4, ![![-1, 1, 3, -3], ![0, 1, -1, 0], ![1, -1, -2, 2], ![0, -1, 0, 1]]⟩

def canonicalOutput23456 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1217⟩

theorem canonicalSound23456 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23456.moment H = canonicalOutput23456.moment H :=
  canonical_of_padded canonicalInput23456 canonicalOutput23456 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput23457 : ExponentCode := ⟨4, 4, ![![-1, 2, -3, 2], ![0, -1, -1, 2], ![0, -1, 3, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput23457 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1274⟩

theorem canonicalSound23457 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23457.moment H = canonicalOutput23457.moment H :=
  canonical_of_padded canonicalInput23457 canonicalOutput23457 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23458 : ExponentCode := ⟨4, 4, ![![-1, 2, -3, 2], ![0, -1, -1, 2], ![0, -1, 4, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput23458 : ExponentCode := normalNode10737

theorem canonicalSound23458 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23458.moment H = canonicalOutput23458.moment H :=
  canonical_of_padded canonicalInput23458 canonicalOutput23458 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23459 : ExponentCode := ⟨4, 4, ![![-1, 2, -3, 2], ![0, -1, -1, 2], ![0, 0, 2, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput23459 : ExponentCode := normalNode11051

theorem canonicalSound23459 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23459.moment H = canonicalOutput23459.moment H :=
  canonical_of_padded canonicalInput23459 canonicalOutput23459 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23460 : ExponentCode := ⟨4, 4, ![![-1, 2, -3, 2], ![0, -1, -1, 2], ![0, 0, 4, -4], ![1, -1, 0, 0]]⟩

def canonicalOutput23460 : ExponentCode := normalNode9039

theorem canonicalSound23460 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23460.moment H = canonicalOutput23460.moment H :=
  canonical_of_padded canonicalInput23460 canonicalOutput23460 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput23461 : ExponentCode := ⟨3, 4, ![![-1, 2, -3, 2], ![0, -1, 4, -3], ![1, -1, -1, 1]]⟩

def canonicalOutput23461 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node245⟩

theorem canonicalSound23461 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23461.moment H = canonicalOutput23461.moment H :=
  canonical_of_padded canonicalInput23461 canonicalOutput23461 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput23462 : ExponentCode := ⟨4, 4, ![![-1, 2, -3, 2], ![0, 0, -1, 1], ![0, 0, 4, -4], ![1, -2, 0, 1]]⟩

def canonicalOutput23462 : ExponentCode := normalNode7410

theorem canonicalSound23462 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23462.moment H = canonicalOutput23462.moment H :=
  canonical_of_padded canonicalInput23462 canonicalOutput23462 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput23463 : ExponentCode := ⟨3, 4, ![![-1, 2, -3, 2], ![0, 0, 3, -3], ![1, -2, 0, 1]]⟩

def canonicalOutput23463 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node214⟩

theorem canonicalSound23463 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23463.moment H = canonicalOutput23463.moment H :=
  canonical_of_padded canonicalInput23463 canonicalOutput23463 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput23464 : ExponentCode := ⟨3, 4, ![![-1, 2, -3, 2], ![0, 0, 4, -4], ![1, -2, -1, 2]]⟩

def canonicalOutput23464 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node133⟩

theorem canonicalSound23464 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23464.moment H = canonicalOutput23464.moment H :=
  canonical_of_padded canonicalInput23464 canonicalOutput23464 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput23465 : ExponentCode := ⟨4, 4, ![![-1, 2, -2, 1], ![0, -1, -2, 3], ![0, -1, 4, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput23465 : ExponentCode := normalNode10738

theorem canonicalSound23465 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23465.moment H = canonicalOutput23465.moment H :=
  canonical_of_padded canonicalInput23465 canonicalOutput23465 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23466 : ExponentCode := ⟨4, 4, ![![-1, 2, -2, 1], ![0, -1, -2, 3], ![0, 0, 4, -4], ![1, -1, 0, 0]]⟩

def canonicalOutput23466 : ExponentCode := normalNode11149

theorem canonicalSound23466 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23466.moment H = canonicalOutput23466.moment H :=
  canonical_of_padded canonicalInput23466 canonicalOutput23466 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23467 : ExponentCode := ⟨4, 4, ![![-1, 2, -2, 1], ![0, -1, -1, 2], ![0, 0, 2, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput23467 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1346⟩

theorem canonicalSound23467 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23467.moment H = canonicalOutput23467.moment H :=
  canonical_of_padded canonicalInput23467 canonicalOutput23467 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23468 : ExponentCode := ⟨4, 4, ![![-1, 2, -2, 1], ![0, -1, -1, 2], ![0, 0, 3, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput23468 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1015⟩

theorem canonicalSound23468 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23468.moment H = canonicalOutput23468.moment H :=
  canonical_of_padded canonicalInput23468 canonicalOutput23468 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput23469 : ExponentCode := ⟨4, 4, ![![-1, 2, -2, 1], ![0, -1, -1, 2], ![0, 0, 4, -4], ![1, -1, -1, 1]]⟩

def canonicalOutput23469 : ExponentCode := normalNode11129

theorem canonicalSound23469 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23469.moment H = canonicalOutput23469.moment H :=
  canonical_of_padded canonicalInput23469 canonicalOutput23469 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23470 : ExponentCode := ⟨4, 4, ![![-1, 2, -2, 1], ![0, 0, -2, 2], ![0, 0, 3, -3], ![1, -2, 1, 0]]⟩

def canonicalOutput23470 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1376⟩

theorem canonicalSound23470 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23470.moment H = canonicalOutput23470.moment H :=
  canonical_of_padded canonicalInput23470 canonicalOutput23470 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23471 : ExponentCode := ⟨4, 4, ![![-1, 2, -2, 1], ![0, 0, 0, 0], ![0, 0, 2, -2], ![1, -2, 0, 1]]⟩

def canonicalOutput23471 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node203⟩

theorem canonicalSound23471 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23471.moment H = canonicalOutput23471.moment H :=
  canonical_of_padded canonicalInput23471 canonicalOutput23471 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput23472 : ExponentCode := ⟨4, 4, ![![-1, 2, -2, 1], ![0, 0, 1, -1], ![0, 0, 2, -2], ![1, -2, -1, 2]]⟩

def canonicalOutput23472 : ExponentCode := normalNode7001

theorem canonicalSound23472 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23472.moment H = canonicalOutput23472.moment H :=
  canonical_of_padded canonicalInput23472 canonicalOutput23472 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput23473 : ExponentCode := ⟨4, 4, ![![-1, 2, -2, 1], ![0, 0, 2, -2], ![0, 0, 1, -1], ![1, -2, -1, 2]]⟩

def canonicalOutput23473 : ExponentCode := normalNode7001

theorem canonicalSound23473 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23473.moment H = canonicalOutput23473.moment H :=
  canonical_of_padded canonicalInput23473 canonicalOutput23473 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput23474 : ExponentCode := ⟨3, 4, ![![-1, 2, -2, 1], ![0, 0, 4, -4], ![1, -2, -2, 3]]⟩

def canonicalOutput23474 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node133⟩

theorem canonicalSound23474 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23474.moment H = canonicalOutput23474.moment H :=
  canonical_of_padded canonicalInput23474 canonicalOutput23474 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23475 : ExponentCode := ⟨4, 3, ![![-1, 2, -1], ![-1, -4, 5], ![1, 0, -1], ![1, 2, -3]]⟩

def canonicalOutput23475 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node233⟩

theorem canonicalSound23475 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23475.moment H = canonicalOutput23475.moment H :=
  canonical_of_padded canonicalInput23475 canonicalOutput23475 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23476 : ExponentCode := ⟨4, 3, ![![-1, 2, -1], ![-1, -4, 5], ![1, 1, -2], ![1, 1, -2]]⟩

def canonicalOutput23476 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node234⟩

theorem canonicalSound23476 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23476.moment H = canonicalOutput23476.moment H :=
  canonical_of_padded canonicalInput23476 canonicalOutput23476 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23477 : ExponentCode := ⟨4, 4, ![![-1, 2, -1, 0], ![0, -1, -3, 4], ![0, -1, 4, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput23477 : ExponentCode := normalNode9729

theorem canonicalSound23477 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23477.moment H = canonicalOutput23477.moment H :=
  canonical_of_padded canonicalInput23477 canonicalOutput23477 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput23478 : ExponentCode := ⟨4, 4, ![![-1, 2, -1, 0], ![0, -1, -3, 4], ![0, 0, 2, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput23478 : ExponentCode := normalNode11053

theorem canonicalSound23478 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23478.moment H = canonicalOutput23478.moment H :=
  canonical_of_padded canonicalInput23478 canonicalOutput23478 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23479 : ExponentCode := ⟨4, 4, ![![-1, 2, -1, 0], ![0, -1, -3, 4], ![0, 0, 3, -3], ![1, -1, 1, -1]]⟩

def canonicalOutput23479 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1343⟩

theorem canonicalSound23479 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23479.moment H = canonicalOutput23479.moment H :=
  canonical_of_padded canonicalInput23479 canonicalOutput23479 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23480 : ExponentCode := ⟨4, 4, ![![-1, 2, -1, 0], ![0, -1, -2, 3], ![0, -1, 2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput23480 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1277⟩

theorem canonicalSound23480 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23480.moment H = canonicalOutput23480.moment H :=
  canonical_of_padded canonicalInput23480 canonicalOutput23480 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23481 : ExponentCode := ⟨4, 4, ![![-1, 2, -1, 0], ![0, -1, -2, 3], ![0, -1, 3, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput23481 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1214⟩

theorem canonicalSound23481 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23481.moment H = canonicalOutput23481.moment H :=
  canonical_of_padded canonicalInput23481 canonicalOutput23481 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput23482 : ExponentCode := ⟨4, 4, ![![-1, 2, -1, 0], ![0, -1, -2, 3], ![0, 0, 2, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput23482 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1347⟩

theorem canonicalSound23482 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23482.moment H = canonicalOutput23482.moment H :=
  canonical_of_padded canonicalInput23482 canonicalOutput23482 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23483 : ExponentCode := ⟨4, 4, ![![-1, 2, -1, 0], ![0, -1, -2, 3], ![0, 0, 3, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput23483 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1355⟩

theorem canonicalSound23483 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23483.moment H = canonicalOutput23483.moment H :=
  canonical_of_padded canonicalInput23483 canonicalOutput23483 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23484 : ExponentCode := ⟨4, 4, ![![-1, 2, -1, 0], ![0, -1, -1, 2], ![0, 0, 3, -3], ![1, -1, -1, 1]]⟩

def canonicalOutput23484 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1352⟩

theorem canonicalSound23484 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23484.moment H = canonicalOutput23484.moment H :=
  canonical_of_padded canonicalInput23484 canonicalOutput23484 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23485 : ExponentCode := ⟨4, 4, ![![-1, 2, -1, 0], ![0, -1, 3, -2], ![0, 0, -2, 2], ![1, -1, 0, 0]]⟩

def canonicalOutput23485 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1296⟩

theorem canonicalSound23485 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23485.moment H = canonicalOutput23485.moment H :=
  canonical_of_padded canonicalInput23485 canonicalOutput23485 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput23486 : ExponentCode := ⟨4, 4, ![![-1, 2, -1, 0], ![0, 0, -3, 3], ![0, 0, 3, -3], ![1, -2, 1, 0]]⟩

def canonicalOutput23486 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1375⟩

theorem canonicalSound23486 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23486.moment H = canonicalOutput23486.moment H :=
  canonical_of_padded canonicalInput23486 canonicalOutput23486 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23487 : ExponentCode := ⟨4, 4, ![![-1, 2, -1, 0], ![0, 0, -2, 2], ![0, 0, 2, -2], ![1, -2, 1, 0]]⟩

def canonicalOutput23487 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1304⟩

theorem canonicalSound23487 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23487.moment H = canonicalOutput23487.moment H :=
  canonical_of_padded canonicalInput23487 canonicalOutput23487 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

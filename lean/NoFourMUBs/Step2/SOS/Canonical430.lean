import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput27520 : ExponentCode := ⟨3, 4, ![![0, 0, -4, 4], ![0, 1, 3, -4], ![0, -1, 1, 0]]⟩

def canonicalOutput27520 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node54⟩

theorem canonicalSound27520 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27520.moment H = canonicalOutput27520.moment H :=
  canonical_of_padded canonicalInput27520 canonicalOutput27520 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27521 : ExponentCode := ⟨4, 4, ![![0, 0, -3, 3], ![-1, 0, 2, -1], ![0, 2, 0, -2], ![1, -2, 1, 0]]⟩

def canonicalOutput27521 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1269⟩

theorem canonicalSound27521 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27521.moment H = canonicalOutput27521.moment H :=
  canonical_of_padded canonicalInput27521 canonicalOutput27521 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27522 : ExponentCode := ⟨4, 4, ![![0, 0, -3, 3], ![-1, 0, 2, -1], ![0, 2, 1, -3], ![1, -2, 0, 1]]⟩

def canonicalOutput27522 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1313⟩

theorem canonicalSound27522 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27522.moment H = canonicalOutput27522.moment H :=
  canonical_of_padded canonicalInput27522 canonicalOutput27522 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27523 : ExponentCode := ⟨5, 4, ![![0, 0, -3, 3], ![-1, 0, 3, -2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -2, 1, 0]]⟩

def canonicalOutput27523 : ExponentCode := normalNode9972

theorem canonicalSound27523 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27523.moment H = canonicalOutput27523.moment H :=
  canonical_of_padded canonicalInput27523 canonicalOutput27523 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27524 : ExponentCode := ⟨5, 4, ![![0, 0, -3, 3], ![-1, 0, 3, -2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -2, 0, 1]]⟩

def canonicalOutput27524 : ExponentCode := normalNode10922

theorem canonicalSound27524 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27524.moment H = canonicalOutput27524.moment H :=
  canonical_of_padded canonicalInput27524 canonicalOutput27524 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27525 : ExponentCode := ⟨4, 4, ![![0, 0, -3, 3], ![-1, 0, 3, -2], ![0, 1, 0, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput27525 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1225⟩

theorem canonicalSound27525 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27525.moment H = canonicalOutput27525.moment H :=
  canonical_of_padded canonicalInput27525 canonicalOutput27525 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27526 : ExponentCode := ⟨4, 4, ![![0, 0, -3, 3], ![-1, 0, 3, -2], ![0, 2, -1, -1], ![1, -2, 1, 0]]⟩

def canonicalOutput27526 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1226⟩

theorem canonicalSound27526 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27526.moment H = canonicalOutput27526.moment H :=
  canonical_of_padded canonicalInput27526 canonicalOutput27526 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27527 : ExponentCode := ⟨4, 4, ![![0, 0, -3, 3], ![-1, 0, 3, -2], ![0, 2, 0, -2], ![1, -2, 0, 1]]⟩

def canonicalOutput27527 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1321⟩

theorem canonicalSound27527 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27527.moment H = canonicalOutput27527.moment H :=
  canonical_of_padded canonicalInput27527 canonicalOutput27527 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27528 : ExponentCode := ⟨4, 4, ![![0, 0, -3, 3], ![-1, 0, 4, -3], ![0, 1, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput27528 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1181⟩

theorem canonicalSound27528 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27528.moment H = canonicalOutput27528.moment H :=
  canonical_of_padded canonicalInput27528 canonicalOutput27528 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27529 : ExponentCode := ⟨4, 4, ![![0, 0, -3, 3], ![-1, 1, -1, 1], ![0, 0, 4, -4], ![1, -1, 0, 0]]⟩

def canonicalOutput27529 : ExponentCode := normalNode11112

theorem canonicalSound27529 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27529.moment H = canonicalOutput27529.moment H :=
  canonical_of_padded canonicalInput27529 canonicalOutput27529 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27530 : ExponentCode := ⟨4, 4, ![![0, 0, -3, 3], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, -2, 4, -3]]⟩

def canonicalOutput27530 : ExponentCode := normalNode9133

theorem canonicalSound27530 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27530.moment H = canonicalOutput27530.moment H :=
  canonical_of_padded canonicalInput27530 canonicalOutput27530 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput27531 : ExponentCode := ⟨4, 4, ![![0, 0, -3, 3], ![-1, 1, 0, 0], ![0, 1, 0, -1], ![1, -2, 3, -2]]⟩

def canonicalOutput27531 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1062⟩

theorem canonicalSound27531 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27531.moment H = canonicalOutput27531.moment H :=
  canonical_of_padded canonicalInput27531 canonicalOutput27531 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput27532 : ExponentCode := ⟨4, 4, ![![0, 0, -3, 3], ![-1, 1, 0, 0], ![0, 1, 1, -2], ![1, -2, 2, -1]]⟩

def canonicalOutput27532 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1015⟩

theorem canonicalSound27532 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27532.moment H = canonicalOutput27532.moment H :=
  canonical_of_padded canonicalInput27532 canonicalOutput27532 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput27533 : ExponentCode := ⟨3, 4, ![![0, 0, -3, 3], ![-1, 1, 0, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput27533 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node289⟩

theorem canonicalSound27533 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27533.moment H = canonicalOutput27533.moment H :=
  canonical_of_padded canonicalInput27533 canonicalOutput27533 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput27534 : ExponentCode := ⟨4, 4, ![![0, 0, -3, 3], ![-1, 1, 1, -1], ![0, 0, 3, -3], ![1, -1, -1, 1]]⟩

def canonicalOutput27534 : ExponentCode := normalNode11111

theorem canonicalSound27534 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27534.moment H = canonicalOutput27534.moment H :=
  canonical_of_padded canonicalInput27534 canonicalOutput27534 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27535 : ExponentCode := ⟨4, 4, ![![0, 0, -3, 3], ![-1, 1, 1, -1], ![0, 1, 1, -2], ![1, -2, 1, 0]]⟩

def canonicalOutput27535 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1352⟩

theorem canonicalSound27535 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27535.moment H = canonicalOutput27535.moment H :=
  canonical_of_padded canonicalInput27535 canonicalOutput27535 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27536 : ExponentCode := ⟨4, 4, ![![0, 0, -3, 3], ![-1, 1, 1, -1], ![0, 1, 2, -3], ![1, -2, 0, 1]]⟩

def canonicalOutput27536 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1365⟩

theorem canonicalSound27536 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27536.moment H = canonicalOutput27536.moment H :=
  canonical_of_padded canonicalInput27536 canonicalOutput27536 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27537 : ExponentCode := ⟨4, 4, ![![0, 0, -3, 3], ![-1, 1, 2, -2], ![0, 1, 1, -2], ![1, -2, 0, 1]]⟩

def canonicalOutput27537 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1369⟩

theorem canonicalSound27537 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27537.moment H = canonicalOutput27537.moment H :=
  canonical_of_padded canonicalInput27537 canonicalOutput27537 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27538 : ExponentCode := ⟨4, 4, ![![0, 0, -3, 3], ![-1, 1, 3, -3], ![0, 1, 0, -1], ![1, -2, 0, 1]]⟩

def canonicalOutput27538 : ExponentCode := normalNode11191

theorem canonicalSound27538 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27538.moment H = canonicalOutput27538.moment H :=
  canonical_of_padded canonicalInput27538 canonicalOutput27538 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27539 : ExponentCode := ⟨3, 4, ![![0, 0, -3, 3], ![-1, 1, 3, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput27539 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node289⟩

theorem canonicalSound27539 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27539.moment H = canonicalOutput27539.moment H :=
  canonical_of_padded canonicalInput27539 canonicalOutput27539 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput27540 : ExponentCode := ⟨3, 4, ![![0, 0, -3, 3], ![-1, 2, 0, -1], ![1, -2, 3, -2]]⟩

def canonicalOutput27540 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node214⟩

theorem canonicalSound27540 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27540.moment H = canonicalOutput27540.moment H :=
  canonical_of_padded canonicalInput27540 canonicalOutput27540 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput27541 : ExponentCode := ⟨3, 4, ![![0, 0, -3, 3], ![-1, 2, 1, -2], ![1, -2, 2, -1]]⟩

def canonicalOutput27541 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node105⟩

theorem canonicalSound27541 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27541.moment H = canonicalOutput27541.moment H :=
  canonical_of_padded canonicalInput27541 canonicalOutput27541 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27542 : ExponentCode := ⟨3, 4, ![![0, 0, -3, 3], ![0, -2, 0, 2], ![0, 2, 3, -5]]⟩

def canonicalOutput27542 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node28⟩

theorem canonicalSound27542 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27542.moment H = canonicalOutput27542.moment H :=
  canonical_of_padded canonicalInput27542 canonicalOutput27542 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27543 : ExponentCode := ⟨4, 4, ![![0, 0, -3, 3], ![0, 0, -1, 1], ![-1, 2, 0, -1], ![1, -2, 4, -3]]⟩

def canonicalOutput27543 : ExponentCode := normalNode9676

theorem canonicalSound27543 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27543.moment H = canonicalOutput27543.moment H :=
  canonical_of_padded canonicalInput27543 canonicalOutput27543 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput27544 : ExponentCode := ⟨4, 4, ![![0, 0, -3, 3], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, -1, 4, -3]]⟩

def canonicalOutput27544 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node255⟩

theorem canonicalSound27544 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27544.moment H = canonicalOutput27544.moment H :=
  canonical_of_padded canonicalInput27544 canonicalOutput27544 (by decide) (by decide)
    ⟨false, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27545 : ExponentCode := ⟨4, 4, ![![0, 0, -3, 3], ![0, 0, 1, -1], ![-1, 2, 1, -2], ![1, -2, 1, 0]]⟩

def canonicalOutput27545 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node938⟩

theorem canonicalSound27545 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27545.moment H = canonicalOutput27545.moment H :=
  canonical_of_padded canonicalInput27545 canonicalOutput27545 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput27546 : ExponentCode := ⟨4, 4, ![![0, 0, -3, 3], ![0, 0, 1, -1], ![-1, 2, 2, -3], ![1, -2, 0, 1]]⟩

def canonicalOutput27546 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1320⟩

theorem canonicalSound27546 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27546.moment H = canonicalOutput27546.moment H :=
  canonical_of_padded canonicalInput27546 canonicalOutput27546 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput27547 : ExponentCode := ⟨4, 4, ![![0, 0, -3, 3], ![0, 0, 1, -1], ![0, 1, 1, -2], ![0, -1, 1, 0]]⟩

def canonicalOutput27547 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node285⟩

theorem canonicalSound27547 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27547.moment H = canonicalOutput27547.moment H :=
  canonical_of_padded canonicalInput27547 canonicalOutput27547 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27548 : ExponentCode := ⟨4, 4, ![![0, 0, -3, 3], ![0, 0, 1, -1], ![0, 1, 2, -3], ![0, -1, 0, 1]]⟩

def canonicalOutput27548 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node269⟩

theorem canonicalSound27548 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27548.moment H = canonicalOutput27548.moment H :=
  canonical_of_padded canonicalInput27548 canonicalOutput27548 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27549 : ExponentCode := ⟨4, 4, ![![0, 0, -3, 3], ![0, 0, 2, -2], ![-1, 2, 1, -2], ![1, -2, 0, 1]]⟩

def canonicalOutput27549 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1376⟩

theorem canonicalSound27549 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27549.moment H = canonicalOutput27549.moment H :=
  canonical_of_padded canonicalInput27549 canonicalOutput27549 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27550 : ExponentCode := ⟨4, 4, ![![0, 0, -3, 3], ![0, 0, 2, -2], ![0, 1, 1, -2], ![0, -1, 0, 1]]⟩

def canonicalOutput27550 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node280⟩

theorem canonicalSound27550 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27550.moment H = canonicalOutput27550.moment H :=
  canonical_of_padded canonicalInput27550 canonicalOutput27550 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27551 : ExponentCode := ⟨4, 4, ![![0, 0, -3, 3], ![0, 0, 2, -2], ![0, 2, 0, -2], ![0, -2, 1, 1]]⟩

def canonicalOutput27551 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node198⟩

theorem canonicalSound27551 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27551.moment H = canonicalOutput27551.moment H :=
  canonical_of_padded canonicalInput27551 canonicalOutput27551 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27552 : ExponentCode := ⟨4, 4, ![![0, 0, -3, 3], ![0, 0, 2, -2], ![0, 2, 1, -3], ![0, -2, 0, 2]]⟩

def canonicalOutput27552 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node163⟩

theorem canonicalSound27552 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27552.moment H = canonicalOutput27552.moment H :=
  canonical_of_padded canonicalInput27552 canonicalOutput27552 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27553 : ExponentCode := ⟨5, 4, ![![0, 0, -3, 3], ![0, 0, 3, -3], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, -2, 1, 0]]⟩

def canonicalOutput27553 : ExponentCode := normalNode11109

theorem canonicalSound27553 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27553.moment H = canonicalOutput27553.moment H :=
  canonical_of_padded canonicalInput27553 canonicalOutput27553 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27554 : ExponentCode := ⟨5, 4, ![![0, 0, -3, 3], ![0, 0, 3, -3], ![-1, 1, 0, 0], ![0, 1, 0, -1], ![1, -2, 0, 1]]⟩

def canonicalOutput27554 : ExponentCode := normalNode11155

theorem canonicalSound27554 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27554.moment H = canonicalOutput27554.moment H :=
  canonical_of_padded canonicalInput27554 canonicalOutput27554 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27555 : ExponentCode := ⟨4, 4, ![![0, 0, -3, 3], ![0, 0, 3, -3], ![-1, 1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput27555 : ExponentCode := normalNode11156

theorem canonicalSound27555 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27555.moment H = canonicalOutput27555.moment H :=
  canonical_of_padded canonicalInput27555 canonicalOutput27555 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27556 : ExponentCode := ⟨4, 4, ![![0, 0, -3, 3], ![0, 0, 3, -3], ![-1, 2, -1, 0], ![1, -2, 1, 0]]⟩

def canonicalOutput27556 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1375⟩

theorem canonicalSound27556 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27556.moment H = canonicalOutput27556.moment H :=
  canonical_of_padded canonicalInput27556 canonicalOutput27556 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27557 : ExponentCode := ⟨4, 4, ![![0, 0, -3, 3], ![0, 0, 3, -3], ![-1, 2, 0, -1], ![1, -2, 0, 1]]⟩

def canonicalOutput27557 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1375⟩

theorem canonicalSound27557 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27557.moment H = canonicalOutput27557.moment H :=
  canonical_of_padded canonicalInput27557 canonicalOutput27557 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27558 : ExponentCode := ⟨3, 4, ![![0, 0, -3, 3], ![0, 0, 3, -3], ![0, 0, 0, 0]]⟩

def canonicalOutput27558 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node3⟩

theorem canonicalSound27558 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27558.moment H = canonicalOutput27558.moment H :=
  canonical_of_padded canonicalInput27558 canonicalOutput27558 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27559 : ExponentCode := ⟨5, 4, ![![0, 0, -3, 3], ![0, 0, 3, -3], ![0, 1, -1, 0], ![-1, 1, 0, 0], ![1, -2, 1, 0]]⟩

def canonicalOutput27559 : ExponentCode := normalNode11155

theorem canonicalSound27559 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27559.moment H = canonicalOutput27559.moment H :=
  canonical_of_padded canonicalInput27559 canonicalOutput27559 (by decide) (by decide)
    ⟨false, false, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27560 : ExponentCode := ⟨5, 4, ![![0, 0, -3, 3], ![0, 0, 3, -3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -2, 1, 1]]⟩

def canonicalOutput27560 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node700⟩

theorem canonicalSound27560 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27560.moment H = canonicalOutput27560.moment H :=
  canonical_of_padded canonicalInput27560 canonicalOutput27560 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27561 : ExponentCode := ⟨5, 4, ![![0, 0, -3, 3], ![0, 0, 3, -3], ![0, 1, 0, -1], ![-1, 1, 0, 0], ![1, -2, 0, 1]]⟩

def canonicalOutput27561 : ExponentCode := normalNode11155

theorem canonicalSound27561 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27561.moment H = canonicalOutput27561.moment H :=
  canonical_of_padded canonicalInput27561 canonicalOutput27561 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27562 : ExponentCode := ⟨4, 4, ![![0, 0, -3, 3], ![0, 0, 3, -3], ![0, 1, 0, -1], ![0, -1, 0, 1]]⟩

def canonicalOutput27562 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node289⟩

theorem canonicalSound27562 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27562.moment H = canonicalOutput27562.moment H :=
  canonical_of_padded canonicalInput27562 canonicalOutput27562 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27563 : ExponentCode := ⟨5, 4, ![![0, 0, -3, 3], ![0, 0, 3, -3], ![0, 1, 0, -1], ![0, 1, 0, -1], ![0, -2, 0, 2]]⟩

def canonicalOutput27563 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node636⟩

theorem canonicalSound27563 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27563.moment H = canonicalOutput27563.moment H :=
  canonical_of_padded canonicalInput27563 canonicalOutput27563 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27564 : ExponentCode := ⟨4, 4, ![![0, 0, -3, 3], ![0, 0, 3, -3], ![0, 2, -1, -1], ![0, -2, 1, 1]]⟩

def canonicalOutput27564 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node220⟩

theorem canonicalSound27564 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27564.moment H = canonicalOutput27564.moment H :=
  canonical_of_padded canonicalInput27564 canonicalOutput27564 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27565 : ExponentCode := ⟨4, 4, ![![0, 0, -3, 3], ![0, 0, 4, -4], ![-1, 1, -1, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput27565 : ExponentCode := normalNode11112

theorem canonicalSound27565 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27565.moment H = canonicalOutput27565.moment H :=
  canonical_of_padded canonicalInput27565 canonicalOutput27565 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27566 : ExponentCode := ⟨4, 4, ![![0, 0, -3, 3], ![0, 0, 4, -4], ![0, 1, -1, 0], ![0, -1, 0, 1]]⟩

def canonicalOutput27566 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node290⟩

theorem canonicalSound27566 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27566.moment H = canonicalOutput27566.moment H :=
  canonical_of_padded canonicalInput27566 canonicalOutput27566 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27567 : ExponentCode := ⟨4, 4, ![![0, 0, -3, 3], ![0, 1, -1, 0], ![-1, 1, 0, 0], ![1, -2, 4, -3]]⟩

def canonicalOutput27567 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1023⟩

theorem canonicalSound27567 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27567.moment H = canonicalOutput27567.moment H :=
  canonical_of_padded canonicalInput27567 canonicalOutput27567 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput27568 : ExponentCode := ⟨4, 4, ![![0, 0, -3, 3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -2, 4, -2]]⟩

def canonicalOutput27568 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node155⟩

theorem canonicalSound27568 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27568.moment H = canonicalOutput27568.moment H :=
  canonical_of_padded canonicalInput27568 canonicalOutput27568 (by decide) (by decide)
    ⟨false, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27569 : ExponentCode := ⟨4, 4, ![![0, 0, -3, 3], ![0, 1, 0, -1], ![-1, 1, 0, 0], ![1, -2, 3, -2]]⟩

def canonicalOutput27569 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1062⟩

theorem canonicalSound27569 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27569.moment H = canonicalOutput27569.moment H :=
  canonical_of_padded canonicalInput27569 canonicalOutput27569 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput27570 : ExponentCode := ⟨4, 4, ![![0, 0, -3, 3], ![0, 1, 0, -1], ![-1, 1, 1, -1], ![1, -2, 2, -1]]⟩

def canonicalOutput27570 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node937⟩

theorem canonicalSound27570 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27570.moment H = canonicalOutput27570.moment H :=
  canonical_of_padded canonicalInput27570 canonicalOutput27570 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput27571 : ExponentCode := ⟨4, 4, ![![0, 0, -3, 3], ![0, 1, 0, -1], ![-1, 1, 3, -3], ![1, -2, 0, 1]]⟩

def canonicalOutput27571 : ExponentCode := normalNode11191

theorem canonicalSound27571 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27571.moment H = canonicalOutput27571.moment H :=
  canonical_of_padded canonicalInput27571 canonicalOutput27571 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27572 : ExponentCode := ⟨3, 4, ![![0, 0, -3, 3], ![0, 1, 0, -1], ![0, -1, 3, -2]]⟩

def canonicalOutput27572 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound27572 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27572.moment H = canonicalOutput27572.moment H :=
  canonical_of_padded canonicalInput27572 canonicalOutput27572 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27573 : ExponentCode := ⟨4, 4, ![![0, 0, -3, 3], ![0, 1, 0, -1], ![0, 1, 0, -1], ![0, -2, 3, -1]]⟩

def canonicalOutput27573 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node188⟩

theorem canonicalSound27573 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27573.moment H = canonicalOutput27573.moment H :=
  canonical_of_padded canonicalInput27573 canonicalOutput27573 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27574 : ExponentCode := ⟨4, 4, ![![0, 0, -3, 3], ![0, 1, 0, -1], ![0, 1, 1, -2], ![0, -2, 2, 0]]⟩

def canonicalOutput27574 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node215⟩

theorem canonicalSound27574 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27574.moment H = canonicalOutput27574.moment H :=
  canonical_of_padded canonicalInput27574 canonicalOutput27574 (by decide) (by decide)
    ⟨false, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27575 : ExponentCode := ⟨4, 4, ![![0, 0, -3, 3], ![0, 1, 0, -1], ![0, 1, 2, -3], ![0, -2, 1, 1]]⟩

def canonicalOutput27575 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node222⟩

theorem canonicalSound27575 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27575.moment H = canonicalOutput27575.moment H :=
  canonical_of_padded canonicalInput27575 canonicalOutput27575 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27576 : ExponentCode := ⟨3, 4, ![![0, 0, -3, 3], ![0, 2, 0, -2], ![0, -2, 3, -1]]⟩

def canonicalOutput27576 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound27576 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27576.moment H = canonicalOutput27576.moment H :=
  canonical_of_padded canonicalInput27576 canonicalOutput27576 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27577 : ExponentCode := ⟨3, 4, ![![0, 0, -3, 3], ![0, 2, 1, -3], ![0, -2, 2, 0]]⟩

def canonicalOutput27577 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound27577 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27577.moment H = canonicalOutput27577.moment H :=
  canonical_of_padded canonicalInput27577 canonicalOutput27577 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27578 : ExponentCode := ⟨5, 5, ![![0, 0, -2, -1, 3], ![-1, 0, 0, 2, -1], ![0, 0, 2, 0, -2], ![0, 1, 0, -1, 0], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput27578 : ExponentCode := normalNode10752

theorem canonicalSound27578 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27578.moment H = canonicalOutput27578.moment H :=
  canonical_of_padded canonicalInput27578 canonicalOutput27578 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput27579 : ExponentCode := ⟨4, 5, ![![0, 0, -2, -1, 3], ![0, -1, -1, 2, 0], ![0, 0, 3, -2, -1], ![0, 1, 0, 1, -2]]⟩

def canonicalOutput27579 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node990⟩

theorem canonicalSound27579 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27579.moment H = canonicalOutput27579.moment H :=
  canonical_of_padded canonicalInput27579 canonicalOutput27579 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27580 : ExponentCode := ⟨4, 5, ![![0, 0, -2, -1, 3], ![0, -1, 0, 3, -2], ![0, 0, 2, 0, -2], ![0, 1, 0, -2, 1]]⟩

def canonicalOutput27580 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1305⟩

theorem canonicalSound27580 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27580.moment H = canonicalOutput27580.moment H :=
  canonical_of_padded canonicalInput27580 canonicalOutput27580 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27581 : ExponentCode := ⟨5, 5, ![![0, 0, -2, -1, 3], ![0, 0, 0, 1, -1], ![-1, 0, 2, 1, -2], ![0, 1, 0, -1, 0], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput27581 : ExponentCode := normalNode10372

theorem canonicalSound27581 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27581.moment H = canonicalOutput27581.moment H :=
  canonical_of_padded canonicalInput27581 canonicalOutput27581 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, canonicalPermutation24⟩ (by decide +kernel) hH

def canonicalInput27582 : ExponentCode := ⟨5, 5, ![![0, 0, -2, -1, 3], ![0, 0, 0, 1, -1], ![0, 0, 2, 0, -2], ![-1, 1, 0, 0, 0], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput27582 : ExponentCode := normalNode10371

theorem canonicalSound27582 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27582.moment H = canonicalOutput27582.moment H :=
  canonical_of_padded canonicalInput27582 canonicalOutput27582 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation34⟩ (by decide +kernel) hH

def canonicalInput27583 : ExponentCode := ⟨5, 5, ![![0, 0, -2, -1, 3], ![0, 0, 0, 1, -1], ![0, 0, 2, 0, -2], ![0, 1, 0, -1, 0], ![0, -1, 0, 1, 0]]⟩

def canonicalOutput27583 : ExponentCode := normalNode10816

theorem canonicalSound27583 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27583.moment H = canonicalOutput27583.moment H :=
  canonical_of_padded canonicalInput27583 canonicalOutput27583 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput13504 : ExponentCode := ⟨3, 4, ![![-1, -2, 0, 3], ![0, -1, 3, -2], ![1, 3, -3, -1]]⟩

def canonicalOutput13504 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node95⟩

theorem canonicalSound13504 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13504.moment H = canonicalOutput13504.moment H :=
  canonical_of_padded canonicalInput13504 canonicalOutput13504 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13505 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 1, 2, -4]]⟩

def canonicalOutput13505 : ExponentCode := normalNode6480

theorem canonicalSound13505 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13505.moment H = canonicalOutput13505.moment H :=
  canonical_of_padded canonicalInput13505 canonicalOutput13505 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13506 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput13506 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1042⟩

theorem canonicalSound13506 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13506.moment H = canonicalOutput13506.moment H :=
  canonical_of_padded canonicalInput13506 canonicalOutput13506 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput13507 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 2, 2, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput13507 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1031⟩

theorem canonicalSound13507 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13507.moment H = canonicalOutput13507.moment H :=
  canonical_of_padded canonicalInput13507 canonicalOutput13507 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, canonicalPermutation79⟩ (by decide +kernel) hH

def canonicalInput13508 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![0, 0, -1, 1], ![0, 1, 1, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput13508 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1198⟩

theorem canonicalSound13508 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13508.moment H = canonicalOutput13508.moment H :=
  canonical_of_padded canonicalInput13508 canonicalOutput13508 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13509 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![0, 0, -1, 1], ![0, 2, 3, -5], ![1, 0, -2, 1]]⟩

def canonicalOutput13509 : ExponentCode := normalNode6729

theorem canonicalSound13509 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13509.moment H = canonicalOutput13509.moment H :=
  canonical_of_padded canonicalInput13509 canonicalOutput13509 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput13510 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![0, 0, 0, 0], ![0, 1, -2, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput13510 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node206⟩

theorem canonicalSound13510 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13510.moment H = canonicalOutput13510.moment H :=
  canonical_of_padded canonicalInput13510 canonicalOutput13510 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput13511 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput13511 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1041⟩

theorem canonicalSound13511 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13511.moment H = canonicalOutput13511.moment H :=
  canonical_of_padded canonicalInput13511 canonicalOutput13511 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput13512 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, 2, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput13512 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1063⟩

theorem canonicalSound13512 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13512.moment H = canonicalOutput13512.moment H :=
  canonical_of_padded canonicalInput13512 canonicalOutput13512 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation38⟩ (by decide +kernel) hH

def canonicalInput13513 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput13513 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node285⟩

theorem canonicalSound13513 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13513.moment H = canonicalOutput13513.moment H :=
  canonical_of_padded canonicalInput13513 canonicalOutput13513 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput13514 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![0, 0, 0, 0], ![0, 1, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput13514 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node181⟩

theorem canonicalSound13514 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13514.moment H = canonicalOutput13514.moment H :=
  canonical_of_padded canonicalInput13514 canonicalOutput13514 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput13515 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![0, 0, 0, 0], ![0, 2, 2, -4], ![1, 0, -2, 1]]⟩

def canonicalOutput13515 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node201⟩

theorem canonicalSound13515 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13515.moment H = canonicalOutput13515.moment H :=
  canonical_of_padded canonicalInput13515 canonicalOutput13515 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput13516 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![0, 0, 1, -1], ![0, -1, 2, -1], ![0, 1, -1, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput13516 : ExponentCode := normalNode6695

theorem canonicalSound13516 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13516.moment H = canonicalOutput13516.moment H :=
  canonical_of_padded canonicalInput13516 canonicalOutput13516 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13517 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![0, 0, 1, -1], ![0, -1, 2, -1], ![0, 3, -2, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput13517 : ExponentCode := normalNode6698

theorem canonicalSound13517 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13517.moment H = canonicalOutput13517.moment H :=
  canonical_of_padded canonicalInput13517 canonicalOutput13517 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13518 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput13518 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node967⟩

theorem canonicalSound13518 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13518.moment H = canonicalOutput13518.moment H :=
  canonical_of_padded canonicalInput13518 canonicalOutput13518 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput13519 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 3, -2, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput13519 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2699⟩

theorem canonicalSound13519 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13519.moment H = canonicalOutput13519.moment H :=
  canonical_of_padded canonicalInput13519 canonicalOutput13519 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13520 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -2, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput13520 : ExponentCode := normalNode6772

theorem canonicalSound13520 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13520.moment H = canonicalOutput13520.moment H :=
  canonical_of_padded canonicalInput13520 canonicalOutput13520 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13521 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![0, 0, 1, -1], ![0, 3, -2, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput13521 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node950⟩

theorem canonicalSound13521 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13521.moment H = canonicalOutput13521.moment H :=
  canonical_of_padded canonicalInput13521 canonicalOutput13521 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput13522 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![0, 0, 2, -2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput13522 : ExponentCode := normalNode6767

theorem canonicalSound13522 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13522.moment H = canonicalOutput13522.moment H :=
  canonical_of_padded canonicalInput13522 canonicalOutput13522 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13523 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![0, 0, 2, -2], ![0, 0, 1, -1], ![0, 2, -3, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput13523 : ExponentCode := normalNode6768

theorem canonicalSound13523 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13523.moment H = canonicalOutput13523.moment H :=
  canonical_of_padded canonicalInput13523 canonicalOutput13523 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13524 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![0, 0, 2, -2], ![0, 0, 1, -1], ![0, 2, -2, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput13524 : ExponentCode := normalNode6769

theorem canonicalSound13524 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13524.moment H = canonicalOutput13524.moment H :=
  canonical_of_padded canonicalInput13524 canonicalOutput13524 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13525 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![0, 0, 2, -2], ![0, 0, 1, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput13525 : ExponentCode := normalNode6770

theorem canonicalSound13525 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13525.moment H = canonicalOutput13525.moment H :=
  canonical_of_padded canonicalInput13525 canonicalOutput13525 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13526 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![0, 0, 3, -3], ![0, 1, -1, 0], ![0, 1, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput13526 : ExponentCode := normalNode6787

theorem canonicalSound13526 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13526.moment H = canonicalOutput13526.moment H :=
  canonical_of_padded canonicalInput13526 canonicalOutput13526 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13527 : ExponentCode := ⟨3, 4, ![![-1, -2, 0, 3], ![0, 0, 4, -4], ![1, 2, -4, 1]]⟩

def canonicalOutput13527 : ExponentCode := normalNode141

theorem canonicalSound13527 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13527.moment H = canonicalOutput13527.moment H :=
  canonical_of_padded canonicalInput13527 canonicalOutput13527 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput13528 : ExponentCode := ⟨3, 4, ![![-1, -2, 0, 3], ![0, 1, -3, 2], ![1, 1, 3, -5]]⟩

def canonicalOutput13528 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node76⟩

theorem canonicalSound13528 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13528.moment H = canonicalOutput13528.moment H :=
  canonical_of_padded canonicalInput13528 canonicalOutput13528 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13529 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![0, 1, -2, 1], ![0, 0, 2, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput13529 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node804⟩

theorem canonicalSound13529 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13529.moment H = canonicalOutput13529.moment H :=
  canonical_of_padded canonicalInput13529 canonicalOutput13529 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13530 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![0, 1, -2, 1], ![0, 2, -1, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput13530 : ExponentCode := normalNode6127

theorem canonicalSound13530 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13530.moment H = canonicalOutput13530.moment H :=
  canonical_of_padded canonicalInput13530 canonicalOutput13530 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13531 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![0, 1, -2, 1], ![0, 2, 0, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput13531 : ExponentCode := normalNode6979

theorem canonicalSound13531 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13531.moment H = canonicalOutput13531.moment H :=
  canonical_of_padded canonicalInput13531 canonicalOutput13531 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13532 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![0, 1, -1, 0], ![-1, 1, 1, -1], ![1, -1, 2, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput13532 : ExponentCode := normalNode6678

theorem canonicalSound13532 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13532.moment H = canonicalOutput13532.moment H :=
  canonical_of_padded canonicalInput13532 canonicalOutput13532 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13533 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput13533 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2441⟩

theorem canonicalSound13533 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13533.moment H = canonicalOutput13533.moment H :=
  canonical_of_padded canonicalInput13533 canonicalOutput13533 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13534 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 1, 2, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput13534 : ExponentCode := normalNode9911

theorem canonicalSound13534 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13534.moment H = canonicalOutput13534.moment H :=
  canonical_of_padded canonicalInput13534 canonicalOutput13534 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13535 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, 3, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput13535 : ExponentCode := normalNode6708

theorem canonicalSound13535 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13535.moment H = canonicalOutput13535.moment H :=
  canonical_of_padded canonicalInput13535 canonicalOutput13535 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13536 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 2, -2], ![0, 1, -1, 0]]⟩

def canonicalOutput13536 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2441⟩

theorem canonicalSound13536 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13536.moment H = canonicalOutput13536.moment H :=
  canonical_of_padded canonicalInput13536 canonicalOutput13536 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13537 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![0, 1, 1, -2], ![0, 2, -2, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput13537 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1098⟩

theorem canonicalSound13537 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13537.moment H = canonicalOutput13537.moment H :=
  canonical_of_padded canonicalInput13537 canonicalOutput13537 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13538 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![0, 1, 3, -4], ![0, 1, -2, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput13538 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node817⟩

theorem canonicalSound13538 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13538.moment H = canonicalOutput13538.moment H :=
  canonical_of_padded canonicalInput13538 canonicalOutput13538 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13539 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![0, 1, 3, -4], ![0, 1, -1, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput13539 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node818⟩

theorem canonicalSound13539 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13539.moment H = canonicalOutput13539.moment H :=
  canonical_of_padded canonicalInput13539 canonicalOutput13539 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13540 : ExponentCode := ⟨3, 4, ![![-1, -2, 0, 3], ![0, 2, -3, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput13540 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node88⟩

theorem canonicalSound13540 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13540.moment H = canonicalOutput13540.moment H :=
  canonical_of_padded canonicalInput13540 canonicalOutput13540 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13541 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![0, 2, -1, -1], ![0, -1, 3, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput13541 : ExponentCode := normalNode6714

theorem canonicalSound13541 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13541.moment H = canonicalOutput13541.moment H :=
  canonical_of_padded canonicalInput13541 canonicalOutput13541 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13542 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![0, 2, -1, -1], ![1, -1, 2, -2], ![0, 1, -1, 0]]⟩

def canonicalOutput13542 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node836⟩

theorem canonicalSound13542 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13542.moment H = canonicalOutput13542.moment H :=
  canonical_of_padded canonicalInput13542 canonicalOutput13542 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput13543 : ExponentCode := ⟨3, 4, ![![-1, -2, 0, 3], ![0, 2, 3, -5], ![1, 0, -3, 2]]⟩

def canonicalOutput13543 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node75⟩

theorem canonicalSound13543 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13543.moment H = canonicalOutput13543.moment H :=
  canonical_of_padded canonicalInput13543 canonicalOutput13543 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput13544 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![0, 3, -2, -1], ![0, -1, 3, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput13544 : ExponentCode := normalNode6718

theorem canonicalSound13544 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13544.moment H = canonicalOutput13544.moment H :=
  canonical_of_padded canonicalInput13544 canonicalOutput13544 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13545 : ExponentCode := ⟨3, 4, ![![-1, -2, 0, 3], ![0, 3, -2, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput13545 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node107⟩

theorem canonicalSound13545 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13545.moment H = canonicalOutput13545.moment H :=
  canonical_of_padded canonicalInput13545 canonicalOutput13545 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput13546 : ExponentCode := ⟨3, 4, ![![-1, -2, 0, 3], ![1, -1, 2, -2], ![0, 3, -2, -1]]⟩

def canonicalOutput13546 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node107⟩

theorem canonicalSound13546 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13546.moment H = canonicalOutput13546.moment H :=
  canonical_of_padded canonicalInput13546 canonicalOutput13546 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput13547 : ExponentCode := ⟨3, 4, ![![-1, -2, 0, 3], ![1, -1, 3, -3], ![0, 3, -3, 0]]⟩

def canonicalOutput13547 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node92⟩

theorem canonicalSound13547 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13547.moment H = canonicalOutput13547.moment H :=
  canonical_of_padded canonicalInput13547 canonicalOutput13547 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput13548 : ExponentCode := ⟨3, 4, ![![-1, -2, 0, 3], ![1, 0, -3, 2], ![0, 2, 3, -5]]⟩

def canonicalOutput13548 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node75⟩

theorem canonicalSound13548 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13548.moment H = canonicalOutput13548.moment H :=
  canonical_of_padded canonicalInput13548 canonicalOutput13548 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13549 : ExponentCode := ⟨3, 4, ![![-1, -2, 0, 3], ![1, 0, 3, -4], ![0, 2, -3, 1]]⟩

def canonicalOutput13549 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node88⟩

theorem canonicalSound13549 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13549.moment H = canonicalOutput13549.moment H :=
  canonical_of_padded canonicalInput13549 canonicalOutput13549 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput13550 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 3, 0], ![0, 0, 1, 0, -1], ![0, 0, 1, 0, -1], ![0, 2, 0, -3, 1], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput13550 : ExponentCode := normalNode9251

theorem canonicalSound13550 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13550.moment H = canonicalOutput13550.moment H :=
  canonical_of_padded canonicalInput13550 canonicalOutput13550 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput13551 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, -1, 3], ![0, 0, -2, 2, 0], ![0, 1, 1, -1, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput13551 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1645⟩

theorem canonicalSound13551 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13551.moment H = canonicalOutput13551.moment H :=
  canonical_of_padded canonicalInput13551 canonicalOutput13551 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput13552 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, -1, 3], ![0, 0, -2, 2, 0], ![0, 1, 1, 0, -2], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput13552 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1651⟩

theorem canonicalSound13552 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13552.moment H = canonicalOutput13552.moment H :=
  canonical_of_padded canonicalInput13552 canonicalOutput13552 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13553 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, -1, 3], ![0, 0, -2, 2, 0], ![0, 2, 0, 0, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput13553 : ExponentCode := normalNode1853

theorem canonicalSound13553 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13553.moment H = canonicalOutput13553.moment H :=
  canonical_of_padded canonicalInput13553 canonicalOutput13553 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13554 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, -1, 3], ![0, 0, -2, 3, -1], ![0, 1, 1, -2, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput13554 : ExponentCode := normalNode3386

theorem canonicalSound13554 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13554.moment H = canonicalOutput13554.moment H :=
  canonical_of_padded canonicalInput13554 canonicalOutput13554 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput13555 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, -1, 3], ![0, 0, -2, 3, -1], ![0, 1, 1, -1, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput13555 : ExponentCode := normalNode7677

theorem canonicalSound13555 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13555.moment H = canonicalOutput13555.moment H :=
  canonical_of_padded canonicalInput13555 canonicalOutput13555 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput13556 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, -1, 3], ![0, 0, -2, 3, -1], ![0, 1, 1, 0, -2], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput13556 : ExponentCode := normalNode3397

theorem canonicalSound13556 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13556.moment H = canonicalOutput13556.moment H :=
  canonical_of_padded canonicalInput13556 canonicalOutput13556 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13557 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 0, 2], ![0, 0, -2, 1, 1], ![0, 1, 1, 0, -2], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput13557 : ExponentCode := normalNode2507

theorem canonicalSound13557 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13557.moment H = canonicalOutput13557.moment H :=
  canonical_of_padded canonicalInput13557 canonicalOutput13557 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13558 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 0, 2], ![0, 0, -2, 2, 0], ![0, 1, 1, -1, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput13558 : ExponentCode := normalNode4299

theorem canonicalSound13558 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13558.moment H = canonicalOutput13558.moment H :=
  canonical_of_padded canonicalInput13558 canonicalOutput13558 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput13559 : ExponentCode := ⟨5, 5, ![![-1, -2, 1, 0, 2], ![0, 0, -1, 1, 0], ![0, 0, 1, 2, -3], ![0, 2, 0, -3, 1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput13559 : ExponentCode := normalNode8757

theorem canonicalSound13559 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13559.moment H = canonicalOutput13559.moment H :=
  canonical_of_padded canonicalInput13559 canonicalOutput13559 (by decide) (by decide)
    ⟨true, false, canonicalPermutation17, canonicalPermutation13⟩ (by decide +kernel) hH

def canonicalInput13560 : ExponentCode := ⟨5, 5, ![![-1, -2, 1, 0, 2], ![0, 0, -1, 2, -1], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput13560 : ExponentCode := normalNode8276

theorem canonicalSound13560 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13560.moment H = canonicalOutput13560.moment H :=
  canonical_of_padded canonicalInput13560 canonicalOutput13560 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput13561 : ExponentCode := ⟨5, 5, ![![-1, -2, 1, 0, 2], ![0, 0, 1, -1, 0], ![0, 1, -2, 1, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput13561 : ExponentCode := normalNode8356

theorem canonicalSound13561 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13561.moment H = canonicalOutput13561.moment H :=
  canonical_of_padded canonicalInput13561 canonicalOutput13561 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput13562 : ExponentCode := ⟨5, 5, ![![-1, -2, 1, 0, 2], ![0, 0, 1, -1, 0], ![0, 1, -1, 1, -1], ![0, 1, 0, 0, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput13562 : ExponentCode := normalNode10397

theorem canonicalSound13562 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13562.moment H = canonicalOutput13562.moment H :=
  canonical_of_padded canonicalInput13562 canonicalOutput13562 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput13563 : ExponentCode := ⟨5, 5, ![![-1, -2, 1, 0, 2], ![0, 0, 1, 0, -1], ![0, 1, -2, 1, 0], ![0, 1, 0, -1, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput13563 : ExponentCode := normalNode8370

theorem canonicalSound13563 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13563.moment H = canonicalOutput13563.moment H :=
  canonical_of_padded canonicalInput13563 canonicalOutput13563 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation13⟩ (by decide +kernel) hH

def canonicalInput13564 : ExponentCode := ⟨5, 5, ![![-1, -2, 1, 0, 2], ![0, 0, 1, 0, -1], ![0, 1, -2, 1, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput13564 : ExponentCode := normalNode8364

theorem canonicalSound13564 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13564.moment H = canonicalOutput13564.moment H :=
  canonical_of_padded canonicalInput13564 canonicalOutput13564 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput13565 : ExponentCode := ⟨5, 5, ![![-1, -2, 1, 0, 2], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![0, 1, 0, -1, 0], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput13565 : ExponentCode := normalNode10398

theorem canonicalSound13565 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13565.moment H = canonicalOutput13565.moment H :=
  canonical_of_padded canonicalInput13565 canonicalOutput13565 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput13566 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 0, 2], ![0, 1, -2, 0, 1], ![0, 1, 0, 1, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput13566 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1818⟩

theorem canonicalSound13566 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13566.moment H = canonicalOutput13566.moment H :=
  canonical_of_padded canonicalInput13566 canonicalOutput13566 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13567 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 0, 2], ![0, 1, -2, 0, 1], ![0, 1, 1, -1, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput13567 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1820⟩

theorem canonicalSound13567 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13567.moment H = canonicalOutput13567.moment H :=
  canonical_of_padded canonicalInput13567 canonicalOutput13567 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, canonicalPermutation9⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

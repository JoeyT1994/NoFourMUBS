import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput20416 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, -2, 3], ![0, 0, 0, 2, -2], ![0, 0, 1, 0, -1], ![0, 1, -1, 0, 0], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput20416 : ExponentCode := normalNode10373

theorem canonicalSound20416 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20416.moment H = canonicalOutput20416.moment H :=
  canonical_of_padded canonicalInput20416 canonicalOutput20416 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20417 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -2, 3], ![0, 0, 0, 2, -2], ![0, 0, 1, 0, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput20417 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1221⟩

theorem canonicalSound20417 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20417.moment H = canonicalOutput20417.moment H :=
  canonical_of_padded canonicalInput20417 canonicalOutput20417 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput20418 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -2, 3], ![0, 0, 0, 2, -2], ![0, 1, -1, 0, 0], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput20418 : ExponentCode := normalNode10816

theorem canonicalSound20418 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20418.moment H = canonicalOutput20418.moment H :=
  canonical_of_padded canonicalInput20418 canonicalOutput20418 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput20419 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -2, 3], ![0, 0, 0, 2, -2], ![0, 1, 0, -1, 0], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput20419 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1220⟩

theorem canonicalSound20419 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20419.moment H = canonicalOutput20419.moment H :=
  canonical_of_padded canonicalInput20419 canonicalOutput20419 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput20420 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -2, 3], ![0, 0, 0, 2, -2], ![0, 1, 0, 0, -1], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput20420 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1221⟩

theorem canonicalSound20420 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20420.moment H = canonicalOutput20420.moment H :=
  canonical_of_padded canonicalInput20420 canonicalOutput20420 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput20421 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -2, 3], ![0, 0, 1, -1, 0], ![0, 0, -1, 3, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput20421 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1211⟩

theorem canonicalSound20421 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20421.moment H = canonicalOutput20421.moment H :=
  canonical_of_padded canonicalInput20421 canonicalOutput20421 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput20422 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -2, 3], ![0, 0, 1, -1, 0], ![0, 0, 0, 2, -2], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput20422 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1220⟩

theorem canonicalSound20422 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20422.moment H = canonicalOutput20422.moment H :=
  canonical_of_padded canonicalInput20422 canonicalOutput20422 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput20423 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -2, 3], ![0, 0, 2, -1, -1], ![0, 0, 0, 2, -2], ![1, 0, -2, 1, 0]]⟩

def canonicalOutput20423 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1223⟩

theorem canonicalSound20423 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20423.moment H = canonicalOutput20423.moment H :=
  canonical_of_padded canonicalInput20423 canonicalOutput20423 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput20424 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -2, 3], ![0, 0, 2, -1, -1], ![0, 1, 0, 1, -2], ![1, -1, -2, 2, 0]]⟩

def canonicalOutput20424 : ExponentCode := normalNode2037

theorem canonicalSound20424 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20424.moment H = canonicalOutput20424.moment H :=
  canonical_of_padded canonicalInput20424 canonicalOutput20424 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput20425 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -2, 3], ![0, 1, -2, 2, -1], ![0, 0, 2, -1, -1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput20425 : ExponentCode := normalNode3954

theorem canonicalSound20425 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20425.moment H = canonicalOutput20425.moment H :=
  canonical_of_padded canonicalInput20425 canonicalOutput20425 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput20426 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -2, 3], ![1, -1, 0, 2, -2], ![0, 0, 2, -1, -1], ![0, 1, -2, 1, 0]]⟩

def canonicalOutput20426 : ExponentCode := normalNode5933

theorem canonicalSound20426 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20426.moment H = canonicalOutput20426.moment H :=
  canonical_of_padded canonicalInput20426 canonicalOutput20426 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput20427 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -2, 3], ![1, -1, 2, -1, -1], ![0, 0, -2, 2, 0], ![0, 1, 0, 1, -2]]⟩

def canonicalOutput20427 : ExponentCode := normalNode2455

theorem canonicalSound20427 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20427.moment H = canonicalOutput20427.moment H :=
  canonical_of_padded canonicalInput20427 canonicalOutput20427 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation187, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput20428 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -2, 3], ![1, -1, 2, -1, -1], ![0, 0, 0, 2, -2], ![0, 1, -2, 1, 0]]⟩

def canonicalOutput20428 : ExponentCode := normalNode2452

theorem canonicalSound20428 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20428.moment H = canonicalOutput20428.moment H :=
  canonical_of_padded canonicalInput20428 canonicalOutput20428 (by decide) (by decide)
    ⟨true, true, canonicalPermutation72, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput20429 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, -1, 2], ![0, -2, 0, 1, 1], ![0, 0, 2, -2, 0], ![0, 1, -2, 1, 0], ![1, 1, 0, 1, -3]]⟩

def canonicalOutput20429 : ExponentCode := normalNode8016

theorem canonicalSound20429 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20429.moment H = canonicalOutput20429.moment H :=
  canonical_of_padded canonicalInput20429 canonicalOutput20429 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20430 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, -1, 2], ![0, -2, 0, 1, 1], ![0, 0, 2, -2, 0], ![1, 1, -2, 1, -1], ![0, 1, 0, 1, -2]]⟩

def canonicalOutput20430 : ExponentCode := normalNode9533

theorem canonicalSound20430 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20430.moment H = canonicalOutput20430.moment H :=
  canonical_of_padded canonicalInput20430 canonicalOutput20430 (by decide) (by decide)
    ⟨false, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20431 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, -1, 2], ![0, -2, 0, 1, 1], ![1, 0, 2, -2, -1], ![0, 1, -2, 1, 0], ![0, 1, 0, 1, -2]]⟩

def canonicalOutput20431 : ExponentCode := normalNode6566

theorem canonicalSound20431 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20431.moment H = canonicalOutput20431.moment H :=
  canonical_of_padded canonicalInput20431 canonicalOutput20431 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20432 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, -1, 2], ![0, -2, 1, 0, 1], ![0, 0, 0, 2, -2], ![0, 1, -2, 1, 0], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput20432 : ExponentCode := normalNode7578

theorem canonicalSound20432 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20432.moment H = canonicalOutput20432.moment H :=
  canonical_of_padded canonicalInput20432 canonicalOutput20432 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20433 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, -1, 2], ![0, -2, 1, 0, 1], ![0, 0, 0, 2, -2], ![1, 1, -2, 0, 0], ![0, 1, 1, -1, -1]]⟩

def canonicalOutput20433 : ExponentCode := normalNode8188

theorem canonicalSound20433 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20433.moment H = canonicalOutput20433.moment H :=
  canonical_of_padded canonicalInput20433 canonicalOutput20433 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput20434 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, -1, 2], ![0, -2, 1, 0, 1], ![1, 0, 0, 1, -2], ![0, 1, -2, 1, 0], ![0, 1, 1, -1, -1]]⟩

def canonicalOutput20434 : ExponentCode := normalNode8125

theorem canonicalSound20434 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20434.moment H = canonicalOutput20434.moment H :=
  canonical_of_padded canonicalInput20434 canonicalOutput20434 (by decide) (by decide)
    ⟨false, true, canonicalPermutation35, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput20435 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, -1, 2], ![0, -1, -1, 1, 1], ![0, -1, 2, -1, 0], ![0, 0, 0, 2, -2], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput20435 : ExponentCode := normalNode6835

theorem canonicalSound20435 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20435.moment H = canonicalOutput20435.moment H :=
  canonical_of_padded canonicalInput20435 canonicalOutput20435 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20436 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, -1, 2], ![0, -1, -1, 1, 1], ![0, -1, 2, -1, 0], ![1, 0, 0, 1, -2], ![0, 2, -1, 0, -1]]⟩

def canonicalOutput20436 : ExponentCode := normalNode8125

theorem canonicalSound20436 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20436.moment H = canonicalOutput20436.moment H :=
  canonical_of_padded canonicalInput20436 canonicalOutput20436 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput20437 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, -1, 2], ![0, -1, -1, 1, 1], ![1, -1, 2, -2, 0], ![0, 0, 0, 2, -2], ![0, 2, -1, 0, -1]]⟩

def canonicalOutput20437 : ExponentCode := normalNode6815

theorem canonicalSound20437 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20437.moment H = canonicalOutput20437.moment H :=
  canonical_of_padded canonicalInput20437 canonicalOutput20437 (by decide) (by decide)
    ⟨false, true, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20438 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, -1, 2], ![0, -1, -1, 2, 0], ![0, 0, 1, 0, -1], ![0, 1, 0, -1, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput20438 : ExponentCode := normalNode8387

theorem canonicalSound20438 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20438.moment H = canonicalOutput20438.moment H :=
  canonical_of_padded canonicalInput20438 canonicalOutput20438 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation170⟩ (by decide +kernel) hH

def canonicalInput20439 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, -1, -1, 2, 0], ![0, 0, 2, 0, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput20439 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2015⟩

theorem canonicalSound20439 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20439.moment H = canonicalOutput20439.moment H :=
  canonical_of_padded canonicalInput20439 canonicalOutput20439 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput20440 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, -1, -1, 2, 0], ![0, 1, 0, 0, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput20440 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2588⟩

theorem canonicalSound20440 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20440.moment H = canonicalOutput20440.moment H :=
  canonical_of_padded canonicalInput20440 canonicalOutput20440 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput20441 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, -1, -1, 2, 0], ![0, 1, 1, -1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput20441 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2587⟩

theorem canonicalSound20441 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20441.moment H = canonicalOutput20441.moment H :=
  canonical_of_padded canonicalInput20441 canonicalOutput20441 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput20442 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, -1, 2], ![0, -1, 0, 2, -1], ![0, 0, 1, 0, -1], ![0, 1, -1, 0, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput20442 : ExponentCode := normalNode10405

theorem canonicalSound20442 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20442.moment H = canonicalOutput20442.moment H :=
  canonical_of_padded canonicalInput20442 canonicalOutput20442 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, canonicalPermutation41⟩ (by decide +kernel) hH

def canonicalInput20443 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, -1, 0, 2, -1], ![0, 1, -1, -1, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput20443 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1751⟩

theorem canonicalSound20443 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20443.moment H = canonicalOutput20443.moment H :=
  canonical_of_padded canonicalInput20443 canonicalOutput20443 (by decide) (by decide)
    ⟨true, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20444 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, -1, 0, 2, -1], ![0, 1, -1, 0, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput20444 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2744⟩

theorem canonicalSound20444 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20444.moment H = canonicalOutput20444.moment H :=
  canonical_of_padded canonicalInput20444 canonicalOutput20444 (by decide) (by decide)
    ⟨true, true, canonicalPermutation44, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput20445 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, -1, 0, 2, -1], ![0, 1, 0, -1, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput20445 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1245⟩

theorem canonicalSound20445 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20445.moment H = canonicalOutput20445.moment H :=
  canonical_of_padded canonicalInput20445 canonicalOutput20445 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput20446 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, -1, 0, 2, -1], ![0, 1, 0, 0, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput20446 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1246⟩

theorem canonicalSound20446 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20446.moment H = canonicalOutput20446.moment H :=
  canonical_of_padded canonicalInput20446 canonicalOutput20446 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput20447 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, -1, 0, 2, -1], ![0, 1, 1, -1, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput20447 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2744⟩

theorem canonicalSound20447 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20447.moment H = canonicalOutput20447.moment H :=
  canonical_of_padded canonicalInput20447 canonicalOutput20447 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput20448 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, -1, 0, 2, -1], ![0, 1, 1, 0, -2], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput20448 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1793⟩

theorem canonicalSound20448 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20448.moment H = canonicalOutput20448.moment H :=
  canonical_of_padded canonicalInput20448 canonicalOutput20448 (by decide) (by decide)
    ⟨true, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput20449 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, -1, 2], ![0, -1, 1, -1, 1], ![0, -1, 1, 1, -1], ![0, 1, -1, 1, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput20449 : ExponentCode := normalNode8101

theorem canonicalSound20449 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20449.moment H = canonicalOutput20449.moment H :=
  canonical_of_padded canonicalInput20449 canonicalOutput20449 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput20450 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, -1, 2], ![0, -1, 1, -1, 1], ![0, -1, 1, 1, -1], ![0, 2, -1, 0, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput20450 : ExponentCode := normalNode8090

theorem canonicalSound20450 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20450.moment H = canonicalOutput20450.moment H :=
  canonical_of_padded canonicalInput20450 canonicalOutput20450 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput20451 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, -1, 1, -1, 1], ![0, 0, 0, 2, -2], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput20451 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1747⟩

theorem canonicalSound20451 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20451.moment H = canonicalOutput20451.moment H :=
  canonical_of_padded canonicalInput20451 canonicalOutput20451 (by decide) (by decide)
    ⟨true, false, canonicalPermutation80, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput20452 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, -1, 2], ![0, -1, 1, -1, 1], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput20452 : ExponentCode := normalNode10016

theorem canonicalSound20452 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20452.moment H = canonicalOutput20452.moment H :=
  canonical_of_padded canonicalInput20452 canonicalOutput20452 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20453 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, -1, 1, -1, 1], ![0, 1, -1, 0, 0], ![1, 0, 0, 2, -3]]⟩

def canonicalOutput20453 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2803⟩

theorem canonicalSound20453 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20453.moment H = canonicalOutput20453.moment H :=
  canonical_of_padded canonicalInput20453 canonicalOutput20453 (by decide) (by decide)
    ⟨true, true, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput20454 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, -1, 1, -1, 1], ![0, 1, -1, 1, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput20454 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1748⟩

theorem canonicalSound20454 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20454.moment H = canonicalOutput20454.moment H :=
  canonical_of_padded canonicalInput20454 canonicalOutput20454 (by decide) (by decide)
    ⟨true, false, canonicalPermutation80, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput20455 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, -1, 1, -1, 1], ![0, 1, -1, 2, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput20455 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2817⟩

theorem canonicalSound20455 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20455.moment H = canonicalOutput20455.moment H :=
  canonical_of_padded canonicalInput20455 canonicalOutput20455 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput20456 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, -1, 1, 0, 0], ![0, 1, -1, 0, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput20456 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2851⟩

theorem canonicalSound20456 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20456.moment H = canonicalOutput20456.moment H :=
  canonical_of_padded canonicalInput20456 canonicalOutput20456 (by decide) (by decide)
    ⟨true, false, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput20457 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, -1, 1, 0, 0], ![0, 1, -1, 1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput20457 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2724⟩

theorem canonicalSound20457 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20457.moment H = canonicalOutput20457.moment H :=
  canonical_of_padded canonicalInput20457 canonicalOutput20457 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput20458 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, -1, 1, 0, 0], ![0, 1, 0, 0, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput20458 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2734⟩

theorem canonicalSound20458 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20458.moment H = canonicalOutput20458.moment H :=
  canonical_of_padded canonicalInput20458 canonicalOutput20458 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput20459 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, -1, 1, 0, 0], ![0, 1, 0, 1, -2], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput20459 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2784⟩

theorem canonicalSound20459 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20459.moment H = canonicalOutput20459.moment H :=
  canonical_of_padded canonicalInput20459 canonicalOutput20459 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput20460 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, -1, 1, 1, -1], ![0, 0, 0, 2, -2], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput20460 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1737⟩

theorem canonicalSound20460 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20460.moment H = canonicalOutput20460.moment H :=
  canonical_of_padded canonicalInput20460 canonicalOutput20460 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput20461 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, -1, 1, 1, -1], ![0, 0, 1, -2, 1], ![1, 1, -2, 2, -2]]⟩

def canonicalOutput20461 : ExponentCode := normalNode2305

theorem canonicalSound20461 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20461.moment H = canonicalOutput20461.moment H :=
  canonical_of_padded canonicalInput20461 canonicalOutput20461 (by decide) (by decide)
    ⟨true, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20462 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, -1, 1, 1, -1], ![0, 1, -2, 1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput20462 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2076⟩

theorem canonicalSound20462 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20462.moment H = canonicalOutput20462.moment H :=
  canonical_of_padded canonicalInput20462 canonicalOutput20462 (by decide) (by decide)
    ⟨true, false, canonicalPermutation55, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput20463 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, -1, 1, 1, -1], ![0, 1, -1, 0, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput20463 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2724⟩

theorem canonicalSound20463 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20463.moment H = canonicalOutput20463.moment H :=
  canonical_of_padded canonicalInput20463 canonicalOutput20463 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput20464 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, -1, 1, 1, -1], ![0, 1, -1, 1, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput20464 : ExponentCode := normalNode9460

theorem canonicalSound20464 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20464.moment H = canonicalOutput20464.moment H :=
  canonical_of_padded canonicalInput20464 canonicalOutput20464 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput20465 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, -1, 1, 1, -1], ![0, 1, 0, -1, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput20465 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2630⟩

theorem canonicalSound20465 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20465.moment H = canonicalOutput20465.moment H :=
  canonical_of_padded canonicalInput20465 canonicalOutput20465 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput20466 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, -1, 1, 1, -1], ![0, 1, 0, 0, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput20466 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2725⟩

theorem canonicalSound20466 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20466.moment H = canonicalOutput20466.moment H :=
  canonical_of_padded canonicalInput20466 canonicalOutput20466 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput20467 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, -1, 1, 1, -1], ![0, 1, 0, 1, -2], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput20467 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1790⟩

theorem canonicalSound20467 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20467.moment H = canonicalOutput20467.moment H :=
  canonical_of_padded canonicalInput20467 canonicalOutput20467 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput20468 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, -1, 1, 1, -1], ![1, 0, 1, -2, 0], ![0, 1, -2, 2, -1]]⟩

def canonicalOutput20468 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1773⟩

theorem canonicalSound20468 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20468.moment H = canonicalOutput20468.moment H :=
  canonical_of_padded canonicalInput20468 canonicalOutput20468 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput20469 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, -1, 1, 2, -2], ![0, 1, -1, 0, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput20469 : ExponentCode := normalNode10274

theorem canonicalSound20469 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20469.moment H = canonicalOutput20469.moment H :=
  canonical_of_padded canonicalInput20469 canonicalOutput20469 (by decide) (by decide)
    ⟨true, false, canonicalPermutation23, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput20470 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, -1, 1, 2, -2], ![0, 1, 0, -1, 0], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput20470 : ExponentCode := normalNode10273

theorem canonicalSound20470 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20470.moment H = canonicalOutput20470.moment H :=
  canonical_of_padded canonicalInput20470 canonicalOutput20470 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput20471 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, -1, 1, 2, -2], ![0, 1, 0, 0, -1], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput20471 : ExponentCode := normalNode10646

theorem canonicalSound20471 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20471.moment H = canonicalOutput20471.moment H :=
  canonical_of_padded canonicalInput20471 canonicalOutput20471 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput20472 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, -1, 2, -2, 1], ![0, 1, -2, 2, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput20472 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2353⟩

theorem canonicalSound20472 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20472.moment H = canonicalOutput20472.moment H :=
  canonical_of_padded canonicalInput20472 canonicalOutput20472 (by decide) (by decide)
    ⟨true, false, canonicalPermutation80, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput20473 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, -1, 2, 0, -1], ![0, 0, -2, 3, -1], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput20473 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1704⟩

theorem canonicalSound20473 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20473.moment H = canonicalOutput20473.moment H :=
  canonical_of_padded canonicalInput20473 canonicalOutput20473 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput20474 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, -2, 1, 1], ![0, 0, 1, -2, 1], ![1, 0, 1, 2, -4]]⟩

def canonicalOutput20474 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node896⟩

theorem canonicalSound20474 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20474.moment H = canonicalOutput20474.moment H :=
  canonical_of_padded canonicalInput20474 canonicalOutput20474 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput20475 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, -2, 1, 1], ![0, 0, 1, 1, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput20475 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1078⟩

theorem canonicalSound20475 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20475.moment H = canonicalOutput20475.moment H :=
  canonical_of_padded canonicalInput20475 canonicalOutput20475 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput20476 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, -2, 1, 1], ![0, 0, 2, -2, 0], ![1, 0, 0, 2, -3]]⟩

def canonicalOutput20476 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1190⟩

theorem canonicalSound20476 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20476.moment H = canonicalOutput20476.moment H :=
  canonical_of_padded canonicalInput20476 canonicalOutput20476 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput20477 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, -2, 1, 1], ![0, 0, 2, -1, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput20477 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1005⟩

theorem canonicalSound20477 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20477.moment H = canonicalOutput20477.moment H :=
  canonical_of_padded canonicalInput20477 canonicalOutput20477 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput20478 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, -2, 1, 1], ![0, 1, 1, 1, -3], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput20478 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1690⟩

theorem canonicalSound20478 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20478.moment H = canonicalOutput20478.moment H :=
  canonical_of_padded canonicalInput20478 canonicalOutput20478 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20479 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -1, 2], ![0, 0, -2, 2, 0], ![0, 0, 1, -2, 1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput20479 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node944⟩

theorem canonicalSound20479 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20479.moment H = canonicalOutput20479.moment H :=
  canonical_of_padded canonicalInput20479 canonicalOutput20479 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

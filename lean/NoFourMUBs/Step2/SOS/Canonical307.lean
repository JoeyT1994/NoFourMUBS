import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes33
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput19648 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, 0, 1, -1], ![0, 2, 1, -3], ![1, -2, 0, 1]]⟩

def canonicalOutput19648 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node819⟩

theorem canonicalSound19648 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19648.moment H = canonicalOutput19648.moment H :=
  canonical_of_padded canonicalInput19648 canonicalOutput19648 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput19649 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, 0, 2, -2], ![0, 0, -1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput19649 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node268⟩

theorem canonicalSound19649 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19649.moment H = canonicalOutput19649.moment H :=
  canonical_of_padded canonicalInput19649 canonicalOutput19649 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19650 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, 0, 2, -2], ![0, 0, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput19650 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node272⟩

theorem canonicalSound19650 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19650.moment H = canonicalOutput19650.moment H :=
  canonical_of_padded canonicalInput19650 canonicalOutput19650 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19651 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, 0, 2, -2], ![0, 2, 0, -2], ![1, -2, 0, 1]]⟩

def canonicalOutput19651 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node808⟩

theorem canonicalSound19651 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19651.moment H = canonicalOutput19651.moment H :=
  canonical_of_padded canonicalInput19651 canonicalOutput19651 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput19652 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, 0, 3, -3], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput19652 : ExponentCode := normalNode9955

theorem canonicalSound19652 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19652.moment H = canonicalOutput19652.moment H :=
  canonical_of_padded canonicalInput19652 canonicalOutput19652 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19653 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, 0, 3, -3], ![0, 0, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput19653 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node269⟩

theorem canonicalSound19653 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19653.moment H = canonicalOutput19653.moment H :=
  canonical_of_padded canonicalInput19653 canonicalOutput19653 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19654 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, 0, 3, -3], ![0, 0, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput19654 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound19654 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19654.moment H = canonicalOutput19654.moment H :=
  canonical_of_padded canonicalInput19654 canonicalOutput19654 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19655 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, 0, 3, -3], ![0, 1, -1, 0], ![0, 0, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput19655 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1225⟩

theorem canonicalSound19655 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19655.moment H = canonicalOutput19655.moment H :=
  canonical_of_padded canonicalInput19655 canonicalOutput19655 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19656 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, 0, 3, -3], ![0, 2, -2, 0], ![1, -2, 1, 0]]⟩

def canonicalOutput19656 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1321⟩

theorem canonicalSound19656 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19656.moment H = canonicalOutput19656.moment H :=
  canonical_of_padded canonicalInput19656 canonicalOutput19656 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput19657 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, 0, 4, -4], ![-1, 2, -1, 0], ![1, -1, -1, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput19657 : ExponentCode := normalNode5547

theorem canonicalSound19657 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19657.moment H = canonicalOutput19657.moment H :=
  canonical_of_padded canonicalInput19657 canonicalOutput19657 (by decide) (by decide)
    ⟨false, true, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19658 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, 0, 4, -4], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput19658 : ExponentCode := normalNode9956

theorem canonicalSound19658 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19658.moment H = canonicalOutput19658.moment H :=
  canonical_of_padded canonicalInput19658 canonicalOutput19658 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19659 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, 0, 4, -4], ![0, 1, -1, 0], ![0, 0, -1, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput19659 : ExponentCode := normalNode9956

theorem canonicalSound19659 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19659.moment H = canonicalOutput19659.moment H :=
  canonical_of_padded canonicalInput19659 canonicalOutput19659 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19660 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, 0, 4, -4], ![0, 1, -1, 0], ![1, -1, -1, 1], ![0, 0, 0, 0]]⟩

def canonicalOutput19660 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1228⟩

theorem canonicalSound19660 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19660.moment H = canonicalOutput19660.moment H :=
  canonical_of_padded canonicalInput19660 canonicalOutput19660 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19661 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, 1, -2, 1], ![0, 0, 1, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput19661 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1218⟩

theorem canonicalSound19661 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19661.moment H = canonicalOutput19661.moment H :=
  canonical_of_padded canonicalInput19661 canonicalOutput19661 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19662 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, 1, -2, 1], ![0, 0, 4, -4], ![1, -1, 0, 0]]⟩

def canonicalOutput19662 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1227⟩

theorem canonicalSound19662 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19662.moment H = canonicalOutput19662.moment H :=
  canonical_of_padded canonicalInput19662 canonicalOutput19662 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19663 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, 1, -2, 1], ![0, 1, 0, -1], ![1, -2, 4, -3]]⟩

def canonicalOutput19663 : ExponentCode := normalNode9104

theorem canonicalSound19663 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19663.moment H = canonicalOutput19663.moment H :=
  canonical_of_padded canonicalInput19663 canonicalOutput19663 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput19664 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, 1, -2, 1], ![1, -1, 1, -1], ![0, 0, 3, -3]]⟩

def canonicalOutput19664 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1224⟩

theorem canonicalSound19664 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19664.moment H = canonicalOutput19664.moment H :=
  canonical_of_padded canonicalInput19664 canonicalOutput19664 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19665 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, 1, -1, 0], ![-1, 1, 0, 0], ![1, -1, 0, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput19665 : ExponentCode := normalNode9815

theorem canonicalSound19665 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19665.moment H = canonicalOutput19665.moment H :=
  canonical_of_padded canonicalInput19665 canonicalOutput19665 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19666 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, 1, -1, 0], ![-1, 1, 1, -1], ![1, -1, 1, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput19666 : ExponentCode := normalNode9822

theorem canonicalSound19666 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19666.moment H = canonicalOutput19666.moment H :=
  canonical_of_padded canonicalInput19666 canonicalOutput19666 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19667 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, 1, -1, 0], ![0, 0, 0, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput19667 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node269⟩

theorem canonicalSound19667 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19667.moment H = canonicalOutput19667.moment H :=
  canonical_of_padded canonicalInput19667 canonicalOutput19667 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput19668 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, 1, -1, 0], ![0, 0, 1, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput19668 : ExponentCode := normalNode9969

theorem canonicalSound19668 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19668.moment H = canonicalOutput19668.moment H :=
  canonical_of_padded canonicalInput19668 canonicalOutput19668 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19669 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, 1, -1, 0], ![0, 0, 2, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput19669 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1220⟩

theorem canonicalSound19669 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19669.moment H = canonicalOutput19669.moment H :=
  canonical_of_padded canonicalInput19669 canonicalOutput19669 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19670 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, 1, -1, 0], ![0, 0, 3, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput19670 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1225⟩

theorem canonicalSound19670 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19670.moment H = canonicalOutput19670.moment H :=
  canonical_of_padded canonicalInput19670 canonicalOutput19670 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19671 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, 1, -1, 0], ![0, 0, 4, -4], ![1, -1, -1, 1]]⟩

def canonicalOutput19671 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1228⟩

theorem canonicalSound19671 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19671.moment H = canonicalOutput19671.moment H :=
  canonical_of_padded canonicalInput19671 canonicalOutput19671 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19672 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -2, 4, -3]]⟩

def canonicalOutput19672 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node905⟩

theorem canonicalSound19672 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19672.moment H = canonicalOutput19672.moment H :=
  canonical_of_padded canonicalInput19672 canonicalOutput19672 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput19673 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, 0, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput19673 : ExponentCode := normalNode9906

theorem canonicalSound19673 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19673.moment H = canonicalOutput19673.moment H :=
  canonical_of_padded canonicalInput19673 canonicalOutput19673 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19674 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, 2, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput19674 : ExponentCode := normalNode9932

theorem canonicalSound19674 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19674.moment H = canonicalOutput19674.moment H :=
  canonical_of_padded canonicalInput19674 canonicalOutput19674 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19675 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![0, -1, 3, -2]]⟩

def canonicalOutput19675 : ExponentCode := normalNode9940

theorem canonicalSound19675 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19675.moment H = canonicalOutput19675.moment H :=
  canonical_of_padded canonicalInput19675 canonicalOutput19675 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19676 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 1, -1], ![0, -1, 2, -1]]⟩

def canonicalOutput19676 : ExponentCode := normalNode9932

theorem canonicalSound19676 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19676.moment H = canonicalOutput19676.moment H :=
  canonical_of_padded canonicalInput19676 canonicalOutput19676 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19677 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -2, 2, -1]]⟩

def canonicalOutput19677 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1049⟩

theorem canonicalSound19677 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19677.moment H = canonicalOutput19677.moment H :=
  canonical_of_padded canonicalInput19677 canonicalOutput19677 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput19678 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, 0, 3, -3]]⟩

def canonicalOutput19678 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1225⟩

theorem canonicalSound19678 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19678.moment H = canonicalOutput19678.moment H :=
  canonical_of_padded canonicalInput19678 canonicalOutput19678 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19679 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, 1, -1, 0], ![1, -1, 1, -1], ![0, 0, 2, -2]]⟩

def canonicalOutput19679 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1220⟩

theorem canonicalSound19679 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19679.moment H = canonicalOutput19679.moment H :=
  canonical_of_padded canonicalInput19679 canonicalOutput19679 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19680 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, 1, 0, -1], ![0, 0, -1, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput19680 : ExponentCode := normalNode9960

theorem canonicalSound19680 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19680.moment H = canonicalOutput19680.moment H :=
  canonical_of_padded canonicalInput19680 canonicalOutput19680 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19681 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, 1, 0, -1], ![0, 0, 3, -3], ![1, -1, -1, 1]]⟩

def canonicalOutput19681 : ExponentCode := normalNode9973

theorem canonicalSound19681 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19681.moment H = canonicalOutput19681.moment H :=
  canonical_of_padded canonicalInput19681 canonicalOutput19681 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19682 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, -2, 3, -2]]⟩

def canonicalOutput19682 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1046⟩

theorem canonicalSound19682 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19682.moment H = canonicalOutput19682.moment H :=
  canonical_of_padded canonicalInput19682 canonicalOutput19682 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput19683 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, 1, 0, -1], ![0, 1, 2, -3], ![1, -2, 0, 1]]⟩

def canonicalOutput19683 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node803⟩

theorem canonicalSound19683 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19683.moment H = canonicalOutput19683.moment H :=
  canonical_of_padded canonicalInput19683 canonicalOutput19683 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput19684 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, 1, 0, -1], ![1, -1, -1, 1], ![0, 0, 3, -3]]⟩

def canonicalOutput19684 : ExponentCode := normalNode9973

theorem canonicalSound19684 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19684.moment H = canonicalOutput19684.moment H :=
  canonical_of_padded canonicalInput19684 canonicalOutput19684 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19685 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, 1, 2, -3], ![0, 1, 0, -1], ![1, -2, 0, 1]]⟩

def canonicalOutput19685 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node803⟩

theorem canonicalSound19685 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19685.moment H = canonicalOutput19685.moment H :=
  canonical_of_padded canonicalInput19685 canonicalOutput19685 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput19686 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, 1, 3, -4], ![0, 1, -1, 0], ![1, -2, 0, 1]]⟩

def canonicalOutput19686 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1232⟩

theorem canonicalSound19686 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19686.moment H = canonicalOutput19686.moment H :=
  canonical_of_padded canonicalInput19686 canonicalOutput19686 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19687 : ExponentCode := ⟨3, 4, ![![-1, 0, -2, 3], ![0, 2, 0, -2], ![1, -2, 2, -1]]⟩

def canonicalOutput19687 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node177⟩

theorem canonicalSound19687 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19687.moment H = canonicalOutput19687.moment H :=
  canonical_of_padded canonicalInput19687 canonicalOutput19687 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput19688 : ExponentCode := ⟨3, 4, ![![-1, 0, -2, 3], ![0, 2, 3, -5], ![1, -2, -1, 2]]⟩

def canonicalOutput19688 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node73⟩

theorem canonicalSound19688 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19688.moment H = canonicalOutput19688.moment H :=
  canonical_of_padded canonicalInput19688 canonicalOutput19688 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput19689 : ExponentCode := ⟨3, 4, ![![-1, 0, -2, 3], ![1, -2, -1, 2], ![0, 2, 3, -5]]⟩

def canonicalOutput19689 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node73⟩

theorem canonicalSound19689 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19689.moment H = canonicalOutput19689.moment H :=
  canonical_of_padded canonicalInput19689 canonicalOutput19689 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19690 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -2, 4], ![0, 0, -1, 2, -1], ![0, 0, 2, -1, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput19690 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node896⟩

theorem canonicalSound19690 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19690.moment H = canonicalOutput19690.moment H :=
  canonical_of_padded canonicalInput19690 canonicalOutput19690 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19691 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -2, 4], ![0, 0, -1, 2, -1], ![0, 1, 2, -1, -2], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput19691 : ExponentCode := normalNode2401

theorem canonicalSound19691 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19691.moment H = canonicalOutput19691.moment H :=
  canonical_of_padded canonicalInput19691 canonicalOutput19691 (by decide) (by decide)
    ⟨true, true, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput19692 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -2, 4], ![0, 1, -1, 2, -2], ![0, 0, 2, -1, -1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput19692 : ExponentCode := normalNode4392

theorem canonicalSound19692 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19692.moment H = canonicalOutput19692.moment H :=
  canonical_of_padded canonicalInput19692 canonicalOutput19692 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput19693 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, -1, -1, 1, 1], ![0, 0, 2, 0, -2], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput19693 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1504⟩

theorem canonicalSound19693 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19693.moment H = canonicalOutput19693.moment H :=
  canonical_of_padded canonicalInput19693 canonicalOutput19693 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput19694 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, -1, -1, 1, 1], ![1, 0, 2, -1, -2], ![0, 1, 0, 1, -2]]⟩

def canonicalOutput19694 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2167⟩

theorem canonicalSound19694 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19694.moment H = canonicalOutput19694.moment H :=
  canonical_of_padded canonicalInput19694 canonicalOutput19694 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput19695 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, -1, -1, 2, 0], ![0, 0, 1, 1, -2], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput19695 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1798⟩

theorem canonicalSound19695 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19695.moment H = canonicalOutput19695.moment H :=
  canonical_of_padded canonicalInput19695 canonicalOutput19695 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation186, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput19696 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, -1, -1, 2, 0], ![0, 0, 2, -1, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput19696 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1655⟩

theorem canonicalSound19696 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19696.moment H = canonicalOutput19696.moment H :=
  canonical_of_padded canonicalInput19696 canonicalOutput19696 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput19697 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, -1, -1, 2, 0], ![0, 0, 3, -2, -1], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput19697 : ExponentCode := normalNode2516

theorem canonicalSound19697 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19697.moment H = canonicalOutput19697.moment H :=
  canonical_of_padded canonicalInput19697 canonicalOutput19697 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput19698 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, -1, -1, 2, 0], ![0, 1, 1, -1, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput19698 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1649⟩

theorem canonicalSound19698 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19698.moment H = canonicalOutput19698.moment H :=
  canonical_of_padded canonicalInput19698 canonicalOutput19698 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput19699 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, -1, -1, 2, 0], ![0, 1, 1, 0, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput19699 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1652⟩

theorem canonicalSound19699 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19699.moment H = canonicalOutput19699.moment H :=
  canonical_of_padded canonicalInput19699 canonicalOutput19699 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput19700 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, -1, -1, 2, 0], ![1, 0, 1, 1, -3], ![0, 1, 1, -2, 0]]⟩

def canonicalOutput19700 : ExponentCode := normalNode5904

theorem canonicalSound19700 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19700.moment H = canonicalOutput19700.moment H :=
  canonical_of_padded canonicalInput19700 canonicalOutput19700 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation186, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput19701 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, -1, -1, 2, 0], ![1, 0, 2, -2, -1], ![0, 1, 0, 1, -2]]⟩

def canonicalOutput19701 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1797⟩

theorem canonicalSound19701 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19701.moment H = canonicalOutput19701.moment H :=
  canonical_of_padded canonicalInput19701 canonicalOutput19701 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput19702 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, -1, -1, 3, -1], ![0, 0, 2, -2, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput19702 : ExponentCode := normalNode3390

theorem canonicalSound19702 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19702.moment H = canonicalOutput19702.moment H :=
  canonical_of_padded canonicalInput19702 canonicalOutput19702 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput19703 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, -1, -1, 3, -1], ![0, 1, 1, -1, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput19703 : ExponentCode := normalNode7685

theorem canonicalSound19703 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19703.moment H = canonicalOutput19703.moment H :=
  canonical_of_padded canonicalInput19703 canonicalOutput19703 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput19704 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, -1, 0, 1, 0], ![0, 1, 0, 1, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput19704 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2640⟩

theorem canonicalSound19704 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19704.moment H = canonicalOutput19704.moment H :=
  canonical_of_padded canonicalInput19704 canonicalOutput19704 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput19705 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, -1, 0, 1, 0], ![0, 1, 1, -1, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput19705 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2627⟩

theorem canonicalSound19705 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19705.moment H = canonicalOutput19705.moment H :=
  canonical_of_padded canonicalInput19705 canonicalOutput19705 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput19706 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, -1, 0, 2, -1], ![0, 1, 0, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput19706 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2812⟩

theorem canonicalSound19706 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19706.moment H = canonicalOutput19706.moment H :=
  canonical_of_padded canonicalInput19706 canonicalOutput19706 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput19707 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, -1, 0, 2, -1], ![0, 1, 0, 0, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput19707 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2542⟩

theorem canonicalSound19707 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19707.moment H = canonicalOutput19707.moment H :=
  canonical_of_padded canonicalInput19707 canonicalOutput19707 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput19708 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, -1, 0, 2, -1], ![0, 1, 1, -1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput19708 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2532⟩

theorem canonicalSound19708 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19708.moment H = canonicalOutput19708.moment H :=
  canonical_of_padded canonicalInput19708 canonicalOutput19708 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput19709 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, -1, 0, 3, -2], ![0, 0, 1, -2, 1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput19709 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1980⟩

theorem canonicalSound19709 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19709.moment H = canonicalOutput19709.moment H :=
  canonical_of_padded canonicalInput19709 canonicalOutput19709 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput19710 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, -1, 0, 3, -2], ![0, 0, 2, 0, -2], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput19710 : ExponentCode := normalNode505

theorem canonicalSound19710 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19710.moment H = canonicalOutput19710.moment H :=
  canonical_of_padded canonicalInput19710 canonicalOutput19710 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput19711 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, -1, 0, 3, -2], ![0, 1, -1, -1, 1], ![1, 0, 2, -1, -2]]⟩

def canonicalOutput19711 : ExponentCode := normalNode6143

theorem canonicalSound19711 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19711.moment H = canonicalOutput19711.moment H :=
  canonical_of_padded canonicalInput19711 canonicalOutput19711 (by decide) (by decide)
    ⟨true, true, canonicalPermutation54, canonicalPermutation3⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

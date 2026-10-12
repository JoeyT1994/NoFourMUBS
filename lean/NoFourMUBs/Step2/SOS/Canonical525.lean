import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput33600 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33600 : ExponentCode := normalNode10453

theorem canonicalSound33600 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33600.moment H = canonicalOutput33600.moment H :=
  canonical_of_padded canonicalInput33600 canonicalOutput33600 (by decide) (by decide)
    ⟨false, false, canonicalPermutation118, OAI.MUB6.Certificate.PairSemantics.permutation375⟩ (by decide +kernel) hH

def canonicalInput33601 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33601 : ExponentCode := normalNode10453

theorem canonicalSound33601 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33601.moment H = canonicalOutput33601.moment H :=
  canonical_of_padded canonicalInput33601 canonicalOutput33601 (by decide) (by decide)
    ⟨false, false, canonicalPermutation118, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput33602 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33602 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node64⟩

theorem canonicalSound33602 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33602.moment H = canonicalOutput33602.moment H :=
  canonical_of_padded canonicalInput33602 canonicalOutput33602 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput33603 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33603 : ExponentCode := normalNode10453

theorem canonicalSound33603 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33603.moment H = canonicalOutput33603.moment H :=
  canonical_of_padded canonicalInput33603 canonicalOutput33603 (by decide) (by decide)
    ⟨false, false, canonicalPermutation144, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput33604 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33604 : ExponentCode := normalNode10453

theorem canonicalSound33604 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33604.moment H = canonicalOutput33604.moment H :=
  canonical_of_padded canonicalInput33604 canonicalOutput33604 (by decide) (by decide)
    ⟨false, false, canonicalPermutation144, OAI.MUB6.Certificate.PairSemantics.permutation375⟩ (by decide +kernel) hH

def canonicalInput33605 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33605 : ExponentCode := normalNode10453

theorem canonicalSound33605 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33605.moment H = canonicalOutput33605.moment H :=
  canonical_of_padded canonicalInput33605 canonicalOutput33605 (by decide) (by decide)
    ⟨false, false, canonicalPermutation144, canonicalPermutation130⟩ (by decide +kernel) hH

def canonicalInput33606 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33606 : ExponentCode := normalNode8067

theorem canonicalSound33606 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33606.moment H = canonicalOutput33606.moment H :=
  canonical_of_padded canonicalInput33606 canonicalOutput33606 (by decide) (by decide)
    ⟨false, false, canonicalPermutation119, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput33607 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33607 : ExponentCode := normalNode10435

theorem canonicalSound33607 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33607.moment H = canonicalOutput33607.moment H :=
  canonical_of_padded canonicalInput33607 canonicalOutput33607 (by decide) (by decide)
    ⟨false, false, canonicalPermutation317, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput33608 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33608 : ExponentCode := normalNode10453

theorem canonicalSound33608 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33608.moment H = canonicalOutput33608.moment H :=
  canonical_of_padded canonicalInput33608 canonicalOutput33608 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation403, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput33609 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33609 : ExponentCode := normalNode10453

theorem canonicalSound33609 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33609.moment H = canonicalOutput33609.moment H :=
  canonical_of_padded canonicalInput33609 canonicalOutput33609 (by decide) (by decide)
    ⟨false, false, canonicalPermutation66, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput33610 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33610 : ExponentCode := normalNode10435

theorem canonicalSound33610 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33610.moment H = canonicalOutput33610.moment H :=
  canonical_of_padded canonicalInput33610 canonicalOutput33610 (by decide) (by decide)
    ⟨false, false, canonicalPermutation275, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput33611 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33611 : ExponentCode := normalNode8067

theorem canonicalSound33611 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33611.moment H = canonicalOutput33611.moment H :=
  canonical_of_padded canonicalInput33611 canonicalOutput33611 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation357, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput33612 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33612 : ExponentCode := normalNode10435

theorem canonicalSound33612 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33612.moment H = canonicalOutput33612.moment H :=
  canonical_of_padded canonicalInput33612 canonicalOutput33612 (by decide) (by decide)
    ⟨false, false, canonicalPermutation272, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput33613 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33613 : ExponentCode := normalNode10453

theorem canonicalSound33613 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33613.moment H = canonicalOutput33613.moment H :=
  canonical_of_padded canonicalInput33613 canonicalOutput33613 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation403, OAI.MUB6.Certificate.PairSemantics.permutation375⟩ (by decide +kernel) hH

def canonicalInput33614 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33614 : ExponentCode := normalNode8067

theorem canonicalSound33614 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33614.moment H = canonicalOutput33614.moment H :=
  canonical_of_padded canonicalInput33614 canonicalOutput33614 (by decide) (by decide)
    ⟨false, false, canonicalPermutation140, canonicalPermutation120⟩ (by decide +kernel) hH

def canonicalInput33615 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33615 : ExponentCode := normalNode8067

theorem canonicalSound33615 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33615.moment H = canonicalOutput33615.moment H :=
  canonical_of_padded canonicalInput33615 canonicalOutput33615 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation358, canonicalPermutation120⟩ (by decide +kernel) hH

def canonicalInput33616 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33616 : ExponentCode := normalNode10453

theorem canonicalSound33616 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33616.moment H = canonicalOutput33616.moment H :=
  canonical_of_padded canonicalInput33616 canonicalOutput33616 (by decide) (by decide)
    ⟨false, false, canonicalPermutation66, OAI.MUB6.Certificate.PairSemantics.permutation375⟩ (by decide +kernel) hH

def canonicalInput33617 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33617 : ExponentCode := normalNode10435

theorem canonicalSound33617 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33617.moment H = canonicalOutput33617.moment H :=
  canonical_of_padded canonicalInput33617 canonicalOutput33617 (by decide) (by decide)
    ⟨false, false, canonicalPermutation396, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput33618 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33618 : ExponentCode := normalNode8067

theorem canonicalSound33618 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33618.moment H = canonicalOutput33618.moment H :=
  canonical_of_padded canonicalInput33618 canonicalOutput33618 (by decide) (by decide)
    ⟨false, false, canonicalPermutation140, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput33619 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33619 : ExponentCode := normalNode10453

theorem canonicalSound33619 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33619.moment H = canonicalOutput33619.moment H :=
  canonical_of_padded canonicalInput33619 canonicalOutput33619 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation403, canonicalPermutation130⟩ (by decide +kernel) hH

def canonicalInput33620 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33620 : ExponentCode := normalNode10435

theorem canonicalSound33620 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33620.moment H = canonicalOutput33620.moment H :=
  canonical_of_padded canonicalInput33620 canonicalOutput33620 (by decide) (by decide)
    ⟨false, false, canonicalPermutation272, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput33621 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33621 : ExponentCode := normalNode10435

theorem canonicalSound33621 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33621.moment H = canonicalOutput33621.moment H :=
  canonical_of_padded canonicalInput33621 canonicalOutput33621 (by decide) (by decide)
    ⟨false, false, canonicalPermutation396, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput33622 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33622 : ExponentCode := normalNode10453

theorem canonicalSound33622 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33622.moment H = canonicalOutput33622.moment H :=
  canonical_of_padded canonicalInput33622 canonicalOutput33622 (by decide) (by decide)
    ⟨false, false, canonicalPermutation66, canonicalPermutation130⟩ (by decide +kernel) hH

def canonicalInput33623 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33623 : ExponentCode := normalNode8067

theorem canonicalSound33623 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33623.moment H = canonicalOutput33623.moment H :=
  canonical_of_padded canonicalInput33623 canonicalOutput33623 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation358, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput33624 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33624 : ExponentCode := normalNode10869

theorem canonicalSound33624 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33624.moment H = canonicalOutput33624.moment H :=
  canonical_of_padded canonicalInput33624 canonicalOutput33624 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33625 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33625 : ExponentCode := normalNode8067

theorem canonicalSound33625 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33625.moment H = canonicalOutput33625.moment H :=
  canonical_of_padded canonicalInput33625 canonicalOutput33625 (by decide) (by decide)
    ⟨false, false, canonicalPermutation146, OAI.MUB6.Certificate.PairSemantics.permutation296⟩ (by decide +kernel) hH

def canonicalInput33626 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33626 : ExponentCode := normalNode8067

theorem canonicalSound33626 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33626.moment H = canonicalOutput33626.moment H :=
  canonical_of_padded canonicalInput33626 canonicalOutput33626 (by decide) (by decide)
    ⟨false, false, canonicalPermutation145, OAI.MUB6.Certificate.PairSemantics.permutation296⟩ (by decide +kernel) hH

def canonicalInput33627 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33627 : ExponentCode := normalNode10869

theorem canonicalSound33627 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33627.moment H = canonicalOutput33627.moment H :=
  canonical_of_padded canonicalInput33627 canonicalOutput33627 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33628 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput33628 : ExponentCode := normalNode10434

theorem canonicalSound33628 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33628.moment H = canonicalOutput33628.moment H :=
  canonical_of_padded canonicalInput33628 canonicalOutput33628 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation320, OAI.MUB6.Certificate.PairSemantics.permutation259⟩ (by decide +kernel) hH

def canonicalInput33629 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput33629 : ExponentCode := normalNode10433

theorem canonicalSound33629 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33629.moment H = canonicalOutput33629.moment H :=
  canonical_of_padded canonicalInput33629 canonicalOutput33629 (by decide) (by decide)
    ⟨false, false, canonicalPermutation333, OAI.MUB6.Certificate.PairSemantics.permutation265⟩ (by decide +kernel) hH

def canonicalInput33630 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput33630 : ExponentCode := normalNode10396

theorem canonicalSound33630 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33630.moment H = canonicalOutput33630.moment H :=
  canonical_of_padded canonicalInput33630 canonicalOutput33630 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation380⟩ (by decide +kernel) hH

def canonicalInput33631 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput33631 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1291⟩

theorem canonicalSound33631 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33631.moment H = canonicalOutput33631.moment H :=
  canonical_of_padded canonicalInput33631 canonicalOutput33631 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61, canonicalPermutation222⟩ (by decide +kernel) hH

def canonicalInput33632 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput33632 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2758⟩

theorem canonicalSound33632 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33632.moment H = canonicalOutput33632.moment H :=
  canonical_of_padded canonicalInput33632 canonicalOutput33632 (by decide) (by decide)
    ⟨false, false, canonicalPermutation234, canonicalPermutation223⟩ (by decide +kernel) hH

def canonicalInput33633 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput33633 : ExponentCode := normalNode9917

theorem canonicalSound33633 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33633.moment H = canonicalOutput33633.moment H :=
  canonical_of_padded canonicalInput33633 canonicalOutput33633 (by decide) (by decide)
    ⟨false, false, canonicalPermutation238, canonicalPermutation225⟩ (by decide +kernel) hH

def canonicalInput33634 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33634 : ExponentCode := normalNode11165

theorem canonicalSound33634 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33634.moment H = canonicalOutput33634.moment H :=
  canonical_of_padded canonicalInput33634 canonicalOutput33634 (by decide) (by decide)
    ⟨false, true, canonicalPermutation185, OAI.MUB6.Certificate.PairSemantics.permutation202⟩ (by decide +kernel) hH

def canonicalInput33635 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33635 : ExponentCode := normalNode8361

theorem canonicalSound33635 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33635.moment H = canonicalOutput33635.moment H :=
  canonical_of_padded canonicalInput33635 canonicalOutput33635 (by decide) (by decide)
    ⟨false, false, canonicalPermutation286, canonicalPermutation226⟩ (by decide +kernel) hH

def canonicalInput33636 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33636 : ExponentCode := normalNode8361

theorem canonicalSound33636 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33636.moment H = canonicalOutput33636.moment H :=
  canonical_of_padded canonicalInput33636 canonicalOutput33636 (by decide) (by decide)
    ⟨false, false, canonicalPermutation351, canonicalPermutation226⟩ (by decide +kernel) hH

def canonicalInput33637 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33637 : ExponentCode := normalNode11165

theorem canonicalSound33637 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33637.moment H = canonicalOutput33637.moment H :=
  canonical_of_padded canonicalInput33637 canonicalOutput33637 (by decide) (by decide)
    ⟨false, true, canonicalPermutation188, OAI.MUB6.Certificate.PairSemantics.permutation202⟩ (by decide +kernel) hH

def canonicalInput33638 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33638 : ExponentCode := normalNode8361

theorem canonicalSound33638 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33638.moment H = canonicalOutput33638.moment H :=
  canonical_of_padded canonicalInput33638 canonicalOutput33638 (by decide) (by decide)
    ⟨false, false, canonicalPermutation325, canonicalPermutation228⟩ (by decide +kernel) hH

def canonicalInput33639 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33639 : ExponentCode := normalNode10645

theorem canonicalSound33639 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33639.moment H = canonicalOutput33639.moment H :=
  canonical_of_padded canonicalInput33639 canonicalOutput33639 (by decide) (by decide)
    ⟨false, false, canonicalPermutation349, canonicalPermutation110⟩ (by decide +kernel) hH

def canonicalInput33640 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33640 : ExponentCode := normalNode10453

theorem canonicalSound33640 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33640.moment H = canonicalOutput33640.moment H :=
  canonical_of_padded canonicalInput33640 canonicalOutput33640 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation205⟩ (by decide +kernel) hH

def canonicalInput33641 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33641 : ExponentCode := normalNode10453

theorem canonicalSound33641 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33641.moment H = canonicalOutput33641.moment H :=
  canonical_of_padded canonicalInput33641 canonicalOutput33641 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation208, OAI.MUB6.Certificate.PairSemantics.permutation205⟩ (by decide +kernel) hH

def canonicalInput33642 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33642 : ExponentCode := normalNode10645

theorem canonicalSound33642 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33642.moment H = canonicalOutput33642.moment H :=
  canonical_of_padded canonicalInput33642 canonicalOutput33642 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation219, canonicalPermutation110⟩ (by decide +kernel) hH

def canonicalInput33643 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33643 : ExponentCode := normalNode8361

theorem canonicalSound33643 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33643.moment H = canonicalOutput33643.moment H :=
  canonical_of_padded canonicalInput33643 canonicalOutput33643 (by decide) (by decide)
    ⟨false, false, canonicalPermutation348, canonicalPermutation228⟩ (by decide +kernel) hH

def canonicalInput33644 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33644 : ExponentCode := normalNode8361

theorem canonicalSound33644 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33644.moment H = canonicalOutput33644.moment H :=
  canonical_of_padded canonicalInput33644 canonicalOutput33644 (by decide) (by decide)
    ⟨false, false, canonicalPermutation347, canonicalPermutation228⟩ (by decide +kernel) hH

def canonicalInput33645 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33645 : ExponentCode := normalNode10453

theorem canonicalSound33645 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33645.moment H = canonicalOutput33645.moment H :=
  canonical_of_padded canonicalInput33645 canonicalOutput33645 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61, canonicalPermutation229⟩ (by decide +kernel) hH

def canonicalInput33646 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33646 : ExponentCode := normalNode10645

theorem canonicalSound33646 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33646.moment H = canonicalOutput33646.moment H :=
  canonical_of_padded canonicalInput33646 canonicalOutput33646 (by decide) (by decide)
    ⟨false, false, canonicalPermutation349, canonicalPermutation230⟩ (by decide +kernel) hH

def canonicalInput33647 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33647 : ExponentCode := normalNode10645

theorem canonicalSound33647 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33647.moment H = canonicalOutput33647.moment H :=
  canonical_of_padded canonicalInput33647 canonicalOutput33647 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation219, canonicalPermutation230⟩ (by decide +kernel) hH

def canonicalInput33648 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33648 : ExponentCode := normalNode10453

theorem canonicalSound33648 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33648.moment H = canonicalOutput33648.moment H :=
  canonical_of_padded canonicalInput33648 canonicalOutput33648 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation208, canonicalPermutation229⟩ (by decide +kernel) hH

def canonicalInput33649 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33649 : ExponentCode := normalNode8361

theorem canonicalSound33649 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33649.moment H = canonicalOutput33649.moment H :=
  canonical_of_padded canonicalInput33649 canonicalOutput33649 (by decide) (by decide)
    ⟨false, false, canonicalPermutation357, canonicalPermutation228⟩ (by decide +kernel) hH

def canonicalInput33650 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33650 : ExponentCode := normalNode11165

theorem canonicalSound33650 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33650.moment H = canonicalOutput33650.moment H :=
  canonical_of_padded canonicalInput33650 canonicalOutput33650 (by decide) (by decide)
    ⟨false, true, canonicalPermutation236, OAI.MUB6.Certificate.PairSemantics.permutation202⟩ (by decide +kernel) hH

def canonicalInput33651 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33651 : ExponentCode := normalNode8361

theorem canonicalSound33651 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33651.moment H = canonicalOutput33651.moment H :=
  canonical_of_padded canonicalInput33651 canonicalOutput33651 (by decide) (by decide)
    ⟨false, false, canonicalPermutation286, canonicalPermutation233⟩ (by decide +kernel) hH

def canonicalInput33652 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33652 : ExponentCode := normalNode8361

theorem canonicalSound33652 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33652.moment H = canonicalOutput33652.moment H :=
  canonical_of_padded canonicalInput33652 canonicalOutput33652 (by decide) (by decide)
    ⟨false, false, canonicalPermutation351, canonicalPermutation233⟩ (by decide +kernel) hH

def canonicalInput33653 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33653 : ExponentCode := normalNode11165

theorem canonicalSound33653 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33653.moment H = canonicalOutput33653.moment H :=
  canonical_of_padded canonicalInput33653 canonicalOutput33653 (by decide) (by decide)
    ⟨false, true, canonicalPermutation234, OAI.MUB6.Certificate.PairSemantics.permutation202⟩ (by decide +kernel) hH

def canonicalInput33654 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33654 : ExponentCode := normalNode10453

theorem canonicalSound33654 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33654.moment H = canonicalOutput33654.moment H :=
  canonical_of_padded canonicalInput33654 canonicalOutput33654 (by decide) (by decide)
    ⟨false, false, canonicalPermutation221, canonicalPermutation229⟩ (by decide +kernel) hH

def canonicalInput33655 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33655 : ExponentCode := normalNode8361

theorem canonicalSound33655 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33655.moment H = canonicalOutput33655.moment H :=
  canonical_of_padded canonicalInput33655 canonicalOutput33655 (by decide) (by decide)
    ⟨false, false, canonicalPermutation348, canonicalPermutation233⟩ (by decide +kernel) hH

def canonicalInput33656 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33656 : ExponentCode := normalNode10645

theorem canonicalSound33656 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33656.moment H = canonicalOutput33656.moment H :=
  canonical_of_padded canonicalInput33656 canonicalOutput33656 (by decide) (by decide)
    ⟨false, false, canonicalPermutation349, canonicalPermutation235⟩ (by decide +kernel) hH

def canonicalInput33657 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33657 : ExponentCode := normalNode10645

theorem canonicalSound33657 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33657.moment H = canonicalOutput33657.moment H :=
  canonical_of_padded canonicalInput33657 canonicalOutput33657 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation219, canonicalPermutation235⟩ (by decide +kernel) hH

def canonicalInput33658 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33658 : ExponentCode := normalNode8361

theorem canonicalSound33658 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33658.moment H = canonicalOutput33658.moment H :=
  canonical_of_padded canonicalInput33658 canonicalOutput33658 (by decide) (by decide)
    ⟨false, false, canonicalPermutation325, canonicalPermutation233⟩ (by decide +kernel) hH

def canonicalInput33659 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33659 : ExponentCode := normalNode10453

theorem canonicalSound33659 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33659.moment H = canonicalOutput33659.moment H :=
  canonical_of_padded canonicalInput33659 canonicalOutput33659 (by decide) (by decide)
    ⟨false, false, canonicalPermutation232, canonicalPermutation229⟩ (by decide +kernel) hH

def canonicalInput33660 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33660 : ExponentCode := normalNode10645

theorem canonicalSound33660 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33660.moment H = canonicalOutput33660.moment H :=
  canonical_of_padded canonicalInput33660 canonicalOutput33660 (by decide) (by decide)
    ⟨false, false, canonicalPermutation148, canonicalPermutation110⟩ (by decide +kernel) hH

def canonicalInput33661 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33661 : ExponentCode := normalNode10645

theorem canonicalSound33661 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33661.moment H = canonicalOutput33661.moment H :=
  canonical_of_padded canonicalInput33661 canonicalOutput33661 (by decide) (by decide)
    ⟨false, false, canonicalPermutation148, canonicalPermutation230⟩ (by decide +kernel) hH

def canonicalInput33662 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33662 : ExponentCode := normalNode10645

theorem canonicalSound33662 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33662.moment H = canonicalOutput33662.moment H :=
  canonical_of_padded canonicalInput33662 canonicalOutput33662 (by decide) (by decide)
    ⟨false, false, canonicalPermutation148, canonicalPermutation235⟩ (by decide +kernel) hH

def canonicalInput33663 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33663 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node5⟩

theorem canonicalSound33663 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33663.moment H = canonicalOutput33663.moment H :=
  canonical_of_padded canonicalInput33663 canonicalOutput33663 (by decide) (by decide)
    ⟨false, false, canonicalPermutation84, OAI.MUB6.Certificate.PairSemantics.permutation213⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

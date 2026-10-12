import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput16640 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -2, 1], ![0, 1, -1, 1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput16640 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2632⟩

theorem canonicalSound16640 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16640.moment H = canonicalOutput16640.moment H :=
  canonical_of_padded canonicalInput16640 canonicalOutput16640 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput16641 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -2, 1], ![0, 1, 0, -1, 0], ![1, 0, -1, 2, -2]]⟩

def canonicalOutput16641 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2445⟩

theorem canonicalSound16641 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16641.moment H = canonicalOutput16641.moment H :=
  canonical_of_padded canonicalInput16641 canonicalOutput16641 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation184, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput16642 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -2, 1], ![0, 1, 0, 0, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput16642 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2632⟩

theorem canonicalSound16642 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16642.moment H = canonicalOutput16642.moment H :=
  canonical_of_padded canonicalInput16642 canonicalOutput16642 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput16643 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -2, 1], ![0, 1, 0, 1, -2], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput16643 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2744⟩

theorem canonicalSound16643 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16643.moment H = canonicalOutput16643.moment H :=
  canonical_of_padded canonicalInput16643 canonicalOutput16643 (by decide) (by decide)
    ⟨true, false, canonicalPermutation17, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput16644 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -2, 1], ![0, 1, 1, 1, -3], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput16644 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2069⟩

theorem canonicalSound16644 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16644.moment H = canonicalOutput16644.moment H :=
  canonical_of_padded canonicalInput16644 canonicalOutput16644 (by decide) (by decide)
    ⟨true, false, canonicalPermutation32, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput16645 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -2, 1], ![1, 0, 1, 1, -3], ![0, 1, -2, 0, 1]]⟩

def canonicalOutput16645 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2069⟩

theorem canonicalSound16645 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16645.moment H = canonicalOutput16645.moment H :=
  canonical_of_padded canonicalInput16645 canonicalOutput16645 (by decide) (by decide)
    ⟨true, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput16646 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -1, 0], ![0, -1, 1, -1, 1], ![0, 2, -1, 1, -2], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput16646 : ExponentCode := normalNode10164

theorem canonicalSound16646 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16646.moment H = canonicalOutput16646.moment H :=
  canonical_of_padded canonicalInput16646 canonicalOutput16646 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation190, canonicalPermutation38⟩ (by decide +kernel) hH

def canonicalInput16647 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -1, 0], ![0, -1, 1, 0, 0], ![0, 1, -2, 1, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput16647 : ExponentCode := normalNode8359

theorem canonicalSound16647 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16647.moment H = canonicalOutput16647.moment H :=
  canonical_of_padded canonicalInput16647 canonicalOutput16647 (by decide) (by decide)
    ⟨true, true, canonicalPermutation18, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput16648 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -1, 0], ![0, 0, 0, -1, 1], ![0, 1, 1, 1, -3], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput16648 : ExponentCode := normalNode8737

theorem canonicalSound16648 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16648.moment H = canonicalOutput16648.moment H :=
  canonical_of_padded canonicalInput16648 canonicalOutput16648 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput16649 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -1, 0], ![0, 0, 1, -1, 0], ![0, 1, -1, 1, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput16649 : ExponentCode := normalNode8733

theorem canonicalSound16649 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16649.moment H = canonicalOutput16649.moment H :=
  canonical_of_padded canonicalInput16649 canonicalOutput16649 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation190, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput16650 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -1, 0], ![0, 0, 1, -1, 0], ![0, 2, -1, 1, -2], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput16650 : ExponentCode := normalNode8656

theorem canonicalSound16650 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16650.moment H = canonicalOutput16650.moment H :=
  canonical_of_padded canonicalInput16650 canonicalOutput16650 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation187, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput16651 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -1, 0], ![0, 0, 1, 0, -1], ![0, 0, -2, 1, 1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput16651 : ExponentCode := normalNode8344

theorem canonicalSound16651 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16651.moment H = canonicalOutput16651.moment H :=
  canonical_of_padded canonicalInput16651 canonicalOutput16651 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput16652 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -1, 0], ![0, 0, 1, 0, -1], ![0, 1, -2, 1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput16652 : ExponentCode := normalNode8353

theorem canonicalSound16652 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16652.moment H = canonicalOutput16652.moment H :=
  canonical_of_padded canonicalInput16652 canonicalOutput16652 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput16653 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -1, 0], ![0, 0, 1, 0, -1], ![0, 1, -1, 0, 0], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput16653 : ExponentCode := normalNode9495

theorem canonicalSound16653 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16653.moment H = canonicalOutput16653.moment H :=
  canonical_of_padded canonicalInput16653 canonicalOutput16653 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput16654 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -1, 0], ![0, 0, 1, 1, -2], ![0, 1, -1, -1, 1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput16654 : ExponentCode := normalNode8761

theorem canonicalSound16654 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16654.moment H = canonicalOutput16654.moment H :=
  canonical_of_padded canonicalInput16654 canonicalOutput16654 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation41⟩ (by decide +kernel) hH

def canonicalInput16655 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -1, 0], ![0, 0, 1, 1, -2], ![0, 1, -1, 0, 0], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput16655 : ExponentCode := normalNode8761

theorem canonicalSound16655 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16655.moment H = canonicalOutput16655.moment H :=
  canonical_of_padded canonicalInput16655 canonicalOutput16655 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput16656 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -1, 0], ![0, 0, 1, 1, -2], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput16656 : ExponentCode := normalNode9088

theorem canonicalSound16656 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16656.moment H = canonicalOutput16656.moment H :=
  canonical_of_padded canonicalInput16656 canonicalOutput16656 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16657 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -1, 0], ![0, 1, -2, -1, 2], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput16657 : ExponentCode := normalNode10308

theorem canonicalSound16657 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16657.moment H = canonicalOutput16657.moment H :=
  canonical_of_padded canonicalInput16657 canonicalOutput16657 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16658 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -1, 0], ![0, 1, -2, 0, 1], ![0, 1, 1, -1, -1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput16658 : ExponentCode := normalNode8192

theorem canonicalSound16658 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16658.moment H = canonicalOutput16658.moment H :=
  canonical_of_padded canonicalInput16658 canonicalOutput16658 (by decide) (by decide)
    ⟨true, true, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation174⟩ (by decide +kernel) hH

def canonicalInput16659 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -1, 0], ![0, 1, -2, 0, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput16659 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2584⟩

theorem canonicalSound16659 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16659.moment H = canonicalOutput16659.moment H :=
  canonical_of_padded canonicalInput16659 canonicalOutput16659 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16660 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -1, 0], ![0, 1, -2, 1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput16660 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2581⟩

theorem canonicalSound16660 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16660.moment H = canonicalOutput16660.moment H :=
  canonical_of_padded canonicalInput16660 canonicalOutput16660 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16661 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -1, 0], ![0, 1, -1, -1, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput16661 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2645⟩

theorem canonicalSound16661 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16661.moment H = canonicalOutput16661.moment H :=
  canonical_of_padded canonicalInput16661 canonicalOutput16661 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16662 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -1, 0], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput16662 : ExponentCode := normalNode8734

theorem canonicalSound16662 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16662.moment H = canonicalOutput16662.moment H :=
  canonical_of_padded canonicalInput16662 canonicalOutput16662 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation186, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput16663 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -1, 0], ![0, 1, -1, 0, 0], ![0, 1, 1, -1, -1], ![1, -1, -1, 1, 0]]⟩

def canonicalOutput16663 : ExponentCode := normalNode10168

theorem canonicalSound16663 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16663.moment H = canonicalOutput16663.moment H :=
  canonical_of_padded canonicalInput16663 canonicalOutput16663 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation198⟩ (by decide +kernel) hH

def canonicalInput16664 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -1, 0], ![0, 1, -1, 0, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput16664 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2756⟩

theorem canonicalSound16664 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16664.moment H = canonicalOutput16664.moment H :=
  canonical_of_padded canonicalInput16664 canonicalOutput16664 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput16665 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -1, 0], ![0, 1, -1, 1, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput16665 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2642⟩

theorem canonicalSound16665 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16665.moment H = canonicalOutput16665.moment H :=
  canonical_of_padded canonicalInput16665 canonicalOutput16665 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16666 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -1, 0], ![0, 1, -1, 2, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput16666 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2443⟩

theorem canonicalSound16666 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16666.moment H = canonicalOutput16666.moment H :=
  canonical_of_padded canonicalInput16666 canonicalOutput16666 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16667 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -1, 0], ![0, 1, 0, -1, 0], ![0, 0, 1, 1, -2], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput16667 : ExponentCode := normalNode8760

theorem canonicalSound16667 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16667.moment H = canonicalOutput16667.moment H :=
  canonical_of_padded canonicalInput16667 canonicalOutput16667 (by decide) (by decide)
    ⟨false, false, canonicalPermutation3, canonicalPermutation41⟩ (by decide +kernel) hH

def canonicalInput16668 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -1, 0], ![0, 1, 0, -1, 0], ![0, 1, 1, 1, -3], ![1, -1, -2, 0, 2]]⟩

def canonicalOutput16668 : ExponentCode := normalNode9230

theorem canonicalSound16668 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16668.moment H = canonicalOutput16668.moment H :=
  canonical_of_padded canonicalInput16668 canonicalOutput16668 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation170⟩ (by decide +kernel) hH

def canonicalInput16669 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -1, 0], ![0, 1, 0, 0, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput16669 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2756⟩

theorem canonicalSound16669 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16669.moment H = canonicalOutput16669.moment H :=
  canonical_of_padded canonicalInput16669 canonicalOutput16669 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput16670 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, 0, -1], ![0, -1, 1, 1, -1], ![0, 2, -1, 0, -1], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput16670 : ExponentCode := normalNode7575

theorem canonicalSound16670 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16670.moment H = canonicalOutput16670.moment H :=
  canonical_of_padded canonicalInput16670 canonicalOutput16670 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput16671 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, 0, -1], ![0, 0, 0, 1, -1], ![0, 1, 0, 0, -1], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput16671 : ExponentCode := normalNode7614

theorem canonicalSound16671 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16671.moment H = canonicalOutput16671.moment H :=
  canonical_of_padded canonicalInput16671 canonicalOutput16671 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput16672 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, 0, -1], ![0, 0, 0, 1, -1], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput16672 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2639⟩

theorem canonicalSound16672 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16672.moment H = canonicalOutput16672.moment H :=
  canonical_of_padded canonicalInput16672 canonicalOutput16672 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput16673 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, 0, -1], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput16673 : ExponentCode := normalNode7613

theorem canonicalSound16673 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16673.moment H = canonicalOutput16673.moment H :=
  canonical_of_padded canonicalInput16673 canonicalOutput16673 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput16674 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, 0, -1], ![0, 0, 1, 0, -1], ![0, 2, -1, 0, -1], ![1, -1, -1, -1, 2]]⟩

def canonicalOutput16674 : ExponentCode := normalNode7609

theorem canonicalSound16674 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16674.moment H = canonicalOutput16674.moment H :=
  canonical_of_padded canonicalInput16674 canonicalOutput16674 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput16675 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, 0, -1], ![0, 0, 1, 0, -1], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput16675 : ExponentCode := normalNode9072

theorem canonicalSound16675 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16675.moment H = canonicalOutput16675.moment H :=
  canonical_of_padded canonicalInput16675 canonicalOutput16675 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16676 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, 0, -1], ![0, 0, 1, 1, -2], ![1, 1, -2, -2, 2]]⟩

def canonicalOutput16676 : ExponentCode := normalNode6988

theorem canonicalSound16676 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16676.moment H = canonicalOutput16676.moment H :=
  canonical_of_padded canonicalInput16676 canonicalOutput16676 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16677 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, 0, -1], ![0, 1, -2, -1, 2], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput16677 : ExponentCode := normalNode6992

theorem canonicalSound16677 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16677.moment H = canonicalOutput16677.moment H :=
  canonical_of_padded canonicalInput16677 canonicalOutput16677 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16678 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, 0, -1], ![0, 1, -2, 0, 1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput16678 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2581⟩

theorem canonicalSound16678 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16678.moment H = canonicalOutput16678.moment H :=
  canonical_of_padded canonicalInput16678 canonicalOutput16678 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16679 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, 0, -1], ![0, 1, -2, 1, 0], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput16679 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2584⟩

theorem canonicalSound16679 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16679.moment H = canonicalOutput16679.moment H :=
  canonical_of_padded canonicalInput16679 canonicalOutput16679 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16680 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, 0, -1], ![0, 1, -1, -2, 2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput16680 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2443⟩

theorem canonicalSound16680 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16680.moment H = canonicalOutput16680.moment H :=
  canonical_of_padded canonicalInput16680 canonicalOutput16680 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16681 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, 0, -1], ![0, 1, -1, -1, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput16681 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2642⟩

theorem canonicalSound16681 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16681.moment H = canonicalOutput16681.moment H :=
  canonical_of_padded canonicalInput16681 canonicalOutput16681 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16682 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, 0, -1], ![0, 1, -1, 0, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput16682 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2756⟩

theorem canonicalSound16682 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16682.moment H = canonicalOutput16682.moment H :=
  canonical_of_padded canonicalInput16682 canonicalOutput16682 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation196, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput16683 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![0, 0, 1, 0, -1], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput16683 : ExponentCode := normalNode7613

theorem canonicalSound16683 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16683.moment H = canonicalOutput16683.moment H :=
  canonical_of_padded canonicalInput16683 canonicalOutput16683 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput16684 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![0, 1, 0, 0, -1], ![1, -1, 0, -2, 2]]⟩

def canonicalOutput16684 : ExponentCode := normalNode7616

theorem canonicalSound16684 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16684.moment H = canonicalOutput16684.moment H :=
  canonical_of_padded canonicalInput16684 canonicalOutput16684 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput16685 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput16685 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2645⟩

theorem canonicalSound16685 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16685.moment H = canonicalOutput16685.moment H :=
  canonical_of_padded canonicalInput16685 canonicalOutput16685 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16686 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, 0, -1], ![0, 1, 0, -2, 1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput16686 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2645⟩

theorem canonicalSound16686 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16686.moment H = canonicalOutput16686.moment H :=
  canonical_of_padded canonicalInput16686 canonicalOutput16686 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16687 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, 0, -1], ![0, 1, 0, 1, -2], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput16687 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2443⟩

theorem canonicalSound16687 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16687.moment H = canonicalOutput16687.moment H :=
  canonical_of_padded canonicalInput16687 canonicalOutput16687 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16688 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, 1, -2], ![-1, 2, -2, -1, 2], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput16688 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1111

theorem canonicalSound16688 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16688.moment H = canonicalOutput16688.moment H :=
  canonical_of_padded canonicalInput16688 canonicalOutput16688 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16689 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, 1, -2], ![-1, 2, -2, 0, 1], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput16689 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1158

theorem canonicalSound16689 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16689.moment H = canonicalOutput16689.moment H :=
  canonical_of_padded canonicalInput16689 canonicalOutput16689 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16690 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, 1, -2], ![0, -1, 1, -1, 1], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput16690 : ExponentCode := normalNode5621

theorem canonicalSound16690 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16690.moment H = canonicalOutput16690.moment H :=
  canonical_of_padded canonicalInput16690 canonicalOutput16690 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16691 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, 1, -2], ![0, -1, 1, 0, 0], ![1, 2, -2, -2, 1]]⟩

def canonicalOutput16691 : ExponentCode := normalNode8926

theorem canonicalSound16691 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16691.moment H = canonicalOutput16691.moment H :=
  canonical_of_padded canonicalInput16691 canonicalOutput16691 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput16692 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, 1, -2], ![0, 1, -2, -2, 3], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput16692 : ExponentCode := normalNode623

theorem canonicalSound16692 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16692.moment H = canonicalOutput16692.moment H :=
  canonical_of_padded canonicalInput16692 canonicalOutput16692 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16693 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, 1, -2], ![0, 1, -2, -1, 2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput16693 : ExponentCode := normalNode2699

theorem canonicalSound16693 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16693.moment H = canonicalOutput16693.moment H :=
  canonical_of_padded canonicalInput16693 canonicalOutput16693 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16694 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, 1, -2], ![0, 1, -2, 0, 1], ![0, 1, 0, 0, -1], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput16694 : ExponentCode := normalNode6834

theorem canonicalSound16694 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16694.moment H = canonicalOutput16694.moment H :=
  canonical_of_padded canonicalInput16694 canonicalOutput16694 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, canonicalPermutation72⟩ (by decide +kernel) hH

def canonicalInput16695 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, 1, -2], ![0, 1, -2, 0, 1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput16695 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2073⟩

theorem canonicalSound16695 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16695.moment H = canonicalOutput16695.moment H :=
  canonical_of_padded canonicalInput16695 canonicalOutput16695 (by decide) (by decide)
    ⟨true, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16696 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, 1, -2], ![0, 1, -1, -3, 3], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput16696 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1498⟩

theorem canonicalSound16696 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16696.moment H = canonicalOutput16696.moment H :=
  canonical_of_padded canonicalInput16696 canonicalOutput16696 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16697 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, 1, -2], ![0, 1, -1, -2, 2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput16697 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2445⟩

theorem canonicalSound16697 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16697.moment H = canonicalOutput16697.moment H :=
  canonical_of_padded canonicalInput16697 canonicalOutput16697 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput16698 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, 1, -2], ![0, 1, -1, -1, 1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput16698 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2632⟩

theorem canonicalSound16698 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16698.moment H = canonicalOutput16698.moment H :=
  canonical_of_padded canonicalInput16698 canonicalOutput16698 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation193, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput16699 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, 1, -2], ![0, 1, -1, 0, 0], ![0, 1, -1, 0, 0], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput16699 : ExponentCode := normalNode8648

theorem canonicalSound16699 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16699.moment H = canonicalOutput16699.moment H :=
  canonical_of_padded canonicalInput16699 canonicalOutput16699 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput16700 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, 1, -2], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, -1, 0, -2, 2]]⟩

def canonicalOutput16700 : ExponentCode := normalNode8650

theorem canonicalSound16700 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16700.moment H = canonicalOutput16700.moment H :=
  canonical_of_padded canonicalInput16700 canonicalOutput16700 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, canonicalPermutation53⟩ (by decide +kernel) hH

def canonicalInput16701 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, 1, -2], ![0, 1, -1, 0, 0], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput16701 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2744⟩

theorem canonicalSound16701 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16701.moment H = canonicalOutput16701.moment H :=
  canonical_of_padded canonicalInput16701 canonicalOutput16701 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput16702 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, 1, -2], ![0, 1, 0, -3, 2], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput16702 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1768⟩

theorem canonicalSound16702 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16702.moment H = canonicalOutput16702.moment H :=
  canonical_of_padded canonicalInput16702 canonicalOutput16702 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16703 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, 1, -2], ![0, 2, -2, -1, 1], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput16703 : ExponentCode := normalNode4293

theorem canonicalSound16703 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16703.moment H = canonicalOutput16703.moment H :=
  canonical_of_padded canonicalInput16703 canonicalOutput16703 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutationsPilot
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInputPilot0 : ExponentCode := ⟨2, 3, ![![-6, 2, 4], ![6, -2, -4]]⟩

def canonicalOutputPilot0 : ExponentCode := ⟨3, 2, ![![-6, 6], ![2, -2], ![4, -4]]⟩

theorem canonicalSoundPilot0 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInputPilot0.moment H = canonicalOutputPilot0.moment H :=
  canonical_of_padded canonicalInputPilot0 canonicalOutputPilot0 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInputPilot1 : ExponentCode := ⟨5, 3, ![![-2, -2, 4], ![0, 0, 0], ![0, 4, -4], ![1, -1, 0], ![1, -1, 0]]⟩

def canonicalOutputPilot1 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node157⟩

theorem canonicalSoundPilot1 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInputPilot1.moment H = canonicalOutputPilot1.moment H :=
  canonical_of_padded canonicalInputPilot1 canonicalOutputPilot1 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInputPilot2 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, -1, 1, 1, -2], ![1, 0, -1, -2, 2]]⟩

def canonicalOutputPilot2 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, -1, 2], ![0, 0, 2, -1, -1], ![0, 1, -2, 2, -1], ![1, 0, 1, -1, -1]]⟩

theorem canonicalSoundPilot2 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInputPilot2.moment H = canonicalOutputPilot2.moment H :=
  canonical_of_padded canonicalInputPilot2 canonicalOutputPilot2 (by decide) (by decide)
    ⟨true, true, canonicalPermutationPilot0, canonicalPermutationPilot1⟩ (by decide +kernel) hH

def canonicalInputPilot3 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 0, 2], ![0, -2, 0, 2, 0], ![0, 1, 2, -2, -1], ![2, 1, -2, 0, -1]]⟩

def canonicalOutputPilot3 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![0, 0, 2, -2], ![0, 2, -2, 0], ![2, 0, -1, -1]]⟩

theorem canonicalSoundPilot3 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInputPilot3.moment H = canonicalOutputPilot3.moment H :=
  canonical_of_padded canonicalInputPilot3 canonicalOutputPilot3 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInputPilot4 : ExponentCode := ⟨3, 5, ![![-2, 0, 1, 1, 0], ![0, 2, -2, 1, -1], ![2, -2, 1, -2, 1]]⟩

def canonicalOutputPilot4 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node660⟩

theorem canonicalSoundPilot4 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInputPilot4.moment H = canonicalOutputPilot4.moment H :=
  canonical_of_padded canonicalInputPilot4 canonicalOutputPilot4 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInputPilot5 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![2, -3, 1, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutputPilot5 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSoundPilot5 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInputPilot5.moment H = canonicalOutputPilot5.moment H :=
  canonical_of_padded canonicalInputPilot5 canonicalOutputPilot5 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInputPilot6 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 2, -1, 0], ![0, 0, 2, -2], ![1, 0, 0, -1], ![1, 0, -2, 1]]⟩

def canonicalOutputPilot6 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1809⟩

theorem canonicalSoundPilot6 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInputPilot6.moment H = canonicalOutputPilot6.moment H :=
  canonical_of_padded canonicalInputPilot6 canonicalOutputPilot6 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInputPilot7 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 1, -1, 0], ![0, 1, -1, 1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutputPilot7 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2724⟩

theorem canonicalSoundPilot7 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInputPilot7.moment H = canonicalOutputPilot7.moment H :=
  canonical_of_padded canonicalInputPilot7 canonicalOutputPilot7 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutationPilot2⟩ (by decide +kernel) hH

def canonicalInputPilot8 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![-1, -1, -1, 2, 1], ![0, 1, 1, -3, 1], ![2, 1, -1, 0, -2]]⟩

def canonicalOutputPilot8 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 1, 1, -1], ![0, -1, 2, -1], ![1, 1, -2, 0], ![1, 1, -1, -1]]⟩

theorem canonicalSoundPilot8 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInputPilot8.moment H = canonicalOutputPilot8.moment H :=
  canonical_of_padded canonicalInputPilot8 canonicalOutputPilot8 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInputPilot9 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, -1, 1, -1, 1], ![0, 1, -1, 0, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutputPilot9 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2724⟩

theorem canonicalSoundPilot9 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInputPilot9.moment H = canonicalOutputPilot9.moment H :=
  canonical_of_padded canonicalInputPilot9 canonicalOutputPilot9 (by decide) (by decide)
    ⟨true, true, canonicalPermutationPilot3, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInputPilot10 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutputPilot10 : ExponentCode := ⟨6, 6, ![![-1, -1, 0, 0, 0, 2], ![0, 0, -1, 0, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 1, -1, 0, 0], ![0, 1, 0, 0, 0, -1], ![1, 0, 0, 0, 0, -1]]⟩

theorem canonicalSoundPilot10 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInputPilot10.moment H = canonicalOutputPilot10.moment H :=
  canonical_of_padded canonicalInputPilot10 canonicalOutputPilot10 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation232, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInputPilot11 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![0, 2, 0, -1, -1], ![2, -1, -1, 0, 0], ![-2, 0, 1, 2, -1]]⟩

def canonicalOutputPilot11 : ExponentCode := ⟨6, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![0, 0, 0, 1, -1], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![2, 0, -1, -1, 0]]⟩

theorem canonicalSoundPilot11 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInputPilot11.moment H = canonicalOutputPilot11.moment H :=
  canonical_of_padded canonicalInputPilot11 canonicalOutputPilot11 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInputPilot12 : ExponentCode := ⟨4, 4, ![![0, 0, -3, 3], ![-1, 1, 1, -1], ![0, 1, 1, -2], ![1, -2, 1, 0]]⟩

def canonicalOutputPilot12 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1352⟩

theorem canonicalSoundPilot12 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInputPilot12.moment H = canonicalOutputPilot12.moment H :=
  canonical_of_padded canonicalInputPilot12 canonicalOutputPilot12 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInputPilot13 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, -1, -1, 4], ![1, -1, 3, -3]]⟩

def canonicalOutputPilot13 : ExponentCode := ⟨6, 4, ![![-2, -1, -1, 4], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 3, -3], ![1, 0, -1, 0]]⟩

theorem canonicalSoundPilot13 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInputPilot13.moment H = canonicalOutputPilot13.moment H :=
  canonical_of_padded canonicalInputPilot13 canonicalOutputPilot13 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInputPilot14 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -1, 0, 2], ![-1, 2, -1, 0], ![0, -2, 3, -1]]⟩

def canonicalOutputPilot14 : ExponentCode := ⟨6, 4, ![![-2, 1, 0, 1], ![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 0, -3, 2]]⟩

theorem canonicalSoundPilot14 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInputPilot14.moment H = canonicalOutputPilot14.moment H :=
  canonical_of_padded canonicalInputPilot14 canonicalOutputPilot14 (by decide) (by decide)
    ⟨false, true, canonicalPermutationPilot4, canonicalPermutationPilot5⟩ (by decide +kernel) hH

def canonicalInputPilot15 : ExponentCode := ⟨6, 3, ![![4, -3, -1], ![1, 0, -1], ![0, 1, -1], ![-1, 0, 1], ![-1, 0, 1], ![-3, 2, 1]]⟩

def canonicalOutputPilot15 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1383⟩

theorem canonicalSoundPilot15 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInputPilot15.moment H = canonicalOutputPilot15.moment H :=
  canonical_of_padded canonicalInputPilot15 canonicalOutputPilot15 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

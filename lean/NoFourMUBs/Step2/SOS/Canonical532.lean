import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput34048 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput34048 : ExponentCode := normalNode8406

theorem canonicalSound34048 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34048.moment H = canonicalOutput34048.moment H :=
  canonical_of_padded canonicalInput34048 canonicalOutput34048 (by decide) (by decide)
    ⟨false, false, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation342⟩ (by decide +kernel) hH

def canonicalInput34049 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput34049 : ExponentCode := normalNode8064

theorem canonicalSound34049 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34049.moment H = canonicalOutput34049.moment H :=
  canonical_of_padded canonicalInput34049 canonicalOutput34049 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput34050 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput34050 : ExponentCode := normalNode8066

theorem canonicalSound34050 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34050.moment H = canonicalOutput34050.moment H :=
  canonical_of_padded canonicalInput34050 canonicalOutput34050 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput34051 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput34051 : ExponentCode := normalNode8066

theorem canonicalSound34051 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34051.moment H = canonicalOutput34051.moment H :=
  canonical_of_padded canonicalInput34051 canonicalOutput34051 (by decide) (by decide)
    ⟨false, false, canonicalPermutation26, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput34052 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput34052 : ExponentCode := normalNode8064

theorem canonicalSound34052 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34052.moment H = canonicalOutput34052.moment H :=
  canonical_of_padded canonicalInput34052 canonicalOutput34052 (by decide) (by decide)
    ⟨false, false, canonicalPermutation26, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput34053 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput34053 : ExponentCode := normalNode8066

theorem canonicalSound34053 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34053.moment H = canonicalOutput34053.moment H :=
  canonical_of_padded canonicalInput34053 canonicalOutput34053 (by decide) (by decide)
    ⟨false, false, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation210⟩ (by decide +kernel) hH

def canonicalInput34054 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput34054 : ExponentCode := normalNode8361

theorem canonicalSound34054 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34054.moment H = canonicalOutput34054.moment H :=
  canonical_of_padded canonicalInput34054 canonicalOutput34054 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation274, canonicalPermutation93⟩ (by decide +kernel) hH

def canonicalInput34055 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput34055 : ExponentCode := normalNode8067

theorem canonicalSound34055 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34055.moment H = canonicalOutput34055.moment H :=
  canonical_of_padded canonicalInput34055 canonicalOutput34055 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput34056 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput34056 : ExponentCode := normalNode8067

theorem canonicalSound34056 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34056.moment H = canonicalOutput34056.moment H :=
  canonical_of_padded canonicalInput34056 canonicalOutput34056 (by decide) (by decide)
    ⟨false, false, canonicalPermutation26, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput34057 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34057 : ExponentCode := normalNode8361

theorem canonicalSound34057 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34057.moment H = canonicalOutput34057.moment H :=
  canonical_of_padded canonicalInput34057 canonicalOutput34057 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation324, canonicalPermutation93⟩ (by decide +kernel) hH

def canonicalInput34058 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput34058 : ExponentCode := normalNode8066

theorem canonicalSound34058 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34058.moment H = canonicalOutput34058.moment H :=
  canonical_of_padded canonicalInput34058 canonicalOutput34058 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation210⟩ (by decide +kernel) hH

def canonicalInput34059 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput34059 : ExponentCode := normalNode8066

theorem canonicalSound34059 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34059.moment H = canonicalOutput34059.moment H :=
  canonical_of_padded canonicalInput34059 canonicalOutput34059 (by decide) (by decide)
    ⟨false, false, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation210⟩ (by decide +kernel) hH

def canonicalInput34060 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput34060 : ExponentCode := normalNode8067

theorem canonicalSound34060 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34060.moment H = canonicalOutput34060.moment H :=
  canonical_of_padded canonicalInput34060 canonicalOutput34060 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput34061 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput34061 : ExponentCode := normalNode8361

theorem canonicalSound34061 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34061.moment H = canonicalOutput34061.moment H :=
  canonical_of_padded canonicalInput34061 canonicalOutput34061 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation274, OAI.MUB6.Certificate.PairSemantics.permutation340⟩ (by decide +kernel) hH

def canonicalInput34062 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34062 : ExponentCode := normalNode8361

theorem canonicalSound34062 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34062.moment H = canonicalOutput34062.moment H :=
  canonical_of_padded canonicalInput34062 canonicalOutput34062 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation324, OAI.MUB6.Certificate.PairSemantics.permutation340⟩ (by decide +kernel) hH

def canonicalInput34063 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput34063 : ExponentCode := normalNode8067

theorem canonicalSound34063 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34063.moment H = canonicalOutput34063.moment H :=
  canonical_of_padded canonicalInput34063 canonicalOutput34063 (by decide) (by decide)
    ⟨false, false, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput34064 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput34064 : ExponentCode := normalNode8066

theorem canonicalSound34064 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34064.moment H = canonicalOutput34064.moment H :=
  canonical_of_padded canonicalInput34064 canonicalOutput34064 (by decide) (by decide)
    ⟨false, false, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation210⟩ (by decide +kernel) hH

def canonicalInput34065 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput34065 : ExponentCode := normalNode8064

theorem canonicalSound34065 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34065.moment H = canonicalOutput34065.moment H :=
  canonical_of_padded canonicalInput34065 canonicalOutput34065 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput34066 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput34066 : ExponentCode := normalNode8066

theorem canonicalSound34066 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34066.moment H = canonicalOutput34066.moment H :=
  canonical_of_padded canonicalInput34066 canonicalOutput34066 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput34067 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput34067 : ExponentCode := normalNode8066

theorem canonicalSound34067 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34067.moment H = canonicalOutput34067.moment H :=
  canonical_of_padded canonicalInput34067 canonicalOutput34067 (by decide) (by decide)
    ⟨false, false, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput34068 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput34068 : ExponentCode := normalNode8064

theorem canonicalSound34068 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34068.moment H = canonicalOutput34068.moment H :=
  canonical_of_padded canonicalInput34068 canonicalOutput34068 (by decide) (by decide)
    ⟨false, false, canonicalPermutation30, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput34069 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput34069 : ExponentCode := normalNode8067

theorem canonicalSound34069 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34069.moment H = canonicalOutput34069.moment H :=
  canonical_of_padded canonicalInput34069 canonicalOutput34069 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput34070 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput34070 : ExponentCode := normalNode8066

theorem canonicalSound34070 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34070.moment H = canonicalOutput34070.moment H :=
  canonical_of_padded canonicalInput34070 canonicalOutput34070 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput34071 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput34071 : ExponentCode := normalNode8361

theorem canonicalSound34071 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34071.moment H = canonicalOutput34071.moment H :=
  canonical_of_padded canonicalInput34071 canonicalOutput34071 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation274, canonicalPermutation217⟩ (by decide +kernel) hH

def canonicalInput34072 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34072 : ExponentCode := normalNode8361

theorem canonicalSound34072 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34072.moment H = canonicalOutput34072.moment H :=
  canonical_of_padded canonicalInput34072 canonicalOutput34072 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation324, canonicalPermutation217⟩ (by decide +kernel) hH

def canonicalInput34073 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput34073 : ExponentCode := normalNode8066

theorem canonicalSound34073 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34073.moment H = canonicalOutput34073.moment H :=
  canonical_of_padded canonicalInput34073 canonicalOutput34073 (by decide) (by decide)
    ⟨false, false, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput34074 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput34074 : ExponentCode := normalNode8067

theorem canonicalSound34074 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34074.moment H = canonicalOutput34074.moment H :=
  canonical_of_padded canonicalInput34074 canonicalOutput34074 (by decide) (by decide)
    ⟨false, false, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput34075 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput34075 : ExponentCode := normalNode8361

theorem canonicalSound34075 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34075.moment H = canonicalOutput34075.moment H :=
  canonical_of_padded canonicalInput34075 canonicalOutput34075 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation245, canonicalPermutation93⟩ (by decide +kernel) hH

def canonicalInput34076 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput34076 : ExponentCode := normalNode8361

theorem canonicalSound34076 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34076.moment H = canonicalOutput34076.moment H :=
  canonical_of_padded canonicalInput34076 canonicalOutput34076 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation245, OAI.MUB6.Certificate.PairSemantics.permutation340⟩ (by decide +kernel) hH

def canonicalInput34077 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput34077 : ExponentCode := normalNode8361

theorem canonicalSound34077 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34077.moment H = canonicalOutput34077.moment H :=
  canonical_of_padded canonicalInput34077 canonicalOutput34077 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation245, canonicalPermutation217⟩ (by decide +kernel) hH

def canonicalInput34078 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34078 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound34078 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34078.moment H = canonicalOutput34078.moment H :=
  canonical_of_padded canonicalInput34078 canonicalOutput34078 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput34079 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput34079 : ExponentCode := normalNode8361

theorem canonicalSound34079 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34079.moment H = canonicalOutput34079.moment H :=
  canonical_of_padded canonicalInput34079 canonicalOutput34079 (by decide) (by decide)
    ⟨false, false, canonicalPermutation152, canonicalPermutation217⟩ (by decide +kernel) hH

def canonicalInput34080 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput34080 : ExponentCode := normalNode8361

theorem canonicalSound34080 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34080.moment H = canonicalOutput34080.moment H :=
  canonical_of_padded canonicalInput34080 canonicalOutput34080 (by decide) (by decide)
    ⟨false, false, canonicalPermutation152, OAI.MUB6.Certificate.PairSemantics.permutation340⟩ (by decide +kernel) hH

def canonicalInput34081 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput34081 : ExponentCode := normalNode8361

theorem canonicalSound34081 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34081.moment H = canonicalOutput34081.moment H :=
  canonical_of_padded canonicalInput34081 canonicalOutput34081 (by decide) (by decide)
    ⟨false, false, canonicalPermutation152, canonicalPermutation93⟩ (by decide +kernel) hH

def canonicalInput34082 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput34082 : ExponentCode := normalNode8066

theorem canonicalSound34082 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34082.moment H = canonicalOutput34082.moment H :=
  canonical_of_padded canonicalInput34082 canonicalOutput34082 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput34083 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput34083 : ExponentCode := normalNode8067

theorem canonicalSound34083 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34083.moment H = canonicalOutput34083.moment H :=
  canonical_of_padded canonicalInput34083 canonicalOutput34083 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput34084 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34084 : ExponentCode := normalNode8361

theorem canonicalSound34084 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34084.moment H = canonicalOutput34084.moment H :=
  canonical_of_padded canonicalInput34084 canonicalOutput34084 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation329, canonicalPermutation217⟩ (by decide +kernel) hH

def canonicalInput34085 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput34085 : ExponentCode := normalNode8361

theorem canonicalSound34085 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34085.moment H = canonicalOutput34085.moment H :=
  canonical_of_padded canonicalInput34085 canonicalOutput34085 (by decide) (by decide)
    ⟨false, false, canonicalPermutation153, canonicalPermutation217⟩ (by decide +kernel) hH

def canonicalInput34086 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput34086 : ExponentCode := normalNode8067

theorem canonicalSound34086 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34086.moment H = canonicalOutput34086.moment H :=
  canonical_of_padded canonicalInput34086 canonicalOutput34086 (by decide) (by decide)
    ⟨false, false, canonicalPermutation30, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput34087 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput34087 : ExponentCode := normalNode8066

theorem canonicalSound34087 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34087.moment H = canonicalOutput34087.moment H :=
  canonical_of_padded canonicalInput34087 canonicalOutput34087 (by decide) (by decide)
    ⟨false, false, canonicalPermutation30, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput34088 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput34088 : ExponentCode := normalNode8067

theorem canonicalSound34088 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34088.moment H = canonicalOutput34088.moment H :=
  canonical_of_padded canonicalInput34088 canonicalOutput34088 (by decide) (by decide)
    ⟨false, false, canonicalPermutation76, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput34089 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34089 : ExponentCode := normalNode8361

theorem canonicalSound34089 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34089.moment H = canonicalOutput34089.moment H :=
  canonical_of_padded canonicalInput34089 canonicalOutput34089 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation329, OAI.MUB6.Certificate.PairSemantics.permutation340⟩ (by decide +kernel) hH

def canonicalInput34090 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput34090 : ExponentCode := normalNode8066

theorem canonicalSound34090 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34090.moment H = canonicalOutput34090.moment H :=
  canonical_of_padded canonicalInput34090 canonicalOutput34090 (by decide) (by decide)
    ⟨false, false, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput34091 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput34091 : ExponentCode := normalNode8066

theorem canonicalSound34091 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34091.moment H = canonicalOutput34091.moment H :=
  canonical_of_padded canonicalInput34091 canonicalOutput34091 (by decide) (by decide)
    ⟨false, false, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput34092 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput34092 : ExponentCode := normalNode8361

theorem canonicalSound34092 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34092.moment H = canonicalOutput34092.moment H :=
  canonical_of_padded canonicalInput34092 canonicalOutput34092 (by decide) (by decide)
    ⟨false, false, canonicalPermutation153, OAI.MUB6.Certificate.PairSemantics.permutation340⟩ (by decide +kernel) hH

def canonicalInput34093 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput34093 : ExponentCode := normalNode8067

theorem canonicalSound34093 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34093.moment H = canonicalOutput34093.moment H :=
  canonical_of_padded canonicalInput34093 canonicalOutput34093 (by decide) (by decide)
    ⟨false, false, canonicalPermutation46, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput34094 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput34094 : ExponentCode := normalNode8066

theorem canonicalSound34094 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34094.moment H = canonicalOutput34094.moment H :=
  canonical_of_padded canonicalInput34094 canonicalOutput34094 (by decide) (by decide)
    ⟨false, false, canonicalPermutation76, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput34095 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34095 : ExponentCode := normalNode8361

theorem canonicalSound34095 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34095.moment H = canonicalOutput34095.moment H :=
  canonical_of_padded canonicalInput34095 canonicalOutput34095 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation329, canonicalPermutation93⟩ (by decide +kernel) hH

def canonicalInput34096 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput34096 : ExponentCode := normalNode8067

theorem canonicalSound34096 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34096.moment H = canonicalOutput34096.moment H :=
  canonical_of_padded canonicalInput34096 canonicalOutput34096 (by decide) (by decide)
    ⟨false, false, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput34097 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput34097 : ExponentCode := normalNode8067

theorem canonicalSound34097 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34097.moment H = canonicalOutput34097.moment H :=
  canonical_of_padded canonicalInput34097 canonicalOutput34097 (by decide) (by decide)
    ⟨false, false, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput34098 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput34098 : ExponentCode := normalNode8361

theorem canonicalSound34098 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34098.moment H = canonicalOutput34098.moment H :=
  canonical_of_padded canonicalInput34098 canonicalOutput34098 (by decide) (by decide)
    ⟨false, false, canonicalPermutation153, canonicalPermutation93⟩ (by decide +kernel) hH

def canonicalInput34099 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput34099 : ExponentCode := normalNode8066

theorem canonicalSound34099 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34099.moment H = canonicalOutput34099.moment H :=
  canonical_of_padded canonicalInput34099 canonicalOutput34099 (by decide) (by decide)
    ⟨false, false, canonicalPermutation46, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput34100 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput34100 : ExponentCode := normalNode8064

theorem canonicalSound34100 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34100.moment H = canonicalOutput34100.moment H :=
  canonical_of_padded canonicalInput34100 canonicalOutput34100 (by decide) (by decide)
    ⟨false, false, canonicalPermutation76, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput34101 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput34101 : ExponentCode := normalNode8066

theorem canonicalSound34101 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34101.moment H = canonicalOutput34101.moment H :=
  canonical_of_padded canonicalInput34101 canonicalOutput34101 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation210⟩ (by decide +kernel) hH

def canonicalInput34102 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput34102 : ExponentCode := normalNode8066

theorem canonicalSound34102 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34102.moment H = canonicalOutput34102.moment H :=
  canonical_of_padded canonicalInput34102 canonicalOutput34102 (by decide) (by decide)
    ⟨false, false, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation210⟩ (by decide +kernel) hH

def canonicalInput34103 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput34103 : ExponentCode := normalNode8064

theorem canonicalSound34103 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34103.moment H = canonicalOutput34103.moment H :=
  canonical_of_padded canonicalInput34103 canonicalOutput34103 (by decide) (by decide)
    ⟨false, false, canonicalPermutation46, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput34104 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput34104 : ExponentCode := normalNode8068

theorem canonicalSound34104 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34104.moment H = canonicalOutput34104.moment H :=
  canonical_of_padded canonicalInput34104 canonicalOutput34104 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation194, canonicalPermutation221⟩ (by decide +kernel) hH

def canonicalInput34105 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput34105 : ExponentCode := normalNode8458

theorem canonicalSound34105 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34105.moment H = canonicalOutput34105.moment H :=
  canonical_of_padded canonicalInput34105 canonicalOutput34105 (by decide) (by decide)
    ⟨false, false, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation209⟩ (by decide +kernel) hH

def canonicalInput34106 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput34106 : ExponentCode := normalNode8346

theorem canonicalSound34106 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34106.moment H = canonicalOutput34106.moment H :=
  canonical_of_padded canonicalInput34106 canonicalOutput34106 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation340⟩ (by decide +kernel) hH

def canonicalInput34107 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput34107 : ExponentCode := normalNode9068

theorem canonicalSound34107 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34107.moment H = canonicalOutput34107.moment H :=
  canonical_of_padded canonicalInput34107 canonicalOutput34107 (by decide) (by decide)
    ⟨false, false, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation300⟩ (by decide +kernel) hH

def canonicalInput34108 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput34108 : ExponentCode := normalNode8330

theorem canonicalSound34108 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34108.moment H = canonicalOutput34108.moment H :=
  canonical_of_padded canonicalInput34108 canonicalOutput34108 (by decide) (by decide)
    ⟨false, false, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation342⟩ (by decide +kernel) hH

def canonicalInput34109 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput34109 : ExponentCode := normalNode8406

theorem canonicalSound34109 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34109.moment H = canonicalOutput34109.moment H :=
  canonical_of_padded canonicalInput34109 canonicalOutput34109 (by decide) (by decide)
    ⟨false, false, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation342⟩ (by decide +kernel) hH

def canonicalInput34110 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput34110 : ExponentCode := normalNode8064

theorem canonicalSound34110 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34110.moment H = canonicalOutput34110.moment H :=
  canonical_of_padded canonicalInput34110 canonicalOutput34110 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput34111 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput34111 : ExponentCode := normalNode8066

theorem canonicalSound34111 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34111.moment H = canonicalOutput34111.moment H :=
  canonical_of_padded canonicalInput34111 canonicalOutput34111 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput34112 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput34112 : ExponentCode := normalNode8066

theorem canonicalSound34112 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34112.moment H = canonicalOutput34112.moment H :=
  canonical_of_padded canonicalInput34112 canonicalOutput34112 (by decide) (by decide)
    ⟨false, false, canonicalPermutation22, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput34113 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput34113 : ExponentCode := normalNode8064

theorem canonicalSound34113 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34113.moment H = canonicalOutput34113.moment H :=
  canonical_of_padded canonicalInput34113 canonicalOutput34113 (by decide) (by decide)
    ⟨false, false, canonicalPermutation22, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput34114 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput34114 : ExponentCode := normalNode8066

theorem canonicalSound34114 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34114.moment H = canonicalOutput34114.moment H :=
  canonical_of_padded canonicalInput34114 canonicalOutput34114 (by decide) (by decide)
    ⟨false, false, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation210⟩ (by decide +kernel) hH

def canonicalInput34115 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput34115 : ExponentCode := normalNode8361

theorem canonicalSound34115 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34115.moment H = canonicalOutput34115.moment H :=
  canonical_of_padded canonicalInput34115 canonicalOutput34115 (by decide) (by decide)
    ⟨false, false, canonicalPermutation156, canonicalPermutation93⟩ (by decide +kernel) hH

def canonicalInput34116 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput34116 : ExponentCode := normalNode8067

theorem canonicalSound34116 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34116.moment H = canonicalOutput34116.moment H :=
  canonical_of_padded canonicalInput34116 canonicalOutput34116 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput34117 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput34117 : ExponentCode := normalNode8067

theorem canonicalSound34117 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34117.moment H = canonicalOutput34117.moment H :=
  canonical_of_padded canonicalInput34117 canonicalOutput34117 (by decide) (by decide)
    ⟨false, false, canonicalPermutation22, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput34118 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34118 : ExponentCode := normalNode8361

theorem canonicalSound34118 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34118.moment H = canonicalOutput34118.moment H :=
  canonical_of_padded canonicalInput34118 canonicalOutput34118 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation325, canonicalPermutation93⟩ (by decide +kernel) hH

def canonicalInput34119 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput34119 : ExponentCode := normalNode8066

theorem canonicalSound34119 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34119.moment H = canonicalOutput34119.moment H :=
  canonical_of_padded canonicalInput34119 canonicalOutput34119 (by decide) (by decide)
    ⟨false, false, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation210⟩ (by decide +kernel) hH

def canonicalInput34120 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput34120 : ExponentCode := normalNode8066

theorem canonicalSound34120 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34120.moment H = canonicalOutput34120.moment H :=
  canonical_of_padded canonicalInput34120 canonicalOutput34120 (by decide) (by decide)
    ⟨false, false, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation210⟩ (by decide +kernel) hH

def canonicalInput34121 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput34121 : ExponentCode := normalNode8067

theorem canonicalSound34121 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34121.moment H = canonicalOutput34121.moment H :=
  canonical_of_padded canonicalInput34121 canonicalOutput34121 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput34122 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput34122 : ExponentCode := normalNode8361

theorem canonicalSound34122 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34122.moment H = canonicalOutput34122.moment H :=
  canonical_of_padded canonicalInput34122 canonicalOutput34122 (by decide) (by decide)
    ⟨false, false, canonicalPermutation156, OAI.MUB6.Certificate.PairSemantics.permutation340⟩ (by decide +kernel) hH

def canonicalInput34123 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34123 : ExponentCode := normalNode8361

theorem canonicalSound34123 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34123.moment H = canonicalOutput34123.moment H :=
  canonical_of_padded canonicalInput34123 canonicalOutput34123 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation325, OAI.MUB6.Certificate.PairSemantics.permutation340⟩ (by decide +kernel) hH

def canonicalInput34124 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput34124 : ExponentCode := normalNode8067

theorem canonicalSound34124 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34124.moment H = canonicalOutput34124.moment H :=
  canonical_of_padded canonicalInput34124 canonicalOutput34124 (by decide) (by decide)
    ⟨false, false, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput34125 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput34125 : ExponentCode := normalNode8066

theorem canonicalSound34125 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34125.moment H = canonicalOutput34125.moment H :=
  canonical_of_padded canonicalInput34125 canonicalOutput34125 (by decide) (by decide)
    ⟨false, false, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation210⟩ (by decide +kernel) hH

def canonicalInput34126 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput34126 : ExponentCode := normalNode8064

theorem canonicalSound34126 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34126.moment H = canonicalOutput34126.moment H :=
  canonical_of_padded canonicalInput34126 canonicalOutput34126 (by decide) (by decide)
    ⟨false, false, canonicalPermutation23, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput34127 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput34127 : ExponentCode := normalNode8066

theorem canonicalSound34127 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34127.moment H = canonicalOutput34127.moment H :=
  canonical_of_padded canonicalInput34127 canonicalOutput34127 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput34128 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput34128 : ExponentCode := normalNode8066

theorem canonicalSound34128 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34128.moment H = canonicalOutput34128.moment H :=
  canonical_of_padded canonicalInput34128 canonicalOutput34128 (by decide) (by decide)
    ⟨false, false, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput34129 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput34129 : ExponentCode := normalNode8064

theorem canonicalSound34129 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34129.moment H = canonicalOutput34129.moment H :=
  canonical_of_padded canonicalInput34129 canonicalOutput34129 (by decide) (by decide)
    ⟨false, false, canonicalPermutation20, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput34130 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput34130 : ExponentCode := normalNode8067

theorem canonicalSound34130 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34130.moment H = canonicalOutput34130.moment H :=
  canonical_of_padded canonicalInput34130 canonicalOutput34130 (by decide) (by decide)
    ⟨false, false, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput34131 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput34131 : ExponentCode := normalNode8066

theorem canonicalSound34131 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34131.moment H = canonicalOutput34131.moment H :=
  canonical_of_padded canonicalInput34131 canonicalOutput34131 (by decide) (by decide)
    ⟨false, false, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput34132 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput34132 : ExponentCode := normalNode8361

theorem canonicalSound34132 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34132.moment H = canonicalOutput34132.moment H :=
  canonical_of_padded canonicalInput34132 canonicalOutput34132 (by decide) (by decide)
    ⟨false, false, canonicalPermutation156, canonicalPermutation217⟩ (by decide +kernel) hH

def canonicalInput34133 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34133 : ExponentCode := normalNode8361

theorem canonicalSound34133 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34133.moment H = canonicalOutput34133.moment H :=
  canonical_of_padded canonicalInput34133 canonicalOutput34133 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation325, canonicalPermutation217⟩ (by decide +kernel) hH

def canonicalInput34134 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput34134 : ExponentCode := normalNode8066

theorem canonicalSound34134 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34134.moment H = canonicalOutput34134.moment H :=
  canonical_of_padded canonicalInput34134 canonicalOutput34134 (by decide) (by decide)
    ⟨false, false, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput34135 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput34135 : ExponentCode := normalNode8067

theorem canonicalSound34135 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34135.moment H = canonicalOutput34135.moment H :=
  canonical_of_padded canonicalInput34135 canonicalOutput34135 (by decide) (by decide)
    ⟨false, false, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput34136 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput34136 : ExponentCode := normalNode8361

theorem canonicalSound34136 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34136.moment H = canonicalOutput34136.moment H :=
  canonical_of_padded canonicalInput34136 canonicalOutput34136 (by decide) (by decide)
    ⟨false, false, canonicalPermutation157, canonicalPermutation93⟩ (by decide +kernel) hH

def canonicalInput34137 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput34137 : ExponentCode := normalNode8361

theorem canonicalSound34137 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34137.moment H = canonicalOutput34137.moment H :=
  canonical_of_padded canonicalInput34137 canonicalOutput34137 (by decide) (by decide)
    ⟨false, false, canonicalPermutation157, OAI.MUB6.Certificate.PairSemantics.permutation340⟩ (by decide +kernel) hH

def canonicalInput34138 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput34138 : ExponentCode := normalNode8361

theorem canonicalSound34138 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34138.moment H = canonicalOutput34138.moment H :=
  canonical_of_padded canonicalInput34138 canonicalOutput34138 (by decide) (by decide)
    ⟨false, false, canonicalPermutation157, canonicalPermutation217⟩ (by decide +kernel) hH

def canonicalInput34139 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34139 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound34139 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34139.moment H = canonicalOutput34139.moment H :=
  canonical_of_padded canonicalInput34139 canonicalOutput34139 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput34140 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput34140 : ExponentCode := normalNode8361

theorem canonicalSound34140 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34140.moment H = canonicalOutput34140.moment H :=
  canonical_of_padded canonicalInput34140 canonicalOutput34140 (by decide) (by decide)
    ⟨false, false, canonicalPermutation158, canonicalPermutation217⟩ (by decide +kernel) hH

def canonicalInput34141 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput34141 : ExponentCode := normalNode8361

theorem canonicalSound34141 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34141.moment H = canonicalOutput34141.moment H :=
  canonical_of_padded canonicalInput34141 canonicalOutput34141 (by decide) (by decide)
    ⟨false, false, canonicalPermutation158, OAI.MUB6.Certificate.PairSemantics.permutation340⟩ (by decide +kernel) hH

def canonicalInput34142 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput34142 : ExponentCode := normalNode8361

theorem canonicalSound34142 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34142.moment H = canonicalOutput34142.moment H :=
  canonical_of_padded canonicalInput34142 canonicalOutput34142 (by decide) (by decide)
    ⟨false, false, canonicalPermutation158, canonicalPermutation93⟩ (by decide +kernel) hH

def canonicalInput34143 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput34143 : ExponentCode := normalNode8066

theorem canonicalSound34143 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34143.moment H = canonicalOutput34143.moment H :=
  canonical_of_padded canonicalInput34143 canonicalOutput34143 (by decide) (by decide)
    ⟨false, false, canonicalPermutation23, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput34144 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput34144 : ExponentCode := normalNode8067

theorem canonicalSound34144 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34144.moment H = canonicalOutput34144.moment H :=
  canonical_of_padded canonicalInput34144 canonicalOutput34144 (by decide) (by decide)
    ⟨false, false, canonicalPermutation23, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput34145 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34145 : ExponentCode := normalNode8361

theorem canonicalSound34145 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34145.moment H = canonicalOutput34145.moment H :=
  canonical_of_padded canonicalInput34145 canonicalOutput34145 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation330, canonicalPermutation217⟩ (by decide +kernel) hH

def canonicalInput34146 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput34146 : ExponentCode := normalNode8361

theorem canonicalSound34146 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34146.moment H = canonicalOutput34146.moment H :=
  canonical_of_padded canonicalInput34146 canonicalOutput34146 (by decide) (by decide)
    ⟨false, false, canonicalPermutation159, canonicalPermutation217⟩ (by decide +kernel) hH

def canonicalInput34147 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput34147 : ExponentCode := normalNode8067

theorem canonicalSound34147 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34147.moment H = canonicalOutput34147.moment H :=
  canonical_of_padded canonicalInput34147 canonicalOutput34147 (by decide) (by decide)
    ⟨false, false, canonicalPermutation20, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput34148 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput34148 : ExponentCode := normalNode8066

theorem canonicalSound34148 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34148.moment H = canonicalOutput34148.moment H :=
  canonical_of_padded canonicalInput34148 canonicalOutput34148 (by decide) (by decide)
    ⟨false, false, canonicalPermutation20, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput34149 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput34149 : ExponentCode := normalNode8067

theorem canonicalSound34149 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34149.moment H = canonicalOutput34149.moment H :=
  canonical_of_padded canonicalInput34149 canonicalOutput34149 (by decide) (by decide)
    ⟨false, false, canonicalPermutation52, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput34150 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34150 : ExponentCode := normalNode8361

theorem canonicalSound34150 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34150.moment H = canonicalOutput34150.moment H :=
  canonical_of_padded canonicalInput34150 canonicalOutput34150 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation330, OAI.MUB6.Certificate.PairSemantics.permutation340⟩ (by decide +kernel) hH

def canonicalInput34151 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput34151 : ExponentCode := normalNode8066

theorem canonicalSound34151 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34151.moment H = canonicalOutput34151.moment H :=
  canonical_of_padded canonicalInput34151 canonicalOutput34151 (by decide) (by decide)
    ⟨false, false, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput34152 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput34152 : ExponentCode := normalNode8066

theorem canonicalSound34152 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34152.moment H = canonicalOutput34152.moment H :=
  canonical_of_padded canonicalInput34152 canonicalOutput34152 (by decide) (by decide)
    ⟨false, false, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput34153 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput34153 : ExponentCode := normalNode8361

theorem canonicalSound34153 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34153.moment H = canonicalOutput34153.moment H :=
  canonical_of_padded canonicalInput34153 canonicalOutput34153 (by decide) (by decide)
    ⟨false, false, canonicalPermutation159, OAI.MUB6.Certificate.PairSemantics.permutation340⟩ (by decide +kernel) hH

def canonicalInput34154 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput34154 : ExponentCode := normalNode8067

theorem canonicalSound34154 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34154.moment H = canonicalOutput34154.moment H :=
  canonical_of_padded canonicalInput34154 canonicalOutput34154 (by decide) (by decide)
    ⟨false, false, canonicalPermutation56, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput34155 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput34155 : ExponentCode := normalNode8066

theorem canonicalSound34155 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34155.moment H = canonicalOutput34155.moment H :=
  canonical_of_padded canonicalInput34155 canonicalOutput34155 (by decide) (by decide)
    ⟨false, false, canonicalPermutation52, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput34156 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34156 : ExponentCode := normalNode8361

theorem canonicalSound34156 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34156.moment H = canonicalOutput34156.moment H :=
  canonical_of_padded canonicalInput34156 canonicalOutput34156 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation330, canonicalPermutation93⟩ (by decide +kernel) hH

def canonicalInput34157 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput34157 : ExponentCode := normalNode8067

theorem canonicalSound34157 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34157.moment H = canonicalOutput34157.moment H :=
  canonical_of_padded canonicalInput34157 canonicalOutput34157 (by decide) (by decide)
    ⟨false, false, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput34158 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput34158 : ExponentCode := normalNode8067

theorem canonicalSound34158 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34158.moment H = canonicalOutput34158.moment H :=
  canonical_of_padded canonicalInput34158 canonicalOutput34158 (by decide) (by decide)
    ⟨false, false, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput34159 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput34159 : ExponentCode := normalNode8361

theorem canonicalSound34159 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34159.moment H = canonicalOutput34159.moment H :=
  canonical_of_padded canonicalInput34159 canonicalOutput34159 (by decide) (by decide)
    ⟨false, false, canonicalPermutation159, canonicalPermutation93⟩ (by decide +kernel) hH

def canonicalInput34160 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput34160 : ExponentCode := normalNode8066

theorem canonicalSound34160 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34160.moment H = canonicalOutput34160.moment H :=
  canonical_of_padded canonicalInput34160 canonicalOutput34160 (by decide) (by decide)
    ⟨false, false, canonicalPermutation56, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput34161 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput34161 : ExponentCode := normalNode8064

theorem canonicalSound34161 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34161.moment H = canonicalOutput34161.moment H :=
  canonical_of_padded canonicalInput34161 canonicalOutput34161 (by decide) (by decide)
    ⟨false, false, canonicalPermutation52, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput34162 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput34162 : ExponentCode := normalNode8066

theorem canonicalSound34162 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34162.moment H = canonicalOutput34162.moment H :=
  canonical_of_padded canonicalInput34162 canonicalOutput34162 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation210⟩ (by decide +kernel) hH

def canonicalInput34163 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput34163 : ExponentCode := normalNode8066

theorem canonicalSound34163 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34163.moment H = canonicalOutput34163.moment H :=
  canonical_of_padded canonicalInput34163 canonicalOutput34163 (by decide) (by decide)
    ⟨false, false, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation210⟩ (by decide +kernel) hH

def canonicalInput34164 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput34164 : ExponentCode := normalNode8064

theorem canonicalSound34164 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34164.moment H = canonicalOutput34164.moment H :=
  canonical_of_padded canonicalInput34164 canonicalOutput34164 (by decide) (by decide)
    ⟨false, false, canonicalPermutation56, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput34165 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput34165 : ExponentCode := normalNode8068

theorem canonicalSound34165 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34165.moment H = canonicalOutput34165.moment H :=
  canonical_of_padded canonicalInput34165 canonicalOutput34165 (by decide) (by decide)
    ⟨false, false, canonicalPermutation23, canonicalPermutation221⟩ (by decide +kernel) hH

def canonicalInput34166 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput34166 : ExponentCode := normalNode8458

theorem canonicalSound34166 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34166.moment H = canonicalOutput34166.moment H :=
  canonical_of_padded canonicalInput34166 canonicalOutput34166 (by decide) (by decide)
    ⟨false, false, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation209⟩ (by decide +kernel) hH

def canonicalInput34167 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput34167 : ExponentCode := normalNode8346

theorem canonicalSound34167 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34167.moment H = canonicalOutput34167.moment H :=
  canonical_of_padded canonicalInput34167 canonicalOutput34167 (by decide) (by decide)
    ⟨false, false, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation340⟩ (by decide +kernel) hH

def canonicalInput34168 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput34168 : ExponentCode := normalNode3766

theorem canonicalSound34168 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34168.moment H = canonicalOutput34168.moment H :=
  canonical_of_padded canonicalInput34168 canonicalOutput34168 (by decide) (by decide)
    ⟨false, true, canonicalPermutation169, OAI.MUB6.Certificate.PairSemantics.permutation306⟩ (by decide +kernel) hH

def canonicalInput34169 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput34169 : ExponentCode := normalNode10446

theorem canonicalSound34169 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34169.moment H = canonicalOutput34169.moment H :=
  canonical_of_padded canonicalInput34169 canonicalOutput34169 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation266, OAI.MUB6.Certificate.PairSemantics.permutation401⟩ (by decide +kernel) hH

def canonicalInput34170 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput34170 : ExponentCode := normalNode10743

theorem canonicalSound34170 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34170.moment H = canonicalOutput34170.moment H :=
  canonical_of_padded canonicalInput34170 canonicalOutput34170 (by decide) (by decide)
    ⟨false, true, canonicalPermutation398, OAI.MUB6.Certificate.PairSemantics.permutation401⟩ (by decide +kernel) hH

def canonicalInput34171 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput34171 : ExponentCode := normalNode3656

theorem canonicalSound34171 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34171.moment H = canonicalOutput34171.moment H :=
  canonical_of_padded canonicalInput34171 canonicalOutput34171 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput34172 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput34172 : ExponentCode := normalNode8064

theorem canonicalSound34172 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34172.moment H = canonicalOutput34172.moment H :=
  canonical_of_padded canonicalInput34172 canonicalOutput34172 (by decide) (by decide)
    ⟨false, false, canonicalPermutation146, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput34173 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput34173 : ExponentCode := normalNode8064

theorem canonicalSound34173 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34173.moment H = canonicalOutput34173.moment H :=
  canonical_of_padded canonicalInput34173 canonicalOutput34173 (by decide) (by decide)
    ⟨false, false, canonicalPermutation145, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput34174 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput34174 : ExponentCode := normalNode3656

theorem canonicalSound34174 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34174.moment H = canonicalOutput34174.moment H :=
  canonical_of_padded canonicalInput34174 canonicalOutput34174 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput34175 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput34175 : ExponentCode := normalNode8064

theorem canonicalSound34175 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34175.moment H = canonicalOutput34175.moment H :=
  canonical_of_padded canonicalInput34175 canonicalOutput34175 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput23168 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23168 : ExponentCode := normalNode10453

theorem canonicalSound23168 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23168.moment H = canonicalOutput23168.moment H :=
  canonical_of_padded canonicalInput23168 canonicalOutput23168 (by decide) (by decide)
    ⟨false, false, canonicalPermutation255, OAI.MUB6.Certificate.PairSemantics.permutation226⟩ (by decide +kernel) hH

def canonicalInput23169 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput23169 : ExponentCode := normalNode8361

theorem canonicalSound23169 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23169.moment H = canonicalOutput23169.moment H :=
  canonical_of_padded canonicalInput23169 canonicalOutput23169 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation235, OAI.MUB6.Certificate.PairSemantics.permutation229⟩ (by decide +kernel) hH

def canonicalInput23170 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23170 : ExponentCode := normalNode10453

theorem canonicalSound23170 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23170.moment H = canonicalOutput23170.moment H :=
  canonical_of_padded canonicalInput23170 canonicalOutput23170 (by decide) (by decide)
    ⟨false, false, canonicalPermutation258, OAI.MUB6.Certificate.PairSemantics.permutation226⟩ (by decide +kernel) hH

def canonicalInput23171 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23171 : ExponentCode := normalNode10645

theorem canonicalSound23171 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23171.moment H = canonicalOutput23171.moment H :=
  canonical_of_padded canonicalInput23171 canonicalOutput23171 (by decide) (by decide)
    ⟨false, false, canonicalPermutation178, canonicalPermutation251⟩ (by decide +kernel) hH

def canonicalInput23172 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23172 : ExponentCode := normalNode8361

theorem canonicalSound23172 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23172.moment H = canonicalOutput23172.moment H :=
  canonical_of_padded canonicalInput23172 canonicalOutput23172 (by decide) (by decide)
    ⟨false, false, canonicalPermutation204, canonicalPermutation274⟩ (by decide +kernel) hH

def canonicalInput23173 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput23173 : ExponentCode := normalNode8361

theorem canonicalSound23173 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23173.moment H = canonicalOutput23173.moment H :=
  canonical_of_padded canonicalInput23173 canonicalOutput23173 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation236, canonicalPermutation274⟩ (by decide +kernel) hH

def canonicalInput23174 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23174 : ExponentCode := normalNode10645

theorem canonicalSound23174 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23174.moment H = canonicalOutput23174.moment H :=
  canonical_of_padded canonicalInput23174 canonicalOutput23174 (by decide) (by decide)
    ⟨false, false, canonicalPermutation183, canonicalPermutation251⟩ (by decide +kernel) hH

def canonicalInput23175 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23175 : ExponentCode := normalNode10453

theorem canonicalSound23175 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23175.moment H = canonicalOutput23175.moment H :=
  canonical_of_padded canonicalInput23175 canonicalOutput23175 (by decide) (by decide)
    ⟨false, false, canonicalPermutation259, OAI.MUB6.Certificate.PairSemantics.permutation226⟩ (by decide +kernel) hH

def canonicalInput23176 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23176 : ExponentCode := normalNode8361

theorem canonicalSound23176 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23176.moment H = canonicalOutput23176.moment H :=
  canonical_of_padded canonicalInput23176 canonicalOutput23176 (by decide) (by decide)
    ⟨false, false, canonicalPermutation204, OAI.MUB6.Certificate.PairSemantics.permutation229⟩ (by decide +kernel) hH

def canonicalInput23177 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23177 : ExponentCode := normalNode10645

theorem canonicalSound23177 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23177.moment H = canonicalOutput23177.moment H :=
  canonical_of_padded canonicalInput23177 canonicalOutput23177 (by decide) (by decide)
    ⟨false, false, canonicalPermutation178, canonicalPermutation249⟩ (by decide +kernel) hH

def canonicalInput23178 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23178 : ExponentCode := normalNode10453

theorem canonicalSound23178 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23178.moment H = canonicalOutput23178.moment H :=
  canonical_of_padded canonicalInput23178 canonicalOutput23178 (by decide) (by decide)
    ⟨false, false, canonicalPermutation258, canonicalPermutation250⟩ (by decide +kernel) hH

def canonicalInput23179 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23179 : ExponentCode := normalNode10453

theorem canonicalSound23179 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23179.moment H = canonicalOutput23179.moment H :=
  canonical_of_padded canonicalInput23179 canonicalOutput23179 (by decide) (by decide)
    ⟨false, false, canonicalPermutation259, canonicalPermutation250⟩ (by decide +kernel) hH

def canonicalInput23180 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23180 : ExponentCode := normalNode10645

theorem canonicalSound23180 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23180.moment H = canonicalOutput23180.moment H :=
  canonical_of_padded canonicalInput23180 canonicalOutput23180 (by decide) (by decide)
    ⟨false, false, canonicalPermutation183, canonicalPermutation249⟩ (by decide +kernel) hH

def canonicalInput23181 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput23181 : ExponentCode := normalNode8361

theorem canonicalSound23181 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23181.moment H = canonicalOutput23181.moment H :=
  canonical_of_padded canonicalInput23181 canonicalOutput23181 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation236, OAI.MUB6.Certificate.PairSemantics.permutation229⟩ (by decide +kernel) hH

def canonicalInput23182 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput23182 : ExponentCode := normalNode11165

theorem canonicalSound23182 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23182.moment H = canonicalOutput23182.moment H :=
  canonical_of_padded canonicalInput23182 canonicalOutput23182 (by decide) (by decide)
    ⟨false, true, canonicalPermutation260, OAI.MUB6.Certificate.PairSemantics.permutation221⟩ (by decide +kernel) hH

def canonicalInput23183 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23183 : ExponentCode := normalNode8361

theorem canonicalSound23183 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23183.moment H = canonicalOutput23183.moment H :=
  canonical_of_padded canonicalInput23183 canonicalOutput23183 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation228, canonicalPermutation180⟩ (by decide +kernel) hH

def canonicalInput23184 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23184 : ExponentCode := normalNode8361

theorem canonicalSound23184 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23184.moment H = canonicalOutput23184.moment H :=
  canonical_of_padded canonicalInput23184 canonicalOutput23184 (by decide) (by decide)
    ⟨false, false, canonicalPermutation247, canonicalPermutation180⟩ (by decide +kernel) hH

def canonicalInput23185 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput23185 : ExponentCode := normalNode11165

theorem canonicalSound23185 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23185.moment H = canonicalOutput23185.moment H :=
  canonical_of_padded canonicalInput23185 canonicalOutput23185 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation227, OAI.MUB6.Certificate.PairSemantics.permutation221⟩ (by decide +kernel) hH

def canonicalInput23186 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput23186 : ExponentCode := normalNode10415

theorem canonicalSound23186 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23186.moment H = canonicalOutput23186.moment H :=
  canonical_of_padded canonicalInput23186 canonicalOutput23186 (by decide) (by decide)
    ⟨false, true, canonicalPermutation261, canonicalPermutation204⟩ (by decide +kernel) hH

def canonicalInput23187 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput23187 : ExponentCode := normalNode10371

theorem canonicalSound23187 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23187.moment H = canonicalOutput23187.moment H :=
  canonical_of_padded canonicalInput23187 canonicalOutput23187 (by decide) (by decide)
    ⟨false, false, canonicalPermutation262, canonicalPermutation204⟩ (by decide +kernel) hH

def canonicalInput23188 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput23188 : ExponentCode := normalNode10274

theorem canonicalSound23188 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23188.moment H = canonicalOutput23188.moment H :=
  canonical_of_padded canonicalInput23188 canonicalOutput23188 (by decide) (by decide)
    ⟨false, true, canonicalPermutation263, canonicalPermutation275⟩ (by decide +kernel) hH

def canonicalInput23189 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput23189 : ExponentCode := normalNode10685

theorem canonicalSound23189 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23189.moment H = canonicalOutput23189.moment H :=
  canonical_of_padded canonicalInput23189 canonicalOutput23189 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation300⟩ (by decide +kernel) hH

def canonicalInput23190 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput23190 : ExponentCode := normalNode10452

theorem canonicalSound23190 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23190.moment H = canonicalOutput23190.moment H :=
  canonical_of_padded canonicalInput23190 canonicalOutput23190 (by decide) (by decide)
    ⟨false, false, canonicalPermutation242, canonicalPermutation85⟩ (by decide +kernel) hH

def canonicalInput23191 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput23191 : ExponentCode := normalNode10367

theorem canonicalSound23191 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23191.moment H = canonicalOutput23191.moment H :=
  canonical_of_padded canonicalInput23191 canonicalOutput23191 (by decide) (by decide)
    ⟨false, false, canonicalPermutation243, OAI.MUB6.Certificate.PairSemantics.permutation403⟩ (by decide +kernel) hH

def canonicalInput23192 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput23192 : ExponentCode := normalNode10869

theorem canonicalSound23192 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23192.moment H = canonicalOutput23192.moment H :=
  canonical_of_padded canonicalInput23192 canonicalOutput23192 (by decide) (by decide)
    ⟨false, true, canonicalPermutation99, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23193 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23193 : ExponentCode := normalNode8067

theorem canonicalSound23193 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23193.moment H = canonicalOutput23193.moment H :=
  canonical_of_padded canonicalInput23193 canonicalOutput23193 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation243, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput23194 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23194 : ExponentCode := normalNode8067

theorem canonicalSound23194 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23194.moment H = canonicalOutput23194.moment H :=
  canonical_of_padded canonicalInput23194 canonicalOutput23194 (by decide) (by decide)
    ⟨false, false, canonicalPermutation163, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput23195 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput23195 : ExponentCode := normalNode10869

theorem canonicalSound23195 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23195.moment H = canonicalOutput23195.moment H :=
  canonical_of_padded canonicalInput23195 canonicalOutput23195 (by decide) (by decide)
    ⟨false, true, canonicalPermutation94, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23196 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput23196 : ExponentCode := normalNode8067

theorem canonicalSound23196 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23196.moment H = canonicalOutput23196.moment H :=
  canonical_of_padded canonicalInput23196 canonicalOutput23196 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation296⟩ (by decide +kernel) hH

def canonicalInput23197 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23197 : ExponentCode := normalNode10453

theorem canonicalSound23197 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23197.moment H = canonicalOutput23197.moment H :=
  canonical_of_padded canonicalInput23197 canonicalOutput23197 (by decide) (by decide)
    ⟨false, false, canonicalPermutation130, canonicalPermutation130⟩ (by decide +kernel) hH

def canonicalInput23198 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23198 : ExponentCode := normalNode10435

theorem canonicalSound23198 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23198.moment H = canonicalOutput23198.moment H :=
  canonical_of_padded canonicalInput23198 canonicalOutput23198 (by decide) (by decide)
    ⟨false, false, canonicalPermutation35, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput23199 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23199 : ExponentCode := normalNode10435

theorem canonicalSound23199 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23199.moment H = canonicalOutput23199.moment H :=
  canonical_of_padded canonicalInput23199 canonicalOutput23199 (by decide) (by decide)
    ⟨false, false, canonicalPermutation17, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput23200 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23200 : ExponentCode := normalNode10453

theorem canonicalSound23200 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23200.moment H = canonicalOutput23200.moment H :=
  canonical_of_padded canonicalInput23200 canonicalOutput23200 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation375, canonicalPermutation130⟩ (by decide +kernel) hH

def canonicalInput23201 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23201 : ExponentCode := normalNode8067

theorem canonicalSound23201 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23201.moment H = canonicalOutput23201.moment H :=
  canonical_of_padded canonicalInput23201 canonicalOutput23201 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation264, OAI.MUB6.Certificate.PairSemantics.permutation296⟩ (by decide +kernel) hH

def canonicalInput23202 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput23202 : ExponentCode := normalNode8067

theorem canonicalSound23202 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23202.moment H = canonicalOutput23202.moment H :=
  canonical_of_padded canonicalInput23202 canonicalOutput23202 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation315, OAI.MUB6.Certificate.PairSemantics.permutation296⟩ (by decide +kernel) hH

def canonicalInput23203 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23203 : ExponentCode := normalNode10435

theorem canonicalSound23203 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23203.moment H = canonicalOutput23203.moment H :=
  canonical_of_padded canonicalInput23203 canonicalOutput23203 (by decide) (by decide)
    ⟨false, false, canonicalPermutation35, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput23204 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23204 : ExponentCode := normalNode10453

theorem canonicalSound23204 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23204.moment H = canonicalOutput23204.moment H :=
  canonical_of_padded canonicalInput23204 canonicalOutput23204 (by decide) (by decide)
    ⟨false, false, canonicalPermutation130, OAI.MUB6.Certificate.PairSemantics.permutation375⟩ (by decide +kernel) hH

def canonicalInput23205 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23205 : ExponentCode := normalNode10453

theorem canonicalSound23205 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23205.moment H = canonicalOutput23205.moment H :=
  canonical_of_padded canonicalInput23205 canonicalOutput23205 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation375, OAI.MUB6.Certificate.PairSemantics.permutation375⟩ (by decide +kernel) hH

def canonicalInput23206 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23206 : ExponentCode := normalNode10435

theorem canonicalSound23206 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23206.moment H = canonicalOutput23206.moment H :=
  canonical_of_padded canonicalInput23206 canonicalOutput23206 (by decide) (by decide)
    ⟨false, false, canonicalPermutation17, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput23207 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23207 : ExponentCode := normalNode8067

theorem canonicalSound23207 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23207.moment H = canonicalOutput23207.moment H :=
  canonical_of_padded canonicalInput23207 canonicalOutput23207 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation265, OAI.MUB6.Certificate.PairSemantics.permutation296⟩ (by decide +kernel) hH

def canonicalInput23208 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput23208 : ExponentCode := normalNode10869

theorem canonicalSound23208 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23208.moment H = canonicalOutput23208.moment H :=
  canonical_of_padded canonicalInput23208 canonicalOutput23208 (by decide) (by decide)
    ⟨false, true, canonicalPermutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23209 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23209 : ExponentCode := normalNode8067

theorem canonicalSound23209 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23209.moment H = canonicalOutput23209.moment H :=
  canonical_of_padded canonicalInput23209 canonicalOutput23209 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation243, canonicalPermutation120⟩ (by decide +kernel) hH

def canonicalInput23210 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23210 : ExponentCode := normalNode8067

theorem canonicalSound23210 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23210.moment H = canonicalOutput23210.moment H :=
  canonical_of_padded canonicalInput23210 canonicalOutput23210 (by decide) (by decide)
    ⟨false, false, canonicalPermutation163, canonicalPermutation120⟩ (by decide +kernel) hH

def canonicalInput23211 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput23211 : ExponentCode := normalNode10869

theorem canonicalSound23211 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23211.moment H = canonicalOutput23211.moment H :=
  canonical_of_padded canonicalInput23211 canonicalOutput23211 (by decide) (by decide)
    ⟨false, true, canonicalPermutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23212 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23212 : ExponentCode := normalNode10435

theorem canonicalSound23212 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23212.moment H = canonicalOutput23212.moment H :=
  canonical_of_padded canonicalInput23212 canonicalOutput23212 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation193, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput23213 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23213 : ExponentCode := normalNode8067

theorem canonicalSound23213 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23213.moment H = canonicalOutput23213.moment H :=
  canonical_of_padded canonicalInput23213 canonicalOutput23213 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation264, canonicalPermutation120⟩ (by decide +kernel) hH

def canonicalInput23214 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23214 : ExponentCode := normalNode10453

theorem canonicalSound23214 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23214.moment H = canonicalOutput23214.moment H :=
  canonical_of_padded canonicalInput23214 canonicalOutput23214 (by decide) (by decide)
    ⟨false, false, canonicalPermutation130, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput23215 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23215 : ExponentCode := normalNode10453

theorem canonicalSound23215 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23215.moment H = canonicalOutput23215.moment H :=
  canonical_of_padded canonicalInput23215 canonicalOutput23215 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation375, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput23216 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput23216 : ExponentCode := normalNode8067

theorem canonicalSound23216 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23216.moment H = canonicalOutput23216.moment H :=
  canonical_of_padded canonicalInput23216 canonicalOutput23216 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation314, canonicalPermutation120⟩ (by decide +kernel) hH

def canonicalInput23217 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23217 : ExponentCode := normalNode10435

theorem canonicalSound23217 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23217.moment H = canonicalOutput23217.moment H :=
  canonical_of_padded canonicalInput23217 canonicalOutput23217 (by decide) (by decide)
    ⟨false, false, canonicalPermutation33, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput23218 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23218 : ExponentCode := normalNode10453

theorem canonicalSound23218 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23218.moment H = canonicalOutput23218.moment H :=
  canonical_of_padded canonicalInput23218 canonicalOutput23218 (by decide) (by decide)
    ⟨false, false, canonicalPermutation121, canonicalPermutation130⟩ (by decide +kernel) hH

def canonicalInput23219 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23219 : ExponentCode := normalNode10453

theorem canonicalSound23219 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23219.moment H = canonicalOutput23219.moment H :=
  canonical_of_padded canonicalInput23219 canonicalOutput23219 (by decide) (by decide)
    ⟨false, false, canonicalPermutation121, OAI.MUB6.Certificate.PairSemantics.permutation375⟩ (by decide +kernel) hH

def canonicalInput23220 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23220 : ExponentCode := normalNode10453

theorem canonicalSound23220 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23220.moment H = canonicalOutput23220.moment H :=
  canonical_of_padded canonicalInput23220 canonicalOutput23220 (by decide) (by decide)
    ⟨false, false, canonicalPermutation121, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput23221 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23221 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node64⟩

theorem canonicalSound23221 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23221.moment H = canonicalOutput23221.moment H :=
  canonical_of_padded canonicalInput23221 canonicalOutput23221 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput23222 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23222 : ExponentCode := normalNode10453

theorem canonicalSound23222 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23222.moment H = canonicalOutput23222.moment H :=
  canonical_of_padded canonicalInput23222 canonicalOutput23222 (by decide) (by decide)
    ⟨false, false, canonicalPermutation120, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput23223 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23223 : ExponentCode := normalNode10453

theorem canonicalSound23223 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23223.moment H = canonicalOutput23223.moment H :=
  canonical_of_padded canonicalInput23223 canonicalOutput23223 (by decide) (by decide)
    ⟨false, false, canonicalPermutation120, OAI.MUB6.Certificate.PairSemantics.permutation375⟩ (by decide +kernel) hH

def canonicalInput23224 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23224 : ExponentCode := normalNode10453

theorem canonicalSound23224 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23224.moment H = canonicalOutput23224.moment H :=
  canonical_of_padded canonicalInput23224 canonicalOutput23224 (by decide) (by decide)
    ⟨false, false, canonicalPermutation120, canonicalPermutation130⟩ (by decide +kernel) hH

def canonicalInput23225 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23225 : ExponentCode := normalNode8067

theorem canonicalSound23225 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23225.moment H = canonicalOutput23225.moment H :=
  canonical_of_padded canonicalInput23225 canonicalOutput23225 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation264, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput23226 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23226 : ExponentCode := normalNode10435

theorem canonicalSound23226 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23226.moment H = canonicalOutput23226.moment H :=
  canonical_of_padded canonicalInput23226 canonicalOutput23226 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation193, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput23227 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23227 : ExponentCode := normalNode10453

theorem canonicalSound23227 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23227.moment H = canonicalOutput23227.moment H :=
  canonical_of_padded canonicalInput23227 canonicalOutput23227 (by decide) (by decide)
    ⟨false, false, canonicalPermutation82, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput23228 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23228 : ExponentCode := normalNode10453

theorem canonicalSound23228 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23228.moment H = canonicalOutput23228.moment H :=
  canonical_of_padded canonicalInput23228 canonicalOutput23228 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation296, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput23229 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23229 : ExponentCode := normalNode10435

theorem canonicalSound23229 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23229.moment H = canonicalOutput23229.moment H :=
  canonical_of_padded canonicalInput23229 canonicalOutput23229 (by decide) (by decide)
    ⟨false, false, canonicalPermutation33, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput23230 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput23230 : ExponentCode := normalNode8067

theorem canonicalSound23230 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23230.moment H = canonicalOutput23230.moment H :=
  canonical_of_padded canonicalInput23230 canonicalOutput23230 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation314, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput23231 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23231 : ExponentCode := normalNode10435

theorem canonicalSound23231 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23231.moment H = canonicalOutput23231.moment H :=
  canonical_of_padded canonicalInput23231 canonicalOutput23231 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation196, canonicalPermutation28⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput4160 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 2, -3, 1], ![0, 1, 0, -1], ![1, -2, 3, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput4160 : ExponentCode := normalNode2135

theorem canonicalSound4160 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4160.moment H = canonicalOutput4160.moment H :=
  canonical_of_padded canonicalInput4160 canonicalOutput4160 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4161 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 2, -3, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput4161 : ExponentCode := normalNode2136

theorem canonicalSound4161 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4161.moment H = canonicalOutput4161.moment H :=
  canonical_of_padded canonicalInput4161 canonicalOutput4161 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4162 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 2, -3, 1], ![0, 1, 3, -4], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput4162 : ExponentCode := normalNode2144

theorem canonicalSound4162 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4162.moment H = canonicalOutput4162.moment H :=
  canonical_of_padded canonicalInput4162 canonicalOutput4162 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4163 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 2, -3, 1], ![1, -1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput4163 : ExponentCode := normalNode10884

theorem canonicalSound4163 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4163.moment H = canonicalOutput4163.moment H :=
  canonical_of_padded canonicalInput4163 canonicalOutput4163 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput4164 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 2, -3, 1], ![1, 0, 0, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput4164 : ExponentCode := normalNode10884

theorem canonicalSound4164 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4164.moment H = canonicalOutput4164.moment H :=
  canonical_of_padded canonicalInput4164 canonicalOutput4164 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput4165 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 2, -3, 1], ![1, 0, 1, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput4165 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code503

theorem canonicalSound4165 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4165.moment H = canonicalOutput4165.moment H :=
  canonical_of_padded canonicalInput4165 canonicalOutput4165 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4166 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 2, -2, 0], ![0, 1, -1, 0], ![1, -2, 2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput4166 : ExponentCode := normalNode2122

theorem canonicalSound4166 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4166.moment H = canonicalOutput4166.moment H :=
  canonical_of_padded canonicalInput4166 canonicalOutput4166 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4167 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 2, -2, 0], ![0, 1, -1, 0], ![1, -2, 3, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput4167 : ExponentCode := normalNode2123

theorem canonicalSound4167 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4167.moment H = canonicalOutput4167.moment H :=
  canonical_of_padded canonicalInput4167 canonicalOutput4167 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4168 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 2, -2, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput4168 : ExponentCode := normalNode2124

theorem canonicalSound4168 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4168.moment H = canonicalOutput4168.moment H :=
  canonical_of_padded canonicalInput4168 canonicalOutput4168 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4169 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 2, -2, 0], ![0, 1, 0, -1], ![1, -2, 3, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput4169 : ExponentCode := normalNode2137

theorem canonicalSound4169 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4169.moment H = canonicalOutput4169.moment H :=
  canonical_of_padded canonicalInput4169 canonicalOutput4169 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4170 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 2, -2, 0], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput4170 : ExponentCode := normalNode2138

theorem canonicalSound4170 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4170.moment H = canonicalOutput4170.moment H :=
  canonical_of_padded canonicalInput4170 canonicalOutput4170 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4171 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 2, -2, 0], ![0, 1, 1, -2], ![1, -2, 2, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput4171 : ExponentCode := normalNode2143

theorem canonicalSound4171 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4171.moment H = canonicalOutput4171.moment H :=
  canonical_of_padded canonicalInput4171 canonicalOutput4171 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4172 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 2, -2, 0], ![0, 1, 3, -4], ![1, -2, 0, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput4172 : ExponentCode := normalNode2145

theorem canonicalSound4172 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4172.moment H = canonicalOutput4172.moment H :=
  canonical_of_padded canonicalInput4172 canonicalOutput4172 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4173 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 2, -2, 0], ![0, 1, 3, -4], ![1, -1, -1, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput4173 : ExponentCode := normalNode2146

theorem canonicalSound4173 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4173.moment H = canonicalOutput4173.moment H :=
  canonical_of_padded canonicalInput4173 canonicalOutput4173 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4174 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 2, -2, 0], ![0, 1, 3, -4], ![2, -2, -1, 1]]⟩

def canonicalOutput4174 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code495

theorem canonicalSound4174 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4174.moment H = canonicalOutput4174.moment H :=
  canonical_of_padded canonicalInput4174 canonicalOutput4174 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4175 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 2, -2, 0], ![1, -2, 1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput4175 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code761

theorem canonicalSound4175 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4175.moment H = canonicalOutput4175.moment H :=
  canonical_of_padded canonicalInput4175 canonicalOutput4175 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4176 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 2, -2, 0], ![1, -2, 2, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput4176 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code555

theorem canonicalSound4176 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4176.moment H = canonicalOutput4176.moment H :=
  canonical_of_padded canonicalInput4176 canonicalOutput4176 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput4177 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 2, -2, 0], ![1, -2, 3, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput4177 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code435

theorem canonicalSound4177 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4177.moment H = canonicalOutput4177.moment H :=
  canonical_of_padded canonicalInput4177 canonicalOutput4177 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput4178 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 2, -2, 0], ![1, 0, -1, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput4178 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node812⟩

theorem canonicalSound4178 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4178.moment H = canonicalOutput4178.moment H :=
  canonical_of_padded canonicalInput4178 canonicalOutput4178 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput4179 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 2, -1, -1], ![0, 1, 0, -1], ![1, -2, 3, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput4179 : ExponentCode := normalNode2139

theorem canonicalSound4179 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4179.moment H = canonicalOutput4179.moment H :=
  canonical_of_padded canonicalInput4179 canonicalOutput4179 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4180 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 2, -1, -1], ![1, -2, 2, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput4180 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node505⟩

theorem canonicalSound4180 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4180.moment H = canonicalOutput4180.moment H :=
  canonical_of_padded canonicalInput4180 canonicalOutput4180 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput4181 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 2, -1, -1], ![1, -2, 3, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput4181 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code444

theorem canonicalSound4181 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4181.moment H = canonicalOutput4181.moment H :=
  canonical_of_padded canonicalInput4181 canonicalOutput4181 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput4182 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 2, -1, -1], ![1, 0, -2, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput4182 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code506

theorem canonicalSound4182 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4182.moment H = canonicalOutput4182.moment H :=
  canonical_of_padded canonicalInput4182 canonicalOutput4182 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4183 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 2, 0, -2], ![1, -2, 2, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput4183 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node504⟩

theorem canonicalSound4183 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4183.moment H = canonicalOutput4183.moment H :=
  canonical_of_padded canonicalInput4183 canonicalOutput4183 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput4184 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 2, 2, -4], ![1, -2, 0, 1], ![1, 1, -2, 0]]⟩

def canonicalOutput4184 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node580⟩

theorem canonicalSound4184 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4184.moment H = canonicalOutput4184.moment H :=
  canonical_of_padded canonicalInput4184 canonicalOutput4184 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput4185 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 2, 2, -4], ![1, -1, -2, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput4185 : ExponentCode := normalNode9555

theorem canonicalSound4185 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4185.moment H = canonicalOutput4185.moment H :=
  canonical_of_padded canonicalInput4185 canonicalOutput4185 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput4186 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 2, 2, -4], ![1, 0, -2, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput4186 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1155⟩

theorem canonicalSound4186 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4186.moment H = canonicalOutput4186.moment H :=
  canonical_of_padded canonicalInput4186 canonicalOutput4186 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput4187 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 2, 3, -5], ![1, -1, -2, 2], ![1, 0, -1, 0]]⟩

def canonicalOutput4187 : ExponentCode := normalNode6688

theorem canonicalSound4187 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4187.moment H = canonicalOutput4187.moment H :=
  canonical_of_padded canonicalInput4187 canonicalOutput4187 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput4188 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 2, 3, -5], ![1, -1, -1, 1], ![1, 0, -2, 1]]⟩

def canonicalOutput4188 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code414

theorem canonicalSound4188 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4188.moment H = canonicalOutput4188.moment H :=
  canonical_of_padded canonicalInput4188 canonicalOutput4188 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput4189 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 2, 3, -5], ![1, -1, 0, 0], ![1, 0, -3, 2]]⟩

def canonicalOutput4189 : ExponentCode := normalNode9056

theorem canonicalSound4189 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4189.moment H = canonicalOutput4189.moment H :=
  canonical_of_padded canonicalInput4189 canonicalOutput4189 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput4190 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 3, -3, 0], ![1, -2, 2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput4190 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code406

theorem canonicalSound4190 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4190.moment H = canonicalOutput4190.moment H :=
  canonical_of_padded canonicalInput4190 canonicalOutput4190 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput4191 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 3, -3, 0], ![1, -2, 3, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput4191 : ExponentCode := normalNode10876

theorem canonicalSound4191 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4191.moment H = canonicalOutput4191.moment H :=
  canonical_of_padded canonicalInput4191 canonicalOutput4191 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput4192 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 3, -3, 0], ![1, -1, 0, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput4192 : ExponentCode := normalNode9583

theorem canonicalSound4192 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4192.moment H = canonicalOutput4192.moment H :=
  canonical_of_padded canonicalInput4192 canonicalOutput4192 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput4193 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 3, -3, 0], ![1, -1, 2, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput4193 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code512

theorem canonicalSound4193 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4193.moment H = canonicalOutput4193.moment H :=
  canonical_of_padded canonicalInput4193 canonicalOutput4193 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4194 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 3, -2, -1], ![1, -2, 1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput4194 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code767

theorem canonicalSound4194 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4194.moment H = canonicalOutput4194.moment H :=
  canonical_of_padded canonicalInput4194 canonicalOutput4194 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4195 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 3, -2, -1], ![1, -2, 2, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput4195 : ExponentCode := normalNode7824

theorem canonicalSound4195 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4195.moment H = canonicalOutput4195.moment H :=
  canonical_of_padded canonicalInput4195 canonicalOutput4195 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput4196 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 3, -2, -1], ![1, -2, 3, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput4196 : ExponentCode := normalNode6719

theorem canonicalSound4196 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4196.moment H = canonicalOutput4196.moment H :=
  canonical_of_padded canonicalInput4196 canonicalOutput4196 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput4197 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 3, -2, -1], ![1, -1, 0, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput4197 : ExponentCode := normalNode7839

theorem canonicalSound4197 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4197.moment H = canonicalOutput4197.moment H :=
  canonical_of_padded canonicalInput4197 canonicalOutput4197 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput4198 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 3, -2, -1], ![1, -1, 2, -2], ![1, -1, 0, 0]]⟩

def canonicalOutput4198 : ExponentCode := normalNode7839

theorem canonicalSound4198 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4198.moment H = canonicalOutput4198.moment H :=
  canonical_of_padded canonicalInput4198 canonicalOutput4198 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput4199 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 3, -1, -2], ![1, -2, 2, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput4199 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node990⟩

theorem canonicalSound4199 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4199.moment H = canonicalOutput4199.moment H :=
  canonical_of_padded canonicalInput4199 canonicalOutput4199 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput4200 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 3, -1, -2], ![1, -1, -1, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput4200 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node519⟩

theorem canonicalSound4200 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4200.moment H = canonicalOutput4200.moment H :=
  canonical_of_padded canonicalInput4200 canonicalOutput4200 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput4201 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, -2, 0, 1], ![0, 0, 2, -2], ![1, 3, -2, -2]]⟩

def canonicalOutput4201 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code810

theorem canonicalSound4201 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4201.moment H = canonicalOutput4201.moment H :=
  canonical_of_padded canonicalInput4201 canonicalOutput4201 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4202 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, -2, 1, 0], ![0, 1, 1, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput4202 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node598⟩

theorem canonicalSound4202 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4202.moment H = canonicalOutput4202.moment H :=
  canonical_of_padded canonicalInput4202 canonicalOutput4202 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4203 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, -2, 1, 0], ![0, 3, -2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput4203 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code767

theorem canonicalSound4203 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4203.moment H = canonicalOutput4203.moment H :=
  canonical_of_padded canonicalInput4203 canonicalOutput4203 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4204 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, -2, 1, 0], ![0, 3, 1, -4], ![1, 0, -2, 1]]⟩

def canonicalOutput4204 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node600⟩

theorem canonicalSound4204 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4204.moment H = canonicalOutput4204.moment H :=
  canonical_of_padded canonicalInput4204 canonicalOutput4204 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4205 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, -2, 2, -1], ![0, 1, 1, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput4205 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code487

theorem canonicalSound4205 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4205.moment H = canonicalOutput4205.moment H :=
  canonical_of_padded canonicalInput4205 canonicalOutput4205 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4206 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, -2, 2, -1], ![0, 2, -2, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput4206 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code555

theorem canonicalSound4206 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4206.moment H = canonicalOutput4206.moment H :=
  canonical_of_padded canonicalInput4206 canonicalOutput4206 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput4207 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, -2, 2, -1], ![0, 2, -1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput4207 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node505⟩

theorem canonicalSound4207 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4207.moment H = canonicalOutput4207.moment H :=
  canonical_of_padded canonicalInput4207 canonicalOutput4207 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput4208 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, -2, 2, -1], ![0, 2, 0, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput4208 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node504⟩

theorem canonicalSound4208 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4208.moment H = canonicalOutput4208.moment H :=
  canonical_of_padded canonicalInput4208 canonicalOutput4208 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput4209 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, -2, 2, -1], ![0, 3, -3, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput4209 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code406

theorem canonicalSound4209 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4209.moment H = canonicalOutput4209.moment H :=
  canonical_of_padded canonicalInput4209 canonicalOutput4209 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput4210 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, -2, 2, -1], ![0, 3, -2, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput4210 : ExponentCode := normalNode7824

theorem canonicalSound4210 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4210.moment H = canonicalOutput4210.moment H :=
  canonical_of_padded canonicalInput4210 canonicalOutput4210 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput4211 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, -2, 2, -1], ![0, 3, -1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput4211 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node990⟩

theorem canonicalSound4211 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4211.moment H = canonicalOutput4211.moment H :=
  canonical_of_padded canonicalInput4211 canonicalOutput4211 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput4212 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, -2, 3, -2], ![0, 2, -3, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput4212 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code501

theorem canonicalSound4212 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4212.moment H = canonicalOutput4212.moment H :=
  canonical_of_padded canonicalInput4212 canonicalOutput4212 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4213 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, -2, 3, -2], ![0, 2, -2, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput4213 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code435

theorem canonicalSound4213 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4213.moment H = canonicalOutput4213.moment H :=
  canonical_of_padded canonicalInput4213 canonicalOutput4213 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput4214 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, -2, 3, -2], ![0, 2, -1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput4214 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code444

theorem canonicalSound4214 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4214.moment H = canonicalOutput4214.moment H :=
  canonical_of_padded canonicalInput4214 canonicalOutput4214 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput4215 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, -2, 3, -2], ![0, 2, 0, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput4215 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code507

theorem canonicalSound4215 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4215.moment H = canonicalOutput4215.moment H :=
  canonical_of_padded canonicalInput4215 canonicalOutput4215 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4216 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, -2, 3, -2], ![0, 3, -3, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput4216 : ExponentCode := normalNode10876

theorem canonicalSound4216 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4216.moment H = canonicalOutput4216.moment H :=
  canonical_of_padded canonicalInput4216 canonicalOutput4216 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput4217 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, -2, 3, -2], ![0, 3, -2, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput4217 : ExponentCode := normalNode6719

theorem canonicalSound4217 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4217.moment H = canonicalOutput4217.moment H :=
  canonical_of_padded canonicalInput4217 canonicalOutput4217 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput4218 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, -1, -2, 2], ![0, 1, 1, -2], ![1, 1, 1, -3]]⟩

def canonicalOutput4218 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code488

theorem canonicalSound4218 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4218.moment H = canonicalOutput4218.moment H :=
  canonical_of_padded canonicalInput4218 canonicalOutput4218 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4219 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, -1, -2, 2], ![0, 1, 3, -4], ![1, 1, -1, -1]]⟩

def canonicalOutput4219 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code497

theorem canonicalSound4219 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4219.moment H = canonicalOutput4219.moment H :=
  canonical_of_padded canonicalInput4219 canonicalOutput4219 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4220 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, -1, -2, 2], ![0, 2, -1, -1], ![1, 0, 3, -4]]⟩

def canonicalOutput4220 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code504

theorem canonicalSound4220 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4220.moment H = canonicalOutput4220.moment H :=
  canonical_of_padded canonicalInput4220 canonicalOutput4220 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4221 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, -1, -2, 2], ![0, 2, 0, -2], ![1, 0, 2, -3]]⟩

def canonicalOutput4221 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node478⟩

theorem canonicalSound4221 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4221.moment H = canonicalOutput4221.moment H :=
  canonical_of_padded canonicalInput4221 canonicalOutput4221 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput4222 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, -1, -2, 2], ![0, 2, 3, -5], ![1, 0, -1, 0]]⟩

def canonicalOutput4222 : ExponentCode := normalNode6688

theorem canonicalSound4222 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4222.moment H = canonicalOutput4222.moment H :=
  canonical_of_padded canonicalInput4222 canonicalOutput4222 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput4223 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, -1, -1, 1], ![0, 1, 3, -4], ![1, 1, -2, 0]]⟩

def canonicalOutput4223 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node493⟩

theorem canonicalSound4223 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4223.moment H = canonicalOutput4223.moment H :=
  canonical_of_padded canonicalInput4223 canonicalOutput4223 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

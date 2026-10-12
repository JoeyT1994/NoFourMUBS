import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput32192 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput32192 : ExponentCode := normalNode8458

theorem canonicalSound32192 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32192.moment H = canonicalOutput32192.moment H :=
  canonical_of_padded canonicalInput32192 canonicalOutput32192 (by decide) (by decide)
    ⟨false, false, canonicalPermutation100, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput32193 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput32193 : ExponentCode := normalNode10045

theorem canonicalSound32193 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32193.moment H = canonicalOutput32193.moment H :=
  canonical_of_padded canonicalInput32193 canonicalOutput32193 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation316, OAI.MUB6.Certificate.PairSemantics.permutation382⟩ (by decide +kernel) hH

def canonicalInput32194 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput32194 : ExponentCode := normalNode10685

theorem canonicalSound32194 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32194.moment H = canonicalOutput32194.moment H :=
  canonical_of_padded canonicalInput32194 canonicalOutput32194 (by decide) (by decide)
    ⟨false, true, canonicalPermutation84, OAI.MUB6.Certificate.PairSemantics.permutation301⟩ (by decide +kernel) hH

def canonicalInput32195 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput32195 : ExponentCode := normalNode10452

theorem canonicalSound32195 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32195.moment H = canonicalOutput32195.moment H :=
  canonical_of_padded canonicalInput32195 canonicalOutput32195 (by decide) (by decide)
    ⟨false, false, canonicalPermutation170, OAI.MUB6.Certificate.PairSemantics.permutation401⟩ (by decide +kernel) hH

def canonicalInput32196 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput32196 : ExponentCode := normalNode10367

theorem canonicalSound32196 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32196.moment H = canonicalOutput32196.moment H :=
  canonical_of_padded canonicalInput32196 canonicalOutput32196 (by decide) (by decide)
    ⟨false, false, canonicalPermutation333, OAI.MUB6.Certificate.PairSemantics.permutation400⟩ (by decide +kernel) hH

def canonicalInput32197 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput32197 : ExponentCode := normalNode10869

theorem canonicalSound32197 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32197.moment H = canonicalOutput32197.moment H :=
  canonical_of_padded canonicalInput32197 canonicalOutput32197 (by decide) (by decide)
    ⟨false, true, canonicalPermutation96, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput32198 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput32198 : ExponentCode := normalNode8067

theorem canonicalSound32198 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32198.moment H = canonicalOutput32198.moment H :=
  canonical_of_padded canonicalInput32198 canonicalOutput32198 (by decide) (by decide)
    ⟨false, false, canonicalPermutation135, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput32199 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput32199 : ExponentCode := normalNode8067

theorem canonicalSound32199 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32199.moment H = canonicalOutput32199.moment H :=
  canonical_of_padded canonicalInput32199 canonicalOutput32199 (by decide) (by decide)
    ⟨false, false, canonicalPermutation200, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput32200 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput32200 : ExponentCode := normalNode10869

theorem canonicalSound32200 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32200.moment H = canonicalOutput32200.moment H :=
  canonical_of_padded canonicalInput32200 canonicalOutput32200 (by decide) (by decide)
    ⟨false, true, canonicalPermutation62, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput32201 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput32201 : ExponentCode := normalNode8067

theorem canonicalSound32201 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32201.moment H = canonicalOutput32201.moment H :=
  canonical_of_padded canonicalInput32201 canonicalOutput32201 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation331, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput32202 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput32202 : ExponentCode := normalNode10453

theorem canonicalSound32202 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32202.moment H = canonicalOutput32202.moment H :=
  canonical_of_padded canonicalInput32202 canonicalOutput32202 (by decide) (by decide)
    ⟨false, false, canonicalPermutation89, OAI.MUB6.Certificate.PairSemantics.permutation288⟩ (by decide +kernel) hH

def canonicalInput32203 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput32203 : ExponentCode := normalNode10435

theorem canonicalSound32203 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32203.moment H = canonicalOutput32203.moment H :=
  canonical_of_padded canonicalInput32203 canonicalOutput32203 (by decide) (by decide)
    ⟨false, false, canonicalPermutation69, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput32204 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput32204 : ExponentCode := normalNode10435

theorem canonicalSound32204 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32204.moment H = canonicalOutput32204.moment H :=
  canonical_of_padded canonicalInput32204 canonicalOutput32204 (by decide) (by decide)
    ⟨false, false, canonicalPermutation334, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput32205 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32205 : ExponentCode := normalNode10453

theorem canonicalSound32205 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32205.moment H = canonicalOutput32205.moment H :=
  canonical_of_padded canonicalInput32205 canonicalOutput32205 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation288⟩ (by decide +kernel) hH

def canonicalInput32206 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput32206 : ExponentCode := normalNode8067

theorem canonicalSound32206 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32206.moment H = canonicalOutput32206.moment H :=
  canonical_of_padded canonicalInput32206 canonicalOutput32206 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput32207 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput32207 : ExponentCode := normalNode8067

theorem canonicalSound32207 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32207.moment H = canonicalOutput32207.moment H :=
  canonical_of_padded canonicalInput32207 canonicalOutput32207 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation332, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput32208 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput32208 : ExponentCode := normalNode10435

theorem canonicalSound32208 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32208.moment H = canonicalOutput32208.moment H :=
  canonical_of_padded canonicalInput32208 canonicalOutput32208 (by decide) (by decide)
    ⟨false, false, canonicalPermutation69, canonicalPermutation55⟩ (by decide +kernel) hH

def canonicalInput32209 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput32209 : ExponentCode := normalNode10453

theorem canonicalSound32209 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32209.moment H = canonicalOutput32209.moment H :=
  canonical_of_padded canonicalInput32209 canonicalOutput32209 (by decide) (by decide)
    ⟨false, false, canonicalPermutation89, OAI.MUB6.Certificate.PairSemantics.permutation373⟩ (by decide +kernel) hH

def canonicalInput32210 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32210 : ExponentCode := normalNode10453

theorem canonicalSound32210 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32210.moment H = canonicalOutput32210.moment H :=
  canonical_of_padded canonicalInput32210 canonicalOutput32210 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation373⟩ (by decide +kernel) hH

def canonicalInput32211 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput32211 : ExponentCode := normalNode10435

theorem canonicalSound32211 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32211.moment H = canonicalOutput32211.moment H :=
  canonical_of_padded canonicalInput32211 canonicalOutput32211 (by decide) (by decide)
    ⟨false, false, canonicalPermutation334, canonicalPermutation55⟩ (by decide +kernel) hH

def canonicalInput32212 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput32212 : ExponentCode := normalNode8067

theorem canonicalSound32212 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32212.moment H = canonicalOutput32212.moment H :=
  canonical_of_padded canonicalInput32212 canonicalOutput32212 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation278, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput32213 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput32213 : ExponentCode := normalNode10869

theorem canonicalSound32213 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32213.moment H = canonicalOutput32213.moment H :=
  canonical_of_padded canonicalInput32213 canonicalOutput32213 (by decide) (by decide)
    ⟨false, true, canonicalPermutation95, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput32214 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput32214 : ExponentCode := normalNode8067

theorem canonicalSound32214 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32214.moment H = canonicalOutput32214.moment H :=
  canonical_of_padded canonicalInput32214 canonicalOutput32214 (by decide) (by decide)
    ⟨false, false, canonicalPermutation135, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput32215 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput32215 : ExponentCode := normalNode8067

theorem canonicalSound32215 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32215.moment H = canonicalOutput32215.moment H :=
  canonical_of_padded canonicalInput32215 canonicalOutput32215 (by decide) (by decide)
    ⟨false, false, canonicalPermutation200, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput32216 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput32216 : ExponentCode := normalNode10869

theorem canonicalSound32216 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32216.moment H = canonicalOutput32216.moment H :=
  canonical_of_padded canonicalInput32216 canonicalOutput32216 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation234, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput32217 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput32217 : ExponentCode := normalNode10435

theorem canonicalSound32217 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32217.moment H = canonicalOutput32217.moment H :=
  canonical_of_padded canonicalInput32217 canonicalOutput32217 (by decide) (by decide)
    ⟨false, false, canonicalPermutation335, canonicalPermutation55⟩ (by decide +kernel) hH

def canonicalInput32218 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput32218 : ExponentCode := normalNode8067

theorem canonicalSound32218 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32218.moment H = canonicalOutput32218.moment H :=
  canonical_of_padded canonicalInput32218 canonicalOutput32218 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput32219 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput32219 : ExponentCode := normalNode10453

theorem canonicalSound32219 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32219.moment H = canonicalOutput32219.moment H :=
  canonical_of_padded canonicalInput32219 canonicalOutput32219 (by decide) (by decide)
    ⟨false, false, canonicalPermutation89, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput32220 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32220 : ExponentCode := normalNode10453

theorem canonicalSound32220 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32220.moment H = canonicalOutput32220.moment H :=
  canonical_of_padded canonicalInput32220 canonicalOutput32220 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput32221 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput32221 : ExponentCode := normalNode8067

theorem canonicalSound32221 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32221.moment H = canonicalOutput32221.moment H :=
  canonical_of_padded canonicalInput32221 canonicalOutput32221 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation331, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput32222 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput32222 : ExponentCode := normalNode10435

theorem canonicalSound32222 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32222.moment H = canonicalOutput32222.moment H :=
  canonical_of_padded canonicalInput32222 canonicalOutput32222 (by decide) (by decide)
    ⟨false, false, canonicalPermutation336, canonicalPermutation55⟩ (by decide +kernel) hH

def canonicalInput32223 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput32223 : ExponentCode := normalNode10453

theorem canonicalSound32223 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32223.moment H = canonicalOutput32223.moment H :=
  canonical_of_padded canonicalInput32223 canonicalOutput32223 (by decide) (by decide)
    ⟨false, false, canonicalPermutation285, OAI.MUB6.Certificate.PairSemantics.permutation288⟩ (by decide +kernel) hH

def canonicalInput32224 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput32224 : ExponentCode := normalNode10453

theorem canonicalSound32224 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32224.moment H = canonicalOutput32224.moment H :=
  canonical_of_padded canonicalInput32224 canonicalOutput32224 (by decide) (by decide)
    ⟨false, false, canonicalPermutation285, OAI.MUB6.Certificate.PairSemantics.permutation373⟩ (by decide +kernel) hH

def canonicalInput32225 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput32225 : ExponentCode := normalNode10453

theorem canonicalSound32225 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32225.moment H = canonicalOutput32225.moment H :=
  canonical_of_padded canonicalInput32225 canonicalOutput32225 (by decide) (by decide)
    ⟨false, false, canonicalPermutation285, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput32226 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32226 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node64⟩

theorem canonicalSound32226 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32226.moment H = canonicalOutput32226.moment H :=
  canonical_of_padded canonicalInput32226 canonicalOutput32226 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput32227 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput32227 : ExponentCode := normalNode10453

theorem canonicalSound32227 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32227.moment H = canonicalOutput32227.moment H :=
  canonical_of_padded canonicalInput32227 canonicalOutput32227 (by decide) (by decide)
    ⟨false, false, canonicalPermutation284, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput32228 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput32228 : ExponentCode := normalNode10453

theorem canonicalSound32228 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32228.moment H = canonicalOutput32228.moment H :=
  canonical_of_padded canonicalInput32228 canonicalOutput32228 (by decide) (by decide)
    ⟨false, false, canonicalPermutation284, OAI.MUB6.Certificate.PairSemantics.permutation373⟩ (by decide +kernel) hH

def canonicalInput32229 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput32229 : ExponentCode := normalNode10453

theorem canonicalSound32229 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32229.moment H = canonicalOutput32229.moment H :=
  canonical_of_padded canonicalInput32229 canonicalOutput32229 (by decide) (by decide)
    ⟨false, false, canonicalPermutation284, OAI.MUB6.Certificate.PairSemantics.permutation288⟩ (by decide +kernel) hH

def canonicalInput32230 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput32230 : ExponentCode := normalNode8067

theorem canonicalSound32230 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32230.moment H = canonicalOutput32230.moment H :=
  canonical_of_padded canonicalInput32230 canonicalOutput32230 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput32231 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput32231 : ExponentCode := normalNode10435

theorem canonicalSound32231 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32231.moment H = canonicalOutput32231.moment H :=
  canonical_of_padded canonicalInput32231 canonicalOutput32231 (by decide) (by decide)
    ⟨false, false, canonicalPermutation335, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput32232 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32232 : ExponentCode := normalNode10453

theorem canonicalSound32232 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32232.moment H = canonicalOutput32232.moment H :=
  canonical_of_padded canonicalInput32232 canonicalOutput32232 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput32233 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput32233 : ExponentCode := normalNode10453

theorem canonicalSound32233 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32233.moment H = canonicalOutput32233.moment H :=
  canonical_of_padded canonicalInput32233 canonicalOutput32233 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation298, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput32234 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput32234 : ExponentCode := normalNode10435

theorem canonicalSound32234 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32234.moment H = canonicalOutput32234.moment H :=
  canonical_of_padded canonicalInput32234 canonicalOutput32234 (by decide) (by decide)
    ⟨false, false, canonicalPermutation336, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput32235 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput32235 : ExponentCode := normalNode8067

theorem canonicalSound32235 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32235.moment H = canonicalOutput32235.moment H :=
  canonical_of_padded canonicalInput32235 canonicalOutput32235 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation331, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput32236 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput32236 : ExponentCode := normalNode10435

theorem canonicalSound32236 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32236.moment H = canonicalOutput32236.moment H :=
  canonical_of_padded canonicalInput32236 canonicalOutput32236 (by decide) (by decide)
    ⟨false, false, canonicalPermutation337, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput32237 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32237 : ExponentCode := normalNode10453

theorem canonicalSound32237 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32237.moment H = canonicalOutput32237.moment H :=
  canonical_of_padded canonicalInput32237 canonicalOutput32237 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation373⟩ (by decide +kernel) hH

def canonicalInput32238 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput32238 : ExponentCode := normalNode8067

theorem canonicalSound32238 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32238.moment H = canonicalOutput32238.moment H :=
  canonical_of_padded canonicalInput32238 canonicalOutput32238 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation278, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput32239 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput32239 : ExponentCode := normalNode8067

theorem canonicalSound32239 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32239.moment H = canonicalOutput32239.moment H :=
  canonical_of_padded canonicalInput32239 canonicalOutput32239 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation332, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput32240 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput32240 : ExponentCode := normalNode10453

theorem canonicalSound32240 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32240.moment H = canonicalOutput32240.moment H :=
  canonical_of_padded canonicalInput32240 canonicalOutput32240 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation298, OAI.MUB6.Certificate.PairSemantics.permutation373⟩ (by decide +kernel) hH

def canonicalInput32241 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput32241 : ExponentCode := normalNode10435

theorem canonicalSound32241 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32241.moment H = canonicalOutput32241.moment H :=
  canonical_of_padded canonicalInput32241 canonicalOutput32241 (by decide) (by decide)
    ⟨false, false, canonicalPermutation327, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput32242 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput32242 : ExponentCode := normalNode8067

theorem canonicalSound32242 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32242.moment H = canonicalOutput32242.moment H :=
  canonical_of_padded canonicalInput32242 canonicalOutput32242 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation278, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput32243 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32243 : ExponentCode := normalNode10453

theorem canonicalSound32243 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32243.moment H = canonicalOutput32243.moment H :=
  canonical_of_padded canonicalInput32243 canonicalOutput32243 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation288⟩ (by decide +kernel) hH

def canonicalInput32244 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput32244 : ExponentCode := normalNode10435

theorem canonicalSound32244 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32244.moment H = canonicalOutput32244.moment H :=
  canonical_of_padded canonicalInput32244 canonicalOutput32244 (by decide) (by decide)
    ⟨false, false, canonicalPermutation337, canonicalPermutation55⟩ (by decide +kernel) hH

def canonicalInput32245 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput32245 : ExponentCode := normalNode10435

theorem canonicalSound32245 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32245.moment H = canonicalOutput32245.moment H :=
  canonical_of_padded canonicalInput32245 canonicalOutput32245 (by decide) (by decide)
    ⟨false, false, canonicalPermutation327, canonicalPermutation55⟩ (by decide +kernel) hH

def canonicalInput32246 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput32246 : ExponentCode := normalNode10453

theorem canonicalSound32246 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32246.moment H = canonicalOutput32246.moment H :=
  canonical_of_padded canonicalInput32246 canonicalOutput32246 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation298, OAI.MUB6.Certificate.PairSemantics.permutation288⟩ (by decide +kernel) hH

def canonicalInput32247 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput32247 : ExponentCode := normalNode8067

theorem canonicalSound32247 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32247.moment H = canonicalOutput32247.moment H :=
  canonical_of_padded canonicalInput32247 canonicalOutput32247 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation332, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput32248 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput32248 : ExponentCode := normalNode10869

theorem canonicalSound32248 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32248.moment H = canonicalOutput32248.moment H :=
  canonical_of_padded canonicalInput32248 canonicalOutput32248 (by decide) (by decide)
    ⟨false, true, canonicalPermutation101, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput32249 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput32249 : ExponentCode := normalNode8067

theorem canonicalSound32249 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32249.moment H = canonicalOutput32249.moment H :=
  canonical_of_padded canonicalInput32249 canonicalOutput32249 (by decide) (by decide)
    ⟨false, false, canonicalPermutation135, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput32250 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput32250 : ExponentCode := normalNode8067

theorem canonicalSound32250 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32250.moment H = canonicalOutput32250.moment H :=
  canonical_of_padded canonicalInput32250 canonicalOutput32250 (by decide) (by decide)
    ⟨false, false, canonicalPermutation200, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput32251 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput32251 : ExponentCode := normalNode10869

theorem canonicalSound32251 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32251.moment H = canonicalOutput32251.moment H :=
  canonical_of_padded canonicalInput32251 canonicalOutput32251 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation231, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput32252 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput32252 : ExponentCode := normalNode10434

theorem canonicalSound32252 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32252.moment H = canonicalOutput32252.moment H :=
  canonical_of_padded canonicalInput32252 canonicalOutput32252 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation265⟩ (by decide +kernel) hH

def canonicalInput32253 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput32253 : ExponentCode := normalNode10433

theorem canonicalSound32253 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32253.moment H = canonicalOutput32253.moment H :=
  canonical_of_padded canonicalInput32253 canonicalOutput32253 (by decide) (by decide)
    ⟨false, false, canonicalPermutation243, OAI.MUB6.Certificate.PairSemantics.permutation259⟩ (by decide +kernel) hH

def canonicalInput32254 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput32254 : ExponentCode := normalNode10396

theorem canonicalSound32254 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32254.moment H = canonicalOutput32254.moment H :=
  canonical_of_padded canonicalInput32254 canonicalOutput32254 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation345, OAI.MUB6.Certificate.PairSemantics.permutation386⟩ (by decide +kernel) hH

def canonicalInput32255 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32255 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound32255 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32255.moment H = canonicalOutput32255.moment H :=
  canonical_of_padded canonicalInput32255 canonicalOutput32255 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

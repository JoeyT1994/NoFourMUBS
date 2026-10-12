import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput33216 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33216 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node5⟩

theorem canonicalSound33216 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33216.moment H = canonicalOutput33216.moment H :=
  canonical_of_padded canonicalInput33216 canonicalOutput33216 (by decide) (by decide)
    ⟨false, false, canonicalPermutation84, OAI.MUB6.Certificate.PairSemantics.permutation231⟩ (by decide +kernel) hH

def canonicalInput33217 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33217 : ExponentCode := normalNode10645

theorem canonicalSound33217 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33217.moment H = canonicalOutput33217.moment H :=
  canonical_of_padded canonicalInput33217 canonicalOutput33217 (by decide) (by decide)
    ⟨false, false, canonicalPermutation307, canonicalPermutation256⟩ (by decide +kernel) hH

def canonicalInput33218 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33218 : ExponentCode := normalNode10645

theorem canonicalSound33218 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33218.moment H = canonicalOutput33218.moment H :=
  canonical_of_padded canonicalInput33218 canonicalOutput33218 (by decide) (by decide)
    ⟨false, false, canonicalPermutation307, canonicalPermutation251⟩ (by decide +kernel) hH

def canonicalInput33219 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33219 : ExponentCode := normalNode10645

theorem canonicalSound33219 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33219.moment H = canonicalOutput33219.moment H :=
  canonical_of_padded canonicalInput33219 canonicalOutput33219 (by decide) (by decide)
    ⟨false, false, canonicalPermutation307, canonicalPermutation249⟩ (by decide +kernel) hH

def canonicalInput33220 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33220 : ExponentCode := normalNode8361

theorem canonicalSound33220 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33220.moment H = canonicalOutput33220.moment H :=
  canonical_of_padded canonicalInput33220 canonicalOutput33220 (by decide) (by decide)
    ⟨false, false, canonicalPermutation348, OAI.MUB6.Certificate.PairSemantics.permutation229⟩ (by decide +kernel) hH

def canonicalInput33221 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33221 : ExponentCode := normalNode10453

theorem canonicalSound33221 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33221.moment H = canonicalOutput33221.moment H :=
  canonical_of_padded canonicalInput33221 canonicalOutput33221 (by decide) (by decide)
    ⟨false, false, canonicalPermutation221, OAI.MUB6.Certificate.PairSemantics.permutation226⟩ (by decide +kernel) hH

def canonicalInput33222 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33222 : ExponentCode := normalNode10645

theorem canonicalSound33222 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33222.moment H = canonicalOutput33222.moment H :=
  canonical_of_padded canonicalInput33222 canonicalOutput33222 (by decide) (by decide)
    ⟨false, false, canonicalPermutation223, canonicalPermutation256⟩ (by decide +kernel) hH

def canonicalInput33223 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33223 : ExponentCode := normalNode10645

theorem canonicalSound33223 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33223.moment H = canonicalOutput33223.moment H :=
  canonical_of_padded canonicalInput33223 canonicalOutput33223 (by decide) (by decide)
    ⟨false, false, canonicalPermutation308, canonicalPermutation256⟩ (by decide +kernel) hH

def canonicalInput33224 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33224 : ExponentCode := normalNode10453

theorem canonicalSound33224 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33224.moment H = canonicalOutput33224.moment H :=
  canonical_of_padded canonicalInput33224 canonicalOutput33224 (by decide) (by decide)
    ⟨false, false, canonicalPermutation232, OAI.MUB6.Certificate.PairSemantics.permutation226⟩ (by decide +kernel) hH

def canonicalInput33225 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33225 : ExponentCode := normalNode8361

theorem canonicalSound33225 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33225.moment H = canonicalOutput33225.moment H :=
  canonical_of_padded canonicalInput33225 canonicalOutput33225 (by decide) (by decide)
    ⟨false, false, canonicalPermutation325, OAI.MUB6.Certificate.PairSemantics.permutation229⟩ (by decide +kernel) hH

def canonicalInput33226 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33226 : ExponentCode := normalNode10453

theorem canonicalSound33226 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33226.moment H = canonicalOutput33226.moment H :=
  canonical_of_padded canonicalInput33226 canonicalOutput33226 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation210, OAI.MUB6.Certificate.PairSemantics.permutation226⟩ (by decide +kernel) hH

def canonicalInput33227 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33227 : ExponentCode := normalNode10645

theorem canonicalSound33227 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33227.moment H = canonicalOutput33227.moment H :=
  canonical_of_padded canonicalInput33227 canonicalOutput33227 (by decide) (by decide)
    ⟨false, false, canonicalPermutation223, canonicalPermutation251⟩ (by decide +kernel) hH

def canonicalInput33228 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33228 : ExponentCode := normalNode8361

theorem canonicalSound33228 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33228.moment H = canonicalOutput33228.moment H :=
  canonical_of_padded canonicalInput33228 canonicalOutput33228 (by decide) (by decide)
    ⟨false, false, canonicalPermutation357, canonicalPermutation274⟩ (by decide +kernel) hH

def canonicalInput33229 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33229 : ExponentCode := normalNode8361

theorem canonicalSound33229 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33229.moment H = canonicalOutput33229.moment H :=
  canonical_of_padded canonicalInput33229 canonicalOutput33229 (by decide) (by decide)
    ⟨false, false, canonicalPermutation347, canonicalPermutation274⟩ (by decide +kernel) hH

def canonicalInput33230 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33230 : ExponentCode := normalNode10645

theorem canonicalSound33230 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33230.moment H = canonicalOutput33230.moment H :=
  canonical_of_padded canonicalInput33230 canonicalOutput33230 (by decide) (by decide)
    ⟨false, false, canonicalPermutation308, canonicalPermutation251⟩ (by decide +kernel) hH

def canonicalInput33231 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33231 : ExponentCode := normalNode10453

theorem canonicalSound33231 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33231.moment H = canonicalOutput33231.moment H :=
  canonical_of_padded canonicalInput33231 canonicalOutput33231 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation211, OAI.MUB6.Certificate.PairSemantics.permutation226⟩ (by decide +kernel) hH

def canonicalInput33232 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33232 : ExponentCode := normalNode8361

theorem canonicalSound33232 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33232.moment H = canonicalOutput33232.moment H :=
  canonical_of_padded canonicalInput33232 canonicalOutput33232 (by decide) (by decide)
    ⟨false, false, canonicalPermutation357, OAI.MUB6.Certificate.PairSemantics.permutation229⟩ (by decide +kernel) hH

def canonicalInput33233 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33233 : ExponentCode := normalNode10645

theorem canonicalSound33233 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33233.moment H = canonicalOutput33233.moment H :=
  canonical_of_padded canonicalInput33233 canonicalOutput33233 (by decide) (by decide)
    ⟨false, false, canonicalPermutation223, canonicalPermutation249⟩ (by decide +kernel) hH

def canonicalInput33234 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33234 : ExponentCode := normalNode10453

theorem canonicalSound33234 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33234.moment H = canonicalOutput33234.moment H :=
  canonical_of_padded canonicalInput33234 canonicalOutput33234 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation210, canonicalPermutation250⟩ (by decide +kernel) hH

def canonicalInput33235 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33235 : ExponentCode := normalNode10453

theorem canonicalSound33235 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33235.moment H = canonicalOutput33235.moment H :=
  canonical_of_padded canonicalInput33235 canonicalOutput33235 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation211, canonicalPermutation250⟩ (by decide +kernel) hH

def canonicalInput33236 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33236 : ExponentCode := normalNode10645

theorem canonicalSound33236 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33236.moment H = canonicalOutput33236.moment H :=
  canonical_of_padded canonicalInput33236 canonicalOutput33236 (by decide) (by decide)
    ⟨false, false, canonicalPermutation308, canonicalPermutation249⟩ (by decide +kernel) hH

def canonicalInput33237 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33237 : ExponentCode := normalNode8361

theorem canonicalSound33237 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33237.moment H = canonicalOutput33237.moment H :=
  canonical_of_padded canonicalInput33237 canonicalOutput33237 (by decide) (by decide)
    ⟨false, false, canonicalPermutation347, OAI.MUB6.Certificate.PairSemantics.permutation229⟩ (by decide +kernel) hH

def canonicalInput33238 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33238 : ExponentCode := normalNode11165

theorem canonicalSound33238 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33238.moment H = canonicalOutput33238.moment H :=
  canonical_of_padded canonicalInput33238 canonicalOutput33238 (by decide) (by decide)
    ⟨false, true, canonicalPermutation229, OAI.MUB6.Certificate.PairSemantics.permutation221⟩ (by decide +kernel) hH

def canonicalInput33239 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33239 : ExponentCode := normalNode8361

theorem canonicalSound33239 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33239.moment H = canonicalOutput33239.moment H :=
  canonical_of_padded canonicalInput33239 canonicalOutput33239 (by decide) (by decide)
    ⟨false, false, canonicalPermutation286, canonicalPermutation180⟩ (by decide +kernel) hH

def canonicalInput33240 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33240 : ExponentCode := normalNode8361

theorem canonicalSound33240 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33240.moment H = canonicalOutput33240.moment H :=
  canonical_of_padded canonicalInput33240 canonicalOutput33240 (by decide) (by decide)
    ⟨false, false, canonicalPermutation351, canonicalPermutation180⟩ (by decide +kernel) hH

def canonicalInput33241 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33241 : ExponentCode := normalNode11165

theorem canonicalSound33241 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33241.moment H = canonicalOutput33241.moment H :=
  canonical_of_padded canonicalInput33241 canonicalOutput33241 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation205, OAI.MUB6.Certificate.PairSemantics.permutation221⟩ (by decide +kernel) hH

def canonicalInput33242 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput33242 : ExponentCode := normalNode10415

theorem canonicalSound33242 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33242.moment H = canonicalOutput33242.moment H :=
  canonical_of_padded canonicalInput33242 canonicalOutput33242 (by decide) (by decide)
    ⟨false, true, canonicalPermutation239, canonicalPermutation204⟩ (by decide +kernel) hH

def canonicalInput33243 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput33243 : ExponentCode := normalNode10371

theorem canonicalSound33243 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33243.moment H = canonicalOutput33243.moment H :=
  canonical_of_padded canonicalInput33243 canonicalOutput33243 (by decide) (by decide)
    ⟨false, false, canonicalPermutation224, canonicalPermutation204⟩ (by decide +kernel) hH

def canonicalInput33244 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput33244 : ExponentCode := normalNode10274

theorem canonicalSound33244 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33244.moment H = canonicalOutput33244.moment H :=
  canonical_of_padded canonicalInput33244 canonicalOutput33244 (by decide) (by decide)
    ⟨false, true, canonicalPermutation237, canonicalPermutation275⟩ (by decide +kernel) hH

def canonicalInput33245 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput33245 : ExponentCode := normalNode10685

theorem canonicalSound33245 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33245.moment H = canonicalOutput33245.moment H :=
  canonical_of_padded canonicalInput33245 canonicalOutput33245 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation231, OAI.MUB6.Certificate.PairSemantics.permutation301⟩ (by decide +kernel) hH

def canonicalInput33246 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput33246 : ExponentCode := normalNode10452

theorem canonicalSound33246 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33246.moment H = canonicalOutput33246.moment H :=
  canonical_of_padded canonicalInput33246 canonicalOutput33246 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation272, OAI.MUB6.Certificate.PairSemantics.permutation401⟩ (by decide +kernel) hH

def canonicalInput33247 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput33247 : ExponentCode := normalNode10367

theorem canonicalSound33247 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33247.moment H = canonicalOutput33247.moment H :=
  canonical_of_padded canonicalInput33247 canonicalOutput33247 (by decide) (by decide)
    ⟨false, false, canonicalPermutation125, OAI.MUB6.Certificate.PairSemantics.permutation400⟩ (by decide +kernel) hH

def canonicalInput33248 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33248 : ExponentCode := normalNode10869

theorem canonicalSound33248 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33248.moment H = canonicalOutput33248.moment H :=
  canonical_of_padded canonicalInput33248 canonicalOutput33248 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput33249 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33249 : ExponentCode := normalNode8067

theorem canonicalSound33249 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33249.moment H = canonicalOutput33249.moment H :=
  canonical_of_padded canonicalInput33249 canonicalOutput33249 (by decide) (by decide)
    ⟨false, false, canonicalPermutation146, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput33250 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33250 : ExponentCode := normalNode8067

theorem canonicalSound33250 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33250.moment H = canonicalOutput33250.moment H :=
  canonical_of_padded canonicalInput33250 canonicalOutput33250 (by decide) (by decide)
    ⟨false, false, canonicalPermutation145, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput33251 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33251 : ExponentCode := normalNode10869

theorem canonicalSound33251 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33251.moment H = canonicalOutput33251.moment H :=
  canonical_of_padded canonicalInput33251 canonicalOutput33251 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput33252 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33252 : ExponentCode := normalNode8067

theorem canonicalSound33252 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33252.moment H = canonicalOutput33252.moment H :=
  canonical_of_padded canonicalInput33252 canonicalOutput33252 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput33253 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33253 : ExponentCode := normalNode10453

theorem canonicalSound33253 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33253.moment H = canonicalOutput33253.moment H :=
  canonical_of_padded canonicalInput33253 canonicalOutput33253 (by decide) (by decide)
    ⟨false, false, canonicalPermutation124, OAI.MUB6.Certificate.PairSemantics.permutation288⟩ (by decide +kernel) hH

def canonicalInput33254 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33254 : ExponentCode := normalNode10435

theorem canonicalSound33254 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33254.moment H = canonicalOutput33254.moment H :=
  canonical_of_padded canonicalInput33254 canonicalOutput33254 (by decide) (by decide)
    ⟨false, false, canonicalPermutation395, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput33255 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33255 : ExponentCode := normalNode10435

theorem canonicalSound33255 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33255.moment H = canonicalOutput33255.moment H :=
  canonical_of_padded canonicalInput33255 canonicalOutput33255 (by decide) (by decide)
    ⟨false, false, canonicalPermutation212, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput33256 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33256 : ExponentCode := normalNode10453

theorem canonicalSound33256 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33256.moment H = canonicalOutput33256.moment H :=
  canonical_of_padded canonicalInput33256 canonicalOutput33256 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation385, OAI.MUB6.Certificate.PairSemantics.permutation288⟩ (by decide +kernel) hH

def canonicalInput33257 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33257 : ExponentCode := normalNode8067

theorem canonicalSound33257 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33257.moment H = canonicalOutput33257.moment H :=
  canonical_of_padded canonicalInput33257 canonicalOutput33257 (by decide) (by decide)
    ⟨false, false, canonicalPermutation119, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput33258 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33258 : ExponentCode := normalNode8067

theorem canonicalSound33258 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33258.moment H = canonicalOutput33258.moment H :=
  canonical_of_padded canonicalInput33258 canonicalOutput33258 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput33259 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33259 : ExponentCode := normalNode10435

theorem canonicalSound33259 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33259.moment H = canonicalOutput33259.moment H :=
  canonical_of_padded canonicalInput33259 canonicalOutput33259 (by decide) (by decide)
    ⟨false, false, canonicalPermutation395, canonicalPermutation55⟩ (by decide +kernel) hH

def canonicalInput33260 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33260 : ExponentCode := normalNode10453

theorem canonicalSound33260 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33260.moment H = canonicalOutput33260.moment H :=
  canonical_of_padded canonicalInput33260 canonicalOutput33260 (by decide) (by decide)
    ⟨false, false, canonicalPermutation124, OAI.MUB6.Certificate.PairSemantics.permutation373⟩ (by decide +kernel) hH

def canonicalInput33261 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33261 : ExponentCode := normalNode10453

theorem canonicalSound33261 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33261.moment H = canonicalOutput33261.moment H :=
  canonical_of_padded canonicalInput33261 canonicalOutput33261 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation385, OAI.MUB6.Certificate.PairSemantics.permutation373⟩ (by decide +kernel) hH

def canonicalInput33262 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33262 : ExponentCode := normalNode10435

theorem canonicalSound33262 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33262.moment H = canonicalOutput33262.moment H :=
  canonical_of_padded canonicalInput33262 canonicalOutput33262 (by decide) (by decide)
    ⟨false, false, canonicalPermutation212, canonicalPermutation55⟩ (by decide +kernel) hH

def canonicalInput33263 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33263 : ExponentCode := normalNode8067

theorem canonicalSound33263 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33263.moment H = canonicalOutput33263.moment H :=
  canonical_of_padded canonicalInput33263 canonicalOutput33263 (by decide) (by decide)
    ⟨false, false, canonicalPermutation140, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput33264 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33264 : ExponentCode := normalNode10869

theorem canonicalSound33264 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33264.moment H = canonicalOutput33264.moment H :=
  canonical_of_padded canonicalInput33264 canonicalOutput33264 (by decide) (by decide)
    ⟨false, true, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput33265 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33265 : ExponentCode := normalNode8067

theorem canonicalSound33265 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33265.moment H = canonicalOutput33265.moment H :=
  canonical_of_padded canonicalInput33265 canonicalOutput33265 (by decide) (by decide)
    ⟨false, false, canonicalPermutation146, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput33266 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33266 : ExponentCode := normalNode8067

theorem canonicalSound33266 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33266.moment H = canonicalOutput33266.moment H :=
  canonical_of_padded canonicalInput33266 canonicalOutput33266 (by decide) (by decide)
    ⟨false, false, canonicalPermutation145, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput33267 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33267 : ExponentCode := normalNode10869

theorem canonicalSound33267 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33267.moment H = canonicalOutput33267.moment H :=
  canonical_of_padded canonicalInput33267 canonicalOutput33267 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput33268 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33268 : ExponentCode := normalNode10435

theorem canonicalSound33268 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33268.moment H = canonicalOutput33268.moment H :=
  canonical_of_padded canonicalInput33268 canonicalOutput33268 (by decide) (by decide)
    ⟨false, false, canonicalPermutation317, canonicalPermutation55⟩ (by decide +kernel) hH

def canonicalInput33269 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33269 : ExponentCode := normalNode8067

theorem canonicalSound33269 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33269.moment H = canonicalOutput33269.moment H :=
  canonical_of_padded canonicalInput33269 canonicalOutput33269 (by decide) (by decide)
    ⟨false, false, canonicalPermutation119, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput33270 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33270 : ExponentCode := normalNode10453

theorem canonicalSound33270 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33270.moment H = canonicalOutput33270.moment H :=
  canonical_of_padded canonicalInput33270 canonicalOutput33270 (by decide) (by decide)
    ⟨false, false, canonicalPermutation124, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput33271 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33271 : ExponentCode := normalNode10453

theorem canonicalSound33271 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33271.moment H = canonicalOutput33271.moment H :=
  canonical_of_padded canonicalInput33271 canonicalOutput33271 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation385, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput33272 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33272 : ExponentCode := normalNode8067

theorem canonicalSound33272 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33272.moment H = canonicalOutput33272.moment H :=
  canonical_of_padded canonicalInput33272 canonicalOutput33272 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation357, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput33273 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33273 : ExponentCode := normalNode10435

theorem canonicalSound33273 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33273.moment H = canonicalOutput33273.moment H :=
  canonical_of_padded canonicalInput33273 canonicalOutput33273 (by decide) (by decide)
    ⟨false, false, canonicalPermutation275, canonicalPermutation55⟩ (by decide +kernel) hH

def canonicalInput33274 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33274 : ExponentCode := normalNode10453

theorem canonicalSound33274 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33274.moment H = canonicalOutput33274.moment H :=
  canonical_of_padded canonicalInput33274 canonicalOutput33274 (by decide) (by decide)
    ⟨false, false, canonicalPermutation118, OAI.MUB6.Certificate.PairSemantics.permutation288⟩ (by decide +kernel) hH

def canonicalInput33275 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33275 : ExponentCode := normalNode10453

theorem canonicalSound33275 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33275.moment H = canonicalOutput33275.moment H :=
  canonical_of_padded canonicalInput33275 canonicalOutput33275 (by decide) (by decide)
    ⟨false, false, canonicalPermutation118, OAI.MUB6.Certificate.PairSemantics.permutation373⟩ (by decide +kernel) hH

def canonicalInput33276 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33276 : ExponentCode := normalNode10453

theorem canonicalSound33276 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33276.moment H = canonicalOutput33276.moment H :=
  canonical_of_padded canonicalInput33276 canonicalOutput33276 (by decide) (by decide)
    ⟨false, false, canonicalPermutation118, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput33277 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33277 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node64⟩

theorem canonicalSound33277 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33277.moment H = canonicalOutput33277.moment H :=
  canonical_of_padded canonicalInput33277 canonicalOutput33277 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput33278 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33278 : ExponentCode := normalNode10453

theorem canonicalSound33278 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33278.moment H = canonicalOutput33278.moment H :=
  canonical_of_padded canonicalInput33278 canonicalOutput33278 (by decide) (by decide)
    ⟨false, false, canonicalPermutation144, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput33279 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33279 : ExponentCode := normalNode10453

theorem canonicalSound33279 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33279.moment H = canonicalOutput33279.moment H :=
  canonical_of_padded canonicalInput33279 canonicalOutput33279 (by decide) (by decide)
    ⟨false, false, canonicalPermutation144, OAI.MUB6.Certificate.PairSemantics.permutation373⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

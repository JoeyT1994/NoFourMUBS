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
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput23040 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23040 : ExponentCode := normalNode10453

theorem canonicalSound23040 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23040.moment H = canonicalOutput23040.moment H :=
  canonical_of_padded canonicalInput23040 canonicalOutput23040 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput23041 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23041 : ExponentCode := normalNode10453

theorem canonicalSound23041 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23041.moment H = canonicalOutput23041.moment H :=
  canonical_of_padded canonicalInput23041 canonicalOutput23041 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput23042 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23042 : ExponentCode := normalNode10435

theorem canonicalSound23042 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23042.moment H = canonicalOutput23042.moment H :=
  canonical_of_padded canonicalInput23042 canonicalOutput23042 (by decide) (by decide)
    ⟨false, false, canonicalPermutation43, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput23043 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput23043 : ExponentCode := normalNode8067

theorem canonicalSound23043 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23043.moment H = canonicalOutput23043.moment H :=
  canonical_of_padded canonicalInput23043 canonicalOutput23043 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput23044 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23044 : ExponentCode := normalNode10435

theorem canonicalSound23044 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23044.moment H = canonicalOutput23044.moment H :=
  canonical_of_padded canonicalInput23044 canonicalOutput23044 (by decide) (by decide)
    ⟨false, false, canonicalPermutation58, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput23045 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23045 : ExponentCode := normalNode10453

theorem canonicalSound23045 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23045.moment H = canonicalOutput23045.moment H :=
  canonical_of_padded canonicalInput23045 canonicalOutput23045 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation375⟩ (by decide +kernel) hH

def canonicalInput23046 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23046 : ExponentCode := normalNode8067

theorem canonicalSound23046 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23046.moment H = canonicalOutput23046.moment H :=
  canonical_of_padded canonicalInput23046 canonicalOutput23046 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, canonicalPermutation120⟩ (by decide +kernel) hH

def canonicalInput23047 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput23047 : ExponentCode := normalNode8067

theorem canonicalSound23047 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23047.moment H = canonicalOutput23047.moment H :=
  canonical_of_padded canonicalInput23047 canonicalOutput23047 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation309, canonicalPermutation120⟩ (by decide +kernel) hH

def canonicalInput23048 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23048 : ExponentCode := normalNode10453

theorem canonicalSound23048 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23048.moment H = canonicalOutput23048.moment H :=
  canonical_of_padded canonicalInput23048 canonicalOutput23048 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation375⟩ (by decide +kernel) hH

def canonicalInput23049 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23049 : ExponentCode := normalNode10435

theorem canonicalSound23049 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23049.moment H = canonicalOutput23049.moment H :=
  canonical_of_padded canonicalInput23049 canonicalOutput23049 (by decide) (by decide)
    ⟨false, false, canonicalPermutation51, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput23050 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23050 : ExponentCode := normalNode8067

theorem canonicalSound23050 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23050.moment H = canonicalOutput23050.moment H :=
  canonical_of_padded canonicalInput23050 canonicalOutput23050 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput23051 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23051 : ExponentCode := normalNode10453

theorem canonicalSound23051 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23051.moment H = canonicalOutput23051.moment H :=
  canonical_of_padded canonicalInput23051 canonicalOutput23051 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, canonicalPermutation130⟩ (by decide +kernel) hH

def canonicalInput23052 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23052 : ExponentCode := normalNode10435

theorem canonicalSound23052 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23052.moment H = canonicalOutput23052.moment H :=
  canonical_of_padded canonicalInput23052 canonicalOutput23052 (by decide) (by decide)
    ⟨false, false, canonicalPermutation58, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput23053 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23053 : ExponentCode := normalNode10435

theorem canonicalSound23053 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23053.moment H = canonicalOutput23053.moment H :=
  canonical_of_padded canonicalInput23053 canonicalOutput23053 (by decide) (by decide)
    ⟨false, false, canonicalPermutation51, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput23054 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23054 : ExponentCode := normalNode10453

theorem canonicalSound23054 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23054.moment H = canonicalOutput23054.moment H :=
  canonical_of_padded canonicalInput23054 canonicalOutput23054 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, canonicalPermutation130⟩ (by decide +kernel) hH

def canonicalInput23055 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput23055 : ExponentCode := normalNode8067

theorem canonicalSound23055 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23055.moment H = canonicalOutput23055.moment H :=
  canonical_of_padded canonicalInput23055 canonicalOutput23055 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation309, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput23056 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput23056 : ExponentCode := normalNode10869

theorem canonicalSound23056 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23056.moment H = canonicalOutput23056.moment H :=
  canonical_of_padded canonicalInput23056 canonicalOutput23056 (by decide) (by decide)
    ⟨false, true, canonicalPermutation147, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23057 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23057 : ExponentCode := normalNode8067

theorem canonicalSound23057 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23057.moment H = canonicalOutput23057.moment H :=
  canonical_of_padded canonicalInput23057 canonicalOutput23057 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation296⟩ (by decide +kernel) hH

def canonicalInput23058 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23058 : ExponentCode := normalNode8067

theorem canonicalSound23058 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23058.moment H = canonicalOutput23058.moment H :=
  canonical_of_padded canonicalInput23058 canonicalOutput23058 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation242, OAI.MUB6.Certificate.PairSemantics.permutation296⟩ (by decide +kernel) hH

def canonicalInput23059 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput23059 : ExponentCode := normalNode10869

theorem canonicalSound23059 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23059.moment H = canonicalOutput23059.moment H :=
  canonical_of_padded canonicalInput23059 canonicalOutput23059 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation232, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23060 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput23060 : ExponentCode := normalNode10434

theorem canonicalSound23060 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23060.moment H = canonicalOutput23060.moment H :=
  canonical_of_padded canonicalInput23060 canonicalOutput23060 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation259⟩ (by decide +kernel) hH

def canonicalInput23061 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput23061 : ExponentCode := normalNode10433

theorem canonicalSound23061 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23061.moment H = canonicalOutput23061.moment H :=
  canonical_of_padded canonicalInput23061 canonicalOutput23061 (by decide) (by decide)
    ⟨false, false, canonicalPermutation241, OAI.MUB6.Certificate.PairSemantics.permutation265⟩ (by decide +kernel) hH

def canonicalInput23062 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput23062 : ExponentCode := normalNode10396

theorem canonicalSound23062 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23062.moment H = canonicalOutput23062.moment H :=
  canonical_of_padded canonicalInput23062 canonicalOutput23062 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation322, OAI.MUB6.Certificate.PairSemantics.permutation380⟩ (by decide +kernel) hH

def canonicalInput23063 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput23063 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1291⟩

theorem canonicalSound23063 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23063.moment H = canonicalOutput23063.moment H :=
  canonical_of_padded canonicalInput23063 canonicalOutput23063 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation205, canonicalPermutation272⟩ (by decide +kernel) hH

def canonicalInput23064 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput23064 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2758⟩

theorem canonicalSound23064 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23064.moment H = canonicalOutput23064.moment H :=
  canonical_of_padded canonicalInput23064 canonicalOutput23064 (by decide) (by decide)
    ⟨false, false, canonicalPermutation221, OAI.MUB6.Certificate.PairSemantics.permutation238⟩ (by decide +kernel) hH

def canonicalInput23065 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput23065 : ExponentCode := normalNode9917

theorem canonicalSound23065 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23065.moment H = canonicalOutput23065.moment H :=
  canonical_of_padded canonicalInput23065 canonicalOutput23065 (by decide) (by decide)
    ⟨false, false, canonicalPermutation224, canonicalPermutation273⟩ (by decide +kernel) hH

def canonicalInput23066 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput23066 : ExponentCode := normalNode11165

theorem canonicalSound23066 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23066.moment H = canonicalOutput23066.moment H :=
  canonical_of_padded canonicalInput23066 canonicalOutput23066 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation211, OAI.MUB6.Certificate.PairSemantics.permutation221⟩ (by decide +kernel) hH

def canonicalInput23067 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23067 : ExponentCode := normalNode8361

theorem canonicalSound23067 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23067.moment H = canonicalOutput23067.moment H :=
  canonical_of_padded canonicalInput23067 canonicalOutput23067 (by decide) (by decide)
    ⟨false, false, canonicalPermutation116, OAI.MUB6.Certificate.PairSemantics.permutation229⟩ (by decide +kernel) hH

def canonicalInput23068 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23068 : ExponentCode := normalNode8361

theorem canonicalSound23068 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23068.moment H = canonicalOutput23068.moment H :=
  canonical_of_padded canonicalInput23068 canonicalOutput23068 (by decide) (by decide)
    ⟨false, false, canonicalPermutation227, OAI.MUB6.Certificate.PairSemantics.permutation229⟩ (by decide +kernel) hH

def canonicalInput23069 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput23069 : ExponentCode := normalNode11165

theorem canonicalSound23069 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23069.moment H = canonicalOutput23069.moment H :=
  canonical_of_padded canonicalInput23069 canonicalOutput23069 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation210, OAI.MUB6.Certificate.PairSemantics.permutation221⟩ (by decide +kernel) hH

def canonicalInput23070 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput23070 : ExponentCode := normalNode8361

theorem canonicalSound23070 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23070.moment H = canonicalOutput23070.moment H :=
  canonical_of_padded canonicalInput23070 canonicalOutput23070 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation215, canonicalPermutation180⟩ (by decide +kernel) hH

def canonicalInput23071 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23071 : ExponentCode := normalNode10645

theorem canonicalSound23071 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23071.moment H = canonicalOutput23071.moment H :=
  canonical_of_padded canonicalInput23071 canonicalOutput23071 (by decide) (by decide)
    ⟨false, false, canonicalPermutation110, canonicalPermutation249⟩ (by decide +kernel) hH

def canonicalInput23072 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23072 : ExponentCode := normalNode10453

theorem canonicalSound23072 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23072.moment H = canonicalOutput23072.moment H :=
  canonical_of_padded canonicalInput23072 canonicalOutput23072 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation205, OAI.MUB6.Certificate.PairSemantics.permutation226⟩ (by decide +kernel) hH

def canonicalInput23073 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23073 : ExponentCode := normalNode10453

theorem canonicalSound23073 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23073.moment H = canonicalOutput23073.moment H :=
  canonical_of_padded canonicalInput23073 canonicalOutput23073 (by decide) (by decide)
    ⟨false, false, canonicalPermutation229, OAI.MUB6.Certificate.PairSemantics.permutation226⟩ (by decide +kernel) hH

def canonicalInput23074 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23074 : ExponentCode := normalNode10645

theorem canonicalSound23074 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23074.moment H = canonicalOutput23074.moment H :=
  canonical_of_padded canonicalInput23074 canonicalOutput23074 (by decide) (by decide)
    ⟨false, false, canonicalPermutation230, canonicalPermutation249⟩ (by decide +kernel) hH

def canonicalInput23075 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23075 : ExponentCode := normalNode8361

theorem canonicalSound23075 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23075.moment H = canonicalOutput23075.moment H :=
  canonical_of_padded canonicalInput23075 canonicalOutput23075 (by decide) (by decide)
    ⟨false, false, canonicalPermutation114, canonicalPermutation180⟩ (by decide +kernel) hH

def canonicalInput23076 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput23076 : ExponentCode := normalNode8361

theorem canonicalSound23076 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23076.moment H = canonicalOutput23076.moment H :=
  canonical_of_padded canonicalInput23076 canonicalOutput23076 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation216, canonicalPermutation180⟩ (by decide +kernel) hH

def canonicalInput23077 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23077 : ExponentCode := normalNode10453

theorem canonicalSound23077 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23077.moment H = canonicalOutput23077.moment H :=
  canonical_of_padded canonicalInput23077 canonicalOutput23077 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation205, canonicalPermutation250⟩ (by decide +kernel) hH

def canonicalInput23078 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23078 : ExponentCode := normalNode10645

theorem canonicalSound23078 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23078.moment H = canonicalOutput23078.moment H :=
  canonical_of_padded canonicalInput23078 canonicalOutput23078 (by decide) (by decide)
    ⟨false, false, canonicalPermutation110, canonicalPermutation251⟩ (by decide +kernel) hH

def canonicalInput23079 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23079 : ExponentCode := normalNode10645

theorem canonicalSound23079 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23079.moment H = canonicalOutput23079.moment H :=
  canonical_of_padded canonicalInput23079 canonicalOutput23079 (by decide) (by decide)
    ⟨false, false, canonicalPermutation230, canonicalPermutation251⟩ (by decide +kernel) hH

def canonicalInput23080 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23080 : ExponentCode := normalNode10453

theorem canonicalSound23080 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23080.moment H = canonicalOutput23080.moment H :=
  canonical_of_padded canonicalInput23080 canonicalOutput23080 (by decide) (by decide)
    ⟨false, false, canonicalPermutation229, canonicalPermutation250⟩ (by decide +kernel) hH

def canonicalInput23081 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23081 : ExponentCode := normalNode8361

theorem canonicalSound23081 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23081.moment H = canonicalOutput23081.moment H :=
  canonical_of_padded canonicalInput23081 canonicalOutput23081 (by decide) (by decide)
    ⟨false, false, canonicalPermutation231, canonicalPermutation180⟩ (by decide +kernel) hH

def canonicalInput23082 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput23082 : ExponentCode := normalNode11165

theorem canonicalSound23082 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23082.moment H = canonicalOutput23082.moment H :=
  canonical_of_padded canonicalInput23082 canonicalOutput23082 (by decide) (by decide)
    ⟨false, true, canonicalPermutation232, OAI.MUB6.Certificate.PairSemantics.permutation221⟩ (by decide +kernel) hH

def canonicalInput23083 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23083 : ExponentCode := normalNode8361

theorem canonicalSound23083 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23083.moment H = canonicalOutput23083.moment H :=
  canonical_of_padded canonicalInput23083 canonicalOutput23083 (by decide) (by decide)
    ⟨false, false, canonicalPermutation116, canonicalPermutation274⟩ (by decide +kernel) hH

def canonicalInput23084 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23084 : ExponentCode := normalNode8361

theorem canonicalSound23084 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23084.moment H = canonicalOutput23084.moment H :=
  canonical_of_padded canonicalInput23084 canonicalOutput23084 (by decide) (by decide)
    ⟨false, false, canonicalPermutation227, canonicalPermutation274⟩ (by decide +kernel) hH

def canonicalInput23085 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput23085 : ExponentCode := normalNode11165

theorem canonicalSound23085 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23085.moment H = canonicalOutput23085.moment H :=
  canonical_of_padded canonicalInput23085 canonicalOutput23085 (by decide) (by decide)
    ⟨false, true, canonicalPermutation221, OAI.MUB6.Certificate.PairSemantics.permutation221⟩ (by decide +kernel) hH

def canonicalInput23086 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23086 : ExponentCode := normalNode10453

theorem canonicalSound23086 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23086.moment H = canonicalOutput23086.moment H :=
  canonical_of_padded canonicalInput23086 canonicalOutput23086 (by decide) (by decide)
    ⟨false, false, canonicalPermutation234, canonicalPermutation250⟩ (by decide +kernel) hH

def canonicalInput23087 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23087 : ExponentCode := normalNode8361

theorem canonicalSound23087 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23087.moment H = canonicalOutput23087.moment H :=
  canonical_of_padded canonicalInput23087 canonicalOutput23087 (by decide) (by decide)
    ⟨false, false, canonicalPermutation114, canonicalPermutation274⟩ (by decide +kernel) hH

def canonicalInput23088 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23088 : ExponentCode := normalNode10645

theorem canonicalSound23088 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23088.moment H = canonicalOutput23088.moment H :=
  canonical_of_padded canonicalInput23088 canonicalOutput23088 (by decide) (by decide)
    ⟨false, false, canonicalPermutation110, canonicalPermutation256⟩ (by decide +kernel) hH

def canonicalInput23089 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23089 : ExponentCode := normalNode10645

theorem canonicalSound23089 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23089.moment H = canonicalOutput23089.moment H :=
  canonical_of_padded canonicalInput23089 canonicalOutput23089 (by decide) (by decide)
    ⟨false, false, canonicalPermutation230, canonicalPermutation256⟩ (by decide +kernel) hH

def canonicalInput23090 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput23090 : ExponentCode := normalNode8361

theorem canonicalSound23090 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23090.moment H = canonicalOutput23090.moment H :=
  canonical_of_padded canonicalInput23090 canonicalOutput23090 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation215, canonicalPermutation274⟩ (by decide +kernel) hH

def canonicalInput23091 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23091 : ExponentCode := normalNode10453

theorem canonicalSound23091 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23091.moment H = canonicalOutput23091.moment H :=
  canonical_of_padded canonicalInput23091 canonicalOutput23091 (by decide) (by decide)
    ⟨false, false, canonicalPermutation236, canonicalPermutation250⟩ (by decide +kernel) hH

def canonicalInput23092 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23092 : ExponentCode := normalNode10645

theorem canonicalSound23092 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23092.moment H = canonicalOutput23092.moment H :=
  canonical_of_padded canonicalInput23092 canonicalOutput23092 (by decide) (by decide)
    ⟨false, false, canonicalPermutation235, canonicalPermutation249⟩ (by decide +kernel) hH

def canonicalInput23093 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23093 : ExponentCode := normalNode10645

theorem canonicalSound23093 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23093.moment H = canonicalOutput23093.moment H :=
  canonical_of_padded canonicalInput23093 canonicalOutput23093 (by decide) (by decide)
    ⟨false, false, canonicalPermutation235, canonicalPermutation251⟩ (by decide +kernel) hH

def canonicalInput23094 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23094 : ExponentCode := normalNode10645

theorem canonicalSound23094 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23094.moment H = canonicalOutput23094.moment H :=
  canonical_of_padded canonicalInput23094 canonicalOutput23094 (by decide) (by decide)
    ⟨false, false, canonicalPermutation235, canonicalPermutation256⟩ (by decide +kernel) hH

def canonicalInput23095 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23095 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node5⟩

theorem canonicalSound23095 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23095.moment H = canonicalOutput23095.moment H :=
  canonical_of_padded canonicalInput23095 canonicalOutput23095 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation213, OAI.MUB6.Certificate.PairSemantics.permutation231⟩ (by decide +kernel) hH

def canonicalInput23096 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23096 : ExponentCode := normalNode10645

theorem canonicalSound23096 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23096.moment H = canonicalOutput23096.moment H :=
  canonical_of_padded canonicalInput23096 canonicalOutput23096 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation212, canonicalPermutation256⟩ (by decide +kernel) hH

def canonicalInput23097 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23097 : ExponentCode := normalNode10645

theorem canonicalSound23097 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23097.moment H = canonicalOutput23097.moment H :=
  canonical_of_padded canonicalInput23097 canonicalOutput23097 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation212, canonicalPermutation251⟩ (by decide +kernel) hH

def canonicalInput23098 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23098 : ExponentCode := normalNode10645

theorem canonicalSound23098 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23098.moment H = canonicalOutput23098.moment H :=
  canonical_of_padded canonicalInput23098 canonicalOutput23098 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation212, canonicalPermutation249⟩ (by decide +kernel) hH

def canonicalInput23099 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23099 : ExponentCode := normalNode8361

theorem canonicalSound23099 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23099.moment H = canonicalOutput23099.moment H :=
  canonical_of_padded canonicalInput23099 canonicalOutput23099 (by decide) (by decide)
    ⟨false, false, canonicalPermutation114, OAI.MUB6.Certificate.PairSemantics.permutation229⟩ (by decide +kernel) hH

def canonicalInput23100 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23100 : ExponentCode := normalNode10453

theorem canonicalSound23100 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23100.moment H = canonicalOutput23100.moment H :=
  canonical_of_padded canonicalInput23100 canonicalOutput23100 (by decide) (by decide)
    ⟨false, false, canonicalPermutation234, OAI.MUB6.Certificate.PairSemantics.permutation226⟩ (by decide +kernel) hH

def canonicalInput23101 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23101 : ExponentCode := normalNode10645

theorem canonicalSound23101 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23101.moment H = canonicalOutput23101.moment H :=
  canonical_of_padded canonicalInput23101 canonicalOutput23101 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation218, canonicalPermutation256⟩ (by decide +kernel) hH

def canonicalInput23102 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23102 : ExponentCode := normalNode10645

theorem canonicalSound23102 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23102.moment H = canonicalOutput23102.moment H :=
  canonical_of_padded canonicalInput23102 canonicalOutput23102 (by decide) (by decide)
    ⟨false, false, canonicalPermutation172, canonicalPermutation256⟩ (by decide +kernel) hH

def canonicalInput23103 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23103 : ExponentCode := normalNode10453

theorem canonicalSound23103 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23103.moment H = canonicalOutput23103.moment H :=
  canonical_of_padded canonicalInput23103 canonicalOutput23103 (by decide) (by decide)
    ⟨false, false, canonicalPermutation236, OAI.MUB6.Certificate.PairSemantics.permutation226⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes05
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput10048 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, -2, 3], ![1, -1, 0, 0], ![1, 1, 3, -5]]⟩

def canonicalOutput10048 : ExponentCode := normalNode9348

theorem canonicalSound10048 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10048.moment H = canonicalOutput10048.moment H :=
  canonical_of_padded canonicalInput10048 canonicalOutput10048 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput10049 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, -2, 3], ![1, 0, 3, -4], ![1, 0, 0, -1]]⟩

def canonicalOutput10049 : ExponentCode := normalNode9981

theorem canonicalSound10049 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10049.moment H = canonicalOutput10049.moment H :=
  canonical_of_padded canonicalInput10049 canonicalOutput10049 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10050 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, -1, 2], ![0, -1, 2, -1], ![2, 1, 0, -3]]⟩

def canonicalOutput10050 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node484⟩

theorem canonicalSound10050 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10050.moment H = canonicalOutput10050.moment H :=
  canonical_of_padded canonicalInput10050 canonicalOutput10050 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10051 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, -1, 2], ![0, -1, 3, -2], ![0, 1, 0, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput10051 : ExponentCode := normalNode4373

theorem canonicalSound10051 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10051.moment H = canonicalOutput10051.moment H :=
  canonical_of_padded canonicalInput10051 canonicalOutput10051 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10052 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, -1, 2], ![0, -1, 3, -2], ![1, 1, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput10052 : ExponentCode := normalNode5012

theorem canonicalSound10052 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10052.moment H = canonicalOutput10052.moment H :=
  canonical_of_padded canonicalInput10052 canonicalOutput10052 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10053 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, -1, 2], ![0, -1, 3, -2], ![2, 1, -1, -2]]⟩

def canonicalOutput10053 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code593

theorem canonicalSound10053 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10053.moment H = canonicalOutput10053.moment H :=
  canonical_of_padded canonicalInput10053 canonicalOutput10053 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10054 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, -1, 2], ![0, -1, 4, -3], ![1, 1, -2, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput10054 : ExponentCode := normalNode5015

theorem canonicalSound10054 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10054.moment H = canonicalOutput10054.moment H :=
  canonical_of_padded canonicalInput10054 canonicalOutput10054 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10055 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, -1, 2], ![0, -1, 4, -3], ![2, 1, -2, -1]]⟩

def canonicalOutput10055 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code604

theorem canonicalSound10055 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10055.moment H = canonicalOutput10055.moment H :=
  canonical_of_padded canonicalInput10055 canonicalOutput10055 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10056 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, -1, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, -1, 2, -3]]⟩

def canonicalOutput10056 : ExponentCode := normalNode4875

theorem canonicalSound10056 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10056.moment H = canonicalOutput10056.moment H :=
  canonical_of_padded canonicalInput10056 canonicalOutput10056 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10057 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, -1, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput10057 : ExponentCode := normalNode2298

theorem canonicalSound10057 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10057.moment H = canonicalOutput10057.moment H :=
  canonical_of_padded canonicalInput10057 canonicalOutput10057 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10058 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, -1, 2], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput10058 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1731⟩

theorem canonicalSound10058 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10058.moment H = canonicalOutput10058.moment H :=
  canonical_of_padded canonicalInput10058 canonicalOutput10058 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10059 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, -1, 2], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput10059 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1734⟩

theorem canonicalSound10059 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10059.moment H = canonicalOutput10059.moment H :=
  canonical_of_padded canonicalInput10059 canonicalOutput10059 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10060 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, -1, 2], ![0, 0, 2, -2], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput10060 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2610⟩

theorem canonicalSound10060 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10060.moment H = canonicalOutput10060.moment H :=
  canonical_of_padded canonicalInput10060 canonicalOutput10060 (by decide) (by decide)
    ⟨false, false, canonicalPermutation29, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10061 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, -1, 2], ![0, 0, 2, -2], ![2, 0, 0, -2]]⟩

def canonicalOutput10061 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1059⟩

theorem canonicalSound10061 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10061.moment H = canonicalOutput10061.moment H :=
  canonical_of_padded canonicalInput10061 canonicalOutput10061 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10062 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, -1, 2], ![0, 0, 3, -3], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput10062 : ExponentCode := normalNode10348

theorem canonicalSound10062 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10062.moment H = canonicalOutput10062.moment H :=
  canonical_of_padded canonicalInput10062 canonicalOutput10062 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10063 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, -1, 2], ![0, 0, 3, -3], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput10063 : ExponentCode := normalNode10348

theorem canonicalSound10063 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10063.moment H = canonicalOutput10063.moment H :=
  canonical_of_padded canonicalInput10063 canonicalOutput10063 (by decide) (by decide)
    ⟨false, false, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10064 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, -1, 2], ![0, 0, 3, -3], ![2, 0, -1, -1]]⟩

def canonicalOutput10064 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1270⟩

theorem canonicalSound10064 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10064.moment H = canonicalOutput10064.moment H :=
  canonical_of_padded canonicalInput10064 canonicalOutput10064 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10065 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, -1, 2], ![0, 0, 4, -4], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput10065 : ExponentCode := normalNode10351

theorem canonicalSound10065 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10065.moment H = canonicalOutput10065.moment H :=
  canonical_of_padded canonicalInput10065 canonicalOutput10065 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10066 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, -1, 2], ![0, 0, 4, -4], ![2, 0, -2, 0]]⟩

def canonicalOutput10066 : ExponentCode := normalNode10353

theorem canonicalSound10066 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10066.moment H = canonicalOutput10066.moment H :=
  canonical_of_padded canonicalInput10066 canonicalOutput10066 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10067 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, -1, 2], ![0, 1, -1, 0], ![2, -1, 3, -4]]⟩

def canonicalOutput10067 : ExponentCode := normalNode7939

theorem canonicalSound10067 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10067.moment H = canonicalOutput10067.moment H :=
  canonical_of_padded canonicalInput10067 canonicalOutput10067 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput10068 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput10068 : ExponentCode := normalNode2305

theorem canonicalSound10068 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10068.moment H = canonicalOutput10068.moment H :=
  canonical_of_padded canonicalInput10068 canonicalOutput10068 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10069 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, -1, 2], ![0, 1, 0, -1], ![2, -1, 2, -3]]⟩

def canonicalOutput10069 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1351⟩

theorem canonicalSound10069 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10069.moment H = canonicalOutput10069.moment H :=
  canonical_of_padded canonicalInput10069 canonicalOutput10069 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput10070 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, -1, 2], ![0, 1, 1, -2], ![2, -1, 1, -2]]⟩

def canonicalOutput10070 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node497⟩

theorem canonicalSound10070 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10070.moment H = canonicalOutput10070.moment H :=
  canonical_of_padded canonicalInput10070 canonicalOutput10070 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10071 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, -1, 2], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput10071 : ExponentCode := normalNode1981

theorem canonicalSound10071 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10071.moment H = canonicalOutput10071.moment H :=
  canonical_of_padded canonicalInput10071 canonicalOutput10071 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput10072 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, -1, 2], ![1, -1, -1, 1], ![1, 1, 3, -5]]⟩

def canonicalOutput10072 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code252

theorem canonicalSound10072 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10072.moment H = canonicalOutput10072.moment H :=
  canonical_of_padded canonicalInput10072 canonicalOutput10072 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10073 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, -1, 2], ![1, -1, 1, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput10073 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node502⟩

theorem canonicalSound10073 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10073.moment H = canonicalOutput10073.moment H :=
  canonical_of_padded canonicalInput10073 canonicalOutput10073 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10074 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, -1, 2], ![1, -1, 2, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput10074 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node500⟩

theorem canonicalSound10074 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10074.moment H = canonicalOutput10074.moment H :=
  canonical_of_padded canonicalInput10074 canonicalOutput10074 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10075 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, -1, 2], ![1, -1, 3, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput10075 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node673⟩

theorem canonicalSound10075 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10075.moment H = canonicalOutput10075.moment H :=
  canonical_of_padded canonicalInput10075 canonicalOutput10075 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput10076 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, -1, 2], ![1, -1, 4, -4], ![1, 1, -2, 0]]⟩

def canonicalOutput10076 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code336

theorem canonicalSound10076 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10076.moment H = canonicalOutput10076.moment H :=
  canonical_of_padded canonicalInput10076 canonicalOutput10076 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput10077 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, -1, 2], ![1, 0, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput10077 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1050⟩

theorem canonicalSound10077 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10077.moment H = canonicalOutput10077.moment H :=
  canonical_of_padded canonicalInput10077 canonicalOutput10077 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10078 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, -1, 2], ![1, 0, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput10078 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1050⟩

theorem canonicalSound10078 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10078.moment H = canonicalOutput10078.moment H :=
  canonical_of_padded canonicalInput10078 canonicalOutput10078 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10079 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 0, 1], ![0, -1, -1, 2], ![1, 0, -1, 0], ![1, 1, 3, -5]]⟩

def canonicalOutput10079 : ExponentCode := normalNode5006

theorem canonicalSound10079 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10079.moment H = canonicalOutput10079.moment H :=
  canonical_of_padded canonicalInput10079 canonicalOutput10079 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10080 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 0, 1], ![0, -1, 4, -3], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput10080 : ExponentCode := normalNode5661

theorem canonicalSound10080 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10080.moment H = canonicalOutput10080.moment H :=
  canonical_of_padded canonicalInput10080 canonicalOutput10080 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10081 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 0, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput10081 : ExponentCode := normalNode10707

theorem canonicalSound10081 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10081.moment H = canonicalOutput10081.moment H :=
  canonical_of_padded canonicalInput10081 canonicalOutput10081 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10082 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput10082 : ExponentCode := normalNode2367

theorem canonicalSound10082 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10082.moment H = canonicalOutput10082.moment H :=
  canonical_of_padded canonicalInput10082 canonicalOutput10082 (by decide) (by decide)
    ⟨false, true, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10083 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 1, 1, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput10083 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1769⟩

theorem canonicalSound10083 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10083.moment H = canonicalOutput10083.moment H :=
  canonical_of_padded canonicalInput10083 canonicalOutput10083 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10084 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 0, 1], ![0, 0, 2, -2], ![0, 1, -1, 0], ![2, -1, 0, -1]]⟩

def canonicalOutput10084 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1743⟩

theorem canonicalSound10084 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10084.moment H = canonicalOutput10084.moment H :=
  canonical_of_padded canonicalInput10084 canonicalOutput10084 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10085 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 0, 1], ![0, 0, 3, -3], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput10085 : ExponentCode := normalNode10731

theorem canonicalSound10085 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10085.moment H = canonicalOutput10085.moment H :=
  canonical_of_padded canonicalInput10085 canonicalOutput10085 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10086 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 0, 1], ![0, 0, 4, -4], ![1, 0, -1, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput10086 : ExponentCode := normalNode10734

theorem canonicalSound10086 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10086.moment H = canonicalOutput10086.moment H :=
  canonical_of_padded canonicalInput10086 canonicalOutput10086 (by decide) (by decide)
    ⟨false, false, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10087 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 0, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput10087 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1634⟩

theorem canonicalSound10087 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10087.moment H = canonicalOutput10087.moment H :=
  canonical_of_padded canonicalInput10087 canonicalOutput10087 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10088 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 0, 1], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput10088 : ExponentCode := normalNode2461

theorem canonicalSound10088 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10088.moment H = canonicalOutput10088.moment H :=
  canonical_of_padded canonicalInput10088 canonicalOutput10088 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10089 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 0, 1], ![0, 1, -1, 0], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput10089 : ExponentCode := normalNode2378

theorem canonicalSound10089 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10089.moment H = canonicalOutput10089.moment H :=
  canonical_of_padded canonicalInput10089 canonicalOutput10089 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10090 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 0, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput10090 : ExponentCode := normalNode5070

theorem canonicalSound10090 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10090.moment H = canonicalOutput10090.moment H :=
  canonical_of_padded canonicalInput10090 canonicalOutput10090 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10091 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, 0, 1], ![0, 1, 2, -3], ![2, -1, -1, 0]]⟩

def canonicalOutput10091 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1098⟩

theorem canonicalSound10091 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10091.moment H = canonicalOutput10091.moment H :=
  canonical_of_padded canonicalInput10091 canonicalOutput10091 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput10092 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 0, 1], ![0, 1, 3, -4], ![1, 0, -1, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput10092 : ExponentCode := normalNode5071

theorem canonicalSound10092 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10092.moment H = canonicalOutput10092.moment H :=
  canonical_of_padded canonicalInput10092 canonicalOutput10092 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10093 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, 0, 1], ![1, -1, -1, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput10093 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node894⟩

theorem canonicalSound10093 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10093.moment H = canonicalOutput10093.moment H :=
  canonical_of_padded canonicalInput10093 canonicalOutput10093 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10094 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, 0, 1], ![1, -1, 2, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput10094 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1333⟩

theorem canonicalSound10094 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10094.moment H = canonicalOutput10094.moment H :=
  canonical_of_padded canonicalInput10094 canonicalOutput10094 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput10095 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, 0, 1], ![1, 0, -2, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput10095 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node897⟩

theorem canonicalSound10095 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10095.moment H = canonicalOutput10095.moment H :=
  canonical_of_padded canonicalInput10095 canonicalOutput10095 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10096 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 1, 0], ![0, -1, -1, 2], ![1, 0, -1, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput10096 : ExponentCode := normalNode5007

theorem canonicalSound10096 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10096.moment H = canonicalOutput10096.moment H :=
  canonical_of_padded canonicalInput10096 canonicalOutput10096 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10097 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 1, 0], ![0, -1, -1, 2], ![1, 0, 2, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput10097 : ExponentCode := normalNode5008

theorem canonicalSound10097 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10097.moment H = canonicalOutput10097.moment H :=
  canonical_of_padded canonicalInput10097 canonicalOutput10097 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10098 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 1, 0], ![0, -1, -1, 2], ![1, 0, 3, -4], ![1, 1, -2, 0]]⟩

def canonicalOutput10098 : ExponentCode := normalNode5009

theorem canonicalSound10098 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10098.moment H = canonicalOutput10098.moment H :=
  canonical_of_padded canonicalInput10098 canonicalOutput10098 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10099 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 1, 0], ![0, -1, 0, 1], ![1, 0, -2, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput10099 : ExponentCode := normalNode5044

theorem canonicalSound10099 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10099.moment H = canonicalOutput10099.moment H :=
  canonical_of_padded canonicalInput10099 canonicalOutput10099 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10100 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 1, 0], ![0, -1, 0, 1], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput10100 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1768⟩

theorem canonicalSound10100 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10100.moment H = canonicalOutput10100.moment H :=
  canonical_of_padded canonicalInput10100 canonicalOutput10100 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10101 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 1, 0], ![0, -1, 0, 1], ![1, 0, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput10101 : ExponentCode := normalNode2699

theorem canonicalSound10101 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10101.moment H = canonicalOutput10101.moment H :=
  canonical_of_padded canonicalInput10101 canonicalOutput10101 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10102 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 1, 0], ![0, -1, 1, 0], ![1, 0, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput10102 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1835⟩

theorem canonicalSound10102 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10102.moment H = canonicalOutput10102.moment H :=
  canonical_of_padded canonicalInput10102 canonicalOutput10102 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput10103 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 1, 0], ![0, -1, 2, -1], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput10103 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1836⟩

theorem canonicalSound10103 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10103.moment H = canonicalOutput10103.moment H :=
  canonical_of_padded canonicalInput10103 canonicalOutput10103 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput10104 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, -1, 3, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput10104 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2323⟩

theorem canonicalSound10104 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10104.moment H = canonicalOutput10104.moment H :=
  canonical_of_padded canonicalInput10104 canonicalOutput10104 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10105 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, 0, -2, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput10105 : ExponentCode := normalNode10719

theorem canonicalSound10105 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10105.moment H = canonicalOutput10105.moment H :=
  canonical_of_padded canonicalInput10105 canonicalOutput10105 (by decide) (by decide)
    ⟨false, false, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10106 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput10106 : ExponentCode := normalNode10721

theorem canonicalSound10106 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10106.moment H = canonicalOutput10106.moment H :=
  canonical_of_padded canonicalInput10106 canonicalOutput10106 (by decide) (by decide)
    ⟨false, false, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10107 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, 0, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput10107 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2822⟩

theorem canonicalSound10107 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10107.moment H = canonicalOutput10107.moment H :=
  canonical_of_padded canonicalInput10107 canonicalOutput10107 (by decide) (by decide)
    ⟨false, false, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10108 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, 0, 2, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput10108 : ExponentCode := normalNode10721

theorem canonicalSound10108 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10108.moment H = canonicalOutput10108.moment H :=
  canonical_of_padded canonicalInput10108 canonicalOutput10108 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10109 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, 0, 3, -4], ![1, 0, -2, 1]]⟩

def canonicalOutput10109 : ExponentCode := normalNode10719

theorem canonicalSound10109 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10109.moment H = canonicalOutput10109.moment H :=
  canonical_of_padded canonicalInput10109 canonicalOutput10109 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10110 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, -1, 0, -1]]⟩

def canonicalOutput10110 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1747⟩

theorem canonicalSound10110 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10110.moment H = canonicalOutput10110.moment H :=
  canonical_of_padded canonicalInput10110 canonicalOutput10110 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10111 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput10111 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1786⟩

theorem canonicalSound10111 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10111.moment H = canonicalOutput10111.moment H :=
  canonical_of_padded canonicalInput10111 canonicalOutput10111 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

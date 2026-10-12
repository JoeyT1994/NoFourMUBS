import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes05
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput9088 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, -2, 0, 2, 0], ![0, 1, 1, -3, 1], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput9088 : ExponentCode := normalNode1839

theorem canonicalSound9088 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9088.moment H = canonicalOutput9088.moment H :=
  canonical_of_padded canonicalInput9088 canonicalOutput9088 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9089 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, -2, 1, 1, 0], ![-1, 2, -2, -1, 2], ![3, 0, 0, -1, -2]]⟩

def canonicalOutput9089 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code870

theorem canonicalSound9089 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9089.moment H = canonicalOutput9089.moment H :=
  canonical_of_padded canonicalInput9089 canonicalOutput9089 (by decide) (by decide)
    ⟨true, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9090 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, -2, 1, 1, 0], ![0, 0, -2, 0, 2], ![2, 2, 0, -2, -2]]⟩

def canonicalOutput9090 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code839

theorem canonicalSound9090 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9090.moment H = canonicalOutput9090.moment H :=
  canonical_of_padded canonicalInput9090 canonicalOutput9090 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9091 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, -2, 1, 1, 0], ![0, 1, -2, -1, 2], ![2, 1, 0, -1, -2]]⟩

def canonicalOutput9091 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code847

theorem canonicalSound9091 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9091.moment H = canonicalOutput9091.moment H :=
  canonical_of_padded canonicalInput9091 canonicalOutput9091 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9092 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, -2, 1, 1, 0], ![0, 1, -2, 0, 1], ![2, 1, 0, -2, -1]]⟩

def canonicalOutput9092 : ExponentCode := normalNode3759

theorem canonicalSound9092 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9092.moment H = canonicalOutput9092.moment H :=
  canonical_of_padded canonicalInput9092 canonicalOutput9092 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9093 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, -2, 1, 1, 0], ![0, 2, -2, -1, 1], ![2, 0, 0, -1, -1]]⟩

def canonicalOutput9093 : ExponentCode := normalNode3806

theorem canonicalSound9093 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9093.moment H = canonicalOutput9093.moment H :=
  canonical_of_padded canonicalInput9093 canonicalOutput9093 (by decide) (by decide)
    ⟨true, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9094 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, -2, 1, 1, 0], ![0, 2, -1, 0, -1], ![2, 0, -1, -2, 1]]⟩

def canonicalOutput9094 : ExponentCode := normalNode3806

theorem canonicalSound9094 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9094.moment H = canonicalOutput9094.moment H :=
  canonical_of_padded canonicalInput9094 canonicalOutput9094 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9095 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, -2, 1, 1, 0], ![1, 0, -2, 0, 1], ![1, 2, 0, -2, -1]]⟩

def canonicalOutput9095 : ExponentCode := normalNode3759

theorem canonicalSound9095 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9095.moment H = canonicalOutput9095.moment H :=
  canonical_of_padded canonicalInput9095 canonicalOutput9095 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9096 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, -2, 1, 1, 0], ![1, 1, -2, -1, 1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput9096 : ExponentCode := normalNode4206

theorem canonicalSound9096 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9096.moment H = canonicalOutput9096.moment H :=
  canonical_of_padded canonicalInput9096 canonicalOutput9096 (by decide) (by decide)
    ⟨true, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9097 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, -2, 1, 1, 0], ![1, 1, -1, 0, -1], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput9097 : ExponentCode := normalNode4206

theorem canonicalSound9097 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9097.moment H = canonicalOutput9097.moment H :=
  canonical_of_padded canonicalInput9097 canonicalOutput9097 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9098 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, -2, 1, 1, 0], ![1, 2, -1, 0, -2], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput9098 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code847

theorem canonicalSound9098 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9098.moment H = canonicalOutput9098.moment H :=
  canonical_of_padded canonicalInput9098 canonicalOutput9098 (by decide) (by decide)
    ⟨true, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9099 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 1, 0], ![0, -1, -1, -1, 3], ![0, 0, 1, 1, -2], ![0, 1, 0, 0, -1], ![2, 0, -1, -1, 0]]⟩

def canonicalOutput9099 : ExponentCode := normalNode6539

theorem canonicalSound9099 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9099.moment H = canonicalOutput9099.moment H :=
  canonical_of_padded canonicalInput9099 canonicalOutput9099 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, canonicalPermutation61⟩ (by decide +kernel) hH

def canonicalInput9100 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 1, 0], ![0, -1, -1, -1, 3], ![0, 0, 1, 1, -2], ![0, 2, -1, 0, -1], ![2, -1, 0, -1, 0]]⟩

def canonicalOutput9100 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code346

theorem canonicalSound9100 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9100.moment H = canonicalOutput9100.moment H :=
  canonical_of_padded canonicalInput9100 canonicalOutput9100 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, canonicalPermutation36⟩ (by decide +kernel) hH

def canonicalInput9101 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 1, 0], ![0, -1, -1, -1, 3], ![0, 1, 0, -1, 0], ![0, 1, 1, 0, -2], ![2, -1, -1, 1, -1]]⟩

def canonicalOutput9101 : ExponentCode := normalNode8491

theorem canonicalSound9101 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9101.moment H = canonicalOutput9101.moment H :=
  canonical_of_padded canonicalInput9101 canonicalOutput9101 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation170, canonicalPermutation36⟩ (by decide +kernel) hH

def canonicalInput9102 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 1, 0], ![0, -1, -1, -1, 3], ![0, 1, 0, -1, 0], ![0, 1, 1, 1, -3], ![2, -1, -1, 0, 0]]⟩

def canonicalOutput9102 : ExponentCode := normalNode10803

theorem canonicalSound9102 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9102.moment H = canonicalOutput9102.moment H :=
  canonical_of_padded canonicalInput9102 canonicalOutput9102 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

def canonicalInput9103 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 1, 0], ![0, -1, -1, -1, 3], ![0, 1, 0, 0, -1], ![0, 1, 1, -1, -1], ![2, -1, -1, 1, -1]]⟩

def canonicalOutput9103 : ExponentCode := normalNode8014

theorem canonicalSound9103 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9103.moment H = canonicalOutput9103.moment H :=
  canonical_of_padded canonicalInput9103 canonicalOutput9103 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation36⟩ (by decide +kernel) hH

def canonicalInput9104 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 1, 0], ![0, -1, -1, -1, 3], ![0, 1, 0, 0, -1], ![0, 1, 1, 0, -2], ![2, -1, -1, 0, 0]]⟩

def canonicalOutput9104 : ExponentCode := normalNode6531

theorem canonicalSound9104 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9104.moment H = canonicalOutput9104.moment H :=
  canonical_of_padded canonicalInput9104 canonicalOutput9104 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, canonicalPermutation36⟩ (by decide +kernel) hH

def canonicalInput9105 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 1, 0], ![0, -1, -1, -1, 3], ![0, 1, 0, 1, -2], ![0, 1, 0, 0, -1], ![2, -1, 0, -1, 0]]⟩

def canonicalOutput9105 : ExponentCode := normalNode6531

theorem canonicalSound9105 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9105.moment H = canonicalOutput9105.moment H :=
  canonical_of_padded canonicalInput9105 canonicalOutput9105 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, canonicalPermutation61⟩ (by decide +kernel) hH

def canonicalInput9106 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 1, 0], ![0, -1, -1, -1, 3], ![0, 1, 0, 1, -2], ![0, 1, 1, -1, -1], ![2, -1, -1, 0, 0]]⟩

def canonicalOutput9106 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code345

theorem canonicalSound9106 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9106.moment H = canonicalOutput9106.moment H :=
  canonical_of_padded canonicalInput9106 canonicalOutput9106 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, canonicalPermutation36⟩ (by decide +kernel) hH

def canonicalInput9107 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, -1, -1, -1, 3], ![1, -1, 1, 1, -2], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput9107 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code982

theorem canonicalSound9107 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9107.moment H = canonicalOutput9107.moment H :=
  canonical_of_padded canonicalInput9107 canonicalOutput9107 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9108 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 1, 0], ![0, -1, -1, 0, 2], ![0, 0, 1, 1, -2], ![0, 1, 0, 0, -1], ![2, 0, -1, -2, 1]]⟩

def canonicalOutput9108 : ExponentCode := normalNode6629

theorem canonicalSound9108 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9108.moment H = canonicalOutput9108.moment H :=
  canonical_of_padded canonicalInput9108 canonicalOutput9108 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation192⟩ (by decide +kernel) hH

def canonicalInput9109 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 1, 0], ![0, -1, -1, 0, 2], ![0, 0, 1, 1, -2], ![0, 2, 0, -1, -1], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput9109 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code382

theorem canonicalSound9109 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9109.moment H = canonicalOutput9109.moment H :=
  canonical_of_padded canonicalInput9109 canonicalOutput9109 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput9110 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 1, 0], ![0, -1, -1, 0, 2], ![0, 1, -1, 1, -1], ![1, 0, 0, 0, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput9110 : ExponentCode := normalNode8195

theorem canonicalSound9110 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9110.moment H = canonicalOutput9110.moment H :=
  canonical_of_padded canonicalInput9110 canonicalOutput9110 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput9111 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 1, 0], ![0, -1, -1, 0, 2], ![0, 1, 0, -1, 0], ![0, 1, 1, 0, -2], ![2, -1, -1, 0, 0]]⟩

def canonicalOutput9111 : ExponentCode := normalNode8142

theorem canonicalSound9111 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9111.moment H = canonicalOutput9111.moment H :=
  canonical_of_padded canonicalInput9111 canonicalOutput9111 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput9112 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 1, 0], ![0, -1, -1, 0, 2], ![0, 1, 0, -1, 0], ![0, 1, 1, 1, -3], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput9112 : ExponentCode := normalNode10798

theorem canonicalSound9112 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9112.moment H = canonicalOutput9112.moment H :=
  canonical_of_padded canonicalInput9112 canonicalOutput9112 (by decide) (by decide)
    ⟨true, false, canonicalPermutation61, canonicalPermutation73⟩ (by decide +kernel) hH

def canonicalInput9113 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 1, 0], ![0, -1, -1, 0, 2], ![0, 1, 0, 0, -1], ![0, 1, 0, 1, -2], ![2, -1, 0, -2, 1]]⟩

def canonicalOutput9113 : ExponentCode := normalNode6620

theorem canonicalSound9113 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9113.moment H = canonicalOutput9113.moment H :=
  canonical_of_padded canonicalInput9113 canonicalOutput9113 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput9114 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 1, 0], ![0, -1, -1, 0, 2], ![0, 1, 0, 0, -1], ![0, 1, 1, -1, -1], ![2, -1, -1, 0, 0]]⟩

def canonicalOutput9114 : ExponentCode := normalNode8157

theorem canonicalSound9114 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9114.moment H = canonicalOutput9114.moment H :=
  canonical_of_padded canonicalInput9114 canonicalOutput9114 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput9115 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 1, 0], ![0, -1, -1, 0, 2], ![0, 1, 0, 0, -1], ![0, 1, 1, 0, -2], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput9115 : ExponentCode := normalNode6621

theorem canonicalSound9115 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9115.moment H = canonicalOutput9115.moment H :=
  canonical_of_padded canonicalInput9115 canonicalOutput9115 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput9116 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 1, 0], ![0, -1, -1, 0, 2], ![0, 1, 0, 0, -1], ![1, 0, -1, 1, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput9116 : ExponentCode := normalNode8202

theorem canonicalSound9116 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9116.moment H = canonicalOutput9116.moment H :=
  canonical_of_padded canonicalInput9116 canonicalOutput9116 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput9117 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 1, 0], ![0, -1, -1, 0, 2], ![0, 1, 0, 1, -2], ![0, 1, 1, -1, -1], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput9117 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code381

theorem canonicalSound9117 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9117.moment H = canonicalOutput9117.moment H :=
  canonical_of_padded canonicalInput9117 canonicalOutput9117 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput9118 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 1, 0], ![0, -1, -1, 0, 2], ![0, 1, 0, 1, -2], ![1, 0, -1, 0, 0], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput9118 : ExponentCode := normalNode8112

theorem canonicalSound9118 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9118.moment H = canonicalOutput9118.moment H :=
  canonical_of_padded canonicalInput9118 canonicalOutput9118 (by decide) (by decide)
    ⟨false, true, canonicalPermutation25, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput9119 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 1, 0], ![0, -1, -1, 0, 2], ![0, 1, 1, -2, 0], ![1, 0, -1, 0, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput9119 : ExponentCode := normalNode8154

theorem canonicalSound9119 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9119.moment H = canonicalOutput9119.moment H :=
  canonical_of_padded canonicalInput9119 canonicalOutput9119 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput9120 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 1, 0], ![0, -1, -1, 0, 2], ![0, 1, 1, -2, 0], ![1, 0, -1, 1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput9120 : ExponentCode := normalNode8165

theorem canonicalSound9120 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9120.moment H = canonicalOutput9120.moment H :=
  canonical_of_padded canonicalInput9120 canonicalOutput9120 (by decide) (by decide)
    ⟨false, true, canonicalPermutation55, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput9121 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 1, 0], ![0, -1, -1, 0, 2], ![0, 1, 1, -1, -1], ![0, 1, 0, 1, -2], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput9121 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code381

theorem canonicalSound9121 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9121.moment H = canonicalOutput9121.moment H :=
  canonical_of_padded canonicalInput9121 canonicalOutput9121 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation192⟩ (by decide +kernel) hH

def canonicalInput9122 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 1, 0], ![0, -1, -1, 0, 2], ![0, 1, 1, 0, -2], ![0, 1, 0, 0, -1], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput9122 : ExponentCode := normalNode6621

theorem canonicalSound9122 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9122.moment H = canonicalOutput9122.moment H :=
  canonical_of_padded canonicalInput9122 canonicalOutput9122 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation192⟩ (by decide +kernel) hH

def canonicalInput9123 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, -1, -1, 1, 1], ![-1, 3, -1, 0, -1], ![3, -2, 1, -2, 0]]⟩

def canonicalOutput9123 : ExponentCode := normalNode3536

theorem canonicalSound9123 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9123.moment H = canonicalOutput9123.moment H :=
  canonical_of_padded canonicalInput9123 canonicalOutput9123 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9124 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 1, 0], ![0, -1, -1, 1, 1], ![0, 1, 0, -1, 0], ![0, 1, 1, 0, -2], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput9124 : ExponentCode := normalNode8499

theorem canonicalSound9124 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9124.moment H = canonicalOutput9124.moment H :=
  canonical_of_padded canonicalInput9124 canonicalOutput9124 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation170, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput9125 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 1, 0], ![0, -1, -1, 1, 1], ![0, 1, 0, 0, -1], ![0, 1, 1, -1, -1], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput9125 : ExponentCode := normalNode8494

theorem canonicalSound9125 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9125.moment H = canonicalOutput9125.moment H :=
  canonical_of_padded canonicalInput9125 canonicalOutput9125 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation169, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput9126 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, -1, -1, 1, 1], ![0, 2, -1, 0, -1], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput9126 : ExponentCode := normalNode3965

theorem canonicalSound9126 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9126.moment H = canonicalOutput9126.moment H :=
  canonical_of_padded canonicalInput9126 canonicalOutput9126 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9127 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, -1, -1, 1, 1], ![1, -1, 1, -2, 1], ![1, 2, -1, 0, -2]]⟩

def canonicalOutput9127 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code973

theorem canonicalSound9127 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9127.moment H = canonicalOutput9127.moment H :=
  canonical_of_padded canonicalInput9127 canonicalOutput9127 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9128 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, -1, -1, 2, 0], ![0, 2, -1, 0, -1], ![2, -1, 1, -3, 1]]⟩

def canonicalOutput9128 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1691⟩

theorem canonicalSound9128 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9128.moment H = canonicalOutput9128.moment H :=
  canonical_of_padded canonicalInput9128 canonicalOutput9128 (by decide) (by decide)
    ⟨true, true, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9129 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 1, 0], ![0, -1, 0, -1, 2], ![0, 1, 0, 0, -1], ![0, 1, 0, 1, -2], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput9129 : ExponentCode := normalNode6621

theorem canonicalSound9129 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9129.moment H = canonicalOutput9129.moment H :=
  canonical_of_padded canonicalInput9129 canonicalOutput9129 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput9130 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, -1, 0, 1, 0], ![1, -1, 1, -2, 1], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput9130 : ExponentCode := normalNode8998

theorem canonicalSound9130 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9130.moment H = canonicalOutput9130.moment H :=
  canonical_of_padded canonicalInput9130 canonicalOutput9130 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9131 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, -1, 0, 2, -1], ![0, 2, -2, 0, 0], ![2, -1, 1, -3, 1]]⟩

def canonicalOutput9131 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1656⟩

theorem canonicalSound9131 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9131.moment H = canonicalOutput9131.moment H :=
  canonical_of_padded canonicalInput9131 canonicalOutput9131 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9132 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 1, 0], ![0, -1, 1, -1, 1], ![0, 2, -1, -1, 0], ![1, -1, 0, 0, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput9132 : ExponentCode := normalNode8206

theorem canonicalSound9132 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9132.moment H = canonicalOutput9132.moment H :=
  canonical_of_padded canonicalInput9132 canonicalOutput9132 (by decide) (by decide)
    ⟨true, false, canonicalPermutation29, OAI.MUB6.Certificate.PairSemantics.permutation190⟩ (by decide +kernel) hH

def canonicalInput9133 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 1, 0], ![0, -1, 1, -1, 1], ![0, 2, -1, 0, -1], ![1, -1, -1, 1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput9133 : ExponentCode := normalNode8191

theorem canonicalSound9133 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9133.moment H = canonicalOutput9133.moment H :=
  canonical_of_padded canonicalInput9133 canonicalOutput9133 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, canonicalPermutation30⟩ (by decide +kernel) hH

def canonicalInput9134 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 1, 0], ![0, -1, 1, 1, -1], ![0, 1, -2, 0, 1], ![1, 0, 0, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput9134 : ExponentCode := normalNode8126

theorem canonicalSound9134 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9134.moment H = canonicalOutput9134.moment H :=
  canonical_of_padded canonicalInput9134 canonicalOutput9134 (by decide) (by decide)
    ⟨false, true, canonicalPermutation36, canonicalPermutation44⟩ (by decide +kernel) hH

def canonicalInput9135 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, -1, 1, 1, -1], ![0, 2, -2, 0, 0], ![2, -1, 0, -2, 1]]⟩

def canonicalOutput9135 : ExponentCode := normalNode3877

theorem canonicalSound9135 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9135.moment H = canonicalOutput9135.moment H :=
  canonical_of_padded canonicalInput9135 canonicalOutput9135 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9136 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, -1, 1, 1, -1], ![1, -1, -2, 1, 1], ![1, 2, 0, -3, 0]]⟩

def canonicalOutput9136 : ExponentCode := normalNode4253

theorem canonicalSound9136 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9136.moment H = canonicalOutput9136.moment H :=
  canonical_of_padded canonicalInput9136 canonicalOutput9136 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9137 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, -1, 1, 1, -1], ![1, 2, -2, 0, -1], ![1, -1, 0, -2, 2]]⟩

def canonicalOutput9137 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code964

theorem canonicalSound9137 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9137.moment H = canonicalOutput9137.moment H :=
  canonical_of_padded canonicalInput9137 canonicalOutput9137 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9138 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 1, 0], ![0, 0, -2, -1, 3], ![0, 0, 1, 1, -2], ![0, 1, 0, 0, -1], ![2, -1, 0, -1, 0]]⟩

def canonicalOutput9138 : ExponentCode := normalNode6540

theorem canonicalSound9138 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9138.moment H = canonicalOutput9138.moment H :=
  canonical_of_padded canonicalInput9138 canonicalOutput9138 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, canonicalPermutation61⟩ (by decide +kernel) hH

def canonicalInput9139 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 0, -2, 1, 1], ![0, 2, 0, -2, 0], ![2, -2, 1, 0, -1]]⟩

def canonicalOutput9139 : ExponentCode := normalNode3888

theorem canonicalSound9139 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9139.moment H = canonicalOutput9139.moment H :=
  canonical_of_padded canonicalInput9139 canonicalOutput9139 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation175, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput9140 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 0, -2, 1, 1], ![0, 2, 0, 0, -2], ![2, -2, 1, -2, 1]]⟩

def canonicalOutput9140 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code857

theorem canonicalSound9140 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9140.moment H = canonicalOutput9140.moment H :=
  canonical_of_padded canonicalInput9140 canonicalOutput9140 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9141 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 0, -2, 1, 1], ![0, 2, 1, -1, -2], ![2, -2, 0, -1, 1]]⟩

def canonicalOutput9141 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code903

theorem canonicalSound9141 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9141.moment H = canonicalOutput9141.moment H :=
  canonical_of_padded canonicalInput9141 canonicalOutput9141 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9142 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 0, -2, 1, 1], ![1, -2, 1, -1, 1], ![1, 2, 0, -1, -2]]⟩

def canonicalOutput9142 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code986

theorem canonicalSound9142 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9142.moment H = canonicalOutput9142.moment H :=
  canonical_of_padded canonicalInput9142 canonicalOutput9142 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9143 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 0, -2, 1, 1], ![1, 2, 0, 0, -3], ![1, -2, 1, -2, 2]]⟩

def canonicalOutput9143 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code989

theorem canonicalSound9143 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9143.moment H = canonicalOutput9143.moment H :=
  canonical_of_padded canonicalInput9143 canonicalOutput9143 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9144 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 1, 0], ![0, 0, -1, -1, 2], ![0, 0, 1, 1, -2], ![0, 1, 0, 0, -1], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput9144 : ExponentCode := normalNode6628

theorem canonicalSound9144 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9144.moment H = canonicalOutput9144.moment H :=
  canonical_of_padded canonicalInput9144 canonicalOutput9144 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation192⟩ (by decide +kernel) hH

def canonicalInput9145 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 0, -1, 2, -1], ![0, 2, -1, -1, 0], ![2, -2, 1, -2, 1]]⟩

def canonicalOutput9145 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1761⟩

theorem canonicalSound9145 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9145.moment H = canonicalOutput9145.moment H :=
  canonical_of_padded canonicalInput9145 canonicalOutput9145 (by decide) (by decide)
    ⟨true, true, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9146 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 1, 0], ![0, 0, 1, 1, -2], ![0, 1, -2, 0, 1], ![1, -1, 0, 0, 0], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput9146 : ExponentCode := normalNode8129

theorem canonicalSound9146 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9146.moment H = canonicalOutput9146.moment H :=
  canonical_of_padded canonicalInput9146 canonicalOutput9146 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation181, canonicalPermutation44⟩ (by decide +kernel) hH

def canonicalInput9147 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 1, -3, 1, 1], ![0, 2, 1, -2, -1], ![2, -3, 1, 0, 0]]⟩

def canonicalOutput9147 : ExponentCode := normalNode3969

theorem canonicalSound9147 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9147.moment H = canonicalOutput9147.moment H :=
  canonical_of_padded canonicalInput9147 canonicalOutput9147 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9148 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 1, -2, 0, 1], ![0, -2, 0, 1, 1], ![2, 1, 1, -2, -2]]⟩

def canonicalOutput9148 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code853

theorem canonicalSound9148 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9148.moment H = canonicalOutput9148.moment H :=
  canonical_of_padded canonicalInput9148 canonicalOutput9148 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9149 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 1, -2, 0, 1], ![0, 1, 0, -2, 1], ![2, -2, 1, 1, -2]]⟩

def canonicalOutput9149 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code916

theorem canonicalSound9149 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9149.moment H = canonicalOutput9149.moment H :=
  canonical_of_padded canonicalInput9149 canonicalOutput9149 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9150 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 1, -2, 0, 1], ![0, 1, 1, -2, 0], ![2, -2, 0, 1, -1]]⟩

def canonicalOutput9150 : ExponentCode := normalNode4090

theorem canonicalSound9150 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9150.moment H = canonicalOutput9150.moment H :=
  canonical_of_padded canonicalInput9150 canonicalOutput9150 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9151 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 1, -2, 0, 1], ![1, -2, 0, 1, 0], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput9151 : ExponentCode := normalNode4498

theorem canonicalSound9151 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9151.moment H = canonicalOutput9151.moment H :=
  canonical_of_padded canonicalInput9151 canonicalOutput9151 (by decide) (by decide)
    ⟨true, false, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

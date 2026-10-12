import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput21056 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-2, 1, 1, -1, 1], ![0, -2, 1, 1, 0], ![3, 1, -2, -1, -1]]⟩

def canonicalOutput21056 : ExponentCode := normalNode9378

theorem canonicalSound21056 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21056.moment H = canonicalOutput21056.moment H :=
  canonical_of_padded canonicalInput21056 canonicalOutput21056 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21057 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-2, 1, 1, -1, 1], ![1, -2, 1, -1, 1], ![2, 1, -2, 1, -2]]⟩

def canonicalOutput21057 : ExponentCode := normalNode7072

theorem canonicalSound21057 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21057.moment H = canonicalOutput21057.moment H :=
  canonical_of_padded canonicalInput21057 canonicalOutput21057 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21058 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-2, 1, 1, -1, 1], ![1, -2, 1, 1, -1], ![2, 1, -2, -1, 0]]⟩

def canonicalOutput21058 : ExponentCode := normalNode7070

theorem canonicalSound21058 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21058.moment H = canonicalOutput21058.moment H :=
  canonical_of_padded canonicalInput21058 canonicalOutput21058 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21059 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-2, 1, 1, -1, 1], ![2, -2, 1, -1, 0], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput21059 : ExponentCode := normalNode7070

theorem canonicalSound21059 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21059.moment H = canonicalOutput21059.moment H :=
  canonical_of_padded canonicalInput21059 canonicalOutput21059 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21060 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-2, 1, 2, -2, 1], ![1, -2, -1, 1, 1], ![2, 1, -1, 0, -2]]⟩

def canonicalOutput21060 : ExponentCode := normalNode9007

theorem canonicalSound21060 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21060.moment H = canonicalOutput21060.moment H :=
  canonical_of_padded canonicalInput21060 canonicalOutput21060 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput21061 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-2, 1, 2, -1, 0], ![0, -2, -1, 1, 2], ![3, 1, -1, -1, -2]]⟩

def canonicalOutput21061 : ExponentCode := normalNode6782

theorem canonicalSound21061 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21061.moment H = canonicalOutput21061.moment H :=
  canonical_of_padded canonicalInput21061 canonicalOutput21061 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21062 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-2, 1, 2, -1, 0], ![1, -2, -1, 1, 1], ![2, 1, -1, -1, -1]]⟩

def canonicalOutput21062 : ExponentCode := normalNode7032

theorem canonicalSound21062 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21062.moment H = canonicalOutput21062.moment H :=
  canonical_of_padded canonicalInput21062 canonicalOutput21062 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21063 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-2, 1, 2, -1, 0], ![1, -2, 0, -1, 2], ![2, 1, -2, 1, -2]]⟩

def canonicalOutput21063 : ExponentCode := normalNode7045

theorem canonicalSound21063 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21063.moment H = canonicalOutput21063.moment H :=
  canonical_of_padded canonicalInput21063 canonicalOutput21063 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21064 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-2, 1, 2, -1, 0], ![2, -2, 0, -1, 1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput21064 : ExponentCode := normalNode7009

theorem canonicalSound21064 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21064.moment H = canonicalOutput21064.moment H :=
  canonical_of_padded canonicalInput21064 canonicalOutput21064 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21065 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -3, 2, 0, 2], ![1, 1, -1, -2, 1], ![1, 2, -1, 1, -3]]⟩

def canonicalOutput21065 : ExponentCode := normalNode11102

theorem canonicalSound21065 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21065.moment H = canonicalOutput21065.moment H :=
  canonical_of_padded canonicalInput21065 canonicalOutput21065 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21066 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -3, 2, 0, 2], ![1, 1, 0, 1, -3], ![1, 2, -2, -2, 1]]⟩

def canonicalOutput21066 : ExponentCode := normalNode9013

theorem canonicalSound21066 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21066.moment H = canonicalOutput21066.moment H :=
  canonical_of_padded canonicalInput21066 canonicalOutput21066 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21067 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -2, 0, 1, 2], ![0, 0, 2, -1, -1], ![2, 2, -2, -1, -1]]⟩

def canonicalOutput21067 : ExponentCode := normalNode10292

theorem canonicalSound21067 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21067.moment H = canonicalOutput21067.moment H :=
  canonical_of_padded canonicalInput21067 canonicalOutput21067 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21068 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -2, 0, 1, 2], ![0, 1, 2, -2, -1], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput21068 : ExponentCode := normalNode8895

theorem canonicalSound21068 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21068.moment H = canonicalOutput21068.moment H :=
  canonical_of_padded canonicalInput21068 canonicalOutput21068 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21069 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -2, 0, 1, 2], ![1, 0, 2, -2, -1], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput21069 : ExponentCode := normalNode8894

theorem canonicalSound21069 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21069.moment H = canonicalOutput21069.moment H :=
  canonical_of_padded canonicalInput21069 canonicalOutput21069 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21070 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -2, 1, -1, 3], ![1, 0, 1, 1, -3], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput21070 : ExponentCode := normalNode9429

theorem canonicalSound21070 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21070.moment H = canonicalOutput21070.moment H :=
  canonical_of_padded canonicalInput21070 canonicalOutput21070 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput21071 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -2, 1, -1, 3], ![1, 1, -2, -1, 1], ![1, 1, 1, 1, -4]]⟩

def canonicalOutput21071 : ExponentCode := normalNode11081

theorem canonicalSound21071 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21071.moment H = canonicalOutput21071.moment H :=
  canonical_of_padded canonicalInput21071 canonicalOutput21071 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21072 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -2, 1, 0, 2], ![0, 0, 1, 1, -2], ![2, 2, -2, -2, 0]]⟩

def canonicalOutput21072 : ExponentCode := normalNode8928

theorem canonicalSound21072 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21072.moment H = canonicalOutput21072.moment H :=
  canonical_of_padded canonicalInput21072 canonicalOutput21072 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21073 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -2, 1, 0, 2], ![0, 1, -2, 1, 0], ![2, 1, 1, -2, -2]]⟩

def canonicalOutput21073 : ExponentCode := normalNode8985

theorem canonicalSound21073 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21073.moment H = canonicalOutput21073.moment H :=
  canonical_of_padded canonicalInput21073 canonicalOutput21073 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation191, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21074 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -2, 1, 0, 2], ![0, 1, 1, -2, 0], ![2, 1, -2, 1, -2]]⟩

def canonicalOutput21074 : ExponentCode := normalNode10346

theorem canonicalSound21074 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21074.moment H = canonicalOutput21074.moment H :=
  canonical_of_padded canonicalInput21074 canonicalOutput21074 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21075 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -2, 1, 0, 2], ![0, 2, -2, 1, -1], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput21075 : ExponentCode := normalNode8903

theorem canonicalSound21075 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21075.moment H = canonicalOutput21075.moment H :=
  canonical_of_padded canonicalInput21075 canonicalOutput21075 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21076 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -2, 1, 0, 2], ![1, 0, -2, 1, 0], ![1, 2, 1, -2, -2]]⟩

def canonicalOutput21076 : ExponentCode := normalNode9061

theorem canonicalSound21076 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21076.moment H = canonicalOutput21076.moment H :=
  canonical_of_padded canonicalInput21076 canonicalOutput21076 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21077 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -2, 1, 0, 2], ![1, 0, 1, 1, -3], ![1, 2, -2, -2, 1]]⟩

def canonicalOutput21077 : ExponentCode := normalNode8931

theorem canonicalSound21077 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21077.moment H = canonicalOutput21077.moment H :=
  canonical_of_padded canonicalInput21077 canonicalOutput21077 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21078 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -2, 1, 0, 2], ![1, 0, 2, -2, -1], ![1, 2, -3, 1, -1]]⟩

def canonicalOutput21078 : ExponentCode := normalNode9350

theorem canonicalSound21078 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21078.moment H = canonicalOutput21078.moment H :=
  canonical_of_padded canonicalInput21078 canonicalOutput21078 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21079 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -2, 1, 0, 2], ![1, 1, -3, 1, 0], ![1, 1, 2, -2, -2]]⟩

def canonicalOutput21079 : ExponentCode := normalNode8988

theorem canonicalSound21079 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21079.moment H = canonicalOutput21079.moment H :=
  canonical_of_padded canonicalInput21079 canonicalOutput21079 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation191, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21080 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -2, 1, 0, 2], ![1, 1, -2, -2, 2], ![1, 1, 1, 1, -4]]⟩

def canonicalOutput21080 : ExponentCode := normalNode9353

theorem canonicalSound21080 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21080.moment H = canonicalOutput21080.moment H :=
  canonical_of_padded canonicalInput21080 canonicalOutput21080 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21081 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -2, 1, 0, 2], ![1, 1, -2, 1, -1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput21081 : ExponentCode := normalNode9002

theorem canonicalSound21081 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21081.moment H = canonicalOutput21081.moment H :=
  canonical_of_padded canonicalInput21081 canonicalOutput21081 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation191, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21082 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -2, 1, 0, 2], ![2, 0, 1, -3, 0], ![0, 2, -2, 2, -2]]⟩

def canonicalOutput21082 : ExponentCode := normalNode9545

theorem canonicalSound21082 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21082.moment H = canonicalOutput21082.moment H :=
  canonical_of_padded canonicalInput21082 canonicalOutput21082 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21083 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -2, 1, 1, 1], ![1, 1, -2, -1, 1], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput21083 : ExponentCode := normalNode9351

theorem canonicalSound21083 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21083.moment H = canonicalOutput21083.moment H :=
  canonical_of_padded canonicalInput21083 canonicalOutput21083 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21084 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -2, 2, -1, 2], ![1, 0, -1, 2, -2], ![1, 2, -1, -2, 0]]⟩

def canonicalOutput21084 : ExponentCode := normalNode7124

theorem canonicalSound21084 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21084.moment H = canonicalOutput21084.moment H :=
  canonical_of_padded canonicalInput21084 canonicalOutput21084 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput21085 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -2, 2, -1, 2], ![1, 1, -2, -1, 1], ![1, 1, 0, 1, -3]]⟩

def canonicalOutput21085 : ExponentCode := normalNode9391

theorem canonicalSound21085 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21085.moment H = canonicalOutput21085.moment H :=
  canonical_of_padded canonicalInput21085 canonicalOutput21085 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation189, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput21086 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -2, 2, 0, 1], ![0, 1, -2, 1, 0], ![2, 1, 0, -2, -1]]⟩

def canonicalOutput21086 : ExponentCode := normalNode8990

theorem canonicalSound21086 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21086.moment H = canonicalOutput21086.moment H :=
  canonical_of_padded canonicalInput21086 canonicalOutput21086 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation191, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21087 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -2, 2, 0, 1], ![0, 1, 0, -2, 1], ![2, 1, -2, 1, -2]]⟩

def canonicalOutput21087 : ExponentCode := normalNode10346

theorem canonicalSound21087 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21087.moment H = canonicalOutput21087.moment H :=
  canonical_of_padded canonicalInput21087 canonicalOutput21087 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21088 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -2, 2, 0, 1], ![1, 0, 0, -2, 1], ![1, 2, -2, 1, -2]]⟩

def canonicalOutput21088 : ExponentCode := normalNode11117

theorem canonicalSound21088 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21088.moment H = canonicalOutput21088.moment H :=
  canonical_of_padded canonicalInput21088 canonicalOutput21088 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21089 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -2, 2, 0, 1], ![1, 1, -2, 1, -1], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput21089 : ExponentCode := normalNode11126

theorem canonicalSound21089 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21089.moment H = canonicalOutput21089.moment H :=
  canonical_of_padded canonicalInput21089 canonicalOutput21089 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput21090 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -2, 2, 0, 1], ![1, 1, -1, -2, 1], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput21090 : ExponentCode := normalNode9002

theorem canonicalSound21090 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21090.moment H = canonicalOutput21090.moment H :=
  canonical_of_padded canonicalInput21090 canonicalOutput21090 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput21091 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -2, 2, 0, 1], ![1, 1, 0, -3, 1], ![1, 1, -2, 2, -2]]⟩

def canonicalOutput21091 : ExponentCode := normalNode9354

theorem canonicalSound21091 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21091.moment H = canonicalOutput21091.moment H :=
  canonical_of_padded canonicalInput21091 canonicalOutput21091 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21092 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -1, -1, -1, 4], ![1, -1, 2, -1, -1], ![1, 2, -1, 1, -3]]⟩

def canonicalOutput21092 : ExponentCode := normalNode11081

theorem canonicalSound21092 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21092.moment H = canonicalOutput21092.moment H :=
  canonical_of_padded canonicalInput21092 canonicalOutput21092 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput21093 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -1, -1, 0, 3], ![1, -1, 2, -2, 0], ![1, 2, -1, 1, -3]]⟩

def canonicalOutput21093 : ExponentCode := normalNode9375

theorem canonicalSound21093 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21093.moment H = canonicalOutput21093.moment H :=
  canonical_of_padded canonicalInput21093 canonicalOutput21093 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21094 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -1, -1, 1, 2], ![1, -1, 2, -3, 1], ![1, 2, -1, 1, -3]]⟩

def canonicalOutput21094 : ExponentCode := normalNode7828

theorem canonicalSound21094 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21094.moment H = canonicalOutput21094.moment H :=
  canonical_of_padded canonicalInput21094 canonicalOutput21094 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21095 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -1, -1, 1, 2], ![1, -1, 2, -2, 0], ![1, 2, -1, 0, -2]]⟩

def canonicalOutput21095 : ExponentCode := normalNode8902

theorem canonicalSound21095 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21095.moment H = canonicalOutput21095.moment H :=
  canonical_of_padded canonicalInput21095 canonicalOutput21095 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21096 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -1, -1, 1, 2], ![1, -1, 2, -1, -1], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput21096 : ExponentCode := normalNode9351

theorem canonicalSound21096 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21096.moment H = canonicalOutput21096.moment H :=
  canonical_of_padded canonicalInput21096 canonicalOutput21096 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21097 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -1, 0, 1, 1], ![-1, 2, -2, 0, 1], ![3, -1, 2, -2, -2]]⟩

def canonicalOutput21097 : ExponentCode := normalNode7895

theorem canonicalSound21097 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21097.moment H = canonicalOutput21097.moment H :=
  canonical_of_padded canonicalInput21097 canonicalOutput21097 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21098 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -1, 0, 1, 1], ![0, 2, -2, -1, 1], ![2, -1, 2, -1, -2]]⟩

def canonicalOutput21098 : ExponentCode := normalNode8984

theorem canonicalSound21098 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21098.moment H = canonicalOutput21098.moment H :=
  canonical_of_padded canonicalInput21098 canonicalOutput21098 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21099 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -1, 0, 1, 1], ![0, 2, -2, 0, 0], ![2, -1, 2, -2, -1]]⟩

def canonicalOutput21099 : ExponentCode := normalNode8945

theorem canonicalSound21099 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21099.moment H = canonicalOutput21099.moment H :=
  canonical_of_padded canonicalInput21099 canonicalOutput21099 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21100 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -1, 0, 1, 1], ![1, 2, -2, -1, 0], ![1, -1, 2, -1, -1]]⟩

def canonicalOutput21100 : ExponentCode := normalNode9386

theorem canonicalSound21100 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21100.moment H = canonicalOutput21100.moment H :=
  canonical_of_padded canonicalInput21100 canonicalOutput21100 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21101 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -1, 1, -1, 2], ![0, 2, -2, 1, -1], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput21101 : ExponentCode := normalNode9002

theorem canonicalSound21101 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21101.moment H = canonicalOutput21101.moment H :=
  canonical_of_padded canonicalInput21101 canonicalOutput21101 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21102 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -1, 1, -1, 2], ![1, -1, 1, -1, 0], ![1, 2, -2, 1, -2]]⟩

def canonicalOutput21102 : ExponentCode := normalNode11089

theorem canonicalSound21102 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21102.moment H = canonicalOutput21102.moment H :=
  canonical_of_padded canonicalInput21102 canonicalOutput21102 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21103 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -1, 1, -1, 2], ![1, -1, 1, 1, -2], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput21103 : ExponentCode := normalNode9399

theorem canonicalSound21103 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21103.moment H = canonicalOutput21103.moment H :=
  canonical_of_padded canonicalInput21103 canonicalOutput21103 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21104 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -1, 2, -2, 2], ![1, -1, -2, 1, 1], ![1, 2, 0, 0, -3]]⟩

def canonicalOutput21104 : ExponentCode := normalNode9029

theorem canonicalSound21104 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21104.moment H = canonicalOutput21104.moment H :=
  canonical_of_padded canonicalInput21104 canonicalOutput21104 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput21105 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -1, 2, -2, 2], ![1, -1, -1, 2, -1], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput21105 : ExponentCode := normalNode7072

theorem canonicalSound21105 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21105.moment H = canonicalOutput21105.moment H :=
  canonical_of_padded canonicalInput21105 canonicalOutput21105 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput21106 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -1, 2, -2, 2], ![1, -1, 1, 1, -2], ![1, 2, -3, 0, 0]]⟩

def canonicalOutput21106 : ExponentCode := normalNode9029

theorem canonicalSound21106 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21106.moment H = canonicalOutput21106.moment H :=
  canonical_of_padded canonicalInput21106 canonicalOutput21106 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput21107 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -1, 2, -1, 1], ![-1, 2, -1, -1, 1], ![3, -1, -1, 1, -2]]⟩

def canonicalOutput21107 : ExponentCode := normalNode7903

theorem canonicalSound21107 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21107.moment H = canonicalOutput21107.moment H :=
  canonical_of_padded canonicalInput21107 canonicalOutput21107 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21108 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -1, 2, -1, 1], ![1, -1, -2, 1, 1], ![1, 2, 0, -1, -2]]⟩

def canonicalOutput21108 : ExponentCode := normalNode9399

theorem canonicalSound21108 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21108.moment H = canonicalOutput21108.moment H :=
  canonical_of_padded canonicalInput21108 canonicalOutput21108 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21109 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -1, 2, -1, 1], ![1, -1, 0, -1, 1], ![1, 2, -2, 1, -2]]⟩

def canonicalOutput21109 : ExponentCode := normalNode11089

theorem canonicalSound21109 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21109.moment H = canonicalOutput21109.moment H :=
  canonical_of_padded canonicalInput21109 canonicalOutput21109 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21110 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, -1, 3, -1, 0], ![1, -1, -2, 1, 1], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput21110 : ExponentCode := normalNode9385

theorem canonicalSound21110 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21110.moment H = canonicalOutput21110.moment H :=
  canonical_of_padded canonicalInput21110 canonicalOutput21110 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21111 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 1, 0], ![-1, 0, 0, -1, 2], ![1, 0, 0, -1, 0], ![0, -2, 1, 0, 1], ![0, 1, -2, 0, 1], ![1, 1, 1, 1, -4]]⟩

def canonicalOutput21111 : ExponentCode := normalNode3679

theorem canonicalSound21111 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21111.moment H = canonicalOutput21111.moment H :=
  canonical_of_padded canonicalInput21111 canonicalOutput21111 (by decide) (by decide)
    ⟨false, false, canonicalPermutation135, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput21112 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 1, 0], ![-1, 0, 0, -1, 2], ![1, 0, 0, -1, 0], ![0, -2, 1, 0, 1], ![0, 2, -2, 0, 0], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput21112 : ExponentCode := normalNode3678

theorem canonicalSound21112 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21112.moment H = canonicalOutput21112.moment H :=
  canonical_of_padded canonicalInput21112 canonicalOutput21112 (by decide) (by decide)
    ⟨false, false, canonicalPermutation200, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput21113 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, 0, 1, -2, 2], ![0, 2, -2, 1, -1], ![2, -2, 1, 0, -1]]⟩

def canonicalOutput21113 : ExponentCode := normalNode8904

theorem canonicalSound21113 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21113.moment H = canonicalOutput21113.moment H :=
  canonical_of_padded canonicalInput21113 canonicalOutput21113 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation191, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput21114 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, 0, 1, -2, 2], ![1, -2, 1, 0, 0], ![1, 2, -2, 1, -2]]⟩

def canonicalOutput21114 : ExponentCode := normalNode10892

theorem canonicalSound21114 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21114.moment H = canonicalOutput21114.moment H :=
  canonical_of_padded canonicalInput21114 canonicalOutput21114 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21115 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, 0, 1, -2, 2], ![1, -2, 1, 1, -1], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput21115 : ExponentCode := normalNode9006

theorem canonicalSound21115 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21115.moment H = canonicalOutput21115.moment H :=
  canonical_of_padded canonicalInput21115 canonicalOutput21115 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput21116 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, 0, 1, -2, 2], ![2, -2, 1, -1, 0], ![0, 2, -2, 2, -2]]⟩

def canonicalOutput21116 : ExponentCode := normalNode9554

theorem canonicalSound21116 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21116.moment H = canonicalOutput21116.moment H :=
  canonical_of_padded canonicalInput21116 canonicalOutput21116 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21117 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, 0, 1, -1, 1], ![-1, 2, -2, 1, 0], ![3, -2, 1, -1, -1]]⟩

def canonicalOutput21117 : ExponentCode := normalNode7973

theorem canonicalSound21117 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21117.moment H = canonicalOutput21117.moment H :=
  canonical_of_padded canonicalInput21117 canonicalOutput21117 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21118 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, 0, 1, -1, 1], ![0, -2, 1, 1, 0], ![2, 2, -2, -1, -1]]⟩

def canonicalOutput21118 : ExponentCode := normalNode9064

theorem canonicalSound21118 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21118.moment H = canonicalOutput21118.moment H :=
  canonical_of_padded canonicalInput21118 canonicalOutput21118 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21119 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![-1, 0, 1, -1, 1], ![0, 2, -2, -1, 1], ![2, -2, 1, 1, -2]]⟩

def canonicalOutput21119 : ExponentCode := normalNode9108

theorem canonicalSound21119 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21119.moment H = canonicalOutput21119.moment H :=
  canonical_of_padded canonicalInput21119 canonicalOutput21119 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

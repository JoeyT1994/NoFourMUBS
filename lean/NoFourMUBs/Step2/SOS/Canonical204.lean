import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput13056 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput13056 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node253⟩

theorem canonicalSound13056 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13056.moment H = canonicalOutput13056.moment H :=
  canonical_of_padded canonicalInput13056 canonicalOutput13056 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput13057 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![0, 0, 0, 0], ![0, 1, 2, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput13057 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node246⟩

theorem canonicalSound13057 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13057.moment H = canonicalOutput13057.moment H :=
  canonical_of_padded canonicalInput13057 canonicalOutput13057 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput13058 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![0, 0, 0, 0], ![0, 2, 1, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput13058 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node254⟩

theorem canonicalSound13058 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13058.moment H = canonicalOutput13058.moment H :=
  canonical_of_padded canonicalInput13058 canonicalOutput13058 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput13059 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![0, 0, 0, 0], ![0, 2, 2, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput13059 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node281⟩

theorem canonicalSound13059 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13059.moment H = canonicalOutput13059.moment H :=
  canonical_of_padded canonicalInput13059 canonicalOutput13059 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput13060 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, 0, 1, -1], ![-1, 1, 0, 0], ![1, -1, 1, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput13060 : ExponentCode := normalNode7309

theorem canonicalSound13060 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13060.moment H = canonicalOutput13060.moment H :=
  canonical_of_padded canonicalInput13060 canonicalOutput13060 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13061 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, 0, 1, -1], ![-1, 1, 1, -1], ![1, -1, 1, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput13061 : ExponentCode := normalNode6418

theorem canonicalSound13061 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13061.moment H = canonicalOutput13061.moment H :=
  canonical_of_padded canonicalInput13061 canonicalOutput13061 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13062 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, 0, 1, -1], ![-1, 3, 0, -2], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput13062 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2485⟩

theorem canonicalSound13062 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13062.moment H = canonicalOutput13062.moment H :=
  canonical_of_padded canonicalInput13062 canonicalOutput13062 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13063 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, 0, 1, -1], ![0, -1, 2, -1], ![0, 1, -1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput13063 : ExponentCode := normalNode6444

theorem canonicalSound13063 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13063.moment H = canonicalOutput13063.moment H :=
  canonical_of_padded canonicalInput13063 canonicalOutput13063 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13064 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, 0, 1, -1], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput13064 : ExponentCode := normalNode6445

theorem canonicalSound13064 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13064.moment H = canonicalOutput13064.moment H :=
  canonical_of_padded canonicalInput13064 canonicalOutput13064 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13065 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, 0, 1, -1], ![0, -1, 2, -1], ![0, 3, -2, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput13065 : ExponentCode := normalNode6446

theorem canonicalSound13065 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13065.moment H = canonicalOutput13065.moment H :=
  canonical_of_padded canonicalInput13065 canonicalOutput13065 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13066 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, 0, 1, -1], ![0, -1, 2, -1], ![0, 3, -1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput13066 : ExponentCode := normalNode6447

theorem canonicalSound13066 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13066.moment H = canonicalOutput13066.moment H :=
  canonical_of_padded canonicalInput13066 canonicalOutput13066 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13067 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput13067 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1176⟩

theorem canonicalSound13067 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13067.moment H = canonicalOutput13067.moment H :=
  canonical_of_padded canonicalInput13067 canonicalOutput13067 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput13068 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput13068 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node907⟩

theorem canonicalSound13068 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13068.moment H = canonicalOutput13068.moment H :=
  canonical_of_padded canonicalInput13068 canonicalOutput13068 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput13069 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 3, -1, -2], ![1, -1, 0, 0]]⟩

def canonicalOutput13069 : ExponentCode := normalNode7428

theorem canonicalSound13069 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13069.moment H = canonicalOutput13069.moment H :=
  canonical_of_padded canonicalInput13069 canonicalOutput13069 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13070 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 1, -1], ![0, 3, -2, -1]]⟩

def canonicalOutput13070 : ExponentCode := normalNode6490

theorem canonicalSound13070 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13070.moment H = canonicalOutput13070.moment H :=
  canonical_of_padded canonicalInput13070 canonicalOutput13070 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13071 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, 0, 1, -1], ![0, 0, 2, -2], ![0, 0, 1, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput13071 : ExponentCode := normalNode6488

theorem canonicalSound13071 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13071.moment H = canonicalOutput13071.moment H :=
  canonical_of_padded canonicalInput13071 canonicalOutput13071 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13072 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, -1, 2, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput13072 : ExponentCode := normalNode6444

theorem canonicalSound13072 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13072.moment H = canonicalOutput13072.moment H :=
  canonical_of_padded canonicalInput13072 canonicalOutput13072 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13073 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 1, -1], ![0, 2, 0, -2]]⟩

def canonicalOutput13073 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2494⟩

theorem canonicalSound13073 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13073.moment H = canonicalOutput13073.moment H :=
  canonical_of_padded canonicalInput13073 canonicalOutput13073 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13074 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, -1, 2, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput13074 : ExponentCode := normalNode6445

theorem canonicalSound13074 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13074.moment H = canonicalOutput13074.moment H :=
  canonical_of_padded canonicalInput13074 canonicalOutput13074 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13075 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![0, 2, -1, -1]]⟩

def canonicalOutput13075 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2496⟩

theorem canonicalSound13075 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13075.moment H = canonicalOutput13075.moment H :=
  canonical_of_padded canonicalInput13075 canonicalOutput13075 (by decide) (by decide)
    ⟨false, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13076 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![0, 0, 1, -1], ![0, 3, -2, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput13076 : ExponentCode := normalNode6458

theorem canonicalSound13076 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13076.moment H = canonicalOutput13076.moment H :=
  canonical_of_padded canonicalInput13076 canonicalOutput13076 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput13077 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, 0, 1, -1], ![0, 3, -1, -2], ![0, -1, 2, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput13077 : ExponentCode := normalNode6447

theorem canonicalSound13077 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13077.moment H = canonicalOutput13077.moment H :=
  canonical_of_padded canonicalInput13077 canonicalOutput13077 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13078 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![0, 0, 1, -1], ![0, 3, -1, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput13078 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node899⟩

theorem canonicalSound13078 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13078.moment H = canonicalOutput13078.moment H :=
  canonical_of_padded canonicalInput13078 canonicalOutput13078 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13079 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, 0, 1, -1], ![0, 3, -1, -2], ![1, -1, 1, -1], ![0, 0, 0, 0]]⟩

def canonicalOutput13079 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node899⟩

theorem canonicalSound13079 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13079.moment H = canonicalOutput13079.moment H :=
  canonical_of_padded canonicalInput13079 canonicalOutput13079 (by decide) (by decide)
    ⟨false, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13080 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![0, 0, 2, -2], ![0, 0, 0, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput13080 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node146⟩

theorem canonicalSound13080 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13080.moment H = canonicalOutput13080.moment H :=
  canonical_of_padded canonicalInput13080 canonicalOutput13080 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput13081 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, 0, 2, -2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput13081 : ExponentCode := normalNode6488

theorem canonicalSound13081 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13081.moment H = canonicalOutput13081.moment H :=
  canonical_of_padded canonicalInput13081 canonicalOutput13081 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13082 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, 0, 2, -2], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput13082 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2402⟩

theorem canonicalSound13082 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13082.moment H = canonicalOutput13082.moment H :=
  canonical_of_padded canonicalInput13082 canonicalOutput13082 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13083 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![0, 0, 2, -2], ![0, 3, -1, -2], ![1, -1, 0, 0]]⟩

def canonicalOutput13083 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node903⟩

theorem canonicalSound13083 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13083.moment H = canonicalOutput13083.moment H :=
  canonical_of_padded canonicalInput13083 canonicalOutput13083 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13084 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, 0, 3, -3], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput13084 : ExponentCode := normalNode6507

theorem canonicalSound13084 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13084.moment H = canonicalOutput13084.moment H :=
  canonical_of_padded canonicalInput13084 canonicalOutput13084 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13085 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, 0, 3, -3], ![0, 2, -2, 0], ![0, 1, 0, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput13085 : ExponentCode := normalNode6510

theorem canonicalSound13085 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13085.moment H = canonicalOutput13085.moment H :=
  canonical_of_padded canonicalInput13085 canonicalOutput13085 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13086 : ExponentCode := ⟨3, 4, ![![-1, -2, -1, 4], ![0, 0, 4, -4], ![1, 2, -3, 0]]⟩

def canonicalOutput13086 : ExponentCode := normalNode141

theorem canonicalSound13086 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13086.moment H = canonicalOutput13086.moment H :=
  canonical_of_padded canonicalInput13086 canonicalOutput13086 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput13087 : ExponentCode := ⟨3, 4, ![![-1, -2, -1, 4], ![0, 1, -2, 1], ![1, 1, 3, -5]]⟩

def canonicalOutput13087 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node172⟩

theorem canonicalSound13087 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13087.moment H = canonicalOutput13087.moment H :=
  canonical_of_padded canonicalInput13087 canonicalOutput13087 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13088 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, 1, -1, 0], ![-1, 1, 0, 0], ![1, -1, 2, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput13088 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1727⟩

theorem canonicalSound13088 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13088.moment H = canonicalOutput13088.moment H :=
  canonical_of_padded canonicalInput13088 canonicalOutput13088 (by decide) (by decide)
    ⟨false, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput13089 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, 1, -1, 0], ![-1, 1, 1, -1], ![1, -1, 2, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput13089 : ExponentCode := normalNode6419

theorem canonicalSound13089 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13089.moment H = canonicalOutput13089.moment H :=
  canonical_of_padded canonicalInput13089 canonicalOutput13089 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13090 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, 1, -1, 0], ![-1, 1, 2, -2], ![1, -1, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput13090 : ExponentCode := normalNode6420

theorem canonicalSound13090 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13090.moment H = canonicalOutput13090.moment H :=
  canonical_of_padded canonicalInput13090 canonicalOutput13090 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13091 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, -1, 3, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput13091 : ExponentCode := normalNode6453

theorem canonicalSound13091 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13091.moment H = canonicalOutput13091.moment H :=
  canonical_of_padded canonicalInput13091 canonicalOutput13091 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13092 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput13092 : ExponentCode := normalNode6100

theorem canonicalSound13092 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13092.moment H = canonicalOutput13092.moment H :=
  canonical_of_padded canonicalInput13092 canonicalOutput13092 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13093 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 2, -2], ![0, 1, 1, -2]]⟩

def canonicalOutput13093 : ExponentCode := normalNode6522

theorem canonicalSound13093 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13093.moment H = canonicalOutput13093.moment H :=
  canonical_of_padded canonicalInput13093 canonicalOutput13093 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13094 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, 3, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput13094 : ExponentCode := normalNode6454

theorem canonicalSound13094 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13094.moment H = canonicalOutput13094.moment H :=
  canonical_of_padded canonicalInput13094 canonicalOutput13094 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13095 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput13095 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2433⟩

theorem canonicalSound13095 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13095.moment H = canonicalOutput13095.moment H :=
  canonical_of_padded canonicalInput13095 canonicalOutput13095 (by decide) (by decide)
    ⟨false, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13096 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 2, -2], ![0, 1, 0, -1]]⟩

def canonicalOutput13096 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2433⟩

theorem canonicalSound13096 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13096.moment H = canonicalOutput13096.moment H :=
  canonical_of_padded canonicalInput13096 canonicalOutput13096 (by decide) (by decide)
    ⟨false, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13097 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, 1, -1, 0], ![0, 1, 1, -2], ![0, -1, 2, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput13097 : ExponentCode := normalNode6449

theorem canonicalSound13097 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13097.moment H = canonicalOutput13097.moment H :=
  canonical_of_padded canonicalInput13097 canonicalOutput13097 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13098 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -1, 1, -1], ![0, 1, 0, -1]]⟩

def canonicalOutput13098 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2490⟩

theorem canonicalSound13098 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13098.moment H = canonicalOutput13098.moment H :=
  canonical_of_padded canonicalInput13098 canonicalOutput13098 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13099 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![0, 1, -1, 0], ![0, 2, 0, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput13099 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node826⟩

theorem canonicalSound13099 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13099.moment H = canonicalOutput13099.moment H :=
  canonical_of_padded canonicalInput13099 canonicalOutput13099 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13100 : ExponentCode := ⟨3, 4, ![![-1, -2, -1, 4], ![0, 1, -1, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput13100 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node286⟩

theorem canonicalSound13100 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13100.moment H = canonicalOutput13100.moment H :=
  canonical_of_padded canonicalInput13100 canonicalOutput13100 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13101 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, 1, 0, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput13101 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2433⟩

theorem canonicalSound13101 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13101.moment H = canonicalOutput13101.moment H :=
  canonical_of_padded canonicalInput13101 canonicalOutput13101 (by decide) (by decide)
    ⟨false, true, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13102 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput13102 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1042⟩

theorem canonicalSound13102 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13102.moment H = canonicalOutput13102.moment H :=
  canonical_of_padded canonicalInput13102 canonicalOutput13102 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput13103 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![0, 1, 1, -2], ![0, 1, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput13103 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node786⟩

theorem canonicalSound13103 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13103.moment H = canonicalOutput13103.moment H :=
  canonical_of_padded canonicalInput13103 canonicalOutput13103 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13104 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, 1, 2, -3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput13104 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2492⟩

theorem canonicalSound13104 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13104.moment H = canonicalOutput13104.moment H :=
  canonical_of_padded canonicalInput13104 canonicalOutput13104 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13105 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![0, 1, 2, -3], ![0, 1, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput13105 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1171⟩

theorem canonicalSound13105 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13105.moment H = canonicalOutput13105.moment H :=
  canonical_of_padded canonicalInput13105 canonicalOutput13105 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput13106 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![0, 1, 2, -3], ![0, 2, -1, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput13106 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node897⟩

theorem canonicalSound13106 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13106.moment H = canonicalOutput13106.moment H :=
  canonical_of_padded canonicalInput13106 canonicalOutput13106 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13107 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![0, 1, 3, -4], ![0, 1, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput13107 : ExponentCode := normalNode6520

theorem canonicalSound13107 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13107.moment H = canonicalOutput13107.moment H :=
  canonical_of_padded canonicalInput13107 canonicalOutput13107 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13108 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![0, 1, 3, -4], ![0, 1, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput13108 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node981⟩

theorem canonicalSound13108 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13108.moment H = canonicalOutput13108.moment H :=
  canonical_of_padded canonicalInput13108 canonicalOutput13108 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput13109 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![0, 1, 3, -4], ![0, 1, 0, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput13109 : ExponentCode := normalNode6523

theorem canonicalSound13109 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13109.moment H = canonicalOutput13109.moment H :=
  canonical_of_padded canonicalInput13109 canonicalOutput13109 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13110 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![0, 1, 3, -4], ![0, 2, -2, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput13110 : ExponentCode := normalNode10736

theorem canonicalSound13110 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13110.moment H = canonicalOutput13110.moment H :=
  canonical_of_padded canonicalInput13110 canonicalOutput13110 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput13111 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![0, 2, -2, 0], ![0, 1, 1, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput13111 : ExponentCode := normalNode6524

theorem canonicalSound13111 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13111.moment H = canonicalOutput13111.moment H :=
  canonical_of_padded canonicalInput13111 canonicalOutput13111 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13112 : ExponentCode := ⟨3, 4, ![![-1, -2, -1, 4], ![0, 2, 2, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput13112 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node281⟩

theorem canonicalSound13112 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13112.moment H = canonicalOutput13112.moment H :=
  canonical_of_padded canonicalInput13112 canonicalOutput13112 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput13113 : ExponentCode := ⟨3, 4, ![![-1, -2, -1, 4], ![0, 2, 3, -5], ![1, 0, -2, 1]]⟩

def canonicalOutput13113 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node165⟩

theorem canonicalSound13113 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13113.moment H = canonicalOutput13113.moment H :=
  canonical_of_padded canonicalInput13113 canonicalOutput13113 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput13114 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![0, 3, -2, -1], ![0, -1, 2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput13114 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node759⟩

theorem canonicalSound13114 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13114.moment H = canonicalOutput13114.moment H :=
  canonical_of_padded canonicalInput13114 canonicalOutput13114 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13115 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![0, 3, -2, -1], ![0, -1, 3, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput13115 : ExponentCode := normalNode6463

theorem canonicalSound13115 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13115.moment H = canonicalOutput13115.moment H :=
  canonical_of_padded canonicalInput13115 canonicalOutput13115 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13116 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![0, 3, -2, -1], ![0, 0, 2, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput13116 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node777⟩

theorem canonicalSound13116 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13116.moment H = canonicalOutput13116.moment H :=
  canonical_of_padded canonicalInput13116 canonicalOutput13116 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13117 : ExponentCode := ⟨3, 4, ![![-1, -2, -1, 4], ![1, -1, 2, -2], ![0, 3, -1, -2]]⟩

def canonicalOutput13117 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node106⟩

theorem canonicalSound13117 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13117.moment H = canonicalOutput13117.moment H :=
  canonical_of_padded canonicalInput13117 canonicalOutput13117 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput13118 : ExponentCode := ⟨3, 4, ![![-1, -2, -1, 4], ![1, -1, 3, -3], ![0, 3, -2, -1]]⟩

def canonicalOutput13118 : ExponentCode := normalNode216

theorem canonicalSound13118 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13118.moment H = canonicalOutput13118.moment H :=
  canonical_of_padded canonicalInput13118 canonicalOutput13118 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput13119 : ExponentCode := ⟨3, 4, ![![-1, -2, -1, 4], ![1, 1, -2, 0], ![0, 1, 3, -4]]⟩

def canonicalOutput13119 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node190⟩

theorem canonicalSound13119 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13119.moment H = canonicalOutput13119.moment H :=
  canonical_of_padded canonicalInput13119 canonicalOutput13119 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

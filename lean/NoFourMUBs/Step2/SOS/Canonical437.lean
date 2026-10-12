import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical265
import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes46
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes53
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput27968 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, -2, 3, 0], ![2, 1, 1, -4]]⟩

def canonicalOutput27968 : ExponentCode := normalNode1248

theorem canonicalSound27968 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27968.moment H = canonicalOutput27968.moment H :=
  canonical_of_padded canonicalInput27968 canonicalOutput27968 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation375, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27969 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 1, 2, -2], ![2, -2, 2, -2]]⟩

def canonicalOutput27969 : ExponentCode := normalNode5800

theorem canonicalSound27969 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27969.moment H = canonicalOutput27969.moment H :=
  canonical_of_padded canonicalInput27969 canonicalOutput27969 (by decide) (by decide)
    ⟨false, true, canonicalPermutation102, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27970 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![2, -2, 1, -1], ![-1, 1, 3, -3]]⟩

def canonicalOutput27970 : ExponentCode := normalNode5879

theorem canonicalSound27970 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27970.moment H = canonicalOutput27970.moment H :=
  canonical_of_padded canonicalInput27970 canonicalOutput27970 (by decide) (by decide)
    ⟨false, true, canonicalPermutation345, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27971 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 2, 1, -3], ![1, -2, 2, -1]]⟩

def canonicalOutput27971 : ExponentCode := normalNode10321

theorem canonicalSound27971 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27971.moment H = canonicalOutput27971.moment H :=
  canonical_of_padded canonicalInput27971 canonicalOutput27971 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27972 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 2, 2, -4], ![1, -2, 1, 0]]⟩

def canonicalOutput27972 : ExponentCode := normalNode10322

theorem canonicalSound27972 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27972.moment H = canonicalOutput27972.moment H :=
  canonical_of_padded canonicalInput27972 canonicalOutput27972 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27973 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 2, 3, -5], ![1, -2, 0, 1]]⟩

def canonicalOutput27973 : ExponentCode := normalNode10323

theorem canonicalSound27973 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27973.moment H = canonicalOutput27973.moment H :=
  canonical_of_padded canonicalInput27973 canonicalOutput27973 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27974 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![1, 2, 2, -5]]⟩

def canonicalOutput27974 : ExponentCode := normalNode1073

theorem canonicalSound27974 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27974.moment H = canonicalOutput27974.moment H :=
  canonical_of_padded canonicalInput27974 canonicalOutput27974 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27975 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 0, -1, 1], ![1, 0, -1, 0], ![-1, -2, 3, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput27975 : ExponentCode := normalNode1246

theorem canonicalSound27975 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27975.moment H = canonicalOutput27975.moment H :=
  canonical_of_padded canonicalInput27975 canonicalOutput27975 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation375, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27976 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-1, 2, -2, 1], ![1, -2, 3, -2]]⟩

def canonicalOutput27976 : ExponentCode := normalNode4900

theorem canonicalSound27976 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27976.moment H = canonicalOutput27976.moment H :=
  canonical_of_padded canonicalInput27976 canonicalOutput27976 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput27977 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, -2, -1, 2], ![-1, 2, 2, -3]]⟩

def canonicalOutput27977 : ExponentCode := normalNode4831

theorem canonicalSound27977 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27977.moment H = canonicalOutput27977.moment H :=
  canonical_of_padded canonicalInput27977 canonicalOutput27977 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27978 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-1, -2, 2, 1], ![2, 0, 2, -4]]⟩

def canonicalOutput27978 : ExponentCode := normalNode2548

theorem canonicalSound27978 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27978.moment H = canonicalOutput27978.moment H :=
  canonical_of_padded canonicalInput27978 canonicalOutput27978 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation279, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput27979 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -2, 1, 2], ![2, 0, 2, -4]]⟩

def canonicalOutput27979 : ExponentCode := normalNode2291

theorem canonicalSound27979 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27979.moment H = canonicalOutput27979.moment H :=
  canonical_of_padded canonicalInput27979 canonicalOutput27979 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation279, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27980 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![2, -1, 3, -4]]⟩

def canonicalOutput27980 : ExponentCode := normalNode4719

theorem canonicalSound27980 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27980.moment H = canonicalOutput27980.moment H :=
  canonical_of_padded canonicalInput27980 canonicalOutput27980 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27981 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -2, -1, 1], ![-1, 0, 4, -3]]⟩

def canonicalOutput27981 : ExponentCode := normalNode5845

theorem canonicalSound27981 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27981.moment H = canonicalOutput27981.moment H :=
  canonical_of_padded canonicalInput27981 canonicalOutput27981 (by decide) (by decide)
    ⟨false, false, canonicalPermutation137, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27982 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![1, 1, 3, -5]]⟩

def canonicalOutput27982 : ExponentCode := normalNode7156

theorem canonicalSound27982 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27982.moment H = canonicalOutput27982.moment H :=
  canonical_of_padded canonicalInput27982 canonicalOutput27982 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27983 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, -2, 2, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput27983 : ExponentCode := normalNode2547

theorem canonicalSound27983 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27983.moment H = canonicalOutput27983.moment H :=
  canonical_of_padded canonicalInput27983 canonicalOutput27983 (by decide) (by decide)
    ⟨false, false, canonicalPermutation161, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput27984 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![2, -2, 3, -3]]⟩

def canonicalOutput27984 : ExponentCode := normalNode5746

theorem canonicalSound27984 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27984.moment H = canonicalOutput27984.moment H :=
  canonical_of_padded canonicalInput27984 canonicalOutput27984 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27985 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, -1, -2, 1], ![-1, -1, 4, -2]]⟩

def canonicalOutput27985 : ExponentCode := normalNode5073

theorem canonicalSound27985 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27985.moment H = canonicalOutput27985.moment H :=
  canonical_of_padded canonicalInput27985 canonicalOutput27985 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation286, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27986 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, -2, 1, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput27986 : ExponentCode := normalNode2290

theorem canonicalSound27986 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27986.moment H = canonicalOutput27986.moment H :=
  canonical_of_padded canonicalInput27986 canonicalOutput27986 (by decide) (by decide)
    ⟨false, false, canonicalPermutation161, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27987 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, -2, -1, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput27987 : ExponentCode := normalNode5016

theorem canonicalSound27987 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27987.moment H = canonicalOutput27987.moment H :=
  canonical_of_padded canonicalInput27987 canonicalOutput27987 (by decide) (by decide)
    ⟨false, false, canonicalPermutation321, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27988 : ExponentCode := ⟨4, 4, ![![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 2, 3, -5], ![1, -2, -1, 2]]⟩

def canonicalOutput27988 : ExponentCode := normalNode6321

theorem canonicalSound27988 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27988.moment H = canonicalOutput27988.moment H :=
  canonical_of_padded canonicalInput27988 canonicalOutput27988 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27989 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, -1, 2], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 0, -1, 2], ![0, 2, 3, -5]]⟩

def canonicalOutput27989 : ExponentCode := normalNode3092

theorem canonicalSound27989 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27989.moment H = canonicalOutput27989.moment H :=
  canonical_of_padded canonicalInput27989 canonicalOutput27989 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27990 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, -1, 2], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![0, 2, 3, -5]]⟩

def canonicalOutput27990 : ExponentCode := normalNode3056

theorem canonicalSound27990 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27990.moment H = canonicalOutput27990.moment H :=
  canonical_of_padded canonicalInput27990 canonicalOutput27990 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27991 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, -1, 2], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 2, -2, 1], ![0, -1, 4, -3]]⟩

def canonicalOutput27991 : ExponentCode := normalNode5087

theorem canonicalSound27991 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27991.moment H = canonicalOutput27991.moment H :=
  canonical_of_padded canonicalInput27991 canonicalOutput27991 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput27992 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, -1, 2], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, -1, 2], ![-1, 2, 3, -4]]⟩

def canonicalOutput27992 : ExponentCode := normalNode4725

theorem canonicalSound27992 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27992.moment H = canonicalOutput27992.moment H :=
  canonical_of_padded canonicalInput27992 canonicalOutput27992 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27993 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, -1, 2], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -2, 2, 1], ![0, 2, 2, -4]]⟩

def canonicalOutput27993 : ExponentCode := normalNode2546

theorem canonicalSound27993 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27993.moment H = canonicalOutput27993.moment H :=
  canonical_of_padded canonicalInput27993 canonicalOutput27993 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput27994 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, -1, 2], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -2, 1, 2], ![0, 2, 2, -4]]⟩

def canonicalOutput27994 : ExponentCode := normalNode2289

theorem canonicalSound27994 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27994.moment H = canonicalOutput27994.moment H :=
  canonical_of_padded canonicalInput27994 canonicalOutput27994 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27995 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, -1, 2], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, -2, 0, 2], ![-1, 2, 3, -4]]⟩

def canonicalOutput27995 : ExponentCode := normalNode3835

theorem canonicalSound27995 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27995.moment H = canonicalOutput27995.moment H :=
  canonical_of_padded canonicalInput27995 canonicalOutput27995 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27996 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, -1, 2], ![1, 0, 0, -1], ![1, 0, 0, -1], ![-1, 2, -2, 1], ![0, -2, 4, -2]]⟩

def canonicalOutput27996 : ExponentCode := normalNode3231

theorem canonicalSound27996 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27996.moment H = canonicalOutput27996.moment H :=
  canonical_of_padded canonicalInput27996 canonicalOutput27996 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation331, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput27997 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![-1, 0, 0, 1], ![0, 0, 1, -1], ![0, 2, 1, -3], ![1, -2, -1, 2]]⟩

def canonicalOutput27997 : ExponentCode := normalNode10621

theorem canonicalSound27997 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27997.moment H = canonicalOutput27997.moment H :=
  canonical_of_padded canonicalInput27997 canonicalOutput27997 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput27998 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![-1, 0, 0, 1], ![0, 1, -1, 0], ![0, 2, 2, -4], ![1, -3, 0, 2]]⟩

def canonicalOutput27998 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2751⟩

theorem canonicalSound27998 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27998.moment H = canonicalOutput27998.moment H :=
  canonical_of_padded canonicalInput27998 canonicalOutput27998 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput27999 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![-1, 0, 0, 1], ![0, 1, 0, -1], ![0, 1, 2, -3], ![1, -2, -1, 2]]⟩

def canonicalOutput27999 : ExponentCode := normalNode10605

theorem canonicalSound27999 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27999.moment H = canonicalOutput27999.moment H :=
  canonical_of_padded canonicalInput27999 canonicalOutput27999 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28000 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, 1, 0], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, 1, -2, 2], ![2, -2, 2, -2]]⟩

def canonicalOutput28000 : ExponentCode := normalNode5780

theorem canonicalSound28000 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28000.moment H = canonicalOutput28000.moment H :=
  canonical_of_padded canonicalInput28000 canonicalOutput28000 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation338, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28001 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, 1, 0], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, 1, 2, -2], ![2, -2, -2, 2]]⟩

def canonicalOutput28001 : ExponentCode := normalNode5780

theorem canonicalSound28001 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28001.moment H = canonicalOutput28001.moment H :=
  canonical_of_padded canonicalInput28001 canonicalOutput28001 (by decide) (by decide)
    ⟨false, true, canonicalPermutation102, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28002 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![-1, 0, 1, 0], ![0, 0, 1, -1], ![0, 2, 1, -3], ![1, -2, -2, 3]]⟩

def canonicalOutput28002 : ExponentCode := normalNode10860

theorem canonicalSound28002 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28002.moment H = canonicalOutput28002.moment H :=
  canonical_of_padded canonicalInput28002 canonicalOutput28002 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28003 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![-1, 0, 1, 0], ![0, 1, -3, 2], ![0, 1, 0, -1], ![1, -2, 3, -2]]⟩

def canonicalOutput28003 : ExponentCode := normalNode10723

theorem canonicalSound28003 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28003.moment H = canonicalOutput28003.moment H :=
  canonical_of_padded canonicalInput28003 canonicalOutput28003 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28004 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, 1, 0], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-1, -2, 0, 3], ![2, 0, 2, -4]]⟩

def canonicalOutput28004 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2963⟩

theorem canonicalSound28004 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28004.moment H = canonicalOutput28004.moment H :=
  canonical_of_padded canonicalInput28004 canonicalOutput28004 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation279, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28005 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, 1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, -1, 3], ![2, -1, 2, -3]]⟩

def canonicalOutput28005 : ExponentCode := normalNode4819

theorem canonicalSound28005 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28005.moment H = canonicalOutput28005.moment H :=
  canonical_of_padded canonicalInput28005 canonicalOutput28005 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28006 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, 1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, 3, -2], ![2, -2, -2, 2]]⟩

def canonicalOutput28006 : ExponentCode := normalNode5776

theorem canonicalSound28006 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28006.moment H = canonicalOutput28006.moment H :=
  canonical_of_padded canonicalInput28006 canonicalOutput28006 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28007 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, 1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, -1, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput28007 : ExponentCode := normalNode7300

theorem canonicalSound28007 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28007.moment H = canonicalOutput28007.moment H :=
  canonical_of_padded canonicalInput28007 canonicalOutput28007 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28008 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, 1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, -2, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput28008 : ExponentCode := normalNode10478

theorem canonicalSound28008 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28008.moment H = canonicalOutput28008.moment H :=
  canonical_of_padded canonicalInput28008 canonicalOutput28008 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation215, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28009 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, 1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 1, 1, -1]]⟩

def canonicalOutput28009 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3404⟩

theorem canonicalSound28009 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28009.moment H = canonicalOutput28009.moment H :=
  canonical_of_padded canonicalInput28009 canonicalOutput28009 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation340, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput28010 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, 1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, -2, 0, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput28010 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2961⟩

theorem canonicalSound28010 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28010.moment H = canonicalOutput28010.moment H :=
  canonical_of_padded canonicalInput28010 canonicalOutput28010 (by decide) (by decide)
    ⟨false, false, canonicalPermutation161, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28011 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, 1, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![-1, 1, -2, 2], ![1, -2, 3, -2]]⟩

def canonicalOutput28011 : ExponentCode := normalNode4843

theorem canonicalSound28011 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28011.moment H = canonicalOutput28011.moment H :=
  canonical_of_padded canonicalInput28011 canonicalOutput28011 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation334, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28012 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, 1, 0], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, -1, 3, -1], ![2, -1, -3, 2]]⟩

def canonicalOutput28012 : ExponentCode := normalNode4862

theorem canonicalSound28012 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28012.moment H = canonicalOutput28012.moment H :=
  canonical_of_padded canonicalInput28012 canonicalOutput28012 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28013 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![-1, 0, 1, 0], ![0, 1, 0, -1], ![0, 1, 2, -3], ![1, -2, -2, 3]]⟩

def canonicalOutput28013 : ExponentCode := normalNode10861

theorem canonicalSound28013 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28013.moment H = canonicalOutput28013.moment H :=
  canonical_of_padded canonicalInput28013 canonicalOutput28013 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28014 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, 1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, 1, -2, 2], ![1, -2, 3, -2]]⟩

def canonicalOutput28014 : ExponentCode := normalNode4844

theorem canonicalSound28014 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28014.moment H = canonicalOutput28014.moment H :=
  canonical_of_padded canonicalInput28014 canonicalOutput28014 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation334, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28015 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, 1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-1, 1, 2, -2], ![1, -2, -2, 3]]⟩

def canonicalOutput28015 : ExponentCode := normalNode4874

theorem canonicalSound28015 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28015.moment H = canonicalOutput28015.moment H :=
  canonical_of_padded canonicalInput28015 canonicalOutput28015 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation334, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28016 : ExponentCode := ⟨4, 4, ![![0, 0, -1, 1], ![-1, 0, 1, 0], ![0, 2, 2, -4], ![1, -2, -2, 3]]⟩

def canonicalOutput28016 : ExponentCode := normalNode9744

theorem canonicalSound28016 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28016.moment H = canonicalOutput28016.moment H :=
  canonical_of_padded canonicalInput28016 canonicalOutput28016 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28017 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, 1, 0], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![0, 2, 2, -4]]⟩

def canonicalOutput28017 : ExponentCode := normalNode3205

theorem canonicalSound28017 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28017.moment H = canonicalOutput28017.moment H :=
  canonical_of_padded canonicalInput28017 canonicalOutput28017 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28018 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, 1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, -2, 3], ![-1, 2, 2, -3]]⟩

def canonicalOutput28018 : ExponentCode := normalNode4842

theorem canonicalSound28018 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28018.moment H = canonicalOutput28018.moment H :=
  canonical_of_padded canonicalInput28018 canonicalOutput28018 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28019 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, 1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, 3, -2], ![-1, 2, -3, 2]]⟩

def canonicalOutput28019 : ExponentCode := normalNode4873

theorem canonicalSound28019 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28019.moment H = canonicalOutput28019.moment H :=
  canonical_of_padded canonicalInput28019 canonicalOutput28019 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28020 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, 1, 0], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -2, 0, 3], ![0, 2, 2, -4]]⟩

def canonicalOutput28020 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2960⟩

theorem canonicalSound28020 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28020.moment H = canonicalOutput28020.moment H :=
  canonical_of_padded canonicalInput28020 canonicalOutput28020 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28021 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, 1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, -2, -1, 3], ![-1, 2, 2, -3]]⟩

def canonicalOutput28021 : ExponentCode := normalNode3461

theorem canonicalSound28021 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28021.moment H = canonicalOutput28021.moment H :=
  canonical_of_padded canonicalInput28021 canonicalOutput28021 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28022 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 0, 1, 0], ![1, 0, 0, -1], ![1, 0, 0, -1], ![0, -2, 3, -1], ![-1, 2, -3, 2]]⟩

def canonicalOutput28022 : ExponentCode := normalNode3423

theorem canonicalSound28022 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28022.moment H = canonicalOutput28022.moment H :=
  canonical_of_padded canonicalInput28022 canonicalOutput28022 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28023 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.raw8490step0⟩

def canonicalOutput28023 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1317⟩

theorem canonicalSound28023 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28023.moment H = canonicalOutput28023.moment H :=
  by
  change injectiveMoment H OAI.MUB6.Certificate.PairSemantics.raw8490step0 = _
  have heq : OAI.MUB6.Certificate.PairSemantics.raw8490step0 = OAI.MUB6.Certificate.PairSemantics.raw8490.transpose := by ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  rw [heq]
  exact (injectiveMoment_transpose H OAI.MUB6.Certificate.PairSemantics.raw8490).trans (OAI.MUB6.Certificate.PairSemantics.canonical8490 hH)

def canonicalInput28024 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![-1, 0, 3, -2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -2, -2, 3]]⟩

def canonicalOutput28024 : ExponentCode := normalNode10924

theorem canonicalSound28024 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28024.moment H = canonicalOutput28024.moment H :=
  canonical_of_padded canonicalInput28024 canonicalOutput28024 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28025 : ExponentCode := ⟨4, 4, ![![0, 0, -1, 1], ![-1, 0, 3, -2], ![0, 2, -2, 0], ![1, -2, 0, 1]]⟩

def canonicalOutput28025 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node802⟩

theorem canonicalSound28025 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28025.moment H = canonicalOutput28025.moment H :=
  canonical_of_padded canonicalInput28025 canonicalOutput28025 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28026 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![-1, 0, 4, -3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -2, -1, 2]]⟩

def canonicalOutput28026 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2692⟩

theorem canonicalSound28026 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28026.moment H = canonicalOutput28026.moment H :=
  canonical_of_padded canonicalInput28026 canonicalOutput28026 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28027 : ExponentCode := ⟨4, 4, ![![0, 0, -1, 1], ![-1, 1, -3, 3], ![0, 1, 1, -2], ![1, -2, 3, -2]]⟩

def canonicalOutput28027 : ExponentCode := normalNode10997

theorem canonicalSound28027 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28027.moment H = canonicalOutput28027.moment H :=
  canonical_of_padded canonicalInput28027 canonicalOutput28027 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28028 : ExponentCode := ⟨4, 4, ![![0, 0, -1, 1], ![-1, 1, -2, 2], ![0, 1, 0, -1], ![1, -2, 3, -2]]⟩

def canonicalOutput28028 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1216⟩

theorem canonicalSound28028 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28028.moment H = canonicalOutput28028.moment H :=
  canonical_of_padded canonicalInput28028 canonicalOutput28028 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28029 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.pivotMatrix1336⟩

def canonicalOutput28029 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1336⟩

theorem canonicalSound28029 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28029.moment H = canonicalOutput28029.moment H :=
  by
  change injectiveMoment H OAI.MUB6.Certificate.PairSemantics.pivotMatrix1336 = injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1336
  have heq : OAI.MUB6.Certificate.PairSemantics.pivotMatrix1336 = (fun u v => OAI.MUB6.Certificate.PairSemantics.node1336 (OAI.MUB6.Certificate.PairSemantics.pivotPermutation1336 u) v) := by ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  rw [heq]
  exact (injectiveMoment_row_permutation H OAI.MUB6.Certificate.PairSemantics.node1336 OAI.MUB6.Certificate.PairSemantics.pivotPermutation1336)

def canonicalInput28030 : ExponentCode := ⟨4, 4, ![![0, 0, -1, 1], ![-1, 1, -2, 2], ![0, 1, 2, -3], ![1, -2, 1, 0]]⟩

def canonicalOutput28030 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1204⟩

theorem canonicalSound28030 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28030.moment H = canonicalOutput28030.moment H :=
  canonical_of_padded canonicalInput28030 canonicalOutput28030 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput28031 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![-1, 1, -1, 1], ![0, 0, -1, 1], ![0, 1, 1, -2], ![1, -2, 2, -1]]⟩

def canonicalOutput28031 : ExponentCode := normalNode11120

theorem canonicalSound28031 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28031.moment H = canonicalOutput28031.moment H :=
  canonical_of_padded canonicalInput28031 canonicalOutput28031 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

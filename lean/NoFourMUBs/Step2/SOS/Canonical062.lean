import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput3968 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput3968 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1098⟩

theorem canonicalSound3968 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3968.moment H = canonicalOutput3968.moment H :=
  canonical_of_padded canonicalInput3968 canonicalOutput3968 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput3969 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 0, 0], ![0, 1, 1, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput3969 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node185⟩

theorem canonicalSound3969 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3969.moment H = canonicalOutput3969.moment H :=
  canonical_of_padded canonicalInput3969 canonicalOutput3969 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput3970 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 0, 0], ![0, 1, 2, -3], ![2, 0, -2, 0]]⟩

def canonicalOutput3970 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node204⟩

theorem canonicalSound3970 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3970.moment H = canonicalOutput3970.moment H :=
  canonical_of_padded canonicalInput3970 canonicalOutput3970 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput3971 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 0, 0], ![0, 2, -2, 0], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput3971 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1269⟩

theorem canonicalSound3971 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3971.moment H = canonicalOutput3971.moment H :=
  canonical_of_padded canonicalInput3971 canonicalOutput3971 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput3972 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 0, 0], ![0, 2, -2, 0], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput3972 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1190⟩

theorem canonicalSound3972 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3972.moment H = canonicalOutput3972.moment H :=
  canonical_of_padded canonicalInput3972 canonicalOutput3972 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput3973 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 0, 0], ![0, 2, -2, 0], ![2, -1, 2, -3]]⟩

def canonicalOutput3973 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node198⟩

theorem canonicalSound3973 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3973.moment H = canonicalOutput3973.moment H :=
  canonical_of_padded canonicalInput3973 canonicalOutput3973 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3974 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 0, 0], ![0, 2, -1, -1], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput3974 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node939⟩

theorem canonicalSound3974 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3974.moment H = canonicalOutput3974.moment H :=
  canonical_of_padded canonicalInput3974 canonicalOutput3974 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput3975 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 0, 0], ![0, 2, -1, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput3975 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node226⟩

theorem canonicalSound3975 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3975.moment H = canonicalOutput3975.moment H :=
  canonical_of_padded canonicalInput3975 canonicalOutput3975 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput3976 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 0, 0], ![0, 2, 2, -4], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput3976 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node996⟩

theorem canonicalSound3976 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3976.moment H = canonicalOutput3976.moment H :=
  canonical_of_padded canonicalInput3976 canonicalOutput3976 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation37⟩ (by decide +kernel) hH

def canonicalInput3977 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 0, 0], ![1, 0, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput3977 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node181⟩

theorem canonicalSound3977 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3977.moment H = canonicalOutput3977.moment H :=
  canonical_of_padded canonicalInput3977 canonicalOutput3977 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput3978 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 0, 0], ![1, 0, 2, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput3978 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node215⟩

theorem canonicalSound3978 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3978.moment H = canonicalOutput3978.moment H :=
  canonical_of_padded canonicalInput3978 canonicalOutput3978 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput3979 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, -1, 1, 0], ![0, 2, -1, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput3979 : ExponentCode := normalNode1778

theorem canonicalSound3979 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3979.moment H = canonicalOutput3979.moment H :=
  canonical_of_padded canonicalInput3979 canonicalOutput3979 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3980 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, -1, 1, 0], ![1, 0, 0, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput3980 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1635⟩

theorem canonicalSound3980 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3980.moment H = canonicalOutput3980.moment H :=
  canonical_of_padded canonicalInput3980 canonicalOutput3980 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3981 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, -1, 2, -1], ![0, 1, 0, -1], ![2, 1, -3, 0]]⟩

def canonicalOutput3981 : ExponentCode := normalNode1774

theorem canonicalSound3981 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3981.moment H = canonicalOutput3981.moment H :=
  canonical_of_padded canonicalInput3981 canonicalOutput3981 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput3982 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, -1, 2, -1], ![0, 2, -3, 1], ![2, 0, 0, -2]]⟩

def canonicalOutput3982 : ExponentCode := normalNode1837

theorem canonicalSound3982 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3982.moment H = canonicalOutput3982.moment H :=
  canonical_of_padded canonicalInput3982 canonicalOutput3982 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3983 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, -1, 2, -1], ![0, 2, 0, -2], ![2, 0, -3, 1]]⟩

def canonicalOutput3983 : ExponentCode := normalNode1843

theorem canonicalSound3983 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3983.moment H = canonicalOutput3983.moment H :=
  canonical_of_padded canonicalInput3983 canonicalOutput3983 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3984 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, -1, 2, -1], ![1, -1, -1, 1], ![1, 3, -2, -2]]⟩

def canonicalOutput3984 : ExponentCode := normalNode1847

theorem canonicalSound3984 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3984.moment H = canonicalOutput3984.moment H :=
  canonical_of_padded canonicalInput3984 canonicalOutput3984 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3985 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, -1, 2, -1], ![1, -1, 0, 0], ![1, 3, -3, -1]]⟩

def canonicalOutput3985 : ExponentCode := normalNode1848

theorem canonicalSound3985 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3985.moment H = canonicalOutput3985.moment H :=
  canonical_of_padded canonicalInput3985 canonicalOutput3985 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3986 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, -1, 2, -1], ![1, 0, -1, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput3986 : ExponentCode := normalNode1851

theorem canonicalSound3986 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3986.moment H = canonicalOutput3986.moment H :=
  canonical_of_padded canonicalInput3986 canonicalOutput3986 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3987 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, -1, 2, -1], ![1, 0, 0, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput3987 : ExponentCode := normalNode1782

theorem canonicalSound3987 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3987.moment H = canonicalOutput3987.moment H :=
  canonical_of_padded canonicalInput3987 canonicalOutput3987 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput3988 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput3988 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node974⟩

theorem canonicalSound3988 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3988.moment H = canonicalOutput3988.moment H :=
  canonical_of_padded canonicalInput3988 canonicalOutput3988 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput3989 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, 1, -2], ![2, 0, -2, 0]]⟩

def canonicalOutput3989 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node802⟩

theorem canonicalSound3989 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3989.moment H = canonicalOutput3989.moment H :=
  canonical_of_padded canonicalInput3989 canonicalOutput3989 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3990 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 2, -2, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput3990 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1223⟩

theorem canonicalSound3990 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3990.moment H = canonicalOutput3990.moment H :=
  canonical_of_padded canonicalInput3990 canonicalOutput3990 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput3991 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, -2, 1, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput3991 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1011⟩

theorem canonicalSound3991 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3991.moment H = canonicalOutput3991.moment H :=
  canonical_of_padded canonicalInput3991 canonicalOutput3991 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput3992 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, -1, 1, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput3992 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node943⟩

theorem canonicalSound3992 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3992.moment H = canonicalOutput3992.moment H :=
  canonical_of_padded canonicalInput3992 canonicalOutput3992 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput3993 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput3993 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1202⟩

theorem canonicalSound3993 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3993.moment H = canonicalOutput3993.moment H :=
  canonical_of_padded canonicalInput3993 canonicalOutput3993 (by decide) (by decide)
    ⟨false, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3994 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, 0, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput3994 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node801⟩

theorem canonicalSound3994 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3994.moment H = canonicalOutput3994.moment H :=
  canonical_of_padded canonicalInput3994 canonicalOutput3994 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3995 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![2, 1, -3, 0]]⟩

def canonicalOutput3995 : ExponentCode := normalNode6762

theorem canonicalSound3995 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3995.moment H = canonicalOutput3995.moment H :=
  canonical_of_padded canonicalInput3995 canonicalOutput3995 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3996 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -2, 1], ![2, 0, 0, -2]]⟩

def canonicalOutput3996 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2423⟩

theorem canonicalSound3996 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3996.moment H = canonicalOutput3996.moment H :=
  canonical_of_padded canonicalInput3996 canonicalOutput3996 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3997 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 1, -2], ![2, 0, -3, 1]]⟩

def canonicalOutput3997 : ExponentCode := normalNode6765

theorem canonicalSound3997 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3997.moment H = canonicalOutput3997.moment H :=
  canonical_of_padded canonicalInput3997 canonicalOutput3997 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3998 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -2, 0, 1], ![1, 3, -2, -2]]⟩

def canonicalOutput3998 : ExponentCode := normalNode3633

theorem canonicalSound3998 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3998.moment H = canonicalOutput3998.moment H :=
  canonical_of_padded canonicalInput3998 canonicalOutput3998 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3999 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 0, 2, -2], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput3999 : ExponentCode := normalNode6766

theorem canonicalSound3999 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3999.moment H = canonicalOutput3999.moment H :=
  canonical_of_padded canonicalInput3999 canonicalOutput3999 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4000 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 0, 2, -2], ![2, 1, -3, 0]]⟩

def canonicalOutput4000 : ExponentCode := normalNode6770

theorem canonicalSound4000 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4000.moment H = canonicalOutput4000.moment H :=
  canonical_of_padded canonicalInput4000 canonicalOutput4000 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4001 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput4001 : ExponentCode := normalNode6777

theorem canonicalSound4001 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4001.moment H = canonicalOutput4001.moment H :=
  canonical_of_padded canonicalInput4001 canonicalOutput4001 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4002 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 0, 1, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput4002 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2422⟩

theorem canonicalSound4002 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4002.moment H = canonicalOutput4002.moment H :=
  canonical_of_padded canonicalInput4002 canonicalOutput4002 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4003 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -2, 1], ![2, -1, 2, -3]]⟩

def canonicalOutput4003 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1675⟩

theorem canonicalSound4003 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4003.moment H = canonicalOutput4003.moment H :=
  canonical_of_padded canonicalInput4003 canonicalOutput4003 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4004 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 2, -2, 0], ![2, -2, 2, -2]]⟩

def canonicalOutput4004 : ExponentCode := normalNode780

theorem canonicalSound4004 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4004.moment H = canonicalOutput4004.moment H :=
  canonical_of_padded canonicalInput4004 canonicalOutput4004 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4005 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 2, -1, -1], ![2, -2, 1, -1]]⟩

def canonicalOutput4005 : ExponentCode := normalNode2506

theorem canonicalSound4005 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4005.moment H = canonicalOutput4005.moment H :=
  canonical_of_padded canonicalInput4005 canonicalOutput4005 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput4006 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput4006 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2425⟩

theorem canonicalSound4006 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4006.moment H = canonicalOutput4006.moment H :=
  canonical_of_padded canonicalInput4006 canonicalOutput4006 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4007 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput4007 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2425⟩

theorem canonicalSound4007 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4007.moment H = canonicalOutput4007.moment H :=
  canonical_of_padded canonicalInput4007 canonicalOutput4007 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4008 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 0, 2, -2], ![2, 0, -3, 1]]⟩

def canonicalOutput4008 : ExponentCode := normalNode6768

theorem canonicalSound4008 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4008.moment H = canonicalOutput4008.moment H :=
  canonical_of_padded canonicalInput4008 canonicalOutput4008 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4009 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 2, -2, 0], ![2, -2, 1, -1]]⟩

def canonicalOutput4009 : ExponentCode := normalNode2480

theorem canonicalSound4009 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4009.moment H = canonicalOutput4009.moment H :=
  canonical_of_padded canonicalInput4009 canonicalOutput4009 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput4010 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -2, 1, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput4010 : ExponentCode := normalNode3605

theorem canonicalSound4010 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4010.moment H = canonicalOutput4010.moment H :=
  canonical_of_padded canonicalInput4010 canonicalOutput4010 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4011 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput4011 : ExponentCode := normalNode6774

theorem canonicalSound4011 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4011.moment H = canonicalOutput4011.moment H :=
  canonical_of_padded canonicalInput4011 canonicalOutput4011 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4012 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput4012 : ExponentCode := normalNode6774

theorem canonicalSound4012 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4012.moment H = canonicalOutput4012.moment H :=
  canonical_of_padded canonicalInput4012 canonicalOutput4012 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4013 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 2, -3, 1], ![1, 0, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput4013 : ExponentCode := normalNode2035

theorem canonicalSound4013 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4013.moment H = canonicalOutput4013.moment H :=
  canonical_of_padded canonicalInput4013 canonicalOutput4013 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4014 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 2, -3, 1], ![2, -1, 2, -3]]⟩

def canonicalOutput4014 : ExponentCode := normalNode10926

theorem canonicalSound4014 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4014.moment H = canonicalOutput4014.moment H :=
  canonical_of_padded canonicalInput4014 canonicalOutput4014 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4015 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 2, -2, 0], ![1, 0, 0, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput4015 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1688⟩

theorem canonicalSound4015 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4015.moment H = canonicalOutput4015.moment H :=
  canonical_of_padded canonicalInput4015 canonicalOutput4015 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4016 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 2, 1, -3], ![2, -1, -2, 1]]⟩

def canonicalOutput4016 : ExponentCode := normalNode6121

theorem canonicalSound4016 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4016.moment H = canonicalOutput4016.moment H :=
  canonical_of_padded canonicalInput4016 canonicalOutput4016 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput4017 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 3, -2, -1], ![1, -2, 1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput4017 : ExponentCode := normalNode3391

theorem canonicalSound4017 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4017.moment H = canonicalOutput4017.moment H :=
  canonical_of_padded canonicalInput4017 canonicalOutput4017 (by decide) (by decide)
    ⟨false, false, canonicalPermutation18, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput4018 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 3, -2, -1], ![1, -1, 0, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput4018 : ExponentCode := normalNode3398

theorem canonicalSound4018 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4018.moment H = canonicalOutput4018.moment H :=
  canonical_of_padded canonicalInput4018 canonicalOutput4018 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4019 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 3, -2, -1], ![1, -1, 1, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput4019 : ExponentCode := normalNode3398

theorem canonicalSound4019 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4019.moment H = canonicalOutput4019.moment H :=
  canonical_of_padded canonicalInput4019 canonicalOutput4019 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4020 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 3, -1, -2], ![1, -2, 1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput4020 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1948⟩

theorem canonicalSound4020 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4020.moment H = canonicalOutput4020.moment H :=
  canonical_of_padded canonicalInput4020 canonicalOutput4020 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4021 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 3, -1, -2], ![1, -1, -1, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput4021 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1947⟩

theorem canonicalSound4021 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4021.moment H = canonicalOutput4021.moment H :=
  canonical_of_padded canonicalInput4021 canonicalOutput4021 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4022 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![1, -2, 1, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput4022 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1011⟩

theorem canonicalSound4022 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4022.moment H = canonicalOutput4022.moment H :=
  canonical_of_padded canonicalInput4022 canonicalOutput4022 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4023 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![1, -2, 2, -1], ![1, 3, -3, -1]]⟩

def canonicalOutput4023 : ExponentCode := normalNode6702

theorem canonicalSound4023 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4023.moment H = canonicalOutput4023.moment H :=
  canonical_of_padded canonicalInput4023 canonicalOutput4023 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4024 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![1, -1, 2, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput4024 : ExponentCode := normalNode6700

theorem canonicalSound4024 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4024.moment H = canonicalOutput4024.moment H :=
  canonical_of_padded canonicalInput4024 canonicalOutput4024 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput4025 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![1, 0, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput4025 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node800⟩

theorem canonicalSound4025 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4025.moment H = canonicalOutput4025.moment H :=
  canonical_of_padded canonicalInput4025 canonicalOutput4025 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4026 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![1, 1, -3, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput4026 : ExponentCode := normalNode6778

theorem canonicalSound4026 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4026.moment H = canonicalOutput4026.moment H :=
  canonical_of_padded canonicalInput4026 canonicalOutput4026 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4027 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 1, -1], ![1, 1, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput4027 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node969⟩

theorem canonicalSound4027 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4027.moment H = canonicalOutput4027.moment H :=
  canonical_of_padded canonicalInput4027 canonicalOutput4027 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput4028 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 2, -2], ![0, 0, -2, 2], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput4028 : ExponentCode := normalNode6725

theorem canonicalSound4028 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4028.moment H = canonicalOutput4028.moment H :=
  canonical_of_padded canonicalInput4028 canonicalOutput4028 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4029 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 2, -2], ![0, 0, -1, 1], ![2, 1, -1, -2]]⟩

def canonicalOutput4029 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node796⟩

theorem canonicalSound4029 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4029.moment H = canonicalOutput4029.moment H :=
  canonical_of_padded canonicalInput4029 canonicalOutput4029 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4030 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 2, -2], ![0, 0, 0, 0], ![0, 1, -1, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput4030 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node807⟩

theorem canonicalSound4030 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4030.moment H = canonicalOutput4030.moment H :=
  canonical_of_padded canonicalInput4030 canonicalOutput4030 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4031 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 2, -2], ![0, 0, 0, 0], ![0, 1, 0, -1], ![2, 0, -2, 0]]⟩

def canonicalOutput4031 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node806⟩

theorem canonicalSound4031 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4031.moment H = canonicalOutput4031.moment H :=
  canonical_of_padded canonicalInput4031 canonicalOutput4031 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput33984 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -2, 3, 0, 0, 0], ![-1, 3, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33984 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node43⟩

theorem canonicalSound33984 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33984.moment H = canonicalOutput33984.moment H :=
  canonical_of_padded canonicalInput33984 canonicalOutput33984 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput33985 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput33985 : ExponentCode := normalNode3766

theorem canonicalSound33985 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33985.moment H = canonicalOutput33985.moment H :=
  canonical_of_padded canonicalInput33985 canonicalOutput33985 (by decide) (by decide)
    ⟨false, true, canonicalPermutation146, OAI.MUB6.Certificate.PairSemantics.permutation306⟩ (by decide +kernel) hH

def canonicalInput33986 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput33986 : ExponentCode := normalNode10446

theorem canonicalSound33986 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33986.moment H = canonicalOutput33986.moment H :=
  canonical_of_padded canonicalInput33986 canonicalOutput33986 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, OAI.MUB6.Certificate.PairSemantics.permutation401⟩ (by decide +kernel) hH

def canonicalInput33987 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput33987 : ExponentCode := normalNode10743

theorem canonicalSound33987 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33987.moment H = canonicalOutput33987.moment H :=
  canonical_of_padded canonicalInput33987 canonicalOutput33987 (by decide) (by decide)
    ⟨false, true, canonicalPermutation397, OAI.MUB6.Certificate.PairSemantics.permutation401⟩ (by decide +kernel) hH

def canonicalInput33988 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33988 : ExponentCode := normalNode3656

theorem canonicalSound33988 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33988.moment H = canonicalOutput33988.moment H :=
  canonical_of_padded canonicalInput33988 canonicalOutput33988 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput33989 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33989 : ExponentCode := normalNode8064

theorem canonicalSound33989 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33989.moment H = canonicalOutput33989.moment H :=
  canonical_of_padded canonicalInput33989 canonicalOutput33989 (by decide) (by decide)
    ⟨false, false, canonicalPermutation169, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput33990 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33990 : ExponentCode := normalNode8064

theorem canonicalSound33990 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33990.moment H = canonicalOutput33990.moment H :=
  canonical_of_padded canonicalInput33990 canonicalOutput33990 (by decide) (by decide)
    ⟨false, false, canonicalPermutation168, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput33991 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33991 : ExponentCode := normalNode3656

theorem canonicalSound33991 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33991.moment H = canonicalOutput33991.moment H :=
  canonical_of_padded canonicalInput33991 canonicalOutput33991 (by decide) (by decide)
    ⟨false, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput33992 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33992 : ExponentCode := normalNode8064

theorem canonicalSound33992 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33992.moment H = canonicalOutput33992.moment H :=
  canonical_of_padded canonicalInput33992 canonicalOutput33992 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput33993 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33993 : ExponentCode := normalNode11165

theorem canonicalSound33993 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33993.moment H = canonicalOutput33993.moment H :=
  canonical_of_padded canonicalInput33993 canonicalOutput33993 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation296, canonicalPermutation139⟩ (by decide +kernel) hH

def canonicalInput33994 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33994 : ExponentCode := normalNode10869

theorem canonicalSound33994 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33994.moment H = canonicalOutput33994.moment H :=
  canonical_of_padded canonicalInput33994 canonicalOutput33994 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation315, OAI.MUB6.Certificate.PairSemantics.permutation257⟩ (by decide +kernel) hH

def canonicalInput33995 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33995 : ExponentCode := normalNode10869

theorem canonicalSound33995 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33995.moment H = canonicalOutput33995.moment H :=
  canonical_of_padded canonicalInput33995 canonicalOutput33995 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation265, OAI.MUB6.Certificate.PairSemantics.permutation257⟩ (by decide +kernel) hH

def canonicalInput33996 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33996 : ExponentCode := normalNode11165

theorem canonicalSound33996 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33996.moment H = canonicalOutput33996.moment H :=
  canonical_of_padded canonicalInput33996 canonicalOutput33996 (by decide) (by decide)
    ⟨false, true, canonicalPermutation82, canonicalPermutation139⟩ (by decide +kernel) hH

def canonicalInput33997 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33997 : ExponentCode := normalNode8064

theorem canonicalSound33997 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33997.moment H = canonicalOutput33997.moment H :=
  canonical_of_padded canonicalInput33997 canonicalOutput33997 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput33998 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33998 : ExponentCode := normalNode8064

theorem canonicalSound33998 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33998.moment H = canonicalOutput33998.moment H :=
  canonical_of_padded canonicalInput33998 canonicalOutput33998 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation338, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput33999 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33999 : ExponentCode := normalNode10869

theorem canonicalSound33999 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33999.moment H = canonicalOutput33999.moment H :=
  canonical_of_padded canonicalInput33999 canonicalOutput33999 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation315, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput34000 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput34000 : ExponentCode := normalNode11165

theorem canonicalSound34000 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34000.moment H = canonicalOutput34000.moment H :=
  canonical_of_padded canonicalInput34000 canonicalOutput34000 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation296, OAI.MUB6.Certificate.PairSemantics.permutation389⟩ (by decide +kernel) hH

def canonicalInput34001 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34001 : ExponentCode := normalNode11165

theorem canonicalSound34001 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34001.moment H = canonicalOutput34001.moment H :=
  canonical_of_padded canonicalInput34001 canonicalOutput34001 (by decide) (by decide)
    ⟨false, true, canonicalPermutation82, OAI.MUB6.Certificate.PairSemantics.permutation389⟩ (by decide +kernel) hH

def canonicalInput34002 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput34002 : ExponentCode := normalNode10869

theorem canonicalSound34002 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34002.moment H = canonicalOutput34002.moment H :=
  canonical_of_padded canonicalInput34002 canonicalOutput34002 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation265, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput34003 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput34003 : ExponentCode := normalNode8064

theorem canonicalSound34003 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34003.moment H = canonicalOutput34003.moment H :=
  canonical_of_padded canonicalInput34003 canonicalOutput34003 (by decide) (by decide)
    ⟨false, false, canonicalPermutation164, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput34004 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput34004 : ExponentCode := normalNode3656

theorem canonicalSound34004 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34004.moment H = canonicalOutput34004.moment H :=
  canonical_of_padded canonicalInput34004 canonicalOutput34004 (by decide) (by decide)
    ⟨false, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput34005 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput34005 : ExponentCode := normalNode8064

theorem canonicalSound34005 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34005.moment H = canonicalOutput34005.moment H :=
  canonical_of_padded canonicalInput34005 canonicalOutput34005 (by decide) (by decide)
    ⟨false, false, canonicalPermutation169, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput34006 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput34006 : ExponentCode := normalNode8064

theorem canonicalSound34006 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34006.moment H = canonicalOutput34006.moment H :=
  canonical_of_padded canonicalInput34006 canonicalOutput34006 (by decide) (by decide)
    ⟨false, false, canonicalPermutation168, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput34007 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput34007 : ExponentCode := normalNode3656

theorem canonicalSound34007 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34007.moment H = canonicalOutput34007.moment H :=
  canonical_of_padded canonicalInput34007 canonicalOutput34007 (by decide) (by decide)
    ⟨false, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput34008 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput34008 : ExponentCode := normalNode10869

theorem canonicalSound34008 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34008.moment H = canonicalOutput34008.moment H :=
  canonical_of_padded canonicalInput34008 canonicalOutput34008 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput34009 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput34009 : ExponentCode := normalNode8064

theorem canonicalSound34009 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34009.moment H = canonicalOutput34009.moment H :=
  canonical_of_padded canonicalInput34009 canonicalOutput34009 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation280, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput34010 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput34010 : ExponentCode := normalNode11165

theorem canonicalSound34010 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34010.moment H = canonicalOutput34010.moment H :=
  canonical_of_padded canonicalInput34010 canonicalOutput34010 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation296, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput34011 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34011 : ExponentCode := normalNode11165

theorem canonicalSound34011 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34011.moment H = canonicalOutput34011.moment H :=
  canonical_of_padded canonicalInput34011 canonicalOutput34011 (by decide) (by decide)
    ⟨false, true, canonicalPermutation82, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput34012 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput34012 : ExponentCode := normalNode8064

theorem canonicalSound34012 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34012.moment H = canonicalOutput34012.moment H :=
  canonical_of_padded canonicalInput34012 canonicalOutput34012 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation337, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput34013 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput34013 : ExponentCode := normalNode10869

theorem canonicalSound34013 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34013.moment H = canonicalOutput34013.moment H :=
  canonical_of_padded canonicalInput34013 canonicalOutput34013 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation264, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput34014 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput34014 : ExponentCode := normalNode11165

theorem canonicalSound34014 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34014.moment H = canonicalOutput34014.moment H :=
  canonical_of_padded canonicalInput34014 canonicalOutput34014 (by decide) (by decide)
    ⟨false, true, canonicalPermutation120, canonicalPermutation139⟩ (by decide +kernel) hH

def canonicalInput34015 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput34015 : ExponentCode := normalNode11165

theorem canonicalSound34015 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34015.moment H = canonicalOutput34015.moment H :=
  canonical_of_padded canonicalInput34015 canonicalOutput34015 (by decide) (by decide)
    ⟨false, true, canonicalPermutation120, OAI.MUB6.Certificate.PairSemantics.permutation389⟩ (by decide +kernel) hH

def canonicalInput34016 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput34016 : ExponentCode := normalNode11165

theorem canonicalSound34016 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34016.moment H = canonicalOutput34016.moment H :=
  canonical_of_padded canonicalInput34016 canonicalOutput34016 (by decide) (by decide)
    ⟨false, true, canonicalPermutation120, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput34017 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34017 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node44⟩

theorem canonicalSound34017 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34017.moment H = canonicalOutput34017.moment H :=
  canonical_of_padded canonicalInput34017 canonicalOutput34017 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput34018 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput34018 : ExponentCode := normalNode11165

theorem canonicalSound34018 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34018.moment H = canonicalOutput34018.moment H :=
  canonical_of_padded canonicalInput34018 canonicalOutput34018 (by decide) (by decide)
    ⟨false, true, canonicalPermutation121, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput34019 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput34019 : ExponentCode := normalNode11165

theorem canonicalSound34019 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34019.moment H = canonicalOutput34019.moment H :=
  canonical_of_padded canonicalInput34019 canonicalOutput34019 (by decide) (by decide)
    ⟨false, true, canonicalPermutation121, OAI.MUB6.Certificate.PairSemantics.permutation389⟩ (by decide +kernel) hH

def canonicalInput34020 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput34020 : ExponentCode := normalNode11165

theorem canonicalSound34020 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34020.moment H = canonicalOutput34020.moment H :=
  canonical_of_padded canonicalInput34020 canonicalOutput34020 (by decide) (by decide)
    ⟨false, true, canonicalPermutation121, canonicalPermutation139⟩ (by decide +kernel) hH

def canonicalInput34021 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput34021 : ExponentCode := normalNode8064

theorem canonicalSound34021 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34021.moment H = canonicalOutput34021.moment H :=
  canonical_of_padded canonicalInput34021 canonicalOutput34021 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput34022 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput34022 : ExponentCode := normalNode10869

theorem canonicalSound34022 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34022.moment H = canonicalOutput34022.moment H :=
  canonical_of_padded canonicalInput34022 canonicalOutput34022 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation257⟩ (by decide +kernel) hH

def canonicalInput34023 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34023 : ExponentCode := normalNode11165

theorem canonicalSound34023 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34023.moment H = canonicalOutput34023.moment H :=
  canonical_of_padded canonicalInput34023 canonicalOutput34023 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation375, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput34024 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput34024 : ExponentCode := normalNode11165

theorem canonicalSound34024 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34024.moment H = canonicalOutput34024.moment H :=
  canonical_of_padded canonicalInput34024 canonicalOutput34024 (by decide) (by decide)
    ⟨false, true, canonicalPermutation130, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput34025 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput34025 : ExponentCode := normalNode10869

theorem canonicalSound34025 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34025.moment H = canonicalOutput34025.moment H :=
  canonical_of_padded canonicalInput34025 canonicalOutput34025 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation264, OAI.MUB6.Certificate.PairSemantics.permutation257⟩ (by decide +kernel) hH

def canonicalInput34026 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput34026 : ExponentCode := normalNode8064

theorem canonicalSound34026 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34026.moment H = canonicalOutput34026.moment H :=
  canonical_of_padded canonicalInput34026 canonicalOutput34026 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput34027 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput34027 : ExponentCode := normalNode10869

theorem canonicalSound34027 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34027.moment H = canonicalOutput34027.moment H :=
  canonical_of_padded canonicalInput34027 canonicalOutput34027 (by decide) (by decide)
    ⟨false, true, canonicalPermutation163, OAI.MUB6.Certificate.PairSemantics.permutation257⟩ (by decide +kernel) hH

def canonicalInput34028 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34028 : ExponentCode := normalNode11165

theorem canonicalSound34028 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34028.moment H = canonicalOutput34028.moment H :=
  canonical_of_padded canonicalInput34028 canonicalOutput34028 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation375, OAI.MUB6.Certificate.PairSemantics.permutation389⟩ (by decide +kernel) hH

def canonicalInput34029 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput34029 : ExponentCode := normalNode8064

theorem canonicalSound34029 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34029.moment H = canonicalOutput34029.moment H :=
  canonical_of_padded canonicalInput34029 canonicalOutput34029 (by decide) (by decide)
    ⟨false, false, canonicalPermutation164, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput34030 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput34030 : ExponentCode := normalNode8064

theorem canonicalSound34030 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34030.moment H = canonicalOutput34030.moment H :=
  canonical_of_padded canonicalInput34030 canonicalOutput34030 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation338, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput34031 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput34031 : ExponentCode := normalNode11165

theorem canonicalSound34031 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34031.moment H = canonicalOutput34031.moment H :=
  canonical_of_padded canonicalInput34031 canonicalOutput34031 (by decide) (by decide)
    ⟨false, true, canonicalPermutation130, OAI.MUB6.Certificate.PairSemantics.permutation389⟩ (by decide +kernel) hH

def canonicalInput34032 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput34032 : ExponentCode := normalNode10869

theorem canonicalSound34032 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34032.moment H = canonicalOutput34032.moment H :=
  canonical_of_padded canonicalInput34032 canonicalOutput34032 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation243, OAI.MUB6.Certificate.PairSemantics.permutation257⟩ (by decide +kernel) hH

def canonicalInput34033 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput34033 : ExponentCode := normalNode8064

theorem canonicalSound34033 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34033.moment H = canonicalOutput34033.moment H :=
  canonical_of_padded canonicalInput34033 canonicalOutput34033 (by decide) (by decide)
    ⟨false, false, canonicalPermutation164, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput34034 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34034 : ExponentCode := normalNode11165

theorem canonicalSound34034 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34034.moment H = canonicalOutput34034.moment H :=
  canonical_of_padded canonicalInput34034 canonicalOutput34034 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation375, canonicalPermutation139⟩ (by decide +kernel) hH

def canonicalInput34035 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput34035 : ExponentCode := normalNode10869

theorem canonicalSound34035 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34035.moment H = canonicalOutput34035.moment H :=
  canonical_of_padded canonicalInput34035 canonicalOutput34035 (by decide) (by decide)
    ⟨false, true, canonicalPermutation163, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput34036 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput34036 : ExponentCode := normalNode10869

theorem canonicalSound34036 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34036.moment H = canonicalOutput34036.moment H :=
  canonical_of_padded canonicalInput34036 canonicalOutput34036 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation243, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput34037 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput34037 : ExponentCode := normalNode11165

theorem canonicalSound34037 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34037.moment H = canonicalOutput34037.moment H :=
  canonical_of_padded canonicalInput34037 canonicalOutput34037 (by decide) (by decide)
    ⟨false, true, canonicalPermutation130, canonicalPermutation139⟩ (by decide +kernel) hH

def canonicalInput34038 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput34038 : ExponentCode := normalNode8064

theorem canonicalSound34038 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34038.moment H = canonicalOutput34038.moment H :=
  canonical_of_padded canonicalInput34038 canonicalOutput34038 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation338, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput34039 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput34039 : ExponentCode := normalNode3656

theorem canonicalSound34039 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34039.moment H = canonicalOutput34039.moment H :=
  canonical_of_padded canonicalInput34039 canonicalOutput34039 (by decide) (by decide)
    ⟨false, true, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput34040 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput34040 : ExponentCode := normalNode8064

theorem canonicalSound34040 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34040.moment H = canonicalOutput34040.moment H :=
  canonical_of_padded canonicalInput34040 canonicalOutput34040 (by decide) (by decide)
    ⟨false, false, canonicalPermutation169, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput34041 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput34041 : ExponentCode := normalNode8064

theorem canonicalSound34041 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34041.moment H = canonicalOutput34041.moment H :=
  canonical_of_padded canonicalInput34041 canonicalOutput34041 (by decide) (by decide)
    ⟨false, false, canonicalPermutation168, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput34042 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput34042 : ExponentCode := normalNode3656

theorem canonicalSound34042 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34042.moment H = canonicalOutput34042.moment H :=
  canonical_of_padded canonicalInput34042 canonicalOutput34042 (by decide) (by decide)
    ⟨false, true, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput34043 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput34043 : ExponentCode := normalNode8063

theorem canonicalSound34043 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34043.moment H = canonicalOutput34043.moment H :=
  canonical_of_padded canonicalInput34043 canonicalOutput34043 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput34044 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput34044 : ExponentCode := normalNode6527

theorem canonicalSound34044 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34044.moment H = canonicalOutput34044.moment H :=
  canonical_of_padded canonicalInput34044 canonicalOutput34044 (by decide) (by decide)
    ⟨false, false, canonicalPermutation168, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput34045 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput34045 : ExponentCode := normalNode8237

theorem canonicalSound34045 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34045.moment H = canonicalOutput34045.moment H :=
  canonical_of_padded canonicalInput34045 canonicalOutput34045 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation392⟩ (by decide +kernel) hH

def canonicalInput34046 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput34046 : ExponentCode := normalNode9068

theorem canonicalSound34046 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34046.moment H = canonicalOutput34046.moment H :=
  canonical_of_padded canonicalInput34046 canonicalOutput34046 (by decide) (by decide)
    ⟨false, false, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation300⟩ (by decide +kernel) hH

def canonicalInput34047 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput34047 : ExponentCode := normalNode8330

theorem canonicalSound34047 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34047.moment H = canonicalOutput34047.moment H :=
  canonical_of_padded canonicalInput34047 canonicalOutput34047 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation342⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

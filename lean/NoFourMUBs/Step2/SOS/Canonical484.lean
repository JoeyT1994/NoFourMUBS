import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput30976 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30976 : ExponentCode := normalNode10453

theorem canonicalSound30976 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30976.moment H = canonicalOutput30976.moment H :=
  canonical_of_padded canonicalInput30976 canonicalOutput30976 (by decide) (by decide)
    ⟨false, false, canonicalPermutation47, canonicalPermutation229⟩ (by decide +kernel) hH

def canonicalInput30977 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30977 : ExponentCode := normalNode8361

theorem canonicalSound30977 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30977.moment H = canonicalOutput30977.moment H :=
  canonical_of_padded canonicalInput30977 canonicalOutput30977 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation187, canonicalPermutation228⟩ (by decide +kernel) hH

def canonicalInput30978 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput30978 : ExponentCode := normalNode11165

theorem canonicalSound30978 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30978.moment H = canonicalOutput30978.moment H :=
  canonical_of_padded canonicalInput30978 canonicalOutput30978 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation202⟩ (by decide +kernel) hH

def canonicalInput30979 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30979 : ExponentCode := normalNode8361

theorem canonicalSound30979 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30979.moment H = canonicalOutput30979.moment H :=
  canonical_of_padded canonicalInput30979 canonicalOutput30979 (by decide) (by decide)
    ⟨false, false, canonicalPermutation50, canonicalPermutation233⟩ (by decide +kernel) hH

def canonicalInput30980 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30980 : ExponentCode := normalNode8361

theorem canonicalSound30980 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30980.moment H = canonicalOutput30980.moment H :=
  canonical_of_padded canonicalInput30980 canonicalOutput30980 (by decide) (by decide)
    ⟨false, false, canonicalPermutation73, canonicalPermutation233⟩ (by decide +kernel) hH

def canonicalInput30981 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput30981 : ExponentCode := normalNode11165

theorem canonicalSound30981 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30981.moment H = canonicalOutput30981.moment H :=
  canonical_of_padded canonicalInput30981 canonicalOutput30981 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation202⟩ (by decide +kernel) hH

def canonicalInput30982 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput30982 : ExponentCode := normalNode10453

theorem canonicalSound30982 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30982.moment H = canonicalOutput30982.moment H :=
  canonical_of_padded canonicalInput30982 canonicalOutput30982 (by decide) (by decide)
    ⟨false, false, canonicalPermutation40, canonicalPermutation229⟩ (by decide +kernel) hH

def canonicalInput30983 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30983 : ExponentCode := normalNode8361

theorem canonicalSound30983 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30983.moment H = canonicalOutput30983.moment H :=
  canonical_of_padded canonicalInput30983 canonicalOutput30983 (by decide) (by decide)
    ⟨false, false, canonicalPermutation72, canonicalPermutation233⟩ (by decide +kernel) hH

def canonicalInput30984 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput30984 : ExponentCode := normalNode10645

theorem canonicalSound30984 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30984.moment H = canonicalOutput30984.moment H :=
  canonical_of_padded canonicalInput30984 canonicalOutput30984 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, canonicalPermutation235⟩ (by decide +kernel) hH

def canonicalInput30985 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30985 : ExponentCode := normalNode10645

theorem canonicalSound30985 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30985.moment H = canonicalOutput30985.moment H :=
  canonical_of_padded canonicalInput30985 canonicalOutput30985 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation235⟩ (by decide +kernel) hH

def canonicalInput30986 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput30986 : ExponentCode := normalNode8361

theorem canonicalSound30986 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30986.moment H = canonicalOutput30986.moment H :=
  canonical_of_padded canonicalInput30986 canonicalOutput30986 (by decide) (by decide)
    ⟨false, false, canonicalPermutation54, canonicalPermutation233⟩ (by decide +kernel) hH

def canonicalInput30987 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30987 : ExponentCode := normalNode10453

theorem canonicalSound30987 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30987.moment H = canonicalOutput30987.moment H :=
  canonical_of_padded canonicalInput30987 canonicalOutput30987 (by decide) (by decide)
    ⟨false, false, canonicalPermutation16, canonicalPermutation229⟩ (by decide +kernel) hH

def canonicalInput30988 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput30988 : ExponentCode := normalNode10645

theorem canonicalSound30988 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30988.moment H = canonicalOutput30988.moment H :=
  canonical_of_padded canonicalInput30988 canonicalOutput30988 (by decide) (by decide)
    ⟨false, false, canonicalPermutation28, canonicalPermutation110⟩ (by decide +kernel) hH

def canonicalInput30989 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30989 : ExponentCode := normalNode10645

theorem canonicalSound30989 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30989.moment H = canonicalOutput30989.moment H :=
  canonical_of_padded canonicalInput30989 canonicalOutput30989 (by decide) (by decide)
    ⟨false, false, canonicalPermutation28, canonicalPermutation230⟩ (by decide +kernel) hH

def canonicalInput30990 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput30990 : ExponentCode := normalNode10645

theorem canonicalSound30990 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30990.moment H = canonicalOutput30990.moment H :=
  canonical_of_padded canonicalInput30990 canonicalOutput30990 (by decide) (by decide)
    ⟨false, false, canonicalPermutation28, canonicalPermutation235⟩ (by decide +kernel) hH

def canonicalInput30991 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30991 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node5⟩

theorem canonicalSound30991 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30991.moment H = canonicalOutput30991.moment H :=
  canonical_of_padded canonicalInput30991 canonicalOutput30991 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation213⟩ (by decide +kernel) hH

def canonicalInput30992 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30992 : ExponentCode := normalNode10645

theorem canonicalSound30992 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30992.moment H = canonicalOutput30992.moment H :=
  canonical_of_padded canonicalInput30992 canonicalOutput30992 (by decide) (by decide)
    ⟨false, false, canonicalPermutation49, canonicalPermutation235⟩ (by decide +kernel) hH

def canonicalInput30993 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30993 : ExponentCode := normalNode10645

theorem canonicalSound30993 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30993.moment H = canonicalOutput30993.moment H :=
  canonical_of_padded canonicalInput30993 canonicalOutput30993 (by decide) (by decide)
    ⟨false, false, canonicalPermutation49, canonicalPermutation230⟩ (by decide +kernel) hH

def canonicalInput30994 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30994 : ExponentCode := normalNode10645

theorem canonicalSound30994 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30994.moment H = canonicalOutput30994.moment H :=
  canonical_of_padded canonicalInput30994 canonicalOutput30994 (by decide) (by decide)
    ⟨false, false, canonicalPermutation49, canonicalPermutation110⟩ (by decide +kernel) hH

def canonicalInput30995 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput30995 : ExponentCode := normalNode8361

theorem canonicalSound30995 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30995.moment H = canonicalOutput30995.moment H :=
  canonical_of_padded canonicalInput30995 canonicalOutput30995 (by decide) (by decide)
    ⟨false, false, canonicalPermutation72, canonicalPermutation226⟩ (by decide +kernel) hH

def canonicalInput30996 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30996 : ExponentCode := normalNode10453

theorem canonicalSound30996 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30996.moment H = canonicalOutput30996.moment H :=
  canonical_of_padded canonicalInput30996 canonicalOutput30996 (by decide) (by decide)
    ⟨false, false, canonicalPermutation40, OAI.MUB6.Certificate.PairSemantics.permutation205⟩ (by decide +kernel) hH

def canonicalInput30997 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30997 : ExponentCode := normalNode10645

theorem canonicalSound30997 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30997.moment H = canonicalOutput30997.moment H :=
  canonical_of_padded canonicalInput30997 canonicalOutput30997 (by decide) (by decide)
    ⟨false, false, canonicalPermutation13, canonicalPermutation235⟩ (by decide +kernel) hH

def canonicalInput30998 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30998 : ExponentCode := normalNode10645

theorem canonicalSound30998 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30998.moment H = canonicalOutput30998.moment H :=
  canonical_of_padded canonicalInput30998 canonicalOutput30998 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation191, canonicalPermutation235⟩ (by decide +kernel) hH

def canonicalInput30999 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30999 : ExponentCode := normalNode10453

theorem canonicalSound30999 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30999.moment H = canonicalOutput30999.moment H :=
  canonical_of_padded canonicalInput30999 canonicalOutput30999 (by decide) (by decide)
    ⟨false, false, canonicalPermutation16, OAI.MUB6.Certificate.PairSemantics.permutation205⟩ (by decide +kernel) hH

def canonicalInput31000 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput31000 : ExponentCode := normalNode8361

theorem canonicalSound31000 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31000.moment H = canonicalOutput31000.moment H :=
  canonical_of_padded canonicalInput31000 canonicalOutput31000 (by decide) (by decide)
    ⟨false, false, canonicalPermutation54, canonicalPermutation226⟩ (by decide +kernel) hH

def canonicalInput31001 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput31001 : ExponentCode := normalNode10453

theorem canonicalSound31001 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31001.moment H = canonicalOutput31001.moment H :=
  canonical_of_padded canonicalInput31001 canonicalOutput31001 (by decide) (by decide)
    ⟨false, false, canonicalPermutation29, OAI.MUB6.Certificate.PairSemantics.permutation205⟩ (by decide +kernel) hH

def canonicalInput31002 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput31002 : ExponentCode := normalNode10645

theorem canonicalSound31002 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31002.moment H = canonicalOutput31002.moment H :=
  canonical_of_padded canonicalInput31002 canonicalOutput31002 (by decide) (by decide)
    ⟨false, false, canonicalPermutation13, canonicalPermutation230⟩ (by decide +kernel) hH

def canonicalInput31003 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput31003 : ExponentCode := normalNode8361

theorem canonicalSound31003 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31003.moment H = canonicalOutput31003.moment H :=
  canonical_of_padded canonicalInput31003 canonicalOutput31003 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation187, canonicalPermutation233⟩ (by decide +kernel) hH

def canonicalInput31004 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput31004 : ExponentCode := normalNode8361

theorem canonicalSound31004 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31004.moment H = canonicalOutput31004.moment H :=
  canonical_of_padded canonicalInput31004 canonicalOutput31004 (by decide) (by decide)
    ⟨false, false, canonicalPermutation68, canonicalPermutation233⟩ (by decide +kernel) hH

def canonicalInput31005 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput31005 : ExponentCode := normalNode10645

theorem canonicalSound31005 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31005.moment H = canonicalOutput31005.moment H :=
  canonical_of_padded canonicalInput31005 canonicalOutput31005 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation191, canonicalPermutation230⟩ (by decide +kernel) hH

def canonicalInput31006 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput31006 : ExponentCode := normalNode10453

theorem canonicalSound31006 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31006.moment H = canonicalOutput31006.moment H :=
  canonical_of_padded canonicalInput31006 canonicalOutput31006 (by decide) (by decide)
    ⟨false, false, canonicalPermutation24, OAI.MUB6.Certificate.PairSemantics.permutation205⟩ (by decide +kernel) hH

def canonicalInput31007 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput31007 : ExponentCode := normalNode8361

theorem canonicalSound31007 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31007.moment H = canonicalOutput31007.moment H :=
  canonical_of_padded canonicalInput31007 canonicalOutput31007 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation187, canonicalPermutation226⟩ (by decide +kernel) hH

def canonicalInput31008 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput31008 : ExponentCode := normalNode10645

theorem canonicalSound31008 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31008.moment H = canonicalOutput31008.moment H :=
  canonical_of_padded canonicalInput31008 canonicalOutput31008 (by decide) (by decide)
    ⟨false, false, canonicalPermutation13, canonicalPermutation110⟩ (by decide +kernel) hH

def canonicalInput31009 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput31009 : ExponentCode := normalNode10453

theorem canonicalSound31009 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31009.moment H = canonicalOutput31009.moment H :=
  canonical_of_padded canonicalInput31009 canonicalOutput31009 (by decide) (by decide)
    ⟨false, false, canonicalPermutation29, canonicalPermutation229⟩ (by decide +kernel) hH

def canonicalInput31010 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput31010 : ExponentCode := normalNode10453

theorem canonicalSound31010 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31010.moment H = canonicalOutput31010.moment H :=
  canonical_of_padded canonicalInput31010 canonicalOutput31010 (by decide) (by decide)
    ⟨false, false, canonicalPermutation24, canonicalPermutation229⟩ (by decide +kernel) hH

def canonicalInput31011 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput31011 : ExponentCode := normalNode10645

theorem canonicalSound31011 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31011.moment H = canonicalOutput31011.moment H :=
  canonical_of_padded canonicalInput31011 canonicalOutput31011 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation191, canonicalPermutation110⟩ (by decide +kernel) hH

def canonicalInput31012 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput31012 : ExponentCode := normalNode8361

theorem canonicalSound31012 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31012.moment H = canonicalOutput31012.moment H :=
  canonical_of_padded canonicalInput31012 canonicalOutput31012 (by decide) (by decide)
    ⟨false, false, canonicalPermutation68, canonicalPermutation226⟩ (by decide +kernel) hH

def canonicalInput31013 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput31013 : ExponentCode := normalNode11165

theorem canonicalSound31013 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31013.moment H = canonicalOutput31013.moment H :=
  canonical_of_padded canonicalInput31013 canonicalOutput31013 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation202⟩ (by decide +kernel) hH

def canonicalInput31014 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput31014 : ExponentCode := normalNode8361

theorem canonicalSound31014 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31014.moment H = canonicalOutput31014.moment H :=
  canonical_of_padded canonicalInput31014 canonicalOutput31014 (by decide) (by decide)
    ⟨false, false, canonicalPermutation50, canonicalPermutation228⟩ (by decide +kernel) hH

def canonicalInput31015 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput31015 : ExponentCode := normalNode8361

theorem canonicalSound31015 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31015.moment H = canonicalOutput31015.moment H :=
  canonical_of_padded canonicalInput31015 canonicalOutput31015 (by decide) (by decide)
    ⟨false, false, canonicalPermutation73, canonicalPermutation228⟩ (by decide +kernel) hH

def canonicalInput31016 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput31016 : ExponentCode := normalNode11165

theorem canonicalSound31016 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31016.moment H = canonicalOutput31016.moment H :=
  canonical_of_padded canonicalInput31016 canonicalOutput31016 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation202⟩ (by decide +kernel) hH

def canonicalInput31017 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput31017 : ExponentCode := normalNode10415

theorem canonicalSound31017 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31017.moment H = canonicalOutput31017.moment H :=
  canonical_of_padded canonicalInput31017 canonicalOutput31017 (by decide) (by decide)
    ⟨false, true, canonicalPermutation65, canonicalPermutation231⟩ (by decide +kernel) hH

def canonicalInput31018 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput31018 : ExponentCode := normalNode10371

theorem canonicalSound31018 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31018.moment H = canonicalOutput31018.moment H :=
  canonical_of_padded canonicalInput31018 canonicalOutput31018 (by decide) (by decide)
    ⟨false, false, canonicalPermutation79, canonicalPermutation231⟩ (by decide +kernel) hH

def canonicalInput31019 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput31019 : ExponentCode := normalNode10274

theorem canonicalSound31019 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31019.moment H = canonicalOutput31019.moment H :=
  canonical_of_padded canonicalInput31019 canonicalOutput31019 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation220⟩ (by decide +kernel) hH

def canonicalInput31020 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput31020 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound31020 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31020.moment H = canonicalOutput31020.moment H :=
  canonical_of_padded canonicalInput31020 canonicalOutput31020 (by decide) (by decide)
    ⟨true, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput31021 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![1, 2, -3, 0, 0, 0], ![-1, -2, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput31021 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound31021 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31021.moment H = canonicalOutput31021.moment H :=
  canonical_of_padded canonicalInput31021 canonicalOutput31021 (by decide) (by decide)
    ⟨true, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput31022 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![2, -3, 1, 0, 0, 0], ![-2, 3, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput31022 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound31022 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31022.moment H = canonicalOutput31022.moment H :=
  canonical_of_padded canonicalInput31022 canonicalOutput31022 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput31023 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput31023 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node4⟩

theorem canonicalSound31023 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31023.moment H = canonicalOutput31023.moment H :=
  canonical_of_padded canonicalInput31023 canonicalOutput31023 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation231⟩ (by decide +kernel) hH

def canonicalInput31024 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput31024 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound31024 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31024.moment H = canonicalOutput31024.moment H :=
  canonical_of_padded canonicalInput31024 canonicalOutput31024 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation252, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput31025 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput31025 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node4⟩

theorem canonicalSound31025 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31025.moment H = canonicalOutput31025.moment H :=
  canonical_of_padded canonicalInput31025 canonicalOutput31025 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation213⟩ (by decide +kernel) hH

def canonicalInput31026 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![2, 1, -3, 0, 0, 0], ![-2, -1, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput31026 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound31026 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31026.moment H = canonicalOutput31026.moment H :=
  canonical_of_padded canonicalInput31026 canonicalOutput31026 (by decide) (by decide)
    ⟨true, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput31027 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![3, -3, 0, 0, 0, 0], ![-3, 3, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput31027 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node3⟩

theorem canonicalSound31027 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31027.moment H = canonicalOutput31027.moment H :=
  canonical_of_padded canonicalInput31027 canonicalOutput31027 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation231⟩ (by decide +kernel) hH

def canonicalInput31028 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![3, -2, -1, 0, 0, 0], ![-3, 2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput31028 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound31028 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31028.moment H = canonicalOutput31028.moment H :=
  canonical_of_padded canonicalInput31028 canonicalOutput31028 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation253, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput31029 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![3, -1, -2, 0, 0, 0], ![-3, 1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput31029 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound31029 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31029.moment H = canonicalOutput31029.moment H :=
  canonical_of_padded canonicalInput31029 canonicalOutput31029 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation252, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput31030 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![3, 0, -3, 0, 0, 0], ![-3, 0, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput31030 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node3⟩

theorem canonicalSound31030 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31030.moment H = canonicalOutput31030.moment H :=
  canonical_of_padded canonicalInput31030 canonicalOutput31030 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation213⟩ (by decide +kernel) hH

def canonicalInput31031 : ExponentCode := ⟨4, 5, ![![0, 0, 0, 1, -1], ![-3, -1, 2, 1, 1], ![1, -1, -1, -1, 2], ![2, 2, -1, -1, -2]]⟩

def canonicalOutput31031 : ExponentCode := normalNode11104

theorem canonicalSound31031 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31031.moment H = canonicalOutput31031.moment H :=
  canonical_of_padded canonicalInput31031 canonicalOutput31031 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation183, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31032 : ExponentCode := ⟨4, 5, ![![0, 0, 0, 1, -1], ![-3, -1, 2, 1, 1], ![1, 2, -1, -1, -1], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput31032 : ExponentCode := normalNode9400

theorem canonicalSound31032 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31032.moment H = canonicalOutput31032.moment H :=
  canonical_of_padded canonicalInput31032 canonicalOutput31032 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput31033 : ExponentCode := ⟨4, 5, ![![0, 0, 0, 1, -1], ![-2, -2, 1, 1, 2], ![1, 1, -2, -1, 1], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput31033 : ExponentCode := normalNode7072

theorem canonicalSound31033 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31033.moment H = canonicalOutput31033.moment H :=
  canonical_of_padded canonicalInput31033 canonicalOutput31033 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput31034 : ExponentCode := ⟨3, 5, ![![0, 0, 0, 1, -1], ![-2, -2, 2, 1, 1], ![2, 2, -2, -2, 0]]⟩

def canonicalOutput31034 : ExponentCode := normalNode9526

theorem canonicalSound31034 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31034.moment H = canonicalOutput31034.moment H :=
  canonical_of_padded canonicalInput31034 canonicalOutput31034 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31035 : ExponentCode := ⟨4, 5, ![![0, 0, 0, 1, -1], ![-2, -1, 0, 1, 2], ![0, 2, -2, 0, 0], ![2, -1, 2, -2, -1]]⟩

def canonicalOutput31035 : ExponentCode := normalNode10224

theorem canonicalSound31035 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31035.moment H = canonicalOutput31035.moment H :=
  canonical_of_padded canonicalInput31035 canonicalOutput31035 (by decide) (by decide)
    ⟨true, true, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31036 : ExponentCode := ⟨4, 5, ![![0, 0, 0, 1, -1], ![-2, -1, 2, 1, 0], ![0, -1, -1, -1, 3], ![2, 2, -1, -1, -2]]⟩

def canonicalOutput31036 : ExponentCode := normalNode9354

theorem canonicalSound31036 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31036.moment H = canonicalOutput31036.moment H :=
  canonical_of_padded canonicalInput31036 canonicalOutput31036 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31037 : ExponentCode := ⟨4, 5, ![![0, 0, 0, 1, -1], ![-2, -1, 2, 1, 0], ![0, 2, -1, -1, 0], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput31037 : ExponentCode := normalNode10650

theorem canonicalSound31037 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31037.moment H = canonicalOutput31037.moment H :=
  canonical_of_padded canonicalInput31037 canonicalOutput31037 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31038 : ExponentCode := ⟨4, 5, ![![0, 0, 0, 1, -1], ![-2, -1, 2, 1, 0], ![1, -1, -1, -1, 2], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput31038 : ExponentCode := normalNode9002

theorem canonicalSound31038 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31038.moment H = canonicalOutput31038.moment H :=
  canonical_of_padded canonicalInput31038 canonicalOutput31038 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput31039 : ExponentCode := ⟨4, 5, ![![0, 0, 0, 1, -1], ![-2, -1, 2, 1, 0], ![1, 2, -1, -1, -1], ![1, -1, -1, -1, 2]]⟩

def canonicalOutput31039 : ExponentCode := normalNode9002

theorem canonicalSound31039 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31039.moment H = canonicalOutput31039.moment H :=
  canonical_of_padded canonicalInput31039 canonicalOutput31039 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

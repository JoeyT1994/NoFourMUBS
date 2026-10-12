import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput27200 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![0, 3, -3, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27200 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound27200 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27200.moment H = canonicalOutput27200.moment H :=
  canonical_of_padded canonicalInput27200 canonicalOutput27200 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput27201 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![-1, 3, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27201 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound27201 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27201.moment H = canonicalOutput27201.moment H :=
  canonical_of_padded canonicalInput27201 canonicalOutput27201 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput27202 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput27202 : ExponentCode := normalNode10818

theorem canonicalSound27202 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27202.moment H = canonicalOutput27202.moment H :=
  canonical_of_padded canonicalInput27202 canonicalOutput27202 (by decide) (by decide)
    ⟨false, true, canonicalPermutation25, canonicalPermutation5⟩ (by decide +kernel) hH

def canonicalInput27203 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput27203 : ExponentCode := normalNode10455

theorem canonicalSound27203 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27203.moment H = canonicalOutput27203.moment H :=
  canonical_of_padded canonicalInput27203 canonicalOutput27203 (by decide) (by decide)
    ⟨false, false, canonicalPermutation269, OAI.MUB6.Certificate.PairSemantics.permutation405⟩ (by decide +kernel) hH

def canonicalInput27204 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput27204 : ExponentCode := normalNode10375

theorem canonicalSound27204 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27204.moment H = canonicalOutput27204.moment H :=
  canonical_of_padded canonicalInput27204 canonicalOutput27204 (by decide) (by decide)
    ⟨false, false, canonicalPermutation318, OAI.MUB6.Certificate.PairSemantics.permutation403⟩ (by decide +kernel) hH

def canonicalInput27205 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput27205 : ExponentCode := normalNode8064

theorem canonicalSound27205 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27205.moment H = canonicalOutput27205.moment H :=
  canonical_of_padded canonicalInput27205 canonicalOutput27205 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation231, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput27206 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput27206 : ExponentCode := normalNode8066

theorem canonicalSound27206 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27206.moment H = canonicalOutput27206.moment H :=
  canonical_of_padded canonicalInput27206 canonicalOutput27206 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation231, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput27207 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput27207 : ExponentCode := normalNode8066

theorem canonicalSound27207 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27207.moment H = canonicalOutput27207.moment H :=
  canonical_of_padded canonicalInput27207 canonicalOutput27207 (by decide) (by decide)
    ⟨false, false, canonicalPermutation101, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput27208 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput27208 : ExponentCode := normalNode8064

theorem canonicalSound27208 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27208.moment H = canonicalOutput27208.moment H :=
  canonical_of_padded canonicalInput27208 canonicalOutput27208 (by decide) (by decide)
    ⟨false, false, canonicalPermutation101, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput27209 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput27209 : ExponentCode := normalNode8066

theorem canonicalSound27209 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27209.moment H = canonicalOutput27209.moment H :=
  canonical_of_padded canonicalInput27209 canonicalOutput27209 (by decide) (by decide)
    ⟨false, false, canonicalPermutation95, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput27210 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput27210 : ExponentCode := normalNode8361

theorem canonicalSound27210 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27210.moment H = canonicalOutput27210.moment H :=
  canonical_of_padded canonicalInput27210 canonicalOutput27210 (by decide) (by decide)
    ⟨false, false, canonicalPermutation206, OAI.MUB6.Certificate.PairSemantics.permutation267⟩ (by decide +kernel) hH

def canonicalInput27211 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput27211 : ExponentCode := normalNode8067

theorem canonicalSound27211 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27211.moment H = canonicalOutput27211.moment H :=
  canonical_of_padded canonicalInput27211 canonicalOutput27211 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation231, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput27212 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput27212 : ExponentCode := normalNode8067

theorem canonicalSound27212 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27212.moment H = canonicalOutput27212.moment H :=
  canonical_of_padded canonicalInput27212 canonicalOutput27212 (by decide) (by decide)
    ⟨false, false, canonicalPermutation101, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput27213 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27213 : ExponentCode := normalNode8361

theorem canonicalSound27213 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27213.moment H = canonicalOutput27213.moment H :=
  canonical_of_padded canonicalInput27213 canonicalOutput27213 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation267⟩ (by decide +kernel) hH

def canonicalInput27214 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput27214 : ExponentCode := normalNode8066

theorem canonicalSound27214 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27214.moment H = canonicalOutput27214.moment H :=
  canonical_of_padded canonicalInput27214 canonicalOutput27214 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation234, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput27215 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput27215 : ExponentCode := normalNode8066

theorem canonicalSound27215 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27215.moment H = canonicalOutput27215.moment H :=
  canonical_of_padded canonicalInput27215 canonicalOutput27215 (by decide) (by decide)
    ⟨false, false, canonicalPermutation96, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput27216 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput27216 : ExponentCode := normalNode8067

theorem canonicalSound27216 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27216.moment H = canonicalOutput27216.moment H :=
  canonical_of_padded canonicalInput27216 canonicalOutput27216 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation231, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput27217 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput27217 : ExponentCode := normalNode8361

theorem canonicalSound27217 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27217.moment H = canonicalOutput27217.moment H :=
  canonical_of_padded canonicalInput27217 canonicalOutput27217 (by decide) (by decide)
    ⟨false, false, canonicalPermutation206, OAI.MUB6.Certificate.PairSemantics.permutation317⟩ (by decide +kernel) hH

def canonicalInput27218 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27218 : ExponentCode := normalNode8361

theorem canonicalSound27218 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27218.moment H = canonicalOutput27218.moment H :=
  canonical_of_padded canonicalInput27218 canonicalOutput27218 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation317⟩ (by decide +kernel) hH

def canonicalInput27219 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput27219 : ExponentCode := normalNode8067

theorem canonicalSound27219 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27219.moment H = canonicalOutput27219.moment H :=
  canonical_of_padded canonicalInput27219 canonicalOutput27219 (by decide) (by decide)
    ⟨false, false, canonicalPermutation101, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput27220 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput27220 : ExponentCode := normalNode8066

theorem canonicalSound27220 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27220.moment H = canonicalOutput27220.moment H :=
  canonical_of_padded canonicalInput27220 canonicalOutput27220 (by decide) (by decide)
    ⟨false, false, canonicalPermutation62, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput27221 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput27221 : ExponentCode := normalNode8064

theorem canonicalSound27221 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27221.moment H = canonicalOutput27221.moment H :=
  canonical_of_padded canonicalInput27221 canonicalOutput27221 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation234, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput27222 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput27222 : ExponentCode := normalNode8066

theorem canonicalSound27222 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27222.moment H = canonicalOutput27222.moment H :=
  canonical_of_padded canonicalInput27222 canonicalOutput27222 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation231, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput27223 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput27223 : ExponentCode := normalNode8066

theorem canonicalSound27223 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27223.moment H = canonicalOutput27223.moment H :=
  canonical_of_padded canonicalInput27223 canonicalOutput27223 (by decide) (by decide)
    ⟨false, false, canonicalPermutation101, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput27224 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput27224 : ExponentCode := normalNode8064

theorem canonicalSound27224 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27224.moment H = canonicalOutput27224.moment H :=
  canonical_of_padded canonicalInput27224 canonicalOutput27224 (by decide) (by decide)
    ⟨false, false, canonicalPermutation95, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput27225 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput27225 : ExponentCode := normalNode8067

theorem canonicalSound27225 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27225.moment H = canonicalOutput27225.moment H :=
  canonical_of_padded canonicalInput27225 canonicalOutput27225 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation234, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput27226 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput27226 : ExponentCode := normalNode8066

theorem canonicalSound27226 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27226.moment H = canonicalOutput27226.moment H :=
  canonical_of_padded canonicalInput27226 canonicalOutput27226 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation234, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput27227 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput27227 : ExponentCode := normalNode8361

theorem canonicalSound27227 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27227.moment H = canonicalOutput27227.moment H :=
  canonical_of_padded canonicalInput27227 canonicalOutput27227 (by decide) (by decide)
    ⟨false, false, canonicalPermutation206, canonicalPermutation282⟩ (by decide +kernel) hH

def canonicalInput27228 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27228 : ExponentCode := normalNode8361

theorem canonicalSound27228 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27228.moment H = canonicalOutput27228.moment H :=
  canonical_of_padded canonicalInput27228 canonicalOutput27228 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation366, canonicalPermutation282⟩ (by decide +kernel) hH

def canonicalInput27229 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput27229 : ExponentCode := normalNode8066

theorem canonicalSound27229 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27229.moment H = canonicalOutput27229.moment H :=
  canonical_of_padded canonicalInput27229 canonicalOutput27229 (by decide) (by decide)
    ⟨false, false, canonicalPermutation95, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput27230 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput27230 : ExponentCode := normalNode8067

theorem canonicalSound27230 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27230.moment H = canonicalOutput27230.moment H :=
  canonical_of_padded canonicalInput27230 canonicalOutput27230 (by decide) (by decide)
    ⟨false, false, canonicalPermutation95, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput27231 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput27231 : ExponentCode := normalNode8361

theorem canonicalSound27231 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27231.moment H = canonicalOutput27231.moment H :=
  canonical_of_padded canonicalInput27231 canonicalOutput27231 (by decide) (by decide)
    ⟨false, false, canonicalPermutation218, OAI.MUB6.Certificate.PairSemantics.permutation267⟩ (by decide +kernel) hH

def canonicalInput27232 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput27232 : ExponentCode := normalNode8361

theorem canonicalSound27232 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27232.moment H = canonicalOutput27232.moment H :=
  canonical_of_padded canonicalInput27232 canonicalOutput27232 (by decide) (by decide)
    ⟨false, false, canonicalPermutation218, OAI.MUB6.Certificate.PairSemantics.permutation317⟩ (by decide +kernel) hH

def canonicalInput27233 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput27233 : ExponentCode := normalNode8361

theorem canonicalSound27233 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27233.moment H = canonicalOutput27233.moment H :=
  canonical_of_padded canonicalInput27233 canonicalOutput27233 (by decide) (by decide)
    ⟨false, false, canonicalPermutation218, canonicalPermutation282⟩ (by decide +kernel) hH

def canonicalInput27234 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27234 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound27234 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27234.moment H = canonicalOutput27234.moment H :=
  canonical_of_padded canonicalInput27234 canonicalOutput27234 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput27235 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput27235 : ExponentCode := normalNode8361

theorem canonicalSound27235 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27235.moment H = canonicalOutput27235.moment H :=
  canonical_of_padded canonicalInput27235 canonicalOutput27235 (by decide) (by decide)
    ⟨false, false, canonicalPermutation219, canonicalPermutation282⟩ (by decide +kernel) hH

def canonicalInput27236 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput27236 : ExponentCode := normalNode8361

theorem canonicalSound27236 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27236.moment H = canonicalOutput27236.moment H :=
  canonical_of_padded canonicalInput27236 canonicalOutput27236 (by decide) (by decide)
    ⟨false, false, canonicalPermutation219, OAI.MUB6.Certificate.PairSemantics.permutation317⟩ (by decide +kernel) hH

def canonicalInput27237 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput27237 : ExponentCode := normalNode8361

theorem canonicalSound27237 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27237.moment H = canonicalOutput27237.moment H :=
  canonical_of_padded canonicalInput27237 canonicalOutput27237 (by decide) (by decide)
    ⟨false, false, canonicalPermutation219, OAI.MUB6.Certificate.PairSemantics.permutation267⟩ (by decide +kernel) hH

def canonicalInput27238 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput27238 : ExponentCode := normalNode8066

theorem canonicalSound27238 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27238.moment H = canonicalOutput27238.moment H :=
  canonical_of_padded canonicalInput27238 canonicalOutput27238 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation234, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput27239 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput27239 : ExponentCode := normalNode8067

theorem canonicalSound27239 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27239.moment H = canonicalOutput27239.moment H :=
  canonical_of_padded canonicalInput27239 canonicalOutput27239 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation234, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput27240 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27240 : ExponentCode := normalNode8361

theorem canonicalSound27240 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27240.moment H = canonicalOutput27240.moment H :=
  canonical_of_padded canonicalInput27240 canonicalOutput27240 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation371, canonicalPermutation282⟩ (by decide +kernel) hH

def canonicalInput27241 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput27241 : ExponentCode := normalNode8361

theorem canonicalSound27241 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27241.moment H = canonicalOutput27241.moment H :=
  canonical_of_padded canonicalInput27241 canonicalOutput27241 (by decide) (by decide)
    ⟨false, false, canonicalPermutation220, canonicalPermutation282⟩ (by decide +kernel) hH

def canonicalInput27242 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput27242 : ExponentCode := normalNode8067

theorem canonicalSound27242 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27242.moment H = canonicalOutput27242.moment H :=
  canonical_of_padded canonicalInput27242 canonicalOutput27242 (by decide) (by decide)
    ⟨false, false, canonicalPermutation95, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput27243 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput27243 : ExponentCode := normalNode8066

theorem canonicalSound27243 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27243.moment H = canonicalOutput27243.moment H :=
  canonical_of_padded canonicalInput27243 canonicalOutput27243 (by decide) (by decide)
    ⟨false, false, canonicalPermutation95, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput27244 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput27244 : ExponentCode := normalNode8067

theorem canonicalSound27244 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27244.moment H = canonicalOutput27244.moment H :=
  canonical_of_padded canonicalInput27244 canonicalOutput27244 (by decide) (by decide)
    ⟨false, false, canonicalPermutation62, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput27245 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27245 : ExponentCode := normalNode8361

theorem canonicalSound27245 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27245.moment H = canonicalOutput27245.moment H :=
  canonical_of_padded canonicalInput27245 canonicalOutput27245 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation371, OAI.MUB6.Certificate.PairSemantics.permutation317⟩ (by decide +kernel) hH

def canonicalInput27246 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput27246 : ExponentCode := normalNode8066

theorem canonicalSound27246 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27246.moment H = canonicalOutput27246.moment H :=
  canonical_of_padded canonicalInput27246 canonicalOutput27246 (by decide) (by decide)
    ⟨false, false, canonicalPermutation62, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput27247 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput27247 : ExponentCode := normalNode8066

theorem canonicalSound27247 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27247.moment H = canonicalOutput27247.moment H :=
  canonical_of_padded canonicalInput27247 canonicalOutput27247 (by decide) (by decide)
    ⟨false, false, canonicalPermutation96, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput27248 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput27248 : ExponentCode := normalNode8361

theorem canonicalSound27248 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27248.moment H = canonicalOutput27248.moment H :=
  canonical_of_padded canonicalInput27248 canonicalOutput27248 (by decide) (by decide)
    ⟨false, false, canonicalPermutation220, OAI.MUB6.Certificate.PairSemantics.permutation317⟩ (by decide +kernel) hH

def canonicalInput27249 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput27249 : ExponentCode := normalNode8067

theorem canonicalSound27249 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27249.moment H = canonicalOutput27249.moment H :=
  canonical_of_padded canonicalInput27249 canonicalOutput27249 (by decide) (by decide)
    ⟨false, false, canonicalPermutation96, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput27250 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput27250 : ExponentCode := normalNode8066

theorem canonicalSound27250 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27250.moment H = canonicalOutput27250.moment H :=
  canonical_of_padded canonicalInput27250 canonicalOutput27250 (by decide) (by decide)
    ⟨false, false, canonicalPermutation62, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput27251 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27251 : ExponentCode := normalNode8361

theorem canonicalSound27251 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27251.moment H = canonicalOutput27251.moment H :=
  canonical_of_padded canonicalInput27251 canonicalOutput27251 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation371, OAI.MUB6.Certificate.PairSemantics.permutation267⟩ (by decide +kernel) hH

def canonicalInput27252 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput27252 : ExponentCode := normalNode8067

theorem canonicalSound27252 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27252.moment H = canonicalOutput27252.moment H :=
  canonical_of_padded canonicalInput27252 canonicalOutput27252 (by decide) (by decide)
    ⟨false, false, canonicalPermutation62, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput27253 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput27253 : ExponentCode := normalNode8067

theorem canonicalSound27253 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27253.moment H = canonicalOutput27253.moment H :=
  canonical_of_padded canonicalInput27253 canonicalOutput27253 (by decide) (by decide)
    ⟨false, false, canonicalPermutation96, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput27254 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput27254 : ExponentCode := normalNode8361

theorem canonicalSound27254 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27254.moment H = canonicalOutput27254.moment H :=
  canonical_of_padded canonicalInput27254 canonicalOutput27254 (by decide) (by decide)
    ⟨false, false, canonicalPermutation220, OAI.MUB6.Certificate.PairSemantics.permutation267⟩ (by decide +kernel) hH

def canonicalInput27255 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput27255 : ExponentCode := normalNode8066

theorem canonicalSound27255 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27255.moment H = canonicalOutput27255.moment H :=
  canonical_of_padded canonicalInput27255 canonicalOutput27255 (by decide) (by decide)
    ⟨false, false, canonicalPermutation96, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput27256 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput27256 : ExponentCode := normalNode8064

theorem canonicalSound27256 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27256.moment H = canonicalOutput27256.moment H :=
  canonical_of_padded canonicalInput27256 canonicalOutput27256 (by decide) (by decide)
    ⟨false, false, canonicalPermutation62, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput27257 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput27257 : ExponentCode := normalNode8066

theorem canonicalSound27257 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27257.moment H = canonicalOutput27257.moment H :=
  canonical_of_padded canonicalInput27257 canonicalOutput27257 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation231, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput27258 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput27258 : ExponentCode := normalNode8066

theorem canonicalSound27258 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27258.moment H = canonicalOutput27258.moment H :=
  canonical_of_padded canonicalInput27258 canonicalOutput27258 (by decide) (by decide)
    ⟨false, false, canonicalPermutation101, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput27259 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput27259 : ExponentCode := normalNode8064

theorem canonicalSound27259 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27259.moment H = canonicalOutput27259.moment H :=
  canonical_of_padded canonicalInput27259 canonicalOutput27259 (by decide) (by decide)
    ⟨false, false, canonicalPermutation96, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput27260 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput27260 : ExponentCode := normalNode8068

theorem canonicalSound27260 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27260.moment H = canonicalOutput27260.moment H :=
  canonical_of_padded canonicalInput27260 canonicalOutput27260 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation234, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput27261 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput27261 : ExponentCode := normalNode8458

theorem canonicalSound27261 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27261.moment H = canonicalOutput27261.moment H :=
  canonical_of_padded canonicalInput27261 canonicalOutput27261 (by decide) (by decide)
    ⟨false, false, canonicalPermutation101, OAI.MUB6.Certificate.PairSemantics.permutation174⟩ (by decide +kernel) hH

def canonicalInput27262 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput27262 : ExponentCode := normalNode10045

theorem canonicalSound27262 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27262.moment H = canonicalOutput27262.moment H :=
  canonical_of_padded canonicalInput27262 canonicalOutput27262 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation388⟩ (by decide +kernel) hH

def canonicalInput27263 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput27263 : ExponentCode := normalNode10685

theorem canonicalSound27263 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27263.moment H = canonicalOutput27263.moment H :=
  canonical_of_padded canonicalInput27263 canonicalOutput27263 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation232, OAI.MUB6.Certificate.PairSemantics.permutation300⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput33152 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33152 : ExponentCode := normalNode8361

theorem canonicalSound33152 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33152.moment H = canonicalOutput33152.moment H :=
  canonical_of_padded canonicalInput33152 canonicalOutput33152 (by decide) (by decide)
    ⟨false, false, canonicalPermutation133, OAI.MUB6.Certificate.PairSemantics.permutation267⟩ (by decide +kernel) hH

def canonicalInput33153 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33153 : ExponentCode := normalNode8361

theorem canonicalSound33153 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33153.moment H = canonicalOutput33153.moment H :=
  canonical_of_padded canonicalInput33153 canonicalOutput33153 (by decide) (by decide)
    ⟨false, false, canonicalPermutation133, OAI.MUB6.Certificate.PairSemantics.permutation317⟩ (by decide +kernel) hH

def canonicalInput33154 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33154 : ExponentCode := normalNode8361

theorem canonicalSound33154 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33154.moment H = canonicalOutput33154.moment H :=
  canonical_of_padded canonicalInput33154 canonicalOutput33154 (by decide) (by decide)
    ⟨false, false, canonicalPermutation133, canonicalPermutation282⟩ (by decide +kernel) hH

def canonicalInput33155 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33155 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound33155 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33155.moment H = canonicalOutput33155.moment H :=
  canonical_of_padded canonicalInput33155 canonicalOutput33155 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput33156 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33156 : ExponentCode := normalNode8361

theorem canonicalSound33156 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33156.moment H = canonicalOutput33156.moment H :=
  canonical_of_padded canonicalInput33156 canonicalOutput33156 (by decide) (by decide)
    ⟨false, false, canonicalPermutation132, canonicalPermutation282⟩ (by decide +kernel) hH

def canonicalInput33157 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33157 : ExponentCode := normalNode8361

theorem canonicalSound33157 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33157.moment H = canonicalOutput33157.moment H :=
  canonical_of_padded canonicalInput33157 canonicalOutput33157 (by decide) (by decide)
    ⟨false, false, canonicalPermutation132, OAI.MUB6.Certificate.PairSemantics.permutation317⟩ (by decide +kernel) hH

def canonicalInput33158 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33158 : ExponentCode := normalNode8361

theorem canonicalSound33158 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33158.moment H = canonicalOutput33158.moment H :=
  canonical_of_padded canonicalInput33158 canonicalOutput33158 (by decide) (by decide)
    ⟨false, false, canonicalPermutation132, OAI.MUB6.Certificate.PairSemantics.permutation267⟩ (by decide +kernel) hH

def canonicalInput33159 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33159 : ExponentCode := normalNode8066

theorem canonicalSound33159 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33159.moment H = canonicalOutput33159.moment H :=
  canonical_of_padded canonicalInput33159 canonicalOutput33159 (by decide) (by decide)
    ⟨false, false, canonicalPermutation143, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput33160 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33160 : ExponentCode := normalNode8067

theorem canonicalSound33160 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33160.moment H = canonicalOutput33160.moment H :=
  canonical_of_padded canonicalInput33160 canonicalOutput33160 (by decide) (by decide)
    ⟨false, false, canonicalPermutation143, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput33161 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33161 : ExponentCode := normalNode8361

theorem canonicalSound33161 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33161.moment H = canonicalOutput33161.moment H :=
  canonical_of_padded canonicalInput33161 canonicalOutput33161 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation372, canonicalPermutation282⟩ (by decide +kernel) hH

def canonicalInput33162 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33162 : ExponentCode := normalNode8361

theorem canonicalSound33162 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33162.moment H = canonicalOutput33162.moment H :=
  canonical_of_padded canonicalInput33162 canonicalOutput33162 (by decide) (by decide)
    ⟨false, false, canonicalPermutation181, canonicalPermutation282⟩ (by decide +kernel) hH

def canonicalInput33163 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33163 : ExponentCode := normalNode8067

theorem canonicalSound33163 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33163.moment H = canonicalOutput33163.moment H :=
  canonical_of_padded canonicalInput33163 canonicalOutput33163 (by decide) (by decide)
    ⟨false, false, canonicalPermutation141, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput33164 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33164 : ExponentCode := normalNode8066

theorem canonicalSound33164 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33164.moment H = canonicalOutput33164.moment H :=
  canonical_of_padded canonicalInput33164 canonicalOutput33164 (by decide) (by decide)
    ⟨false, false, canonicalPermutation141, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput33165 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33165 : ExponentCode := normalNode8067

theorem canonicalSound33165 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33165.moment H = canonicalOutput33165.moment H :=
  canonical_of_padded canonicalInput33165 canonicalOutput33165 (by decide) (by decide)
    ⟨false, false, canonicalPermutation108, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput33166 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33166 : ExponentCode := normalNode8361

theorem canonicalSound33166 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33166.moment H = canonicalOutput33166.moment H :=
  canonical_of_padded canonicalInput33166 canonicalOutput33166 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation372, OAI.MUB6.Certificate.PairSemantics.permutation317⟩ (by decide +kernel) hH

def canonicalInput33167 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33167 : ExponentCode := normalNode8066

theorem canonicalSound33167 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33167.moment H = canonicalOutput33167.moment H :=
  canonical_of_padded canonicalInput33167 canonicalOutput33167 (by decide) (by decide)
    ⟨false, false, canonicalPermutation108, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput33168 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33168 : ExponentCode := normalNode8066

theorem canonicalSound33168 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33168.moment H = canonicalOutput33168.moment H :=
  canonical_of_padded canonicalInput33168 canonicalOutput33168 (by decide) (by decide)
    ⟨false, false, canonicalPermutation138, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput33169 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33169 : ExponentCode := normalNode8361

theorem canonicalSound33169 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33169.moment H = canonicalOutput33169.moment H :=
  canonical_of_padded canonicalInput33169 canonicalOutput33169 (by decide) (by decide)
    ⟨false, false, canonicalPermutation181, OAI.MUB6.Certificate.PairSemantics.permutation317⟩ (by decide +kernel) hH

def canonicalInput33170 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33170 : ExponentCode := normalNode8067

theorem canonicalSound33170 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33170.moment H = canonicalOutput33170.moment H :=
  canonical_of_padded canonicalInput33170 canonicalOutput33170 (by decide) (by decide)
    ⟨false, false, canonicalPermutation138, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput33171 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33171 : ExponentCode := normalNode8066

theorem canonicalSound33171 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33171.moment H = canonicalOutput33171.moment H :=
  canonical_of_padded canonicalInput33171 canonicalOutput33171 (by decide) (by decide)
    ⟨false, false, canonicalPermutation108, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput33172 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33172 : ExponentCode := normalNode8361

theorem canonicalSound33172 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33172.moment H = canonicalOutput33172.moment H :=
  canonical_of_padded canonicalInput33172 canonicalOutput33172 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation372, OAI.MUB6.Certificate.PairSemantics.permutation267⟩ (by decide +kernel) hH

def canonicalInput33173 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33173 : ExponentCode := normalNode8067

theorem canonicalSound33173 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33173.moment H = canonicalOutput33173.moment H :=
  canonical_of_padded canonicalInput33173 canonicalOutput33173 (by decide) (by decide)
    ⟨false, false, canonicalPermutation108, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput33174 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33174 : ExponentCode := normalNode8067

theorem canonicalSound33174 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33174.moment H = canonicalOutput33174.moment H :=
  canonical_of_padded canonicalInput33174 canonicalOutput33174 (by decide) (by decide)
    ⟨false, false, canonicalPermutation138, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput33175 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33175 : ExponentCode := normalNode8361

theorem canonicalSound33175 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33175.moment H = canonicalOutput33175.moment H :=
  canonical_of_padded canonicalInput33175 canonicalOutput33175 (by decide) (by decide)
    ⟨false, false, canonicalPermutation181, OAI.MUB6.Certificate.PairSemantics.permutation267⟩ (by decide +kernel) hH

def canonicalInput33176 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33176 : ExponentCode := normalNode8066

theorem canonicalSound33176 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33176.moment H = canonicalOutput33176.moment H :=
  canonical_of_padded canonicalInput33176 canonicalOutput33176 (by decide) (by decide)
    ⟨false, false, canonicalPermutation138, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput33177 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33177 : ExponentCode := normalNode8064

theorem canonicalSound33177 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33177.moment H = canonicalOutput33177.moment H :=
  canonical_of_padded canonicalInput33177 canonicalOutput33177 (by decide) (by decide)
    ⟨false, false, canonicalPermutation108, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput33178 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33178 : ExponentCode := normalNode8066

theorem canonicalSound33178 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33178.moment H = canonicalOutput33178.moment H :=
  canonical_of_padded canonicalInput33178 canonicalOutput33178 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation232, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput33179 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33179 : ExponentCode := normalNode8066

theorem canonicalSound33179 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33179.moment H = canonicalOutput33179.moment H :=
  canonical_of_padded canonicalInput33179 canonicalOutput33179 (by decide) (by decide)
    ⟨false, false, canonicalPermutation147, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput33180 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33180 : ExponentCode := normalNode8064

theorem canonicalSound33180 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33180.moment H = canonicalOutput33180.moment H :=
  canonical_of_padded canonicalInput33180 canonicalOutput33180 (by decide) (by decide)
    ⟨false, false, canonicalPermutation138, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput33181 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput33181 : ExponentCode := normalNode8068

theorem canonicalSound33181 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33181.moment H = canonicalOutput33181.moment H :=
  canonical_of_padded canonicalInput33181 canonicalOutput33181 (by decide) (by decide)
    ⟨false, false, canonicalPermutation143, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput33182 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput33182 : ExponentCode := normalNode8458

theorem canonicalSound33182 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33182.moment H = canonicalOutput33182.moment H :=
  canonical_of_padded canonicalInput33182 canonicalOutput33182 (by decide) (by decide)
    ⟨false, false, canonicalPermutation147, OAI.MUB6.Certificate.PairSemantics.permutation174⟩ (by decide +kernel) hH

def canonicalInput33183 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput33183 : ExponentCode := normalNode10045

theorem canonicalSound33183 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33183.moment H = canonicalOutput33183.moment H :=
  canonical_of_padded canonicalInput33183 canonicalOutput33183 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation333, OAI.MUB6.Certificate.PairSemantics.permutation388⟩ (by decide +kernel) hH

def canonicalInput33184 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput33184 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1291⟩

theorem canonicalSound33184 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33184.moment H = canonicalOutput33184.moment H :=
  canonical_of_padded canonicalInput33184 canonicalOutput33184 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61, canonicalPermutation272⟩ (by decide +kernel) hH

def canonicalInput33185 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput33185 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2758⟩

theorem canonicalSound33185 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33185.moment H = canonicalOutput33185.moment H :=
  canonical_of_padded canonicalInput33185 canonicalOutput33185 (by decide) (by decide)
    ⟨false, false, canonicalPermutation234, OAI.MUB6.Certificate.PairSemantics.permutation238⟩ (by decide +kernel) hH

def canonicalInput33186 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput33186 : ExponentCode := normalNode9917

theorem canonicalSound33186 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33186.moment H = canonicalOutput33186.moment H :=
  canonical_of_padded canonicalInput33186 canonicalOutput33186 (by decide) (by decide)
    ⟨false, false, canonicalPermutation238, canonicalPermutation273⟩ (by decide +kernel) hH

def canonicalInput33187 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33187 : ExponentCode := normalNode11165

theorem canonicalSound33187 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33187.moment H = canonicalOutput33187.moment H :=
  canonical_of_padded canonicalInput33187 canonicalOutput33187 (by decide) (by decide)
    ⟨false, true, canonicalPermutation185, OAI.MUB6.Certificate.PairSemantics.permutation221⟩ (by decide +kernel) hH

def canonicalInput33188 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33188 : ExponentCode := normalNode8361

theorem canonicalSound33188 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33188.moment H = canonicalOutput33188.moment H :=
  canonical_of_padded canonicalInput33188 canonicalOutput33188 (by decide) (by decide)
    ⟨false, false, canonicalPermutation286, OAI.MUB6.Certificate.PairSemantics.permutation229⟩ (by decide +kernel) hH

def canonicalInput33189 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33189 : ExponentCode := normalNode8361

theorem canonicalSound33189 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33189.moment H = canonicalOutput33189.moment H :=
  canonical_of_padded canonicalInput33189 canonicalOutput33189 (by decide) (by decide)
    ⟨false, false, canonicalPermutation351, OAI.MUB6.Certificate.PairSemantics.permutation229⟩ (by decide +kernel) hH

def canonicalInput33190 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33190 : ExponentCode := normalNode11165

theorem canonicalSound33190 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33190.moment H = canonicalOutput33190.moment H :=
  canonical_of_padded canonicalInput33190 canonicalOutput33190 (by decide) (by decide)
    ⟨false, true, canonicalPermutation188, OAI.MUB6.Certificate.PairSemantics.permutation221⟩ (by decide +kernel) hH

def canonicalInput33191 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33191 : ExponentCode := normalNode8361

theorem canonicalSound33191 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33191.moment H = canonicalOutput33191.moment H :=
  canonical_of_padded canonicalInput33191 canonicalOutput33191 (by decide) (by decide)
    ⟨false, false, canonicalPermutation325, canonicalPermutation180⟩ (by decide +kernel) hH

def canonicalInput33192 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33192 : ExponentCode := normalNode10645

theorem canonicalSound33192 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33192.moment H = canonicalOutput33192.moment H :=
  canonical_of_padded canonicalInput33192 canonicalOutput33192 (by decide) (by decide)
    ⟨false, false, canonicalPermutation349, canonicalPermutation249⟩ (by decide +kernel) hH

def canonicalInput33193 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33193 : ExponentCode := normalNode10453

theorem canonicalSound33193 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33193.moment H = canonicalOutput33193.moment H :=
  canonical_of_padded canonicalInput33193 canonicalOutput33193 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation226⟩ (by decide +kernel) hH

def canonicalInput33194 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33194 : ExponentCode := normalNode10453

theorem canonicalSound33194 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33194.moment H = canonicalOutput33194.moment H :=
  canonical_of_padded canonicalInput33194 canonicalOutput33194 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation208, OAI.MUB6.Certificate.PairSemantics.permutation226⟩ (by decide +kernel) hH

def canonicalInput33195 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33195 : ExponentCode := normalNode10645

theorem canonicalSound33195 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33195.moment H = canonicalOutput33195.moment H :=
  canonical_of_padded canonicalInput33195 canonicalOutput33195 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation219, canonicalPermutation249⟩ (by decide +kernel) hH

def canonicalInput33196 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33196 : ExponentCode := normalNode8361

theorem canonicalSound33196 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33196.moment H = canonicalOutput33196.moment H :=
  canonical_of_padded canonicalInput33196 canonicalOutput33196 (by decide) (by decide)
    ⟨false, false, canonicalPermutation348, canonicalPermutation180⟩ (by decide +kernel) hH

def canonicalInput33197 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33197 : ExponentCode := normalNode8361

theorem canonicalSound33197 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33197.moment H = canonicalOutput33197.moment H :=
  canonical_of_padded canonicalInput33197 canonicalOutput33197 (by decide) (by decide)
    ⟨false, false, canonicalPermutation347, canonicalPermutation180⟩ (by decide +kernel) hH

def canonicalInput33198 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33198 : ExponentCode := normalNode10453

theorem canonicalSound33198 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33198.moment H = canonicalOutput33198.moment H :=
  canonical_of_padded canonicalInput33198 canonicalOutput33198 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61, canonicalPermutation250⟩ (by decide +kernel) hH

def canonicalInput33199 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33199 : ExponentCode := normalNode10645

theorem canonicalSound33199 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33199.moment H = canonicalOutput33199.moment H :=
  canonical_of_padded canonicalInput33199 canonicalOutput33199 (by decide) (by decide)
    ⟨false, false, canonicalPermutation349, canonicalPermutation251⟩ (by decide +kernel) hH

def canonicalInput33200 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33200 : ExponentCode := normalNode10645

theorem canonicalSound33200 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33200.moment H = canonicalOutput33200.moment H :=
  canonical_of_padded canonicalInput33200 canonicalOutput33200 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation219, canonicalPermutation251⟩ (by decide +kernel) hH

def canonicalInput33201 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33201 : ExponentCode := normalNode10453

theorem canonicalSound33201 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33201.moment H = canonicalOutput33201.moment H :=
  canonical_of_padded canonicalInput33201 canonicalOutput33201 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation208, canonicalPermutation250⟩ (by decide +kernel) hH

def canonicalInput33202 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33202 : ExponentCode := normalNode8361

theorem canonicalSound33202 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33202.moment H = canonicalOutput33202.moment H :=
  canonical_of_padded canonicalInput33202 canonicalOutput33202 (by decide) (by decide)
    ⟨false, false, canonicalPermutation357, canonicalPermutation180⟩ (by decide +kernel) hH

def canonicalInput33203 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33203 : ExponentCode := normalNode11165

theorem canonicalSound33203 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33203.moment H = canonicalOutput33203.moment H :=
  canonical_of_padded canonicalInput33203 canonicalOutput33203 (by decide) (by decide)
    ⟨false, true, canonicalPermutation236, OAI.MUB6.Certificate.PairSemantics.permutation221⟩ (by decide +kernel) hH

def canonicalInput33204 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33204 : ExponentCode := normalNode8361

theorem canonicalSound33204 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33204.moment H = canonicalOutput33204.moment H :=
  canonical_of_padded canonicalInput33204 canonicalOutput33204 (by decide) (by decide)
    ⟨false, false, canonicalPermutation286, canonicalPermutation274⟩ (by decide +kernel) hH

def canonicalInput33205 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33205 : ExponentCode := normalNode8361

theorem canonicalSound33205 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33205.moment H = canonicalOutput33205.moment H :=
  canonical_of_padded canonicalInput33205 canonicalOutput33205 (by decide) (by decide)
    ⟨false, false, canonicalPermutation351, canonicalPermutation274⟩ (by decide +kernel) hH

def canonicalInput33206 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33206 : ExponentCode := normalNode11165

theorem canonicalSound33206 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33206.moment H = canonicalOutput33206.moment H :=
  canonical_of_padded canonicalInput33206 canonicalOutput33206 (by decide) (by decide)
    ⟨false, true, canonicalPermutation234, OAI.MUB6.Certificate.PairSemantics.permutation221⟩ (by decide +kernel) hH

def canonicalInput33207 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33207 : ExponentCode := normalNode10453

theorem canonicalSound33207 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33207.moment H = canonicalOutput33207.moment H :=
  canonical_of_padded canonicalInput33207 canonicalOutput33207 (by decide) (by decide)
    ⟨false, false, canonicalPermutation221, canonicalPermutation250⟩ (by decide +kernel) hH

def canonicalInput33208 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33208 : ExponentCode := normalNode8361

theorem canonicalSound33208 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33208.moment H = canonicalOutput33208.moment H :=
  canonical_of_padded canonicalInput33208 canonicalOutput33208 (by decide) (by decide)
    ⟨false, false, canonicalPermutation348, canonicalPermutation274⟩ (by decide +kernel) hH

def canonicalInput33209 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33209 : ExponentCode := normalNode10645

theorem canonicalSound33209 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33209.moment H = canonicalOutput33209.moment H :=
  canonical_of_padded canonicalInput33209 canonicalOutput33209 (by decide) (by decide)
    ⟨false, false, canonicalPermutation349, canonicalPermutation256⟩ (by decide +kernel) hH

def canonicalInput33210 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33210 : ExponentCode := normalNode10645

theorem canonicalSound33210 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33210.moment H = canonicalOutput33210.moment H :=
  canonical_of_padded canonicalInput33210 canonicalOutput33210 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation219, canonicalPermutation256⟩ (by decide +kernel) hH

def canonicalInput33211 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33211 : ExponentCode := normalNode8361

theorem canonicalSound33211 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33211.moment H = canonicalOutput33211.moment H :=
  canonical_of_padded canonicalInput33211 canonicalOutput33211 (by decide) (by decide)
    ⟨false, false, canonicalPermutation325, canonicalPermutation274⟩ (by decide +kernel) hH

def canonicalInput33212 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33212 : ExponentCode := normalNode10453

theorem canonicalSound33212 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33212.moment H = canonicalOutput33212.moment H :=
  canonical_of_padded canonicalInput33212 canonicalOutput33212 (by decide) (by decide)
    ⟨false, false, canonicalPermutation232, canonicalPermutation250⟩ (by decide +kernel) hH

def canonicalInput33213 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33213 : ExponentCode := normalNode10645

theorem canonicalSound33213 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33213.moment H = canonicalOutput33213.moment H :=
  canonical_of_padded canonicalInput33213 canonicalOutput33213 (by decide) (by decide)
    ⟨false, false, canonicalPermutation148, canonicalPermutation249⟩ (by decide +kernel) hH

def canonicalInput33214 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33214 : ExponentCode := normalNode10645

theorem canonicalSound33214 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33214.moment H = canonicalOutput33214.moment H :=
  canonical_of_padded canonicalInput33214 canonicalOutput33214 (by decide) (by decide)
    ⟨false, false, canonicalPermutation148, canonicalPermutation251⟩ (by decide +kernel) hH

def canonicalInput33215 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33215 : ExponentCode := normalNode10645

theorem canonicalSound33215 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33215.moment H = canonicalOutput33215.moment H :=
  canonical_of_padded canonicalInput33215 canonicalOutput33215 (by decide) (by decide)
    ⟨false, false, canonicalPermutation148, canonicalPermutation256⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

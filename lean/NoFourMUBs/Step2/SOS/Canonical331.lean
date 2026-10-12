import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput21184 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 2, -1, 1], ![0, 1, -2, -1, 2], ![1, 1, 0, 1, -3]]⟩

def canonicalOutput21184 : ExponentCode := normalNode9390

theorem canonicalSound21184 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21184.moment H = canonicalOutput21184.moment H :=
  canonical_of_padded canonicalInput21184 canonicalOutput21184 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation189, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput21185 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 2, -1, 1], ![1, 0, -1, 2, -2], ![0, 2, -1, -2, 1]]⟩

def canonicalOutput21185 : ExponentCode := normalNode7044

theorem canonicalSound21185 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21185.moment H = canonicalOutput21185.moment H :=
  canonical_of_padded canonicalInput21185 canonicalOutput21185 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21186 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 2, -1, 1], ![1, 1, -2, -1, 1], ![0, 1, 0, 1, -2]]⟩

def canonicalOutput21186 : ExponentCode := normalNode9388

theorem canonicalSound21186 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21186.moment H = canonicalOutput21186.moment H :=
  canonical_of_padded canonicalInput21186 canonicalOutput21186 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation189, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput21187 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 2, 0, 0], ![-2, 1, -1, 1, 1], ![3, 1, -1, -2, -1]]⟩

def canonicalOutput21187 : ExponentCode := normalNode9847

theorem canonicalSound21187 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21187.moment H = canonicalOutput21187.moment H :=
  canonical_of_padded canonicalInput21187 canonicalOutput21187 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21188 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 2, 0, 0], ![-1, 1, 0, -2, 2], ![2, 1, -2, 1, -2]]⟩

def canonicalOutput21188 : ExponentCode := normalNode10224

theorem canonicalSound21188 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21188.moment H = canonicalOutput21188.moment H :=
  canonical_of_padded canonicalInput21188 canonicalOutput21188 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21189 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 2, 0, 0], ![0, 0, 0, -2, 2], ![1, 2, -2, 1, -2]]⟩

def canonicalOutput21189 : ExponentCode := normalNode10521

theorem canonicalSound21189 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21189.moment H = canonicalOutput21189.moment H :=
  canonical_of_padded canonicalInput21189 canonicalOutput21189 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21190 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 2, 0, 0], ![0, 1, -1, -2, 2], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput21190 : ExponentCode := normalNode10223

theorem canonicalSound21190 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21190.moment H = canonicalOutput21190.moment H :=
  canonical_of_padded canonicalInput21190 canonicalOutput21190 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21191 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 2, 0, 0], ![0, 1, 0, -3, 2], ![1, 1, -2, 2, -2]]⟩

def canonicalOutput21191 : ExponentCode := normalNode10528

theorem canonicalSound21191 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21191.moment H = canonicalOutput21191.moment H :=
  canonical_of_padded canonicalInput21191 canonicalOutput21191 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21192 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 2, 0, 0], ![0, 1, 0, -2, 1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput21192 : ExponentCode := normalNode10526

theorem canonicalSound21192 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21192.moment H = canonicalOutput21192.moment H :=
  canonical_of_padded canonicalInput21192 canonicalOutput21192 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21193 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 2, 0, 0], ![1, 0, 0, -2, 1], ![0, 2, -2, 1, -1]]⟩

def canonicalOutput21193 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2805⟩

theorem canonicalSound21193 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21193.moment H = canonicalOutput21193.moment H :=
  canonical_of_padded canonicalInput21193 canonicalOutput21193 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21194 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 2, 0, 0], ![1, 1, -1, -2, 1], ![0, 1, -1, 1, -1]]⟩

def canonicalOutput21194 : ExponentCode := normalNode9000

theorem canonicalSound21194 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21194.moment H = canonicalOutput21194.moment H :=
  canonical_of_padded canonicalInput21194 canonicalOutput21194 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput21195 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -2, 2, 0, 0], ![1, 1, 0, -3, 1], ![0, 1, -2, 2, -1]]⟩

def canonicalOutput21195 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2696⟩

theorem canonicalSound21195 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21195.moment H = canonicalOutput21195.moment H :=
  canonical_of_padded canonicalInput21195 canonicalOutput21195 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21196 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, 1, 0], ![0, -1, -2, 0, 3], ![0, 0, 2, 0, -2], ![0, 1, 0, 0, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput21196 : ExponentCode := normalNode10371

theorem canonicalSound21196 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21196.moment H = canonicalOutput21196.moment H :=
  canonical_of_padded canonicalInput21196 canonicalOutput21196 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput21197 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -1, -1, -1, 3], ![0, -1, 2, -1, 0], ![1, 2, -1, 1, -3]]⟩

def canonicalOutput21197 : ExponentCode := normalNode10580

theorem canonicalSound21197 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21197.moment H = canonicalOutput21197.moment H :=
  canonical_of_padded canonicalInput21197 canonicalOutput21197 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21198 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -1, -1, -1, 3], ![1, -1, 2, -1, -1], ![0, 2, -1, 1, -2]]⟩

def canonicalOutput21198 : ExponentCode := normalNode9352

theorem canonicalSound21198 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21198.moment H = canonicalOutput21198.moment H :=
  canonical_of_padded canonicalInput21198 canonicalOutput21198 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation189, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput21199 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -1, -1, 0, 2], ![-1, -1, 2, 1, -1], ![2, 2, -1, -2, -1]]⟩

def canonicalOutput21199 : ExponentCode := normalNode10226

theorem canonicalSound21199 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21199.moment H = canonicalOutput21199.moment H :=
  canonical_of_padded canonicalInput21199 canonicalOutput21199 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21200 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -1, -1, 0, 2], ![0, -1, 2, -2, 1], ![1, 2, -1, 1, -3]]⟩

def canonicalOutput21200 : ExponentCode := normalNode10570

theorem canonicalSound21200 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21200.moment H = canonicalOutput21200.moment H :=
  canonical_of_padded canonicalInput21200 canonicalOutput21200 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21201 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -1, -1, 0, 2], ![0, -1, 2, 1, -2], ![1, 2, -1, -2, 0]]⟩

def canonicalOutput21201 : ExponentCode := normalNode10235

theorem canonicalSound21201 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21201.moment H = canonicalOutput21201.moment H :=
  canonical_of_padded canonicalInput21201 canonicalOutput21201 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21202 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -1, -1, 0, 2], ![1, -1, 2, -2, 0], ![0, 2, -1, 1, -2]]⟩

def canonicalOutput21202 : ExponentCode := normalNode10235

theorem canonicalSound21202 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21202.moment H = canonicalOutput21202.moment H :=
  canonical_of_padded canonicalInput21202 canonicalOutput21202 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21203 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -1, -1, 1, 1], ![0, -1, 2, -3, 2], ![1, 2, -1, 1, -3]]⟩

def canonicalOutput21203 : ExponentCode := normalNode7915

theorem canonicalSound21203 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21203.moment H = canonicalOutput21203.moment H :=
  canonical_of_padded canonicalInput21203 canonicalOutput21203 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21204 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -1, -1, 1, 1], ![0, -1, 2, -2, 1], ![1, 2, -1, 0, -2]]⟩

def canonicalOutput21204 : ExponentCode := normalNode9001

theorem canonicalSound21204 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21204.moment H = canonicalOutput21204.moment H :=
  canonical_of_padded canonicalInput21204 canonicalOutput21204 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21205 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -1, -1, 1, 1], ![0, -1, 2, -1, 0], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput21205 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2631⟩

theorem canonicalSound21205 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21205.moment H = canonicalOutput21205.moment H :=
  canonical_of_padded canonicalInput21205 canonicalOutput21205 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21206 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -1, -1, 1, 1], ![1, -1, 2, -3, 1], ![0, 2, -1, 1, -2]]⟩

def canonicalOutput21206 : ExponentCode := normalNode7902

theorem canonicalSound21206 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21206.moment H = canonicalOutput21206.moment H :=
  canonical_of_padded canonicalInput21206 canonicalOutput21206 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21207 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -1, -1, 1, 1], ![1, -1, 2, -2, 0], ![0, 2, -1, 0, -1]]⟩

def canonicalOutput21207 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2585⟩

theorem canonicalSound21207 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21207.moment H = canonicalOutput21207.moment H :=
  canonical_of_padded canonicalInput21207 canonicalOutput21207 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21208 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -1, -1, 1, 1], ![1, -1, 2, -1, -1], ![0, 2, -1, -1, 0]]⟩

def canonicalOutput21208 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2631⟩

theorem canonicalSound21208 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21208.moment H = canonicalOutput21208.moment H :=
  canonical_of_padded canonicalInput21208 canonicalOutput21208 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21209 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -1, 1, -1, 1], ![-1, 2, -2, 1, 0], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput21209 : ExponentCode := normalNode10300

theorem canonicalSound21209 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21209.moment H = canonicalOutput21209.moment H :=
  canonical_of_padded canonicalInput21209 canonicalOutput21209 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21210 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -1, 1, -1, 1], ![0, -1, 1, -1, 1], ![1, 2, -2, 1, -2]]⟩

def canonicalOutput21210 : ExponentCode := normalNode10584

theorem canonicalSound21210 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21210.moment H = canonicalOutput21210.moment H :=
  canonical_of_padded canonicalInput21210 canonicalOutput21210 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21211 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -1, 1, -1, 1], ![0, -1, 1, 1, -1], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput21211 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2625⟩

theorem canonicalSound21211 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21211.moment H = canonicalOutput21211.moment H :=
  canonical_of_padded canonicalInput21211 canonicalOutput21211 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21212 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -1, 1, -1, 1], ![0, 2, -2, 1, -1], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput21212 : ExponentCode := normalNode10835

theorem canonicalSound21212 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21212.moment H = canonicalOutput21212.moment H :=
  canonical_of_padded canonicalInput21212 canonicalOutput21212 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21213 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -1, 1, -1, 1], ![0, 2, 1, -1, -2], ![1, -1, -2, 1, 1]]⟩

def canonicalOutput21213 : ExponentCode := normalNode10657

theorem canonicalSound21213 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21213.moment H = canonicalOutput21213.moment H :=
  canonical_of_padded canonicalInput21213 canonicalOutput21213 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21214 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -1, 1, -1, 1], ![1, -1, 1, -1, 0], ![0, 2, -2, 1, -1]]⟩

def canonicalOutput21214 : ExponentCode := normalNode10835

theorem canonicalSound21214 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21214.moment H = canonicalOutput21214.moment H :=
  canonical_of_padded canonicalInput21214 canonicalOutput21214 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21215 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -1, 1, -1, 1], ![1, -1, 1, 1, -2], ![0, 2, -2, -1, 1]]⟩

def canonicalOutput21215 : ExponentCode := normalNode10657

theorem canonicalSound21215 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21215.moment H = canonicalOutput21215.moment H :=
  canonical_of_padded canonicalInput21215 canonicalOutput21215 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21216 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -1, 2, -2, 1], ![0, -1, -2, 1, 2], ![1, 2, 0, 0, -3]]⟩

def canonicalOutput21216 : ExponentCode := normalNode8907

theorem canonicalSound21216 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21216.moment H = canonicalOutput21216.moment H :=
  canonical_of_padded canonicalInput21216 canonicalOutput21216 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput21217 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -1, 2, -2, 1], ![0, -1, -1, 2, 0], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput21217 : ExponentCode := normalNode7031

theorem canonicalSound21217 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21217.moment H = canonicalOutput21217.moment H :=
  canonical_of_padded canonicalInput21217 canonicalOutput21217 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput21218 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -1, 2, -2, 1], ![0, -1, 1, 1, -1], ![1, 2, -3, 0, 0]]⟩

def canonicalOutput21218 : ExponentCode := normalNode9027

theorem canonicalSound21218 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21218.moment H = canonicalOutput21218.moment H :=
  canonical_of_padded canonicalInput21218 canonicalOutput21218 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput21219 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -1, 2, -2, 1], ![1, -1, -2, 1, 1], ![0, 2, 0, 0, -2]]⟩

def canonicalOutput21219 : ExponentCode := normalNode10223

theorem canonicalSound21219 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21219.moment H = canonicalOutput21219.moment H :=
  canonical_of_padded canonicalInput21219 canonicalOutput21219 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation189, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput21220 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -1, 2, -2, 1], ![1, -1, -1, 2, -1], ![0, 2, -1, -1, 0]]⟩

def canonicalOutput21220 : ExponentCode := normalNode10652

theorem canonicalSound21220 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21220.moment H = canonicalOutput21220.moment H :=
  canonical_of_padded canonicalInput21220 canonicalOutput21220 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput21221 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -1, 2, -2, 1], ![1, -1, 1, 1, -2], ![0, 2, -3, 0, 1]]⟩

def canonicalOutput21221 : ExponentCode := normalNode9028

theorem canonicalSound21221 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21221.moment H = canonicalOutput21221.moment H :=
  canonical_of_padded canonicalInput21221 canonicalOutput21221 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput21222 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -1, 2, -1, 0], ![-2, 2, -1, -1, 2], ![3, -1, -1, 1, -2]]⟩

def canonicalOutput21222 : ExponentCode := normalNode9931

theorem canonicalSound21222 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21222.moment H = canonicalOutput21222.moment H :=
  canonical_of_padded canonicalInput21222 canonicalOutput21222 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21223 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -1, 2, -1, 0], ![-1, 2, -1, -1, 1], ![2, -1, -1, 1, -1]]⟩

def canonicalOutput21223 : ExponentCode := normalNode10297

theorem canonicalSound21223 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21223.moment H = canonicalOutput21223.moment H :=
  canonical_of_padded canonicalInput21223 canonicalOutput21223 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21224 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -1, 2, -1, 0], ![-1, 2, -1, 1, -1], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput21224 : ExponentCode := normalNode10295

theorem canonicalSound21224 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21224.moment H = canonicalOutput21224.moment H :=
  canonical_of_padded canonicalInput21224 canonicalOutput21224 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21225 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -1, 2, -1, 0], ![0, -1, -2, 1, 2], ![1, 2, 0, -1, -2]]⟩

def canonicalOutput21225 : ExponentCode := normalNode10577

theorem canonicalSound21225 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21225.moment H = canonicalOutput21225.moment H :=
  canonical_of_padded canonicalInput21225 canonicalOutput21225 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21226 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -1, 2, -1, 0], ![0, -1, 0, -1, 2], ![1, 2, -2, 1, -2]]⟩

def canonicalOutput21226 : ExponentCode := normalNode10578

theorem canonicalSound21226 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21226.moment H = canonicalOutput21226.moment H :=
  canonical_of_padded canonicalInput21226 canonicalOutput21226 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21227 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -1, 2, -1, 0], ![1, -1, -2, 1, 1], ![0, 2, 0, -1, -1]]⟩

def canonicalOutput21227 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2761⟩

theorem canonicalSound21227 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21227.moment H = canonicalOutput21227.moment H :=
  canonical_of_padded canonicalInput21227 canonicalOutput21227 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput21228 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -1, 2, -1, 0], ![1, -1, 0, -1, 1], ![0, 2, -2, 1, -1]]⟩

def canonicalOutput21228 : ExponentCode := normalNode10834

theorem canonicalSound21228 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21228.moment H = canonicalOutput21228.moment H :=
  canonical_of_padded canonicalInput21228 canonicalOutput21228 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21229 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -1, 2, 0, -1], ![0, 2, -1, 0, -1], ![1, -1, -1, -1, 2]]⟩

def canonicalOutput21229 : ExponentCode := normalNode10529

theorem canonicalSound21229 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21229.moment H = canonicalOutput21229.moment H :=
  canonical_of_padded canonicalInput21229 canonicalOutput21229 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21230 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -1, 3, -1, -1], ![0, -1, -2, 1, 2], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput21230 : ExponentCode := normalNode9352

theorem canonicalSound21230 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21230.moment H = canonicalOutput21230.moment H :=
  canonical_of_padded canonicalInput21230 canonicalOutput21230 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput21231 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, -1, 3, -1, -1], ![1, -1, -2, 1, 1], ![0, 2, -1, -1, 0]]⟩

def canonicalOutput21231 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2779⟩

theorem canonicalSound21231 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21231.moment H = canonicalOutput21231.moment H :=
  canonical_of_padded canonicalInput21231 canonicalOutput21231 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput21232 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 0, -2, -1, 3], ![0, 0, 2, 0, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput21232 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1221⟩

theorem canonicalSound21232 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21232.moment H = canonicalOutput21232.moment H :=
  canonical_of_padded canonicalInput21232 canonicalOutput21232 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation45⟩ (by decide +kernel) hH

def canonicalInput21233 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 0, -2, 0, 2], ![0, 0, 1, 1, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput21233 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1008⟩

theorem canonicalSound21233 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21233.moment H = canonicalOutput21233.moment H :=
  canonical_of_padded canonicalInput21233 canonicalOutput21233 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, canonicalPermutation41⟩ (by decide +kernel) hH

def canonicalInput21234 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 0, -2, 0, 2], ![0, 0, 2, -2, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput21234 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1057⟩

theorem canonicalSound21234 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21234.moment H = canonicalOutput21234.moment H :=
  canonical_of_padded canonicalInput21234 canonicalOutput21234 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput21235 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 0, -2, 1, 1], ![0, 0, 1, -2, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput21235 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1009⟩

theorem canonicalSound21235 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21235.moment H = canonicalOutput21235.moment H :=
  canonical_of_padded canonicalInput21235 canonicalOutput21235 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput21236 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 0, -2, 1, 1], ![0, 0, 2, -3, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput21236 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node946⟩

theorem canonicalSound21236 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21236.moment H = canonicalOutput21236.moment H :=
  canonical_of_padded canonicalInput21236 canonicalOutput21236 (by decide) (by decide)
    ⟨true, true, canonicalPermutation29, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21237 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 0, -2, 1, 1], ![0, 0, 2, -2, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput21237 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1264⟩

theorem canonicalSound21237 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21237.moment H = canonicalOutput21237.moment H :=
  canonical_of_padded canonicalInput21237 canonicalOutput21237 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation44⟩ (by decide +kernel) hH

def canonicalInput21238 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 0, -1, -1, 2], ![0, 1, 1, -1, -1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput21238 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2645⟩

theorem canonicalSound21238 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21238.moment H = canonicalOutput21238.moment H :=
  canonical_of_padded canonicalInput21238 canonicalOutput21238 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput21239 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 0, 0, -2, 2], ![-1, -2, 2, 1, 0], ![2, 2, -2, 0, -2]]⟩

def canonicalOutput21239 : ExponentCode := normalNode10314

theorem canonicalSound21239 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21239.moment H = canonicalOutput21239.moment H :=
  canonical_of_padded canonicalInput21239 canonicalOutput21239 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21240 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 0, 0, -2, 2], ![0, -3, 2, 0, 1], ![1, 3, -2, 1, -3]]⟩

def canonicalOutput21240 : ExponentCode := normalNode10671

theorem canonicalSound21240 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21240.moment H = canonicalOutput21240.moment H :=
  canonical_of_padded canonicalInput21240 canonicalOutput21240 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21241 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 0, 0, -2, 2], ![0, -3, 2, 1, 0], ![1, 3, -2, 0, -2]]⟩

def canonicalOutput21241 : ExponentCode := normalNode10670

theorem canonicalSound21241 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21241.moment H = canonicalOutput21241.moment H :=
  canonical_of_padded canonicalInput21241 canonicalOutput21241 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21242 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 0, 0, -2, 2], ![0, -2, 2, 1, -1], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput21242 : ExponentCode := normalNode10687

theorem canonicalSound21242 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21242.moment H = canonicalOutput21242.moment H :=
  canonical_of_padded canonicalInput21242 canonicalOutput21242 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21243 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 0, 0, -2, 2], ![0, -2, 3, 0, -1], ![1, 2, -3, 1, -1]]⟩

def canonicalOutput21243 : ExponentCode := normalNode10688

theorem canonicalSound21243 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21243.moment H = canonicalOutput21243.moment H :=
  canonical_of_padded canonicalInput21243 canonicalOutput21243 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21244 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 0, 0, -2, 2], ![0, 1, -1, 1, -1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput21244 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2586⟩

theorem canonicalSound21244 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21244.moment H = canonicalOutput21244.moment H :=
  canonical_of_padded canonicalInput21244 canonicalOutput21244 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput21245 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 0, 0, -2, 2], ![1, -3, 2, 0, 0], ![0, 3, -2, 1, -2]]⟩

def canonicalOutput21245 : ExponentCode := normalNode10850

theorem canonicalSound21245 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21245.moment H = canonicalOutput21245.moment H :=
  canonical_of_padded canonicalInput21245 canonicalOutput21245 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21246 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 0, 0, -2, 2], ![1, -2, 2, -1, 0], ![0, 2, -2, 2, -2]]⟩

def canonicalOutput21246 : ExponentCode := normalNode10854

theorem canonicalSound21246 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21246.moment H = canonicalOutput21246.moment H :=
  canonical_of_padded canonicalInput21246 canonicalOutput21246 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21247 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 1, 0], ![0, 0, 0, -1, 1], ![0, 0, 0, -1, 1], ![0, -2, 1, 0, 1], ![0, 1, -2, 0, 1], ![1, 1, 1, 1, -4]]⟩

def canonicalOutput21247 : ExponentCode := normalNode7484

theorem canonicalSound21247 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21247.moment H = canonicalOutput21247.moment H :=
  canonical_of_padded canonicalInput21247 canonicalOutput21247 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation401, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

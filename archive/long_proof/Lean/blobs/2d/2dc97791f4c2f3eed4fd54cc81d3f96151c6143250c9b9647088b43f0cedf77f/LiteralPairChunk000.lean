import LiteralCliqueChunk005
set_option autoImplicit false
set_option maxRecDepth 16384
set_option maxHeartbeats 3200000
namespace Mub6.Numerical.ClusterTube48
open Mub6.Numerical.GraphKernel
def pairCert0 : PairCertificate (Fin 48) := .first cliqueCert0
theorem pairCheck0 : checkPairSized orthGraph ubGraph (labelSet 262144) (labelSet 248518887473808) 3 6 pairCert0=true := by
  exact cliqueCheck0
def pairCert1 : PairCertificate (Fin 48) := .first cliqueCert0
theorem pairCheck1 : checkPairSized orthGraph ubGraph (labelSet 262144) (labelSet 175977969913873) 3 6 pairCert1=true := by
  exact cliqueCheck0
def pairCert2 : PairCertificate (Fin 48) := .cross cliqueCert1
theorem pairCheck2 : checkPairSized orthGraph ubGraph (labelSet 8796143616000) (labelSet 105599356408977) 3 6 pairCert2=true := by
  exact cliqueCheck1
def pairCert3 : PairCertificate (Fin 48) := .first cliqueCert2
theorem pairCheck3 : checkPairSized orthGraph ubGraph (labelSet 8796143616000) (labelSet 248557615617681) 4 6 pairCert3=true := by
  exact cliqueCheck2
def pairCert4 : PairCertificate (Fin 48) := .split 37 pairCert2 pairCert3
theorem pairCheck4 : checkPairSized orthGraph ubGraph (labelSet 8933582569472) (labelSet 248557615617681) 4 6 pairCert4=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 8933582569472) (labelSet 248557615617681) (labelSet 8796143616000)
    (labelSet 105599356408977) (labelSet 8796143616000) 37 3 6
    pairCert2 pairCert3 (by decide) (by decide) (by decide) (by decide)
    pairCheck2 pairCheck3
def pairCert5 : PairCertificate (Fin 48) := .split 20 pairCert1 pairCert4
theorem pairCheck5 : checkPairSized orthGraph ubGraph (labelSet 8933583618048) (labelSet 248557615617681) 4 6 pairCert5=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 8933583618048) (labelSet 248557615617681) (labelSet 262144)
    (labelSet 175977969913873) (labelSet 8933582569472) 20 3 6
    pairCert1 pairCert4 (by decide) (by decide) (by decide) (by decide)
    pairCheck1 pairCheck4
def pairCert6 : PairCertificate (Fin 48) := .split 14 pairCert0 pairCert5
theorem pairCheck6 : checkPairSized orthGraph ubGraph (labelSet 8933583634432) (labelSet 248557615617681) 4 6 pairCert6=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 8933583634432) (labelSet 248557615617681) (labelSet 262144)
    (labelSet 248518887473808) (labelSet 8933583618048) 14 3 6
    pairCert0 pairCert5 (by decide) (by decide) (by decide) (by decide)
    pairCheck0 pairCheck5
def pairCert7 : PairCertificate (Fin 48) := .first cliqueCert0
theorem pairCheck7 : checkPairSized orthGraph ubGraph (labelSet 262144) (labelSet 150929466820865) 3 6 pairCert7=true := by
  exact cliqueCheck0
def pairCert8 : PairCertificate (Fin 48) := .first cliqueCert0
theorem pairCheck8 : checkPairSized orthGraph ubGraph (labelSet 262144) (labelSet 93735580896641) 3 6 pairCert8=true := by
  exact cliqueCheck0
def pairCert9 : PairCertificate (Fin 48) := .cross cliqueCert3
theorem pairCheck9 : checkPairSized orthGraph ubGraph (labelSet 34360528896) (labelSet 244385803471488) 3 6 pairCert9=true := by
  exact cliqueCheck3
def pairCert10 : PairCertificate (Fin 48) := .first cliqueCert4
theorem pairCheck10 : checkPairSized orthGraph ubGraph (labelSet 34360528896) (labelSet 245489681403777) 4 6 pairCert10=true := by
  exact cliqueCheck4
def pairCert11 : PairCertificate (Fin 48) := .split 14 pairCert9 pairCert10
theorem pairCheck11 : checkPairSized orthGraph ubGraph (labelSet 34360545280) (labelSet 245489681403777) 4 6 pairCert11=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 34360545280) (labelSet 245489681403777) (labelSet 34360528896)
    (labelSet 244385803471488) (labelSet 34360528896) 14 3 6
    pairCert9 pairCert10 (by decide) (by decide) (by decide) (by decide)
    pairCheck9 pairCheck10
def pairCert12 : PairCertificate (Fin 48) := .split 37 pairCert8 pairCert11
theorem pairCheck12 : checkPairSized orthGraph ubGraph (labelSet 171799498752) (labelSet 245489681403777) 4 6 pairCert12=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 171799498752) (labelSet 245489681403777) (labelSet 262144)
    (labelSet 93735580896641) (labelSet 34360545280) 37 3 6
    pairCert8 pairCert11 (by decide) (by decide) (by decide) (by decide)
    pairCheck8 pairCheck11
def pairCert13 : PairCertificate (Fin 48) := .split 20 pairCert7 pairCert12
theorem pairCheck13 : checkPairSized orthGraph ubGraph (labelSet 171800547328) (labelSet 245489681403777) 4 6 pairCert13=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 171800547328) (labelSet 245489681403777) (labelSet 262144)
    (labelSet 150929466820865) (labelSet 171799498752) 20 3 6
    pairCert7 pairCert12 (by decide) (by decide) (by decide) (by decide)
    pairCheck7 pairCheck12
def pairCert14 : PairCertificate (Fin 48) := .first cliqueCert0
theorem pairCheck14 : checkPairSized orthGraph ubGraph (labelSet 262144) (labelSet 32995306316288) 3 6 pairCert14=true := by
  exact cliqueCheck0
def pairCert15 : PairCertificate (Fin 48) := .first cliqueCert0
theorem pairCheck15 : checkPairSized orthGraph ubGraph (labelSet 262144) (labelSet 23133845206272) 3 6 pairCert15=true := by
  exact cliqueCheck0
def pairCert16 : PairCertificate (Fin 48) := .cross cliqueCert5
theorem pairCheck16 : checkPairSized orthGraph ubGraph (labelSet 70370891923464) (labelSet 9934559457536) 3 6 pairCert16=true := by
  exact cliqueCheck5
def pairCert17 : PairCertificate (Fin 48) := .first cliqueCert6
theorem pairCheck17 : checkPairSized orthGraph ubGraph (labelSet 70370891923464) (labelSet 34133546055424) 4 6 pairCert17=true := by
  exact cliqueCheck6
def pairCert18 : PairCertificate (Fin 48) := .split 20 pairCert16 pairCert17
theorem pairCheck18 : checkPairSized orthGraph ubGraph (labelSet 70370892972040) (labelSet 34133546055424) 4 6 pairCert18=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 70370892972040) (labelSet 34133546055424) (labelSet 70370891923464)
    (labelSet 9934559457536) (labelSet 70370891923464) 20 3 6
    pairCert16 pairCert17 (by decide) (by decide) (by decide) (by decide)
    pairCheck16 pairCheck17
def pairCert19 : PairCertificate (Fin 48) := .split 37 pairCert15 pairCert18
theorem pairCheck19 : checkPairSized orthGraph ubGraph (labelSet 70508331925512) (labelSet 34133546055424) 4 6 pairCert19=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 70508331925512) (labelSet 34133546055424) (labelSet 262144)
    (labelSet 23133845206272) (labelSet 70370892972040) 37 3 6
    pairCert15 pairCert18 (by decide) (by decide) (by decide) (by decide)
    pairCheck15 pairCheck18
def pairCert20 : PairCertificate (Fin 48) := .split 14 pairCert14 pairCert19
theorem pairCheck20 : checkPairSized orthGraph ubGraph (labelSet 70508331941896) (labelSet 34133546055424) 4 6 pairCert20=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 70508331941896) (labelSet 34133546055424) (labelSet 262144)
    (labelSet 32995306316288) (labelSet 70508331925512) 14 3 6
    pairCert14 pairCert19 (by decide) (by decide) (by decide) (by decide)
    pairCheck14 pairCheck19
def pairCert21 : PairCertificate (Fin 48) := .first cliqueCert4
theorem pairCheck21 : checkPairSized orthGraph ubGraph (labelSet 34360528896) (labelSet 279580116200080) 4 6 pairCert21=true := by
  exact cliqueCheck4
def pairCert22 : PairCertificate (Fin 48) := .first cliqueCert6
theorem pairCheck22 : checkPairSized orthGraph ubGraph (labelSet 70370891923464) (labelSet 186148477712657) 4 6 pairCert22=true := by
  exact cliqueCheck6
def pairCert23 : PairCertificate (Fin 48) := .first cliqueCert2
theorem pairCheck23 : checkPairSized orthGraph ubGraph (labelSet 8796143616000) (labelSet 128963986898321) 4 6 pairCert23=true := by
  exact cliqueCheck2
end Mub6.Numerical.ClusterTube48
#print axioms Mub6.Numerical.ClusterTube48.pairCheck0
#print axioms Mub6.Numerical.ClusterTube48.pairCheck1
#print axioms Mub6.Numerical.ClusterTube48.pairCheck2
#print axioms Mub6.Numerical.ClusterTube48.pairCheck3
#print axioms Mub6.Numerical.ClusterTube48.pairCheck4
#print axioms Mub6.Numerical.ClusterTube48.pairCheck5
#print axioms Mub6.Numerical.ClusterTube48.pairCheck6
#print axioms Mub6.Numerical.ClusterTube48.pairCheck7
#print axioms Mub6.Numerical.ClusterTube48.pairCheck8
#print axioms Mub6.Numerical.ClusterTube48.pairCheck9
#print axioms Mub6.Numerical.ClusterTube48.pairCheck10
#print axioms Mub6.Numerical.ClusterTube48.pairCheck11
#print axioms Mub6.Numerical.ClusterTube48.pairCheck12
#print axioms Mub6.Numerical.ClusterTube48.pairCheck13
#print axioms Mub6.Numerical.ClusterTube48.pairCheck14
#print axioms Mub6.Numerical.ClusterTube48.pairCheck15
#print axioms Mub6.Numerical.ClusterTube48.pairCheck16
#print axioms Mub6.Numerical.ClusterTube48.pairCheck17
#print axioms Mub6.Numerical.ClusterTube48.pairCheck18
#print axioms Mub6.Numerical.ClusterTube48.pairCheck19
#print axioms Mub6.Numerical.ClusterTube48.pairCheck20
#print axioms Mub6.Numerical.ClusterTube48.pairCheck21
#print axioms Mub6.Numerical.ClusterTube48.pairCheck22
#print axioms Mub6.Numerical.ClusterTube48.pairCheck23

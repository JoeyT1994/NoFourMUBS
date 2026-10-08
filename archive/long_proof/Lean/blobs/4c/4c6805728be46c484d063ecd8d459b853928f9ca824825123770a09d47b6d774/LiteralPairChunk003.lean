import LiteralPairChunk002
set_option autoImplicit false
set_option maxRecDepth 16384
set_option maxHeartbeats 3200000
namespace Mub6.Numerical.ClusterTube48
open Mub6.Numerical.GraphKernel
def pairCert72 : PairCertificate (Fin 48) := .first cliqueCert20
theorem pairCheck72 : checkPairSized orthGraph ubGraph (labelSet 131340) (labelSet 269667927104114) 4 6 pairCert72=true := by
  exact cliqueCheck20
def pairCert73 : PairCertificate (Fin 48) := .first cliqueCert21
theorem pairCheck73 : checkPairSized orthGraph ubGraph (labelSet 71468255936512) (labelSet 204948390318672) 3 6 pairCert73=true := by
  exact cliqueCheck21
def pairCert74 : PairCertificate (Fin 48) := .first cliqueCert21
theorem pairCheck74 : checkPairSized orthGraph ubGraph (labelSet 71468255936512) (labelSet 68470435798049) 3 6 pairCert74=true := by
  exact cliqueCheck21
def pairCert75 : PairCertificate (Fin 48) := .first cliqueCert21
theorem pairCheck75 : checkPairSized orthGraph ubGraph (labelSet 71468255936512) (labelSet 26585864396400) 3 6 pairCert75=true := by
  exact cliqueCheck21
def pairCert76 : PairCertificate (Fin 48) := .first cliqueCert8
theorem pairCheck76 : checkPairSized orthGraph ubGraph (labelSet 0) (labelSet 163038116236849) 3 6 pairCert76=true := by
  exact cliqueCheck8
def pairCert77 : PairCertificate (Fin 48) := .first cliqueCert8
theorem pairCheck77 : checkPairSized orthGraph ubGraph (labelSet 0) (labelSet 182717589229137) 3 6 pairCert77=true := by
  exact cliqueCheck8
def pairCert78 : PairCertificate (Fin 48) := .first cliqueCert8
theorem pairCheck78 : checkPairSized orthGraph ubGraph (labelSet 0) (labelSet 191762857480289) 3 6 pairCert78=true := by
  exact cliqueCheck8
def pairCert79 : PairCertificate (Fin 48) := .cross cliqueCert22
theorem pairCheck79 : checkPairSized orthGraph ubGraph (labelSet 36175872) (labelSet 174058935212609) 3 6 pairCert79=true := by
  exact cliqueCheck22
def pairCert80 : PairCertificate (Fin 48) := .first cliqueCert23
theorem pairCheck80 : checkPairSized orthGraph ubGraph (labelSet 36175872) (labelSet 209380813364849) 4 6 pairCert80=true := by
  exact cliqueCheck23
def pairCert81 : PairCertificate (Fin 48) := .split 16 pairCert79 pairCert80
theorem pairCheck81 : checkPairSized orthGraph ubGraph (labelSet 36241408) (labelSet 209380813364849) 4 6 pairCert81=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 36241408) (labelSet 209380813364849) (labelSet 36175872)
    (labelSet 174058935212609) (labelSet 36175872) 16 3 6
    pairCert79 pairCert80 (by decide) (by decide) (by decide) (by decide)
    pairCheck79 pairCheck80
def pairCert82 : PairCertificate (Fin 48) := .split 46 pairCert78 pairCert81
theorem pairCheck82 : checkPairSized orthGraph ubGraph (labelSet 70368780419072) (labelSet 209380813364849) 4 6 pairCert82=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 70368780419072) (labelSet 209380813364849) (labelSet 0)
    (labelSet 191762857480289) (labelSet 36241408) 46 3 6
    pairCert78 pairCert81 (by decide) (by decide) (by decide) (by decide)
    pairCheck78 pairCheck81
def pairCert83 : PairCertificate (Fin 48) := .split 40 pairCert77 pairCert82
theorem pairCheck83 : checkPairSized orthGraph ubGraph (labelSet 71468292046848) (labelSet 209380813364849) 4 6 pairCert83=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 71468292046848) (labelSet 209380813364849) (labelSet 0)
    (labelSet 182717589229137) (labelSet 70368780419072) 40 3 6
    pairCert77 pairCert82 (by decide) (by decide) (by decide) (by decide)
    pairCheck77 pairCheck82
def pairCert84 : PairCertificate (Fin 48) := .split 17 pairCert76 pairCert83
theorem pairCheck84 : checkPairSized orthGraph ubGraph (labelSet 71468292177920) (labelSet 209380813364849) 4 6 pairCert84=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 71468292177920) (labelSet 209380813364849) (labelSet 0)
    (labelSet 163038116236849) (labelSet 71468292046848) 17 3 6
    pairCert76 pairCert83 (by decide) (by decide) (by decide) (by decide)
    pairCheck76 pairCheck83
def pairCert85 : PairCertificate (Fin 48) := .split 31 pairCert75 pairCert84
theorem pairCheck85 : checkPairSized orthGraph ubGraph (labelSet 71470439661568) (labelSet 209380813364849) 4 6 pairCert85=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 71470439661568) (labelSet 209380813364849) (labelSet 71468255936512)
    (labelSet 26585864396400) (labelSet 71468292177920) 31 3 6
    pairCert75 pairCert84 (by decide) (by decide) (by decide) (by decide)
    pairCheck75 pairCheck84
def pairCert86 : PairCertificate (Fin 48) := .split 28 pairCert74 pairCert85
theorem pairCheck86 : checkPairSized orthGraph ubGraph (labelSet 71470708097024) (labelSet 209380813364849) 4 6 pairCert86=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 71470708097024) (labelSet 209380813364849) (labelSet 71468255936512)
    (labelSet 68470435798049) (labelSet 71470439661568) 28 3 6
    pairCert74 pairCert85 (by decide) (by decide) (by decide) (by decide)
    pairCheck74 pairCheck85
def pairCert87 : PairCertificate (Fin 48) := .split 8 pairCert73 pairCert86
theorem pairCheck87 : checkPairSized orthGraph ubGraph (labelSet 71470708097280) (labelSet 209380813364849) 4 6 pairCert87=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 71470708097280) (labelSet 209380813364849) (labelSet 71468255936512)
    (labelSet 204948390318672) (labelSet 71470708097024) 8 3 6
    pairCert73 pairCert86 (by decide) (by decide) (by decide) (by decide)
    pairCheck73 pairCheck86
def pairCert88 : PairCertificate (Fin 48) := .first cliqueCert24
theorem pairCheck88 : checkPairSized orthGraph ubGraph (labelSet 131072) (labelSet 118088313868880) 3 6 pairCert88=true := by
  exact cliqueCheck24
def pairCert89 : PairCertificate (Fin 48) := .first cliqueCert8
theorem pairCheck89 : checkPairSized orthGraph ubGraph (labelSet 0) (labelSet 76178039787057) 3 6 pairCert89=true := by
  exact cliqueCheck8
def pairCert90 : PairCertificate (Fin 48) := .cross cliqueCert25
theorem pairCheck90 : checkPairSized orthGraph ubGraph (labelSet 136577024) (labelSet 87198858762817) 3 6 pairCert90=true := by
  exact cliqueCheck25
def pairCert91 : PairCertificate (Fin 48) := .first cliqueCert26
theorem pairCheck91 : checkPairSized orthGraph ubGraph (labelSet 136577024) (labelSet 122520736915057) 4 6 pairCert91=true := by
  exact cliqueCheck26
def pairCert92 : PairCertificate (Fin 48) := .split 16 pairCert90 pairCert91
theorem pairCheck92 : checkPairSized orthGraph ubGraph (labelSet 136642560) (labelSet 122520736915057) 4 6 pairCert92=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 136642560) (labelSet 122520736915057) (labelSet 136577024)
    (labelSet 87198858762817) (labelSet 136577024) 16 3 6
    pairCert90 pairCert91 (by decide) (by decide) (by decide) (by decide)
    pairCheck90 pairCheck91
def pairCert93 : PairCertificate (Fin 48) := .split 17 pairCert89 pairCert92
theorem pairCheck93 : checkPairSized orthGraph ubGraph (labelSet 136773632) (labelSet 122520736915057) 4 6 pairCert93=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 136773632) (labelSet 122520736915057) (labelSet 0)
    (labelSet 76178039787057) (labelSet 136642560) 17 3 6
    pairCert89 pairCert92 (by decide) (by decide) (by decide) (by decide)
    pairCheck89 pairCheck92
def pairCert94 : PairCertificate (Fin 48) := .split 8 pairCert88 pairCert93
theorem pairCheck94 : checkPairSized orthGraph ubGraph (labelSet 136773888) (labelSet 122520736915057) 4 6 pairCert94=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 136773888) (labelSet 122520736915057) (labelSet 131072)
    (labelSet 118088313868880) (labelSet 136773632) 8 3 6
    pairCert88 pairCert93 (by decide) (by decide) (by decide) (by decide)
    pairCheck88 pairCheck93
def pairCert95 : PairCertificate (Fin 48) := .first cliqueCert27
theorem pairCheck95 : checkPairSized orthGraph ubGraph (labelSet 71470842577152) (labelSet 281401777905523) 5 6 pairCert95=true := by
  exact cliqueCheck27
end Mub6.Numerical.ClusterTube48
#print axioms Mub6.Numerical.ClusterTube48.pairCheck72
#print axioms Mub6.Numerical.ClusterTube48.pairCheck73
#print axioms Mub6.Numerical.ClusterTube48.pairCheck74
#print axioms Mub6.Numerical.ClusterTube48.pairCheck75
#print axioms Mub6.Numerical.ClusterTube48.pairCheck76
#print axioms Mub6.Numerical.ClusterTube48.pairCheck77
#print axioms Mub6.Numerical.ClusterTube48.pairCheck78
#print axioms Mub6.Numerical.ClusterTube48.pairCheck79
#print axioms Mub6.Numerical.ClusterTube48.pairCheck80
#print axioms Mub6.Numerical.ClusterTube48.pairCheck81
#print axioms Mub6.Numerical.ClusterTube48.pairCheck82
#print axioms Mub6.Numerical.ClusterTube48.pairCheck83
#print axioms Mub6.Numerical.ClusterTube48.pairCheck84
#print axioms Mub6.Numerical.ClusterTube48.pairCheck85
#print axioms Mub6.Numerical.ClusterTube48.pairCheck86
#print axioms Mub6.Numerical.ClusterTube48.pairCheck87
#print axioms Mub6.Numerical.ClusterTube48.pairCheck88
#print axioms Mub6.Numerical.ClusterTube48.pairCheck89
#print axioms Mub6.Numerical.ClusterTube48.pairCheck90
#print axioms Mub6.Numerical.ClusterTube48.pairCheck91
#print axioms Mub6.Numerical.ClusterTube48.pairCheck92
#print axioms Mub6.Numerical.ClusterTube48.pairCheck93
#print axioms Mub6.Numerical.ClusterTube48.pairCheck94
#print axioms Mub6.Numerical.ClusterTube48.pairCheck95

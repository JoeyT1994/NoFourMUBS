import LiteralPairChunk000
set_option autoImplicit false
set_option maxRecDepth 16384
set_option maxHeartbeats 3200000
namespace Mub6.Numerical.ClusterTube48
open Mub6.Numerical.GraphKernel
def pairCert24 : PairCertificate (Fin 48) := .first cliqueCert7
theorem pairCheck24 : checkPairSized orthGraph ubGraph (labelSet 36523999232) (labelSet 165224439099153) 3 6 pairCert24=true := by
  exact cliqueCheck7
def pairCert25 : PairCertificate (Fin 48) := .first cliqueCert7
theorem pairCheck25 : checkPairSized orthGraph ubGraph (labelSet 36523999232) (labelSet 180329918795537) 3 6 pairCert25=true := by
  exact cliqueCheck7
def pairCert26 : PairCertificate (Fin 48) := .first cliqueCert7
theorem pairCheck26 : checkPairSized orthGraph ubGraph (labelSet 36523999232) (labelSet 183899036721409) 3 6 pairCert26=true := by
  exact cliqueCheck7
def pairCert27 : PairCertificate (Fin 48) := .first cliqueCert8
theorem pairCheck27 : checkPairSized orthGraph ubGraph (labelSet 0) (labelSet 56381176718353) 3 6 pairCert27=true := by
  exact cliqueCheck8
def pairCert28 : PairCertificate (Fin 48) := .first cliqueCert8
theorem pairCheck28 : checkPairSized orthGraph ubGraph (labelSet 0) (labelSet 18722043637520) 3 6 pairCert28=true := by
  exact cliqueCheck8
def pairCert29 : PairCertificate (Fin 48) := .first cliqueCert8
theorem pairCheck29 : checkPairSized orthGraph ubGraph (labelSet 0) (labelSet 201511355451904) 3 6 pairCert29=true := by
  exact cliqueCheck8
def pairCert30 : PairCertificate (Fin 48) := .cross cliqueCert9
theorem pairCheck30 : checkPairSized orthGraph ubGraph (labelSet 550426902528) (labelSet 43186244300305) 3 6 pairCert30=true := by
  exact cliqueCheck9
def pairCert31 : PairCertificate (Fin 48) := .first cliqueCert10
theorem pairCheck31 : checkPairSized orthGraph ubGraph (labelSet 550426902528) (labelSet 201516992605969) 4 6 pairCert31=true := by
  exact cliqueCheck10
def pairCert32 : PairCertificate (Fin 48) := .split 2 pairCert30 pairCert31
theorem pairCheck32 : checkPairSized orthGraph ubGraph (labelSet 550426902532) (labelSet 201516992605969) 4 6 pairCert32=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 550426902532) (labelSet 201516992605969) (labelSet 550426902528)
    (labelSet 43186244300305) (labelSet 550426902528) 2 3 6
    pairCert30 pairCert31 (by decide) (by decide) (by decide) (by decide)
    pairCheck30 pairCheck31
def pairCert33 : PairCertificate (Fin 48) := .split 35 pairCert29 pairCert32
theorem pairCheck33 : checkPairSized orthGraph ubGraph (labelSet 584786640900) (labelSet 201516992605969) 4 6 pairCert33=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 584786640900) (labelSet 201516992605969) (labelSet 0)
    (labelSet 201511355451904) (labelSet 550426902532) 35 3 6
    pairCert29 pairCert32 (by decide) (by decide) (by decide) (by decide)
    pairCheck29 pairCheck32
def pairCert34 : PairCertificate (Fin 48) := .split 31 pairCert28 pairCert33
theorem pairCheck34 : checkPairSized orthGraph ubGraph (labelSet 586934124548) (labelSet 201516992605969) 4 6 pairCert34=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 586934124548) (labelSet 201516992605969) (labelSet 0)
    (labelSet 18722043637520) (labelSet 584786640900) 31 3 6
    pairCert28 pairCert33 (by decide) (by decide) (by decide) (by decide)
    pairCheck28 pairCheck33
def pairCert35 : PairCertificate (Fin 48) := .split 24 pairCert27 pairCert34
theorem pairCheck35 : checkPairSized orthGraph ubGraph (labelSet 586950901764) (labelSet 201516992605969) 4 6 pairCert35=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 586950901764) (labelSet 201516992605969) (labelSet 0)
    (labelSet 56381176718353) (labelSet 586934124548) 24 3 6
    pairCert27 pairCert34 (by decide) (by decide) (by decide) (by decide)
    pairCheck27 pairCheck34
def pairCert36 : PairCertificate (Fin 48) := .split 46 pairCert26 pairCert35
theorem pairCheck36 : checkPairSized orthGraph ubGraph (labelSet 70955695079428) (labelSet 201516992605969) 4 6 pairCert36=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 70955695079428) (labelSet 201516992605969) (labelSet 36523999232)
    (labelSet 183899036721409) (labelSet 586950901764) 46 3 6
    pairCert26 pairCert35 (by decide) (by decide) (by decide) (by decide)
    pairCheck26 pairCheck35
def pairCert37 : PairCertificate (Fin 48) := .split 43 pairCert25 pairCert36
theorem pairCheck37 : checkPairSized orthGraph ubGraph (labelSet 79751788101636) (labelSet 201516992605969) 4 6 pairCert37=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 79751788101636) (labelSet 201516992605969) (labelSet 36523999232)
    (labelSet 180329918795537) (labelSet 70955695079428) 43 3 6
    pairCert25 pairCert36 (by decide) (by decide) (by decide) (by decide)
    pairCheck25 pairCheck36
def pairCert38 : PairCertificate (Fin 48) := .split 12 pairCert24 pairCert37
theorem pairCheck38 : checkPairSized orthGraph ubGraph (labelSet 79751788105732) (labelSet 201516992605969) 4 6 pairCert38=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 79751788105732) (labelSet 201516992605969) (labelSet 36523999232)
    (labelSet 165224439099153) (labelSet 79751788101636) 12 3 6
    pairCert24 pairCert37 (by decide) (by decide) (by decide) (by decide)
    pairCheck24 pairCheck37
def pairCert39 : PairCertificate (Fin 48) := .first cliqueCert11
theorem pairCheck39 : checkPairSized orthGraph ubGraph (labelSet 70368744177664) (labelSet 26452732984848) 3 6 pairCert39=true := by
  exact cliqueCheck11
def pairCert40 : PairCertificate (Fin 48) := .first cliqueCert8
theorem pairCheck40 : checkPairSized orthGraph ubGraph (labelSet 0) (labelSet 191629726068737) 3 6 pairCert40=true := by
  exact cliqueCheck8
def pairCert41 : PairCertificate (Fin 48) := .cross cliqueCert12
theorem pairCheck41 : checkPairSized orthGraph ubGraph (labelSet 550326239232) (labelSet 46468421430801) 3 6 pairCert41=true := by
  exact cliqueCheck12
def pairCert42 : PairCertificate (Fin 48) := .first cliqueCert13
theorem pairCheck42 : checkPairSized orthGraph ubGraph (labelSet 550326239232) (labelSet 209247681953297) 4 6 pairCert42=true := by
  exact cliqueCheck13
def pairCert43 : PairCertificate (Fin 48) := .split 19 pairCert41 pairCert42
theorem pairCheck43 : checkPairSized orthGraph ubGraph (labelSet 550326763520) (labelSet 209247681953297) 4 6 pairCert43=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 550326763520) (labelSet 209247681953297) (labelSet 550326239232)
    (labelSet 46468421430801) (labelSet 550326239232) 19 3 6
    pairCert41 pairCert42 (by decide) (by decide) (by decide) (by decide)
    pairCheck41 pairCheck42
def pairCert44 : PairCertificate (Fin 48) := .split 46 pairCert40 pairCert43
theorem pairCheck44 : checkPairSized orthGraph ubGraph (labelSet 70919070941184) (labelSet 209247681953297) 4 6 pairCert44=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 70919070941184) (labelSet 209247681953297) (labelSet 0)
    (labelSet 191629726068737) (labelSet 550326763520) 46 3 6
    pairCert40 pairCert43 (by decide) (by decide) (by decide) (by decide)
    pairCheck40 pairCheck43
def pairCert45 : PairCertificate (Fin 48) := .split 31 pairCert39 pairCert44
theorem pairCheck45 : checkPairSized orthGraph ubGraph (labelSet 70921218424832) (labelSet 209247681953297) 4 6 pairCert45=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 70921218424832) (labelSet 209247681953297) (labelSet 70368744177664)
    (labelSet 26452732984848) (labelSet 70919070941184) 31 3 6
    pairCert39 pairCert44 (by decide) (by decide) (by decide) (by decide)
    pairCheck39 pairCheck44
def pairCert46 : PairCertificate (Fin 48) := .first cliqueCert14
theorem pairCheck46 : checkPairSized orthGraph ubGraph (labelSet 79751822184452) (labelSet 280718355971985) 5 6 pairCert46=true := by
  exact cliqueCheck14
def pairCert47 : PairCertificate (Fin 48) := .split 3 pairCert45 pairCert46
theorem pairCheck47 : checkPairSized orthGraph ubGraph (labelSet 79751822184460) (labelSet 280718355971985) 5 6 pairCert47=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 79751822184460) (labelSet 280718355971985) (labelSet 70921218424832)
    (labelSet 209247681953297) (labelSet 79751822184452) 3 4 6
    pairCert45 pairCert46 (by decide) (by decide) (by decide) (by decide)
    pairCheck45 pairCheck46
end Mub6.Numerical.ClusterTube48
#print axioms Mub6.Numerical.ClusterTube48.pairCheck24
#print axioms Mub6.Numerical.ClusterTube48.pairCheck25
#print axioms Mub6.Numerical.ClusterTube48.pairCheck26
#print axioms Mub6.Numerical.ClusterTube48.pairCheck27
#print axioms Mub6.Numerical.ClusterTube48.pairCheck28
#print axioms Mub6.Numerical.ClusterTube48.pairCheck29
#print axioms Mub6.Numerical.ClusterTube48.pairCheck30
#print axioms Mub6.Numerical.ClusterTube48.pairCheck31
#print axioms Mub6.Numerical.ClusterTube48.pairCheck32
#print axioms Mub6.Numerical.ClusterTube48.pairCheck33
#print axioms Mub6.Numerical.ClusterTube48.pairCheck34
#print axioms Mub6.Numerical.ClusterTube48.pairCheck35
#print axioms Mub6.Numerical.ClusterTube48.pairCheck36
#print axioms Mub6.Numerical.ClusterTube48.pairCheck37
#print axioms Mub6.Numerical.ClusterTube48.pairCheck38
#print axioms Mub6.Numerical.ClusterTube48.pairCheck39
#print axioms Mub6.Numerical.ClusterTube48.pairCheck40
#print axioms Mub6.Numerical.ClusterTube48.pairCheck41
#print axioms Mub6.Numerical.ClusterTube48.pairCheck42
#print axioms Mub6.Numerical.ClusterTube48.pairCheck43
#print axioms Mub6.Numerical.ClusterTube48.pairCheck44
#print axioms Mub6.Numerical.ClusterTube48.pairCheck45
#print axioms Mub6.Numerical.ClusterTube48.pairCheck46
#print axioms Mub6.Numerical.ClusterTube48.pairCheck47

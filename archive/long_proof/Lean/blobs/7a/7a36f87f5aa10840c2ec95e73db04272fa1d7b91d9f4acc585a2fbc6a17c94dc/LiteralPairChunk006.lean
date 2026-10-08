import LiteralPairChunk005
set_option autoImplicit false
set_option maxRecDepth 16384
set_option maxHeartbeats 3200000
namespace Mub6.Numerical.ClusterTube48
open Mub6.Numerical.GraphKernel
def pairCert144 : PairCertificate (Fin 48) := .split 13 pairCert142 pairCert143
theorem pairCheck144 : checkPairSized orthGraph ubGraph (labelSet 1099914289160) (labelSet 101566324605297) 4 6 pairCert144=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 1099914289160) (labelSet 101566324605297) (labelSet 1099914280968)
    (labelSet 74867734151425) (labelSet 1099914280968) 13 3 6
    pairCert142 pairCert143 (by decide) (by decide) (by decide) (by decide)
    pairCheck142 pairCheck143
def pairCert145 : PairCertificate (Fin 48) := .split 45 pairCert141 pairCert144
theorem pairCheck145 : checkPairSized orthGraph ubGraph (labelSet 36284286377992) (labelSet 101566324605297) 4 6 pairCert145=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 36284286377992) (labelSet 101566324605297) (labelSet 134217728)
    (labelSet 101211981218096) (labelSet 1099914289160) 45 3 6
    pairCert141 pairCert144 (by decide) (by decide) (by decide) (by decide)
    pairCheck141 pairCheck144
def pairCert146 : PairCertificate (Fin 48) := .split 11 pairCert140 pairCert145
theorem pairCheck146 : checkPairSized orthGraph ubGraph (labelSet 36284286380040) (labelSet 101566324605297) 4 6 pairCert146=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 36284286380040) (labelSet 101566324605297) (labelSet 134217728)
    (labelSet 26713624084545) (labelSet 36284286377992) 11 3 6
    pairCert140 pairCert145 (by decide) (by decide) (by decide) (by decide)
    pairCheck140 pairCheck145
def pairCert147 : PairCertificate (Fin 48) := .first cliqueCert35
theorem pairCheck147 : checkPairSized orthGraph ubGraph (labelSet 134217728) (labelSet 211183567229697) 3 6 pairCert147=true := by
  exact cliqueCheck35
def pairCert148 : PairCertificate (Fin 48) := .first cliqueCert35
theorem pairCheck148 : checkPairSized orthGraph ubGraph (labelSet 134217728) (labelSet 89095086850992) 3 6 pairCert148=true := by
  exact cliqueCheck35
def pairCert149 : PairCertificate (Fin 48) := .cross cliqueCert38
theorem pairCheck149 : checkPairSized orthGraph ubGraph (labelSet 4415361122304) (labelSet 159747282129601) 3 6 pairCert149=true := by
  exact cliqueCheck38
def pairCert150 : PairCertificate (Fin 48) := .first cliqueCert39
theorem pairCheck150 : checkPairSized orthGraph ubGraph (labelSet 4415361122304) (labelSet 230184770982897) 4 6 pairCert150=true := by
  exact cliqueCheck39
def pairCert151 : PairCertificate (Fin 48) := .split 11 pairCert149 pairCert150
theorem pairCheck151 : checkPairSized orthGraph ubGraph (labelSet 4415361124352) (labelSet 230184770982897) 4 6 pairCert151=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 4415361124352) (labelSet 230184770982897) (labelSet 4415361122304)
    (labelSet 159747282129601) (labelSet 4415361122304) 11 3 6
    pairCert149 pairCert150 (by decide) (by decide) (by decide) (by decide)
    pairCheck149 pairCheck150
def pairCert152 : PairCertificate (Fin 48) := .split 45 pairCert148 pairCert151
theorem pairCheck152 : checkPairSized orthGraph ubGraph (labelSet 39599733213184) (labelSet 230184770982897) 4 6 pairCert152=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 39599733213184) (labelSet 230184770982897) (labelSet 134217728)
    (labelSet 89095086850992) (labelSet 4415361124352) 45 3 6
    pairCert148 pairCert151 (by decide) (by decide) (by decide) (by decide)
    pairCheck148 pairCheck151
def pairCert153 : PairCertificate (Fin 48) := .split 13 pairCert147 pairCert152
theorem pairCheck153 : checkPairSized orthGraph ubGraph (labelSet 39599733221376) (labelSet 230184770982897) 4 6 pairCert153=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 39599733221376) (labelSet 230184770982897) (labelSet 134217728)
    (labelSet 211183567229697) (labelSet 39599733213184) 13 3 6
    pairCert147 pairCert152 (by decide) (by decide) (by decide) (by decide)
    pairCheck147 pairCheck152
def pairCert154 : PairCertificate (Fin 48) := .first cliqueCert39
theorem pairCheck154 : checkPairSized orthGraph ubGraph (labelSet 4415361122304) (labelSet 168688398586561) 4 6 pairCert154=true := by
  exact cliqueCheck39
def pairCert155 : PairCertificate (Fin 48) := .first cliqueCert17
theorem pairCheck155 : checkPairSized orthGraph ubGraph (labelSet 1099914280968) (labelSet 215742745400065) 4 6 pairCert155=true := by
  exact cliqueCheck17
def pairCert156 : PairCertificate (Fin 48) := .first cliqueCert40
theorem pairCheck156 : checkPairSized orthGraph ubGraph (labelSet 41257892839437) (labelSet 243541115917297) 5 6 pairCert156=true := by
  exact cliqueCheck40
def pairCert157 : PairCertificate (Fin 48) := .split 13 pairCert155 pairCert156
theorem pairCheck157 : checkPairSized orthGraph ubGraph (labelSet 41257892847629) (labelSet 243541115917297) 5 6 pairCert157=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 41257892847629) (labelSet 243541115917297) (labelSet 1099914280968)
    (labelSet 215742745400065) (labelSet 41257892839437) 13 4 6
    pairCert155 pairCert156 (by decide) (by decide) (by decide) (by decide)
    pairCheck155 pairCheck156
def pairCert158 : PairCertificate (Fin 48) := .split 11 pairCert154 pairCert157
theorem pairCheck158 : checkPairSized orthGraph ubGraph (labelSet 41257892849677) (labelSet 243541115917297) 5 6 pairCert158=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 41257892849677) (labelSet 243541115917297) (labelSet 4415361122304)
    (labelSet 168688398586561) (labelSet 41257892847629) 11 4 6
    pairCert154 pairCert157 (by decide) (by decide) (by decide) (by decide)
    pairCheck154 pairCheck157
def pairCert159 : PairCertificate (Fin 48) := .split 41 pairCert153 pairCert158
theorem pairCheck159 : checkPairSized orthGraph ubGraph (labelSet 43456916105229) (labelSet 243541115917297) 5 6 pairCert159=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 43456916105229) (labelSet 243541115917297) (labelSet 39599733221376)
    (labelSet 230184770982897) (labelSet 41257892849677) 41 4 6
    pairCert153 pairCert158 (by decide) (by decide) (by decide) (by decide)
    pairCheck153 pairCheck158
def pairCert160 : PairCertificate (Fin 48) := .split 22 pairCert146 pairCert159
theorem pairCheck160 : checkPairSized orthGraph ubGraph (labelSet 43456920299533) (labelSet 243541115917297) 5 6 pairCert160=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 43456920299533) (labelSet 243541115917297) (labelSet 36284286380040)
    (labelSet 101566324605297) (labelSet 43456916105229) 22 4 6
    pairCert146 pairCert159 (by decide) (by decide) (by decide) (by decide)
    pairCheck146 pairCheck159
def pairCert161 : PairCertificate (Fin 48) := .split 10 pairCert139 pairCert160
theorem pairCheck161 : checkPairSized orthGraph ubGraph (labelSet 43456920300557) (labelSet 243541115917297) 5 6 pairCert161=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 43456920300557) (labelSet 243541115917297) (labelSet 35193129805825)
    (labelSet 155532939923696) (labelSet 43456920299533) 10 4 6
    pairCert139 pairCert160 (by decide) (by decide) (by decide) (by decide)
    pairCheck139 pairCheck160
def pairCert162 : PairCertificate (Fin 48) := .first cliqueCert41
theorem pairCheck162 : checkPairSized orthGraph ubGraph (labelSet 524288) (labelSet 14386596970785) 3 6 pairCert162=true := by
  exact cliqueCheck41
def pairCert163 : PairCertificate (Fin 48) := .first cliqueCert41
theorem pairCheck163 : checkPairSized orthGraph ubGraph (labelSet 524288) (labelSet 230416426501409) 3 6 pairCert163=true := by
  exact cliqueCheck41
def pairCert164 : PairCertificate (Fin 48) := .cross cliqueCert42
theorem pairCheck164 : checkPairSized orthGraph ubGraph (labelSet 34360528896) (labelSet 242668354404384) 3 6 pairCert164=true := by
  exact cliqueCheck42
def pairCert165 : PairCertificate (Fin 48) := .first cliqueCert4
theorem pairCheck165 : checkPairSized orthGraph ubGraph (labelSet 34360528896) (labelSet 243772232336673) 4 6 pairCert165=true := by
  exact cliqueCheck4
def pairCert166 : PairCertificate (Fin 48) := .split 14 pairCert164 pairCert165
theorem pairCheck166 : checkPairSized orthGraph ubGraph (labelSet 34360545280) (labelSet 243772232336673) 4 6 pairCert166=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 34360545280) (labelSet 243772232336673) (labelSet 34360528896)
    (labelSet 242668354404384) (labelSet 34360528896) 14 3 6
    pairCert164 pairCert165 (by decide) (by decide) (by decide) (by decide)
    pairCheck164 pairCheck165
def pairCert167 : PairCertificate (Fin 48) := .split 41 pairCert163 pairCert166
theorem pairCheck167 : checkPairSized orthGraph ubGraph (labelSet 2233383800832) (labelSet 243772232336673) 4 6 pairCert167=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 2233383800832) (labelSet 243772232336673) (labelSet 524288)
    (labelSet 230416426501409) (labelSet 34360545280) 41 3 6
    pairCert163 pairCert166 (by decide) (by decide) (by decide) (by decide)
    pairCheck163 pairCheck166
end Mub6.Numerical.ClusterTube48
#print axioms Mub6.Numerical.ClusterTube48.pairCheck144
#print axioms Mub6.Numerical.ClusterTube48.pairCheck145
#print axioms Mub6.Numerical.ClusterTube48.pairCheck146
#print axioms Mub6.Numerical.ClusterTube48.pairCheck147
#print axioms Mub6.Numerical.ClusterTube48.pairCheck148
#print axioms Mub6.Numerical.ClusterTube48.pairCheck149
#print axioms Mub6.Numerical.ClusterTube48.pairCheck150
#print axioms Mub6.Numerical.ClusterTube48.pairCheck151
#print axioms Mub6.Numerical.ClusterTube48.pairCheck152
#print axioms Mub6.Numerical.ClusterTube48.pairCheck153
#print axioms Mub6.Numerical.ClusterTube48.pairCheck154
#print axioms Mub6.Numerical.ClusterTube48.pairCheck155
#print axioms Mub6.Numerical.ClusterTube48.pairCheck156
#print axioms Mub6.Numerical.ClusterTube48.pairCheck157
#print axioms Mub6.Numerical.ClusterTube48.pairCheck158
#print axioms Mub6.Numerical.ClusterTube48.pairCheck159
#print axioms Mub6.Numerical.ClusterTube48.pairCheck160
#print axioms Mub6.Numerical.ClusterTube48.pairCheck161
#print axioms Mub6.Numerical.ClusterTube48.pairCheck162
#print axioms Mub6.Numerical.ClusterTube48.pairCheck163
#print axioms Mub6.Numerical.ClusterTube48.pairCheck164
#print axioms Mub6.Numerical.ClusterTube48.pairCheck165
#print axioms Mub6.Numerical.ClusterTube48.pairCheck166
#print axioms Mub6.Numerical.ClusterTube48.pairCheck167

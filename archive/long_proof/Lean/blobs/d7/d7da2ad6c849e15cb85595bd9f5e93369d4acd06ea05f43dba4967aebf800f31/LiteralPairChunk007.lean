import LiteralPairChunk006
set_option autoImplicit false
set_option maxRecDepth 16384
set_option maxHeartbeats 3200000
namespace Mub6.Numerical.ClusterTube48
open Mub6.Numerical.GraphKernel
def pairCert168 : PairCertificate (Fin 48) := .split 9 pairCert162 pairCert167
theorem pairCheck168 : checkPairSized orthGraph ubGraph (labelSet 2233383801344) (labelSet 243772232336673) 4 6 pairCert168=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 2233383801344) (labelSet 243772232336673) (labelSet 524288)
    (labelSet 14386596970785) (labelSet 2233383800832) 9 3 6
    pairCert162 pairCert167 (by decide) (by decide) (by decide) (by decide)
    pairCheck162 pairCheck167
def pairCert169 : PairCertificate (Fin 48) := .first cliqueCert41
theorem pairCheck169 : checkPairSized orthGraph ubGraph (labelSet 524288) (labelSet 45121919922179) 3 6 pairCert169=true := by
  exact cliqueCheck41
def pairCert170 : PairCertificate (Fin 48) := .first cliqueCert41
theorem pairCheck170 : checkPairSized orthGraph ubGraph (labelSet 524288) (labelSet 203009415061504) 3 6 pairCert170=true := by
  exact cliqueCheck41
def pairCert171 : PairCertificate (Fin 48) := .cross cliqueCert43
theorem pairCheck171 : checkPairSized orthGraph ubGraph (labelSet 4415361122304) (labelSet 195206536246275) 3 6 pairCert171=true := by
  exact cliqueCheck43
def pairCert172 : PairCertificate (Fin 48) := .first cliqueCert39
theorem pairCheck172 : checkPairSized orthGraph ubGraph (labelSet 4415361122304) (labelSet 204147652703235) 4 6 pairCert172=true := by
  exact cliqueCheck39
def pairCert173 : PairCertificate (Fin 48) := .split 41 pairCert171 pairCert172
theorem pairCheck173 : checkPairSized orthGraph ubGraph (labelSet 6614384377856) (labelSet 204147652703235) 4 6 pairCert173=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 6614384377856) (labelSet 204147652703235) (labelSet 4415361122304)
    (labelSet 195206536246275) (labelSet 4415361122304) 41 3 6
    pairCert171 pairCert172 (by decide) (by decide) (by decide) (by decide)
    pairCheck171 pairCheck172
def pairCert174 : PairCertificate (Fin 48) := .split 14 pairCert170 pairCert173
theorem pairCheck174 : checkPairSized orthGraph ubGraph (labelSet 6614384394240) (labelSet 204147652703235) 4 6 pairCert174=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 6614384394240) (labelSet 204147652703235) (labelSet 524288)
    (labelSet 203009415061504) (labelSet 6614384377856) 14 3 6
    pairCert170 pairCert173 (by decide) (by decide) (by decide) (by decide)
    pairCheck170 pairCheck173
def pairCert175 : PairCertificate (Fin 48) := .split 9 pairCert169 pairCert174
theorem pairCheck175 : checkPairSized orthGraph ubGraph (labelSet 6614384394752) (labelSet 204147652703235) 4 6 pairCert175=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 6614384394752) (labelSet 204147652703235) (labelSet 524288)
    (labelSet 45121919922179) (labelSet 6614384394240) 9 3 6
    pairCert169 pairCert174 (by decide) (by decide) (by decide) (by decide)
    pairCheck169 pairCheck174
def pairCert176 : PairCertificate (Fin 48) := .first cliqueCert41
theorem pairCheck176 : checkPairSized orthGraph ubGraph (labelSet 524288) (labelSet 74931904839696) 3 6 pairCert176=true := by
  exact cliqueCheck41
def pairCert177 : PairCertificate (Fin 48) := .first cliqueCert41
theorem pairCheck177 : checkPairSized orthGraph ubGraph (labelSet 524288) (labelSet 70411991684370) 3 6 pairCert177=true := by
  exact cliqueCheck41
def pairCert178 : PairCertificate (Fin 48) := .cross cliqueCert44
theorem pairCheck178 : checkPairSized orthGraph ubGraph (labelSet 158329674924036) (labelSet 4455567364370) 3 6 pairCert178=true := by
  exact cliqueCheck44
def pairCert179 : PairCertificate (Fin 48) := .first cliqueCert45
theorem pairCheck179 : checkPairSized orthGraph ubGraph (labelSet 158329674924036) (labelSet 74970630886674) 4 6 pairCert179=true := by
  exact cliqueCheck45
def pairCert180 : PairCertificate (Fin 48) := .split 9 pairCert178 pairCert179
theorem pairCheck180 : checkPairSized orthGraph ubGraph (labelSet 158329674924548) (labelSet 74970630886674) 4 6 pairCert180=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 158329674924548) (labelSet 74970630886674) (labelSet 158329674924036)
    (labelSet 4455567364370) (labelSet 158329674924036) 9 3 6
    pairCert178 pairCert179 (by decide) (by decide) (by decide) (by decide)
    pairCheck178 pairCheck179
def pairCert181 : PairCertificate (Fin 48) := .split 41 pairCert177 pairCert180
theorem pairCheck181 : checkPairSized orthGraph ubGraph (labelSet 160528698180100) (labelSet 74970630886674) 4 6 pairCert181=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 160528698180100) (labelSet 74970630886674) (labelSet 524288)
    (labelSet 70411991684370) (labelSet 158329674924548) 41 3 6
    pairCert177 pairCert180 (by decide) (by decide) (by decide) (by decide)
    pairCheck177 pairCheck180
def pairCert182 : PairCertificate (Fin 48) := .split 14 pairCert176 pairCert181
theorem pairCheck182 : checkPairSized orthGraph ubGraph (labelSet 160528698196484) (labelSet 74970630886674) 4 6 pairCert182=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 160528698196484) (labelSet 74970630886674) (labelSet 524288)
    (labelSet 74931904839696) (labelSet 160528698180100) 14 3 6
    pairCert176 pairCert181 (by decide) (by decide) (by decide) (by decide)
    pairCheck176 pairCheck181
def pairCert183 : PairCertificate (Fin 48) := .first cliqueCert45
theorem pairCheck183 : checkPairSized orthGraph ubGraph (labelSet 158329674924036) (labelSet 49606411071795) 4 6 pairCert183=true := by
  exact cliqueCheck45
def pairCert184 : PairCertificate (Fin 48) := .first cliqueCert4
theorem pairCheck184 : checkPairSized orthGraph ubGraph (labelSet 34360528896) (labelSet 277862667132976) 4 6 pairCert184=true := by
  exact cliqueCheck4
def pairCert185 : PairCertificate (Fin 48) := .first cliqueCert46
theorem pairCheck185 : checkPairSized orthGraph ubGraph (labelSet 164978452336652) (labelSet 279000904807731) 5 6 pairCert185=true := by
  exact cliqueCheck46
def pairCert186 : PairCertificate (Fin 48) := .split 14 pairCert184 pairCert185
theorem pairCheck186 : checkPairSized orthGraph ubGraph (labelSet 164978452353036) (labelSet 279000904807731) 5 6 pairCert186=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 164978452353036) (labelSet 279000904807731) (labelSet 34360528896)
    (labelSet 277862667132976) (labelSet 164978452336652) 14 4 6
    pairCert184 pairCert185 (by decide) (by decide) (by decide) (by decide)
    pairCheck184 pairCheck185
def pairCert187 : PairCertificate (Fin 48) := .split 9 pairCert183 pairCert186
theorem pairCheck187 : checkPairSized orthGraph ubGraph (labelSet 164978452353548) (labelSet 279000904807731) 5 6 pairCert187=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 164978452353548) (labelSet 279000904807731) (labelSet 158329674924036)
    (labelSet 49606411071795) (labelSet 164978452353036) 9 4 6
    pairCert183 pairCert186 (by decide) (by decide) (by decide) (by decide)
    pairCheck183 pairCheck186
def pairCert188 : PairCertificate (Fin 48) := .split 38 pairCert182 pairCert187
theorem pairCheck188 : checkPairSized orthGraph ubGraph (labelSet 165253330260492) (labelSet 279000904807731) 5 6 pairCert188=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 165253330260492) (labelSet 279000904807731) (labelSet 160528698196484)
    (labelSet 74970630886674) (labelSet 164978452353548) 38 4 6
    pairCert182 pairCert187 (by decide) (by decide) (by decide) (by decide)
    pairCheck182 pairCheck187
def pairCert189 : PairCertificate (Fin 48) := .split 11 pairCert175 pairCert188
theorem pairCheck189 : checkPairSized orthGraph ubGraph (labelSet 165253330262540) (labelSet 279000904807731) 5 6 pairCert189=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 165253330262540) (labelSet 279000904807731) (labelSet 6614384394752)
    (labelSet 204147652703235) (labelSet 165253330260492) 11 4 6
    pairCert175 pairCert188 (by decide) (by decide) (by decide) (by decide)
    pairCheck175 pairCheck188
def pairCert190 : PairCertificate (Fin 48) := .split 6 pairCert168 pairCert189
theorem pairCheck190 : checkPairSized orthGraph ubGraph (labelSet 165253330262604) (labelSet 279000904807731) 5 6 pairCert190=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 165253330262604) (labelSet 279000904807731) (labelSet 2233383801344)
    (labelSet 243772232336673) (labelSet 165253330262540) 6 4 6
    pairCert168 pairCert189 (by decide) (by decide) (by decide) (by decide)
    pairCheck168 pairCheck189
def pairCert191 : PairCertificate (Fin 48) := .first cliqueCert47
theorem pairCheck191 : checkPairSized orthGraph ubGraph (labelSet 4) (labelSet 51679194141089) 3 6 pairCert191=true := by
  exact cliqueCheck47
end Mub6.Numerical.ClusterTube48
#print axioms Mub6.Numerical.ClusterTube48.pairCheck168
#print axioms Mub6.Numerical.ClusterTube48.pairCheck169
#print axioms Mub6.Numerical.ClusterTube48.pairCheck170
#print axioms Mub6.Numerical.ClusterTube48.pairCheck171
#print axioms Mub6.Numerical.ClusterTube48.pairCheck172
#print axioms Mub6.Numerical.ClusterTube48.pairCheck173
#print axioms Mub6.Numerical.ClusterTube48.pairCheck174
#print axioms Mub6.Numerical.ClusterTube48.pairCheck175
#print axioms Mub6.Numerical.ClusterTube48.pairCheck176
#print axioms Mub6.Numerical.ClusterTube48.pairCheck177
#print axioms Mub6.Numerical.ClusterTube48.pairCheck178
#print axioms Mub6.Numerical.ClusterTube48.pairCheck179
#print axioms Mub6.Numerical.ClusterTube48.pairCheck180
#print axioms Mub6.Numerical.ClusterTube48.pairCheck181
#print axioms Mub6.Numerical.ClusterTube48.pairCheck182
#print axioms Mub6.Numerical.ClusterTube48.pairCheck183
#print axioms Mub6.Numerical.ClusterTube48.pairCheck184
#print axioms Mub6.Numerical.ClusterTube48.pairCheck185
#print axioms Mub6.Numerical.ClusterTube48.pairCheck186
#print axioms Mub6.Numerical.ClusterTube48.pairCheck187
#print axioms Mub6.Numerical.ClusterTube48.pairCheck188
#print axioms Mub6.Numerical.ClusterTube48.pairCheck189
#print axioms Mub6.Numerical.ClusterTube48.pairCheck190
#print axioms Mub6.Numerical.ClusterTube48.pairCheck191

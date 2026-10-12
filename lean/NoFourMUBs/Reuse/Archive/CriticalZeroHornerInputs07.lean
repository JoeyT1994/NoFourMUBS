import NoFourMUBs.Reuse.Archive.CriticalZeroHornerBindingPilot
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 2000000
set_option linter.unusedSimpArgs false
namespace CriticalZeroSplitReduction20261003
open HornerReflector
noncomputable section
variable {R : Type*} [CommRing R]
def numQx_00_31_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 124416) 1) (.lit 15711360)) 1) (.lit 334770336)) 1) (.lit 4715337888)) 1) (.lit 57142199520)) 1) (.lit 317511862272)) 1) (.neg (.lit 5398350242112))) 1) (.neg (.lit 928693637712))) 1) (.lit 53408382981984)) 1) (.neg (.lit 127544795698752))) 1) (.lit 121520585855808))
theorem numQx_00_31_interpret (X Y : R) : value X Y numQx_00_31_expr=numQx_00_31 X Y := by
  simp only [numQx_00_31_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_31]
#print axioms numQx_00_31_interpret
def numQx_00_32_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 981504) 1) (.lit 29521248)) 1) (.lit 256519872)) 1) (.lit 8120830896)) 1) (.lit 40146762960)) 1) (.neg (.lit 613251582624))) 1) (.neg (.lit 1664022050640))) 1) (.lit 12768102362160)) 1) (.neg (.lit 29626622332416))) 1) (.lit 28120380914880))
theorem numQx_00_32_interpret (X Y : R) : value X Y numQx_00_32_expr=numQx_00_32 X Y := by
  simp only [numQx_00_32_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_32]
#print axioms numQx_00_32_interpret
def numQx_00_33_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 27648) 1) (.lit 2343360)) 1) (.neg (.lit 4905792))) 1) (.lit 963126816)) 1) (.lit 2909290752)) 1) (.neg (.lit 43371702864))) 1) (.neg (.lit 442779315840))) 1) (.lit 2334539139984)) 1) (.neg (.lit 5557077618768))) 1) (.lit 5315622892704))
theorem numQx_00_33_interpret (X Y : R) : value X Y numQx_00_33_expr=numQx_00_33 X Y := by
  simp only [numQx_00_33_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_33]
#print axioms numQx_00_33_interpret
def numQx_00_34_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 131328) 1) (.neg (.lit 2018784))) 1) (.lit 87610752)) 1) (.lit 52856784)) 1) (.neg (.lit 730910160))) 1) (.neg (.lit 72209857248))) 1) (.lit 328340444400)) 1) (.neg (.lit 836219624832))) 1) (.lit 813061794816))
theorem numQx_00_34_interpret (X Y : R) : value X Y numQx_00_34_expr=numQx_00_34 X Y := by
  simp only [numQx_00_34_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_34]
#print axioms numQx_00_34_interpret
def numQx_00_35_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 3456) 1) (.neg (.lit 139776))) 1) (.lit 5484384)) 1) (.neg (.lit 10243680))) 1) (.lit 208053072)) 1) (.neg (.lit 8135431488))) 1) (.lit 35075975616)) 1) (.neg (.lit 99576943056))) 1) (.lit 99085948272))
theorem numQx_00_35_interpret (X Y : R) : value X Y numQx_00_35_expr=numQx_00_35 X Y := by
  simp only [numQx_00_35_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_35]
#print axioms numQx_00_35_interpret
def numQx_00_36_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 3456)) 1) (.lit 203520)) 1) (.neg (.lit 906720))) 1) (.lit 23911776)) 1) (.neg (.lit 638423280))) 1) (.lit 2760530544)) 1) (.neg (.lit 9172070640))) 1) (.lit 9393676272))
theorem numQx_00_36_interpret (X Y : R) : value X Y numQx_00_36_expr=numQx_00_36 X Y := by
  simp only [numQx_00_36_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_36]
#print axioms numQx_00_36_interpret
def numQx_00_37_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 3264) 1) (.neg (.lit 24960))) 1) (.lit 1173312)) 1) (.neg (.lit 33415776))) 1) (.lit 151156368)) 1) (.neg (.lit 630049104))) 1) (.lit 667402416))
theorem numQx_00_37_interpret (X Y : R) : value X Y numQx_00_37_expr=numQx_00_37 X Y := by
  simp only [numQx_00_37_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_37]
#print axioms numQx_00_37_interpret
def numQx_00_38_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 23328) 1) (.neg (.lit 1046016))) 1) (.lit 5146848)) 1) (.neg (.lit 30362688))) 1) (.lit 33409584))
theorem numQx_00_38_interpret (X Y : R) : value X Y numQx_00_38_expr=numQx_00_38 X Y := by
  simp only [numQx_00_38_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_38]
#print axioms numQx_00_38_interpret
def numQx_00_39_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 14688)) 1) (.lit 82080)) 1) (.neg (.lit 914976))) 1) (.lit 1049760))
theorem numQx_00_39_interpret (X Y : R) : value X Y numQx_00_39_expr=numQx_00_39 X Y := by
  simp only [numQx_00_39_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_39]
#print axioms numQx_00_39_interpret
def numQx_00_40_expr : HExpr := (.add (.mulX (.neg (.lit 12960)) 1) (.lit 15552))
theorem numQx_00_40_interpret (X Y : R) : value X Y numQx_00_40_expr=numQx_00_40 X Y := by
  simp only [numQx_00_40_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_40]
#print axioms numQx_00_40_interpret
def numQx_01_00_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 27648)) 1) (.lit 1759104)) 1) (.neg (.lit 48117888))) 1) (.lit 734832000)) 1) (.neg (.lit 6789847680))) 1) (.lit 38252414592)) 1) (.neg (.lit 124280666496))) 1) (.lit 196522630272)) 1) (.neg (.lit 82649704320))) 14)
theorem numQx_01_00_interpret (X Y : R) : value X Y numQx_01_00_expr=numQx_01_00 X Y := by
  simp only [numQx_01_00_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_01_00]
#print axioms numQx_01_00_interpret
def numQx_01_01_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 82944) 1) (.neg (.lit 5432832))) 1) (.lit 154151424)) 1) (.neg (.lit 2433763584))) 1) (.lit 22407757056)) 1) (.neg (.lit 106254187776))) 1) (.lit 20815481088)) 1) (.lit 2670503779584)) 1) (.neg (.lit 13984329970944))) 1) (.lit 27671121006336)) 1) (.neg (.lit 13389252099840))) 12)
theorem numQx_01_01_interpret (X Y : R) : value X Y numQx_01_01_expr=numQx_01_01 X Y := by
  simp only [numQx_01_01_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_01_01]
#print axioms numQx_01_01_interpret
def numQx_01_02_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 82944)) 1) (.lit 5194368)) 1) (.neg (.lit 142490880))) 1) (.lit 2320109568)) 1) (.neg (.lit 26440826112))) 1) (.lit 238470200064)) 1) (.neg (.lit 1751599302912))) 1) (.lit 9530678661120)) 1) (.neg (.lit 32745200631552))) 1) (.lit 56097109312128)) 1) (.neg (.lit 24265953188352))) 12)
theorem numQx_01_02_interpret (X Y : R) : value X Y numQx_01_02_expr=numQx_01_02 X Y := by
  simp only [numQx_01_02_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_01_02]
#print axioms numQx_01_02_interpret
def numQx_01_03_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 27648) 1) (.neg (.lit 1130112))) 1) (.lit 16329600)) 1) (.neg (.lit 72213120))) 1) (.neg (.lit 346778496))) 1) (.lit 1415076480)) 1) (.lit 20127678336)) 1) (.lit 378737451648)) 1) (.neg (.lit 8868007163520))) 1) (.lit 62306857096704)) 1) (.neg (.lit 188804984548608))) 1) (.lit 212442799984128)) 1) (.neg (.lit 64268410079232))) 10)
theorem numQx_01_03_interpret (X Y : R) : value X Y numQx_01_03_expr=numQx_01_03 X Y := by
  simp only [numQx_01_03_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_01_03]
#print axioms numQx_01_03_interpret
def numQx_01_04_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 584064)) 1) (.lit 30191616)) 1) (.neg (.lit 635390784))) 1) (.lit 7105933440)) 1) (.neg (.lit 45210363840))) 1) (.lit 84657685248)) 1) (.lit 2183586040512)) 1) (.neg (.lit 31290429786624))) 1) (.lit 192097809990720)) 1) (.neg (.lit 539004638373120))) 1) (.lit 522230421716352)) 1) (.neg (.lit 139694530241664))) 10)
theorem numQx_01_04_interpret (X Y : R) : value X Y numQx_01_04_expr=numQx_01_04 X Y := by
  simp only [numQx_01_04_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_01_04]
#print axioms numQx_01_04_interpret
def numQx_01_05_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 193536) 1) (.neg (.lit 9652608))) 1) (.lit 246189888)) 1) (.neg (.lit 4275550656))) 1) (.lit 55491386688)) 1) (.neg (.lit 577791683136))) 1) (.lit 4970331704448)) 1) (.neg (.lit 32512418451072))) 1) (.lit 139508880185664)) 1) (.neg (.lit 342406603000512))) 1) (.lit 491105461399488)) 1) (.neg (.lit 718449084742464))) 1) (.lit 490939243660800)) 1) (.neg (.lit 80335512599040))) 8)
theorem numQx_01_05_interpret (X Y : R) : value X Y numQx_01_05_expr=numQx_01_05 X Y := by
  simp only [numQx_01_05_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_01_05]
#print axioms numQx_01_05_interpret
def numQx_01_06_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 1185408)) 1) (.lit 43526112)) 1) (.neg (.lit 476777856))) 1) (.lit 1763640864)) 1) (.neg (.lit 30914405568))) 1) (.lit 620352709344)) 1) (.neg (.lit 4805329727808))) 1) (.lit 30339413361504)) 1) (.neg (.lit 256161222097344))) 1) (.lit 1280782956980160)) 1) (.neg (.lit 2355712789640256))) 1) (.lit 1317781578958848)) 1) (.neg (.lit 141364054268928))) 8)
theorem numQx_01_06_interpret (X Y : R) : value X Y numQx_01_06_expr=numQx_01_06 X Y := by
  simp only [numQx_01_06_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_01_06]
#print axioms numQx_01_06_interpret
def numQx_01_07_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 774144) 1) (.neg (.lit 40016256))) 1) (.lit 997190112)) 1) (.neg (.lit 13123487808))) 1) (.lit 82168253280)) 1) (.neg (.lit 70327821024))) 1) (.neg (.lit 3773934135936))) 1) (.lit 56346379443072)) 1) (.neg (.lit 436171429690272))) 1) (.lit 1534306112252064)) 1) (.neg (.lit 1731872056157856))) 1) (.lit 692090257374720)) 1) (.neg (.lit 604632176923392))) 1) (.lit 261090415946880)) 1) (.lit 36150980669568)) 6)
theorem numQx_01_07_interpret (X Y : R) : value X Y numQx_01_07_expr=numQx_01_07 X Y := by
  simp only [numQx_01_07_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_01_07]
#print axioms numQx_01_07_interpret
def numQx_01_08_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 459648) 1) (.neg (.lit 55412928))) 1) (.lit 2562552000)) 1) (.neg (.lit 47948844672))) 1) (.lit 552887861760)) 1) (.neg (.lit 6164629172352))) 1) (.lit 56819641538592)) 1) (.neg (.lit 283353632403840))) 1) (.lit 544690156309056)) 1) (.neg (.lit 313623425876544))) 1) (.lit 1850517860816736)) 1) (.neg (.lit 2696710266200448))) 1) (.lit 347624656369920)) 1) (.lit 262230981866496)) 6)
theorem numQx_01_08_interpret (X Y : R) : value X Y numQx_01_08_expr=numQx_01_08 X Y := by
  simp only [numQx_01_08_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_01_08]
#print axioms numQx_01_08_interpret
def numQx_01_09_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 2128896) 1) (.neg (.lit 88476288))) 1) (.lit 1663011072)) 1) (.neg (.lit 12006486144))) 1) (.lit 40972091328)) 1) (.neg (.lit 1250890768224))) 1) (.lit 16613730234432)) 1) (.neg (.lit 69064593038208))) 1) (.lit 173074609344960)) 1) (.neg (.lit 1205442058224096))) 1) (.lit 3001934753163360)) 1) (.neg (.lit 85397704951968))) 1) (.neg (.lit 2831878704763872))) 1) (.lit 1081428678679968)) 1) (.neg (.lit 171754350547392))) 1) (.lit 4686238234944)) 4)
theorem numQx_01_09_interpret (X Y : R) : value X Y numQx_01_09_expr=numQx_01_09 X Y := by
  simp only [numQx_01_09_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_01_09]
#print axioms numQx_01_09_interpret
def numQx_01_10_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 10620288) 1) (.neg (.lit 460088352))) 1) (.lit 11070831744)) 1) (.neg (.lit 109047538272))) 1) (.lit 163786029120)) 1) (.lit 3639098788848)) 1) (.neg (.lit 47099187085392))) 1) (.lit 457893576865152)) 1) (.neg (.lit 1775052771043680))) 1) (.neg (.lit 287812359392688))) 1) (.lit 6443944783190064)) 1) (.neg (.lit 5298010121880576))) 1) (.lit 2151722605527936)) 1) (.neg (.lit 1223703257191488))) 1) (.lit 38159368484544)) 4)
theorem numQx_01_10_interpret (X Y : R) : value X Y numQx_01_10_expr=numQx_01_10 X Y := by
  simp only [numQx_01_10_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_01_10]
#print axioms numQx_01_10_interpret
def numQx_01_11_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 4451328) 1) (.neg (.lit 118222848))) 1) (.lit 1469951136)) 1) (.lit 9426172992)) 1) (.neg (.lit 294107717664))) 1) (.lit 3069257387904)) 1) (.neg (.lit 48236167597680))) 1) (.lit 404180973753984)) 1) (.neg (.lit 763021052434944))) 1) (.neg (.lit 2834642217699360))) 1) (.lit 6706807508105136)) 1) (.neg (.lit 6127694331548832))) 1) (.lit 9063327546704160)) 1) (.neg (.lit 5911277662355328))) 1) (.lit 630695761180704)) 1) (.lit 70963036129152)) 1) (.neg (.lit 84352288228992))) 2)
theorem numQx_01_11_interpret (X Y : R) : value X Y numQx_01_11_expr=numQx_01_11 X Y := by
  simp only [numQx_01_11_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_01_11]
#print axioms numQx_01_11_interpret
def numQx_01_12_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 34933248) 1) (.neg (.lit 970294848))) 1) (.lit 17053425600)) 1) (.neg (.lit 85927241472))) 1) (.lit 446757850368)) 1) (.neg (.lit 19239854431248))) 1) (.lit 148204646296704)) 1) (.neg (.lit 121867545229344))) 1) (.neg (.lit 861217495272288))) 1) (.lit 2913789037816656)) 1) (.neg (.lit 12598030418111856))) 1) (.lit 21755666498321520)) 1) (.neg (.lit 11936501028318960))) 1) (.lit 1984553706492720)) 1) (.lit 381147376442112)) 1) (.neg (.lit 353476255435776))) 2)
theorem numQx_01_12_interpret (X Y : R) : value X Y numQx_01_12_expr=numQx_01_12 X Y := by
  simp only [numQx_01_12_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_01_12]
#print axioms numQx_01_12_interpret
def numQx_01_13_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 7354368) 1) (.neg (.lit 41176704))) 1) (.neg (.lit 833571072))) 1) (.lit 63317775360)) 1) (.neg (.lit 374643390816))) 1) (.neg (.lit 4059647937792))) 1) (.lit 32459887228608)) 1) (.neg (.lit 231978392389440))) 1) (.lit 1399365179168832)) 1) (.lit 2490960297176640)) 1) (.neg (.lit 19353187201122576))) 1) (.lit 25915619936350368)) 1) (.neg (.lit 14791604010892848))) 1) (.lit 6073858660998240)) 1) (.lit 326945700349056)) 1) (.neg (.lit 768431493429984))) 1) (.lit 46192919744448)) 1) (.lit 18075490334784))
theorem numQx_01_13_interpret (X Y : R) : value X Y numQx_01_13_expr=numQx_01_13 X Y := by
  simp only [numQx_01_13_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_01_13]
#print axioms numQx_01_13_interpret
def numQx_01_14_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 72769536) 1) (.neg (.lit 1178184384))) 1) (.lit 21097646016)) 1) (.lit 28470594960)) 1) (.neg (.lit 1380212095104))) 1) (.lit 11413762437312)) 1) (.neg (.lit 281364955937568))) 1) (.lit 1313299629109296)) 1) (.lit 3193196025296448)) 1) (.neg (.lit 15551330588607744))) 1) (.lit 18167314477195152)) 1) (.neg (.lit 17778480062567040))) 1) (.lit 12641500302196752)) 1) (.lit 851998150302912)) 1) (.neg (.lit 1782588822773760))) 1) (.lit 269123967206784)) 1) (.neg (.lit 42176144114496)))
theorem numQx_01_14_interpret (X Y : R) : value X Y numQx_01_14_expr=numQx_01_14 X Y := by
  simp only [numQx_01_14_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_01_14]
#print axioms numQx_01_14_interpret
def numQx_01_15_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 9870336) 1) (.lit 171209472)) 1) (.neg (.lit 1916729472))) 1) (.lit 94554652704)) 1) (.neg (.lit 181379039376))) 1) (.lit 3791291970528)) 1) (.neg (.lit 146496271038048))) 1) (.lit 454146109518096)) 1) (.lit 1590722119546560)) 1) (.neg (.lit 5804099020756368))) 1) (.lit 11235715011550800)) 1) (.neg (.lit 20933101401430464))) 1) (.lit 12316366526553792)) 1) (.lit 5326411162220064)) 1) (.neg (.lit 4210400469757536))) 1) (.lit 776409256139472)) 1) (.neg (.lit 423714040409520)))
theorem numQx_01_15_interpret (X Y : R) : value X Y numQx_01_15_expr=numQx_01_15 X Y := by
  simp only [numQx_01_15_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_01_15]
#print axioms numQx_01_15_interpret
def numQx_01_16_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 110305152) 1) (.neg (.lit 395368128))) 1) (.lit 17591007264)) 1) (.lit 296425774848)) 1) (.lit 694611226944)) 1) (.neg (.lit 41090917307616))) 1) (.lit 75776968733040)) 1) (.neg (.lit 429801885894960))) 1) (.neg (.lit 268393657257936))) 1) (.lit 9608607328220928)) 1) (.neg (.lit 16053181804348272))) 1) (.neg (.lit 659627029417536))) 1) (.lit 13418965306272240)) 1) (.neg (.lit 8549239727940912))) 1) (.lit 2020359624646752)) 1) (.neg (.lit 1183609885625856)))
theorem numQx_01_16_interpret (X Y : R) : value X Y numQx_01_16_expr=numQx_01_16 X Y := by
  simp only [numQx_01_16_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_01_16]
#print axioms numQx_01_16_interpret
def numQx_01_17_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 10865664) 1) (.lit 461597184)) 1) (.neg (.lit 620700288))) 1) (.lit 154017996384)) 1) (.lit 649597737408)) 1) (.neg (.lit 5652037981152))) 1) (.lit 30713743839456)) 1) (.neg (.lit 942044207865264))) 1) (.lit 240144869629872)) 1) (.lit 7383173752789920)) 1) (.neg (.lit 3522425417079552))) 1) (.neg (.lit 15937257203097840))) 1) (.lit 20648258968337280)) 1) (.neg (.lit 15742310533004016))) 1) (.lit 5164257952324512)) 1) (.neg (.lit 2121192263917152)))
theorem numQx_01_17_interpret (X Y : R) : value X Y numQx_01_17_expr=numQx_01_17 X Y := by
  simp only [numQx_01_17_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_01_17]
#print axioms numQx_01_17_interpret
def numQx_01_18_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 129714048) 1) (.lit 952058592)) 1) (.lit 29507420832)) 1) (.lit 503987956032)) 1) (.lit 1491031743552)) 1) (.lit 27709303135392)) 1) (.neg (.lit 525608748718128))) 1) (.neg (.lit 240971818513104))) 1) (.lit 2991455349543792)) 1) (.lit 5820924752285616)) 1) (.neg (.lit 21209578704075600))) 1) (.lit 25423163757891792)) 1) (.neg (.lit 25793664863228640))) 1) (.lit 10352292617504304)) 1) (.neg (.lit 2950162599518928)))
theorem numQx_01_18_interpret (X Y : R) : value X Y numQx_01_18_expr=numQx_01_18 X Y := by
  simp only [numQx_01_18_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_01_18]
#print axioms numQx_01_18_interpret
def numQx_01_19_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 9870336) 1) (.lit 651094272)) 1) (.lit 5023680672)) 1) (.lit 179094694656)) 1) (.lit 1763232480384)) 1) (.lit 15713834865840)) 1) (.neg (.lit 143220864939264))) 1) (.neg (.lit 140001914981232))) 1) (.neg (.lit 205012747878912))) 1) (.lit 6699101648678784)) 1) (.neg (.lit 17291014559986752))) 1) (.lit 28709805303399024)) 1) (.neg (.lit 34354261553364000))) 1) (.lit 14748812798222592)) 1) (.neg (.lit 3160712721274128)))
theorem numQx_01_19_interpret (X Y : R) : value X Y numQx_01_19_expr=numQx_01_19 X Y := by
  simp only [numQx_01_19_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_01_19]
#print axioms numQx_01_19_interpret
def numQx_01_20_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 119605248) 1) (.lit 2193058368)) 1) (.lit 38197470336)) 1) (.lit 825822807168)) 1) (.lit 6859655373600)) 1) (.neg (.lit 6710231081952))) 1) (.lit 82624520029392)) 1) (.neg (.lit 917054003445120))) 1) (.lit 3378498486091056)) 1) (.neg (.lit 11629953462623184))) 1) (.lit 28993524970618080)) 1) (.neg (.lit 35178219499011840))) 1) (.lit 14727130413569280)) 1) (.neg (.lit 2225845385769744)))
theorem numQx_01_20_interpret (X Y : R) : value X Y numQx_01_20_expr=numQx_01_20 X Y := by
  simp only [numQx_01_20_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_01_20]
#print axioms numQx_01_20_interpret
def numQx_01_21_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 7354368) 1) (.lit 645409152)) 1) (.lit 8335405056)) 1) (.lit 234998780736)) 1) (.lit 2591148802848)) 1) (.lit 12247703088912)) 1) (.lit 119478847599360)) 1) (.neg (.lit 491890103643168))) 1) (.lit 814777925718384)) 1) (.neg (.lit 7686925345991232))) 1) (.lit 24169367471784480)) 1) (.neg (.lit 27178015580815680))) 1) (.lit 10068517357620048)) 1) (.neg (.lit 384304518619632)))
theorem numQx_01_21_interpret (X Y : R) : value X Y numQx_01_21_expr=numQx_01_21 X Y := by
  simp only [numQx_01_21_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_01_21]
#print axioms numQx_01_21_interpret
def numQx_01_22_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 87187968) 1) (.lit 2277986112)) 1) (.lit 47508389376)) 1) (.lit 788536320816)) 1) (.lit 6894268273440)) 1) (.lit 65930085685584)) 1) (.neg (.lit 114434325478944))) 1) (.neg (.lit 4333876197696))) 1) (.neg (.lit 4931818230325392))) 1) (.lit 15859028182409856)) 1) (.neg (.lit 15652147683346992))) 1) (.lit 4127159131304112)) 1) (.lit 1309616017754544))
theorem numQx_01_22_interpret (X Y : R) : value X Y numQx_01_22_expr=numQx_01_22 X Y := by
  simp only [numQx_01_22_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_01_22]
#print axioms numQx_01_22_interpret
def numQx_01_23_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 4451328) 1) (.lit 455832576)) 1) (.lit 8671185408)) 1) (.lit 179232210336)) 1) (.lit 2388337760400)) 1) (.lit 23371904727360)) 1) (.lit 5018892464592)) 1) (.neg (.lit 45435165420960))) 1) (.neg (.lit 2733471128818224))) 1) (.lit 8041045722977232)) 1) (.neg (.lit 6498590691786048))) 1) (.lit 134808328473120)) 1) (.lit 1997392878893808))
theorem numQx_01_23_interpret (X Y : R) : value X Y numQx_01_23_expr=numQx_01_23 X Y := by
  simp only [numQx_01_23_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_01_23]
#print axioms numQx_01_23_interpret
def numQx_01_24_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 48940416) 1) (.lit 1598690496)) 1) (.lit 30930750432)) 1) (.lit 606290835648)) 1) (.lit 6129586001232)) 1) (.lit 13051353002832)) 1) (.lit 6169307047200)) 1) (.neg (.lit 1210573796259456))) 1) (.lit 3112893425395008)) 1) (.neg (.lit 1722134729686320))) 1) (.neg (.lit 1228756224673440))) 1) (.lit 1714331495910384))
theorem numQx_01_24_interpret (X Y : R) : value X Y numQx_01_24_expr=numQx_01_24 X Y := by
  simp only [numQx_01_24_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_01_24]
#print axioms numQx_01_24_interpret
def numQx_01_25_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 2128896) 1) (.lit 234638592)) 1) (.lit 4584089088)) 1) (.lit 113932882272)) 1) (.lit 1270215015936)) 1) (.lit 5032643203584)) 1) (.lit 13627091732832)) 1) (.neg (.lit 415466257363632))) 1) (.lit 898353572288832)) 1) (.neg (.lit 106300336578624))) 1) (.neg (.lit 1071680913744912))) 1) (.lit 1050312791123856))
theorem numQx_01_25_interpret (X Y : R) : value X Y numQx_01_25_expr=numQx_01_25 X Y := by
  simp only [numQx_01_25_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_01_25]
#print axioms numQx_01_25_interpret
def numQx_01_26_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 20587392) 1) (.lit 648143712)) 1) (.lit 15828309600)) 1) (.lit 209681588352)) 1) (.lit 1223314363296)) 1) (.lit 6061581784224)) 1) (.neg (.lit 108960815923056))) 1) (.lit 180831821638608)) 1) (.lit 152780532058368)) 1) (.neg (.lit 565069130637840))) 1) (.lit 491828365711440))
theorem numQx_01_26_interpret (X Y : R) : value X Y numQx_01_26_expr=numQx_01_26 X Y := by
  simp only [numQx_01_26_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_01_26]
#print axioms numQx_01_26_interpret
def numQx_01_27_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 774144) 1) (.lit 76654464)) 1) (.lit 1705955232)) 1) (.lit 25888371168)) 1) (.lit 229976075616)) 1) (.lit 1527835936032)) 1) (.neg (.lit 21475798689312))) 1) (.lit 19498352683824)) 1) (.lit 89724304034496)) 1) (.neg (.lit 216776464262496))) 1) (.lit 181094506481520))
theorem numQx_01_27_interpret (X Y : R) : value X Y numQx_01_27_expr=numQx_01_27 X Y := by
  simp only [numQx_01_27_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_01_27]
#print axioms numQx_01_27_interpret
def numQx_01_28_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 5781888) 1) (.lit 161692992)) 1) (.lit 2004157248)) 1) (.lit 36728530368)) 1) (.lit 245188658736)) 1) (.neg (.lit 3076344531936))) 1) (.neg (.lit 1501364117664))) 1) (.lit 29777463054432)) 1) (.neg (.lit 63843323919552))) 1) (.lit 53069596538256))
theorem numQx_01_28_interpret (X Y : R) : value X Y numQx_01_28_expr=numQx_01_28 X Y := by
  simp only [numQx_01_28_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_01_28]
#print axioms numQx_01_28_interpret
def numQx_01_29_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 193536) 1) (.lit 14141952)) 1) (.lit 37180992)) 1) (.lit 4969691520)) 1) (.lit 24533919456)) 1) (.neg (.lit 296011103904))) 1) (.neg (.lit 1144321766496))) 1) (.lit 6940586277216)) 1) (.neg (.lit 14706155751696))) 1) (.lit 12410356673520))
theorem numQx_01_29_interpret (X Y : R) : value X Y numQx_01_29_expr=numQx_01_29 X Y := by
  simp only [numQx_01_29_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_01_29]
#print axioms numQx_01_29_interpret
def numQx_01_30_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 908928) 1) (.neg (.lit 9538464))) 1) (.lit 522588672)) 1) (.lit 1261868976)) 1) (.neg (.lit 14615739936))) 1) (.neg (.lit 261090127008))) 1) (.lit 1192773831120)) 1) (.neg (.lit 2656535847984))) 1) (.lit 2304964404432))
theorem numQx_01_30_interpret (X Y : R) : value X Y numQx_01_30_expr=numQx_01_30 X Y := by
  simp only [numQx_01_30_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_01_30]
#print axioms numQx_01_30_interpret
def numQx_01_31_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 27648) 1) (.neg (.lit 926592))) 1) (.lit 37851168)) 1) (.neg (.lit 5613696))) 1) (.lit 383022384)) 1) (.neg (.lit 36670800816))) 1) (.lit 151692759072)) 1) (.neg (.lit 373188315312))) 1) (.lit 335878036992))
theorem numQx_01_31_interpret (X Y : R) : value X Y numQx_01_31_expr=numQx_01_31 X Y := by
  simp only [numQx_01_31_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_01_31]
#print axioms numQx_01_31_interpret
def numQx_01_32_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 27648)) 1) (.lit 1615104)) 1) (.neg (.lit 4320288))) 1) (.lit 114314304)) 1) (.neg (.lit 3428583408))) 1) (.lit 13955827968)) 1) (.neg (.lit 39985743744))) 1) (.lit 37580128848))
theorem numQx_01_32_interpret (X Y : R) : value X Y numQx_01_32_expr=numQx_01_32 X Y := by
  simp only [numQx_01_32_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_01_32]
#print axioms numQx_01_32_interpret
def numQx_01_33_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 29568) 1) (.neg (.lit 164352))) 1) (.lit 7296864)) 1) (.neg (.lit 208567296))) 1) (.lit 881011440)) 1) (.neg (.lit 3157675920))) 1) (.lit 3115450512))
theorem numQx_01_33_interpret (X Y : R) : value X Y numQx_01_33_expr=numQx_01_33 X Y := by
  simp only [numQx_01_33_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_01_33]
#print axioms numQx_01_33_interpret
def numQx_01_34_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 171936) 1) (.neg (.lit 7464384))) 1) (.lit 34201152)) 1) (.neg (.lit 173175840))) 1) (.lit 180138816))
theorem numQx_01_34_interpret (X Y : R) : value X Y numQx_01_34_expr=numQx_01_34 X Y := by
  simp only [numQx_01_34_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_01_34]
#print axioms numQx_01_34_interpret
def numQx_01_35_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 118368)) 1) (.lit 616032)) 1) (.neg (.lit 5886432))) 1) (.lit 6477408))
theorem numQx_01_35_interpret (X Y : R) : value X Y numQx_01_35_expr=numQx_01_35 X Y := by
  simp only [numQx_01_35_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_01_35]
#print axioms numQx_01_35_interpret
def numQx_01_36_expr : HExpr := (.add (.mulX (.neg (.lit 93312)) 1) (.lit 108864))
theorem numQx_01_36_interpret (X Y : R) : value X Y numQx_01_36_expr=numQx_01_36 X Y := by
  simp only [numQx_01_36_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_01_36]
#print axioms numQx_01_36_interpret
def numQx_02_00_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 96768)) 1) (.lit 5346432)) 1) (.neg (.lit 123859584))) 1) (.lit 1544593536)) 1) (.neg (.lit 10988887680))) 1) (.lit 42611018112)) 1) (.neg (.lit 70133205888))) 1) (.neg (.lit 22652141184))) 1) (.lit 130402866816)) 12)
theorem numQx_02_00_interpret (X Y : R) : value X Y numQx_02_00_expr=numQx_02_00 X Y := by
  simp only [numQx_02_00_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_02_00]
#print axioms numQx_02_00_interpret
def numQx_02_01_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 290304) 1) (.neg (.lit 17127936))) 1) (.lit 433662336)) 1) (.neg (.lit 6028701696))) 1) (.lit 47932041600)) 1) (.neg (.lit 190478532096))) 1) (.lit 24466126464)) 1) (.lit 2935390980096)) 1) (.neg (.lit 10213666793856))) 1) (.lit 10579162152960)) 1) (.neg (.lit 2975389355520))) 10)
theorem numQx_02_01_interpret (X Y : R) : value X Y numQx_02_01_expr=numQx_02_01 X Y := by
  simp only [numQx_02_01_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_02_01]
#print axioms numQx_02_01_interpret
def numQx_02_02_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 290304)) 1) (.lit 16232832)) 1) (.neg (.lit 392446080))) 1) (.lit 5573971584)) 1) (.neg (.lit 55120238208))) 1) (.lit 426013229952)) 1) (.neg (.lit 2557090228608))) 1) (.lit 10348597065600)) 1) (.neg (.lit 22528812859776))) 1) (.lit 17256033821952)) 1) (.neg (.lit 3350068015104))) 10)
theorem numQx_02_02_interpret (X Y : R) : value X Y numQx_02_02_expr=numQx_02_02 X Y := by
  simp only [numQx_02_02_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_02_02]
#print axioms numQx_02_02_interpret
def numQx_02_03_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 96768) 1) (.neg (.lit 3265920))) 1) (.lit 30727296)) 1) (.lit 144291456)) 1) (.neg (.lit 4027750272))) 1) (.lit 10331784576)) 1) (.lit 202792636800)) 1) (.neg (.lit 1425165093504))) 1) (.neg (.lit 335836699776))) 1) (.lit 27611123443200)) 1) (.neg (.lit 73437017278464))) 1) (.lit 55342242012672)) 1) (.neg (.lit 10711401679872))) 8)
theorem numQx_02_03_interpret (X Y : R) : value X Y numQx_02_03_expr=numQx_02_03 X Y := by
  simp only [numQx_02_03_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_02_03]
#print axioms numQx_02_03_interpret
def numQx_02_04_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 1766016)) 1) (.lit 79312128)) 1) (.neg (.lit 1405708992))) 1) (.lit 12988019520)) 1) (.neg (.lit 71099425728))) 1) (.lit 137026759104)) 1) (.lit 2680019224128)) 1) (.neg (.lit 31989422560320))) 1) (.lit 135935193135168)) 1) (.neg (.lit 207692890865856))) 1) (.lit 111196912192128)) 1) (.neg (.lit 15571204293888))) 8)
theorem numQx_02_04_interpret (X Y : R) : value X Y numQx_02_04_expr=numQx_02_04 X Y := by
  simp only [numQx_02_04_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_02_04]
#print axioms numQx_02_04_interpret
def numQx_02_05_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 580608) 1) (.neg (.lit 23939904))) 1) (.lit 526336704)) 1) (.neg (.lit 8381532672))) 1) (.lit 103235876352)) 1) (.neg (.lit 997119994752))) 1) (.lit 7118494223616)) 1) (.neg (.lit 31736490726528))) 1) (.lit 65210800626432)) 1) (.neg (.lit 20380430730816))) 1) (.lit 44552374132032)) 1) (.neg (.lit 141112431835776))) 1) (.lit 81525668341248)) 1) (.neg (.lit 8926168066560))) 6)
theorem numQx_02_05_interpret (X Y : R) : value X Y numQx_02_05_expr=numQx_02_05 X Y := by
  simp only [numQx_02_05_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_02_05]
#print axioms numQx_02_05_interpret
def numQx_02_06_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 2757888)) 1) (.lit 91113120)) 1) (.neg (.lit 989091936))) 1) (.lit 9937642272)) 1) (.neg (.lit 168172074720))) 1) (.lit 1305172494432)) 1) (.neg (.lit 900916325856))) 1) (.neg (.lit 15846862241952))) 1) (.neg (.lit 49657974900768))) 1) (.lit 402784277933952)) 1) (.neg (.lit 489396823314624))) 1) (.lit 154212103860480)) 1) (.neg (.lit 1605240923904))) 6)
theorem numQx_02_06_interpret (X Y : R) : value X Y numQx_02_06_expr=numQx_02_06 X Y := by
  simp only [numQx_02_06_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_02_06]
#print axioms numQx_02_06_interpret
def numQx_02_07_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 2032128) 1) (.neg (.lit 86530176))) 1) (.lit 1864492416)) 1) (.neg (.lit 19998421728))) 1) (.lit 83693520000)) 1) (.lit 98692445088)) 1) (.neg (.lit 3908473077888))) 1) (.lit 45626759658720)) 1) (.neg (.lit 230477527298304))) 1) (.lit 269338959104544)) 1) (.lit 180843369142464)) 1) (.neg (.lit 280283820060096))) 1) (.lit 12304704313152)) 1) (.lit 13835560503168)) 1) (.lit 4016775629952)) 4)
theorem numQx_02_07_interpret (X Y : R) : value X Y numQx_02_07_expr=numQx_02_07 X Y := by
  simp only [numQx_02_07_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_02_07]
#print axioms numQx_02_07_interpret
def numQx_02_08_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 2322432) 1) (.neg (.lit 96958944))) 1) (.lit 3887846784)) 1) (.neg (.lit 68218222560))) 1) (.lit 827430386400)) 1) (.neg (.lit 9250845725376))) 1) (.lit 59914267816320)) 1) (.neg (.lit 101721885639840))) 1) (.neg (.lit 382644965667744))) 1) (.lit 795279019769568)) 1) (.neg (.lit 177074293202496))) 1) (.neg (.lit 109871353786176))) 1) (.neg (.lit 70726106976768))) 1) (.lit 26927273667456)) 4)
theorem numQx_02_08_interpret (X Y : R) : value X Y numQx_02_08_expr=numQx_02_08 X Y := by
  simp only [numQx_02_08_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_02_08]
#print axioms numQx_02_08_interpret
def numQx_02_09_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 4838400) 1) (.neg (.lit 151450560))) 1) (.lit 2504207040)) 1) (.neg (.lit 16489968960))) 1) (.lit 160448591520)) 1) (.neg (.lit 3299944492224))) 1) (.lit 19445889796416)) 1) (.lit 23224555529856)) 1) (.neg (.lit 301760079811776))) 1) (.lit 304888354230816)) 1) (.neg (.lit 474014953734336))) 1) (.lit 1218128449604544)) 1) (.neg (.lit 891855051881184))) 1) (.lit 167642527757472)) 1) (.neg (.lit 8653424042304))) 1) (.neg (.lit 3793621428288))) 2)
theorem numQx_02_09_interpret (X Y : R) : value X Y numQx_02_09_expr=numQx_02_09 X Y := by
  simp only [numQx_02_09_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_02_09]
#print axioms numQx_02_09_interpret
def numQx_02_10_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 24554880) 1) (.neg (.lit 698513568))) 1) (.lit 15011047872)) 1) (.neg (.lit 98227616064))) 1) (.neg (.lit 380516586912))) 1) (.lit 4512340751616)) 1) (.neg (.lit 26874685171296))) 1) (.lit 165093969985920)) 1) (.lit 210951878554080)) 1) (.neg (.lit 2188943950256928))) 1) (.lit 3173918361217056)) 1) (.neg (.lit 1590498359423424))) 1) (.lit 376656742507392)) 1) (.neg (.lit 65152761915456))) 1) (.neg (.lit 22836113303616))) 2)
theorem numQx_02_10_interpret (X Y : R) : value X Y numQx_02_10_expr=numQx_02_10 X Y := by
  simp only [numQx_02_10_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_02_10]
#print axioms numQx_02_10_interpret
def numQx_02_11_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 8709120) 1) (.neg (.lit 145625856))) 1) (.lit 2336846304)) 1) (.lit 10901955936)) 1) (.neg (.lit 328432819008))) 1) (.lit 3985746670656)) 1) (.neg (.lit 57816444443616))) 1) (.lit 225065546847072)) 1) (.lit 631339164613440)) 1) (.neg (.lit 2772822056422464))) 1) (.lit 2957077555811136)) 1) (.neg (.lit 1913031841020192))) 1) (.lit 1399923599817312)) 1) (.neg (.lit 459946982035872))) 1) (.neg (.lit 21782329573536))) 1) (.lit 13166097898176)) 1) (.neg (.lit 6025163444928)))
theorem numQx_02_11_interpret (X Y : R) : value X Y numQx_02_11_expr=numQx_02_11 X Y := by
  simp only [numQx_02_11_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_02_11]
#print axioms numQx_02_11_interpret
def numQx_02_12_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 64665216) 1) (.neg (.lit 990324288))) 1) (.lit 19561460640)) 1) (.neg (.lit 76240216992))) 1) (.lit 1451494984896)) 1) (.neg (.lit 30253345310304))) 1) (.lit 73638433061712)) 1) (.lit 474351147550800)) 1) (.neg (.lit 1337348443485168))) 1) (.lit 1788184177208208)) 1) (.neg (.lit 3096234829907280))) 1) (.lit 2905544309696784)) 1) (.neg (.lit 772605992245680))) 1) (.neg (.lit 67237600706928))) 1) (.lit 64640333748672)) 1) (.neg (.lit 20753340754752)))
theorem numQx_02_12_interpret (X Y : R) : value X Y numQx_02_12_expr=numQx_02_12 X Y := by
  simp only [numQx_02_12_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_02_12]
#print axioms numQx_02_12_interpret
def numQx_02_13_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 12192768) 1) (.lit 47344320)) 1) (.lit 379277376)) 1) (.lit 69790639200)) 1) (.lit 84536278656)) 1) (.neg (.lit 7777720260288))) 1) (.lit 12757874712912)) 1) (.neg (.lit 24146055833616))) 1) (.neg (.lit 104202938995056))) 1) (.lit 1716260210685504)) 1) (.neg (.lit 3730169466844272))) 1) (.lit 2315267858279520)) 1) (.neg (.lit 90248476375728))) 1) (.neg (.lit 206124621229440))) 1) (.lit 118023777768960)) 1) (.neg (.lit 32078416489200)))
theorem numQx_02_13_interpret (X Y : R) : value X Y numQx_02_13_expr=numQx_02_13 X Y := by
  simp only [numQx_02_13_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_02_13]
#print axioms numQx_02_13_interpret
def numQx_02_14_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 110605824) 1) (.neg (.lit 657261792))) 1) (.lit 29368246272)) 1) (.lit 109613398272)) 1) (.neg (.lit 1340303942016))) 1) (.lit 11932256921184)) 1) (.neg (.lit 210560685895728))) 1) (.lit 26357817051504)) 1) (.lit 1693452779321184)) 1) (.neg (.lit 1905616250824752))) 1) (.neg (.lit 608843435080032))) 1) (.lit 1228248206443440)) 1) (.neg (.lit 558162998558208))) 1) (.lit 260682906988080)) 1) (.neg (.lit 58398673994928)))
theorem numQx_02_14_interpret (X Y : R) : value X Y numQx_02_14_expr=numQx_02_14 X Y := by
  simp only [numQx_02_14_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_02_14]
#print axioms numQx_02_14_interpret
def numQx_02_15_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 13644288) 1) (.lit 330592896)) 1) (.lit 2745455424)) 1) (.lit 109024791264)) 1) (.lit 135173765568)) 1) (.lit 9134406893808)) 1) (.neg (.lit 127083340207296))) 1) (.neg (.lit 106773310413936))) 1) (.lit 819577852207056)) 1) (.lit 622747048584672)) 1) (.neg (.lit 2858309205755328))) 1) (.lit 2444177784452112)) 1) (.neg (.lit 1752816956592528))) 1) (.lit 860158745722512)) 1) (.neg (.lit 173404436588640)))
theorem numQx_02_15_interpret (X Y : R) : value X Y numQx_02_15_expr=numQx_02_15 X Y := by
  simp only [numQx_02_15_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_02_15]
#print axioms numQx_02_15_interpret
def numQx_02_16_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 134410752) 1) (.lit 765162720)) 1) (.lit 32144042880)) 1) (.lit 379636956864)) 1) (.lit 4003128612912)) 1) (.neg (.lit 34519060682640))) 1) (.neg (.lit 57164891294592))) 1) (.neg (.lit 40225754120400))) 1) (.lit 1460160400166352)) 1) (.neg (.lit 3024110587092480))) 1) (.lit 3764913652730448)) 1) (.neg (.lit 3965573813749920))) 1) (.lit 1944492130687824)) 1) (.neg (.lit 380406131038368)))
theorem numQx_02_16_interpret (X Y : R) : value X Y numQx_02_16_expr=numQx_02_16 X Y := by
  simp only [numQx_02_16_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_02_16]
#print axioms numQx_02_16_interpret
def numQx_02_17_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 12192768) 1) (.lit 564640704)) 1) (.lit 5426285376)) 1) (.lit 190559189568)) 1) (.lit 1569429948864)) 1) (.neg (.lit 1621867162608))) 1) (.lit 24455137647600)) 1) (.neg (.lit 262057209828048))) 1) (.lit 882588691104624)) 1) (.neg (.lit 2334692516880816))) 1) (.lit 5021737681287456)) 1) (.neg (.lit 5816488570871760))) 1) (.lit 2745309890915136)) 1) (.neg (.lit 513761786087040)))
theorem numQx_02_17_interpret (X Y : R) : value X Y numQx_02_17_expr=numQx_02_17 X Y := by
  simp only [numQx_02_17_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_02_17]
#print axioms numQx_02_17_interpret
def numQx_02_18_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 123887232) 1) (.lit 1696405536)) 1) (.lit 49540377408)) 1) (.lit 615118203456)) 1) (.lit 2909180608272)) 1) (.lit 37807103867616)) 1) (.neg (.lit 136163559615984))) 1) (.lit 247178342200896)) 1) (.neg (.lit 1793555211173184))) 1) (.lit 5183358892997616)) 1) (.neg (.lit 5758416226005264))) 1) (.lit 2528169282556272)) 1) (.neg (.lit 410761539278064)))
theorem numQx_02_18_interpret (X Y : R) : value X Y numQx_02_18_expr=numQx_02_18 X Y := by
  simp only [numQx_02_18_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_02_18]
#print axioms numQx_02_18_interpret
def numQx_02_19_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 8709120) 1) (.lit 546174720)) 1) (.lit 9341031840)) 1) (.lit 187590520032)) 1) (.lit 1734752683392)) 1) (.lit 20191755484656)) 1) (.neg (.lit 24471993831840))) 1) (.lit 24708938148720)) 1) (.neg (.lit 1329650015352624))) 1) (.lit 3941571054215376)) 1) (.neg (.lit 3980304304567488))) 1) (.lit 1507493732087232)) 1) (.neg (.lit 131726928684096)))
theorem numQx_02_19_interpret (X Y : R) : value X Y numQx_02_19_expr=numQx_02_19 X Y := by
  simp only [numQx_02_19_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_02_19]
#print axioms numQx_02_19_interpret
def numQx_02_20_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 84551040) 1) (.lit 1917415872)) 1) (.lit 39663726432)) 1) (.lit 632341372416)) 1) (.lit 6858757853856)) 1) (.lit 6147868146912)) 1) (.lit 8603561388816)) 1) (.neg (.lit 809931143044368))) 1) (.lit 2198601510524352)) 1) (.neg (.lit 1923588023876208))) 1) (.lit 482772605612688)) 1) (.lit 112768660523232))
theorem numQx_02_20_interpret (X Y : R) : value X Y numQx_02_20_expr=numQx_02_20 X Y := by
  simp only [numQx_02_20_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_02_20]
#print axioms numQx_02_20_interpret
def numQx_02_21_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 4838400) 1) (.lit 369647424)) 1) (.lit 6443237184)) 1) (.lit 159886232928)) 1) (.lit 1740347636160)) 1) (.lit 5094592701984)) 1) (.lit 13746263466240)) 1) (.neg (.lit 374581075624560))) 1) (.lit 898979765248512)) 1) (.neg (.lit 609655354063344))) 1) (.neg (.lit 57096559587456))) 1) (.lit 197437121347680))
theorem numQx_02_21_interpret (X Y : R) : value X Y numQx_02_21_expr=numQx_02_21 X Y := by
  simp only [numQx_02_21_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_02_21]
#print axioms numQx_02_21_interpret
def numQx_02_22_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 42771456) 1) (.lit 1013151072)) 1) (.lit 28085292288)) 1) (.lit 351029265696)) 1) (.lit 1653127037040)) 1) (.lit 8203043154960)) 1) (.neg (.lit 128800444532256))) 1) (.lit 264430378878912)) 1) (.neg (.lit 86736801171744))) 1) (.neg (.lit 169778751818832))) 1) (.lit 157346086232880))
theorem numQx_02_22_interpret (X Y : R) : value X Y numQx_02_22_expr=numQx_02_22 X Y := by
  simp only [numQx_02_22_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_02_22]
#print axioms numQx_02_22_interpret
def numQx_02_23_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 2032128) 1) (.lit 147757440)) 1) (.lit 3546348096)) 1) (.lit 54561700128)) 1) (.lit 367637543040)) 1) (.lit 2706227719632)) 1) (.neg (.lit 32621547418704))) 1) (.lit 52120431605952)) 1) (.lit 25959262848768)) 1) (.neg (.lit 111850137463248))) 1) (.lit 84909151663488))
theorem numQx_02_23_interpret (X Y : R) : value X Y numQx_02_23_expr=numQx_02_23 X Y := by
  simp only [numQx_02_23_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_02_23]
#print axioms numQx_02_23_interpret
def numQx_02_24_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 14079744) 1) (.lit 367615008)) 1) (.lit 5710401600)) 1) (.lit 66889402560)) 1) (.lit 559368848592)) 1) (.neg (.lit 5970202987680))) 1) (.lit 4993595747712)) 1) (.lit 21009148028928)) 1) (.neg (.lit 46753227468720))) 1) (.lit 33905061147744))
theorem numQx_02_24_interpret (X Y : R) : value X Y numQx_02_24_expr=numQx_02_24 X Y := by
  simp only [numQx_02_24_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_02_24]
#print axioms numQx_02_24_interpret
def numQx_02_25_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 580608) 1) (.lit 35672256)) 1) (.lit 267705024)) 1) (.lit 10471946304)) 1) (.lit 73361241312)) 1) (.neg (.lit 753294604896))) 1) (.neg (.lit 597565923696))) 1) (.lit 7272949505184)) 1) (.neg (.lit 14124363180480))) 1) (.lit 10335650523264))
theorem numQx_02_25_interpret (X Y : R) : value X Y numQx_02_25_expr=numQx_02_25 X Y := by
  simp only [numQx_02_25_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_02_25]
#print axioms numQx_02_25_interpret
def numQx_02_26_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 2685312) 1) (.neg (.lit 14715360))) 1) (.lit 1301671104)) 1) (.lit 5630151072)) 1) (.neg (.lit 57693016800))) 1) (.neg (.lit 327243719520))) 1) (.lit 1644845857488)) 1) (.neg (.lit 3201507974448))) 1) (.lit 2427082604208))
theorem numQx_02_26_interpret (X Y : R) : value X Y numQx_02_26_expr=numQx_02_26 X Y := by
  simp only [numQx_02_26_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_02_26]
#print axioms numQx_02_26_interpret
def numQx_02_27_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 96768) 1) (.neg (.lit 2572416))) 1) (.lit 111751776)) 1) (.lit 173937792)) 1) (.neg (.lit 1365097056))) 1) (.neg (.lit 64137065760))) 1) (.lit 260723084688)) 1) (.neg (.lit 548128060128))) 1) (.lit 437056611840))
theorem numQx_02_27_interpret (X Y : R) : value X Y numQx_02_27_expr=numQx_02_27 X Y := by
  simp only [numQx_02_27_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_02_27]
#print axioms numQx_02_27_interpret
def numQx_02_28_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 96768)) 1) (.lit 5600256)) 1) (.neg (.lit 5629536))) 1) (.lit 189361248)) 1) (.neg (.lit 7518034464))) 1) (.lit 28964688192)) 1) (.neg (.lit 70070636304))) 1) (.lit 59343920352))
theorem numQx_02_28_interpret (X Y : R) : value X Y numQx_02_28_expr=numQx_02_28 X Y := by
  simp only [numQx_02_28_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_02_28]
#print axioms numQx_02_28_interpret
def numQx_02_29_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 119040) 1) (.neg (.lit 437760))) 1) (.lit 18812736)) 1) (.neg (.lit 548213376))) 1) (.lit 2161209312)) 1) (.neg (.lit 6492935808))) 1) (.lit 5881342608))
theorem numQx_02_29_interpret (X Y : R) : value X Y numQx_02_29_expr=numQx_02_29 X Y := by
  simp only [numQx_02_29_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_02_29]
#print axioms numQx_02_29_interpret
def numQx_02_30_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 550368) 1) (.neg (.lit 22923648))) 1) (.lit 97597152)) 1) (.neg (.lit 412144416))) 1) (.lit 401319360))
theorem numQx_02_30_interpret (X Y : R) : value X Y numQx_02_30_expr=numQx_02_30 X Y := by
  simp only [numQx_02_30_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_02_30]
#print axioms numQx_02_30_interpret
def numQx_02_31_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 417312)) 1) (.lit 2019168)) 1) (.neg (.lit 16026336))) 1) (.lit 16835040))
theorem numQx_02_31_interpret (X Y : R) : value X Y numQx_02_31_expr=numQx_02_31 X Y := by
  simp only [numQx_02_31_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_02_31]
#print axioms numQx_02_31_interpret
def numQx_02_32_expr : HExpr := (.add (.mulX (.neg (.lit 287712)) 1) (.lit 326592))
theorem numQx_02_32_interpret (X Y : R) : value X Y numQx_02_32_expr=numQx_02_32 X Y := by
  simp only [numQx_02_32_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_02_32]
#print axioms numQx_02_32_interpret
def numQx_03_00_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 200448)) 1) (.lit 9445248)) 1) (.neg (.lit 180019584))) 1) (.lit 1737970560)) 1) (.neg (.lit 8420630400))) 1) (.lit 13942772352)) 1) (.lit 33148061568)) 1) (.neg (.lit 131718006144))) 1) (.lit 80608970880)) 10)
theorem numQx_03_00_interpret (X Y : R) : value X Y numQx_03_00_expr=numQx_03_00 X Y := by
  simp only [numQx_03_00_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_03_00]
#print axioms numQx_03_00_interpret
def numQx_03_01_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 584064) 1) (.neg (.lit 30668544))) 1) (.lit 685812096)) 1) (.neg (.lit 8335353600))) 1) (.lit 57303365760)) 1) (.neg (.lit 198952194816))) 1) (.lit 129294320256)) 1) (.lit 1146121249536)) 1) (.neg (.lit 2644790538240))) 1) (.lit 1799926894080)) 1) (.neg (.lit 330598817280))) 8)
theorem numQx_03_01_interpret (X Y : R) : value X Y numQx_03_01_expr=numQx_03_01 X Y := by
  simp only [numQx_03_01_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_03_01]
#print axioms numQx_03_01_interpret
def numQx_03_02_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 580608)) 1) (.lit 28529280)) 1) (.neg (.lit 594086400))) 1) (.lit 7139840256)) 1) (.neg (.lit 59091517440))) 1) (.lit 374626778112)) 1) (.neg (.lit 1718335378944))) 1) (.lit 4567893191424)) 1) (.neg (.lit 4826893897728))) 1) (.lit 1405135672704)) 1) (.lit 119178832896)) 8)
theorem numQx_03_02_interpret (X Y : R) : value X Y numQx_03_02_expr=numQx_03_02 X Y := by
  simp only [numQx_03_02_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_03_02]
#print axioms numQx_03_02_interpret
def numQx_03_03_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 193536) 1) (.neg (.lit 5132160))) 1) (.lit 19274112)) 1) (.lit 689675904)) 1) (.neg (.lit 8113841280))) 1) (.lit 27444096)) 1) (.lit 504319229568)) 1) (.neg (.lit 3198932528256))) 1) (.lit 6355274753664)) 1) (.lit 1563564612096)) 1) (.neg (.lit 10854253020672))) 1) (.lit 6347497291776)) 1) (.neg (.lit 793437161472))) 6)
theorem numQx_03_03_interpret (X Y : R) : value X Y numQx_03_03_expr=numQx_03_03 X Y := by
  simp only [numQx_03_03_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_03_03]
#print axioms numQx_03_03_interpret
def numQx_03_04_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 2975616)) 1) (.lit 113552640)) 1) (.neg (.lit 1629460800))) 1) (.lit 12120814080)) 1) (.neg (.lit 66218057280))) 1) (.lit 258840728064)) 1) (.lit 701357361984)) 1) (.neg (.lit 11645677442304))) 1) (.lit 32055237473472)) 1) (.neg (.lit 28533308209920))) 1) (.lit 7289907994368)) 1) (.lit 106526285568)) 6)
theorem numQx_03_04_interpret (X Y : R) : value X Y numQx_03_04_expr=numQx_03_04 X Y := by
  simp only [numQx_03_04_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_03_04]
#print axioms numQx_03_04_interpret
end
end CriticalZeroSplitReduction20261003

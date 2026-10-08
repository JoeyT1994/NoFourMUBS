import CriticalZeroHornerBindingPilot
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 2000000
set_option linter.unusedSimpArgs false
namespace CriticalZeroSplitReduction20261003
open HornerReflector
noncomputable section
variable {R : Type*} [CommRing R]
def numQx_03_05_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 967680) 1) (.neg (.lit 31436928))) 1) (.lit 596725056)) 1) (.neg (.lit 8954573760))) 1) (.lit 102746257920)) 1) (.neg (.lit 851629113216))) 1) (.lit 4385386941120)) 1) (.neg (.lit 8843512530240))) 1) (.neg (.lit 13351533989760))) 1) (.lit 45920929027968)) 1) (.neg (.lit 24787269883008))) 1) (.neg (.lit 7315689260160))) 1) (.lit 5429167243776)) 1) (.neg (.lit 330598817280))) 4)
theorem numQx_03_05_interpret (X Y : R) : value X Y numQx_03_05_expr=numQx_03_05 X Y := by
  simp only [numQx_03_05_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_03_05]
#print axioms numQx_03_05_interpret
def numQx_03_06_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 3265920)) 1) (.lit 104890080)) 1) (.neg (.lit 1305403200))) 1) (.lit 20357199840)) 1) (.neg (.lit 253243990080))) 1) (.lit 743331025440)) 1) (.lit 7060112653248)) 1) (.neg (.lit 39521857175136))) 1) (.lit 31091641774272)) 1) (.lit 30094401267072)) 1) (.neg (.lit 31669575384960))) 1) (.lit 1469328076800)) 1) (.lit 1498714638336)) 4)
theorem numQx_03_06_interpret (X Y : R) : value X Y numQx_03_06_expr=numQx_03_06 X Y := by
  simp only [numQx_03_06_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_03_06]
#print axioms numQx_03_06_interpret
def numQx_03_07_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 2903040) 1) (.neg (.lit 96908160))) 1) (.lit 1811124000)) 1) (.neg (.lit 14359841760))) 1) (.lit 20720750400)) 1) (.lit 35456956416)) 1) (.lit 380756368224)) 1) (.lit 5265414188640)) 1) (.neg (.lit 10690356511296))) 1) (.neg (.lit 62938739973312))) 1) (.lit 141001555764672)) 1) (.neg (.lit 83704865545152))) 1) (.lit 11650853318976)) 1) (.neg (.lit 247949112960))) 1) (.lit 148769467776)) 2)
theorem numQx_03_07_interpret (X Y : R) : value X Y numQx_03_07_expr=numQx_03_07 X Y := by
  simp only [numQx_03_07_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_03_07]
#print axioms numQx_03_07_interpret
def numQx_03_08_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 4596480) 1) (.neg (.lit 46803840))) 1) (.lit 2863769760)) 1) (.neg (.lit 54140392896))) 1) (.lit 657656513856)) 1) (.neg (.lit 6133753418112))) 1) (.lit 19730196540000)) 1) (.lit 52325482082112)) 1) (.neg (.lit 238674551384448))) 1) (.lit 254695417435008)) 1) (.neg (.lit 88067409444288))) 1) (.lit 14236564624128)) 1) (.neg (.lit 8606589209856))) 1) (.lit 595077871104)) 2)
theorem numQx_03_08_interpret (X Y : R) : value X Y numQx_03_08_expr=numQx_03_08 X Y := by
  simp only [numQx_03_08_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_03_08]
#print axioms numQx_03_08_interpret
def numQx_03_09_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 5806080) 1) (.neg (.lit 120362880))) 1) (.lit 2034289920)) 1) (.neg (.lit 14193456864))) 1) (.lit 241181305344)) 1) (.neg (.lit 3158959230720))) 1) (.lit 4150493406432)) 1) (.lit 70376491344960)) 1) (.neg (.lit 168463364424768))) 1) (.lit 138558338042112)) 1) (.neg (.lit 138039892231104))) 1) (.lit 163044806335488)) 1) (.neg (.lit 73754300310048))) 1) (.lit 6500399244768)) 1) (.lit 272744024256)) 1) (.neg (.lit 223154201664)))
theorem numQx_03_09_interpret (X Y : R) : value X Y numQx_03_09_expr=numQx_03_09 X Y := by
  simp only [numQx_03_09_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_03_09]
#print axioms numQx_03_09_interpret
def numQx_03_10_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 29272320) 1) (.neg (.lit 430577088))) 1) (.lit 10350512736)) 1) (.neg (.lit 12614037696))) 1) (.neg (.lit 679196434752))) 1) (.lit 206353402272)) 1) (.lit 9107631757440)) 1) (.neg (.lit 14750388598464))) 1) (.lit 125288001495360)) 1) (.neg (.lit 348076350671904))) 1) (.lit 318129125336928)) 1) (.neg (.lit 94470448697856))) 1) (.lit 3757806556416)) 1) (.lit 1843088406336)) 1) (.neg (.lit 1562079411648)))
theorem numQx_03_10_interpret (X Y : R) : value X Y numQx_03_10_expr=numQx_03_10 X Y := by
  simp only [numQx_03_10_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_03_10]
#print axioms numQx_03_10_interpret
def numQx_03_11_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 8709120) 1) (.neg (.lit 63578496))) 1) (.lit 2624202816)) 1) (.lit 11513471040)) 1) (.neg (.lit 217343529984))) 1) (.lit 2254420038816)) 1) (.neg (.lit 24891117033312))) 1) (.lit 5246770059648)) 1) (.lit 199997097599808)) 1) (.neg (.lit 327203159447808))) 1) (.lit 129886253256096)) 1) (.lit 11365303692384)) 1) (.lit 8680514778720)) 1) (.neg (.lit 3719236694400))) 1) (.neg (.lit 2367914028768)))
theorem numQx_03_11_interpret (X Y : R) : value X Y numQx_03_11_expr=numQx_03_11 X Y := by
  simp only [numQx_03_11_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_03_11]
#print axioms numQx_03_11_interpret
def numQx_03_12_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 58810752) 1) (.neg (.lit 167351040))) 1) (.lit 13945567872)) 1) (.neg (.lit 28640403840))) 1) (.lit 1594655218944)) 1) (.neg (.lit 16535501235360))) 1) (.neg (.lit 21260504892240))) 1) (.lit 130101506330256)) 1) (.neg (.lit 14089743615888))) 1) (.neg (.lit 202423998984336))) 1) (.lit 122591168790192)) 1) (.neg (.lit 6775872750000))) 1) (.lit 10025638716528)) 1) (.neg (.lit 5514801520752)))
theorem numQx_03_12_interpret (X Y : R) : value X Y numQx_03_12_expr=numQx_03_12 X Y := by
  simp only [numQx_03_12_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_03_12]
#print axioms numQx_03_12_interpret
def numQx_03_13_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 9870336) 1) (.lit 125953920)) 1) (.lit 2386485312)) 1) (.lit 47784544512)) 1) (.lit 527364964608)) 1) (.neg (.lit 4440225891168))) 1) (.neg (.lit 12588687320688))) 1) (.neg (.lit 820326748320))) 1) (.lit 182056905804240)) 1) (.neg (.lit 311761019856672))) 1) (.lit 239815123567632)) 1) (.neg (.lit 184147241628960))) 1) (.lit 107337137932944)) 1) (.neg (.lit 21821162085504)))
theorem numQx_03_13_interpret (X Y : R) : value X Y numQx_03_13_expr=numQx_03_13 X Y := by
  simp only [numQx_03_13_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_03_13]
#print axioms numQx_03_13_interpret
def numQx_03_14_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 78551424) 1) (.lit 271961760)) 1) (.lit 24817718016)) 1) (.lit 190993638720)) 1) (.neg (.lit 303702609600))) 1) (.lit 3780319215744)) 1) (.neg (.lit 43876939441968))) 1) (.lit 137178762711264)) 1) (.neg (.lit 263443680796464))) 1) (.lit 452429794049760)) 1) (.neg (.lit 506000822122224))) 1) (.lit 260301945199968)) 1) (.neg (.lit 47878165292400)))
theorem numQx_03_14_interpret (X Y : R) : value X Y numQx_03_14_expr=numQx_03_14 X Y := by
  simp only [numQx_03_14_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_03_14]
#print axioms numQx_03_14_interpret
def numQx_03_15_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 8709120) 1) (.lit 245991552)) 1) (.lit 5320343136)) 1) (.lit 83765730336)) 1) (.lit 321603909408)) 1) (.lit 6631043264496)) 1) (.neg (.lit 22607632119888))) 1) (.lit 43260516503136)) 1) (.neg (.lit 232347216397536))) 1) (.lit 624491412307920)) 1) (.neg (.lit 699577207525584))) 1) (.lit 333921669007392)) 1) (.neg (.lit 59220392845536)))
theorem numQx_03_15_interpret (X Y : R) : value X Y numQx_03_15_expr=numQx_03_15 X Y := by
  simp only [numQx_03_15_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_03_15]
#print axioms numQx_03_15_interpret
def numQx_03_16_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 69914880) 1) (.lit 1017626880)) 1) (.lit 24733600416)) 1) (.lit 239625914112)) 1) (.lit 3431187141264)) 1) (.neg (.lit 2845567490112))) 1) (.lit 7799413619376)) 1) (.neg (.lit 205584587531712))) 1) (.lit 575423014889664)) 1) (.neg (.lit 599880811986288))) 1) (.lit 263317341888864)) 1) (.neg (.lit 42099979792464)))
theorem numQx_03_16_interpret (X Y : R) : value X Y numQx_03_16_expr=numQx_03_16 X Y := by
  simp only [numQx_03_16_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_03_16]
#print axioms numQx_03_16_interpret
def numQx_03_17_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 5806080) 1) (.lit 267596160)) 1) (.lit 4579000320)) 1) (.lit 96939823776)) 1) (.lit 1122955848672)) 1) (.lit 1765411192080)) 1) (.lit 5306282445744)) 1) (.neg (.lit 140989388136480))) 1) (.lit 361527100725744)) 1) (.neg (.lit 340302323369232))) 1) (.lit 126815026714560)) 1) (.neg (.lit 12015875632896)))
theorem numQx_03_17_interpret (X Y : R) : value X Y numQx_03_17_expr=numQx_03_17 X Y := by
  simp only [numQx_03_17_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_03_17]
#print axioms numQx_03_17_interpret
def numQx_03_18_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 45239040) 1) (.lit 751152960)) 1) (.lit 24025665888)) 1) (.lit 281562827424)) 1) (.lit 1031975247168)) 1) (.lit 4662856148112)) 1) (.neg (.lit 68797316779632))) 1) (.lit 158005332701856)) 1) (.neg (.lit 125960181995088))) 1) (.lit 26515434347568)) 1) (.lit 8284591231776))
theorem numQx_03_18_interpret (X Y : R) : value X Y numQx_03_18_expr=numQx_03_18 X Y := by
  simp only [numQx_03_18_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_03_18]
#print axioms numQx_03_18_interpret
def numQx_03_19_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 2903040) 1) (.lit 138867840)) 1) (.lit 3816308160)) 1) (.lit 56049415872)) 1) (.lit 295155462624)) 1) (.lit 2204034159744)) 1) (.neg (.lit 23700829154400))) 1) (.lit 47620938318912)) 1) (.neg (.lit 25400352654432))) 1) (.neg (.lit 10662136742448))) 1) (.lit 12534743000304))
theorem numQx_03_19_interpret (X Y : R) : value X Y numQx_03_19_expr=numQx_03_19 X Y := by
  simp only [numQx_03_19_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_03_19]
#print axioms numQx_03_19_interpret
def numQx_03_20_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 18023040) 1) (.lit 445878912)) 1) (.lit 7931445696)) 1) (.lit 62537886912)) 1) (.lit 617052245328)) 1) (.neg (.lit 5743107586800))) 1) (.lit 9212214192048)) 1) (.lit 1181806293312)) 1) (.neg (.lit 12150787568832))) 1) (.lit 8355643323696))
theorem numQx_03_20_interpret (X Y : R) : value X Y numQx_03_20_expr=numQx_03_20 X Y := by
  simp only [numQx_03_20_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_03_20]
#print axioms numQx_03_20_interpret
def numQx_03_21_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 967680) 1) (.lit 48280704)) 1) (.lit 608782656)) 1) (.lit 11478447936)) 1) (.lit 107209562976)) 1) (.neg (.lit 955587758688))) 1) (.lit 790031567664)) 1) (.lit 2765337129360)) 1) (.neg (.lit 5796658293840))) 1) (.lit 3684745775952))
theorem numQx_03_21_interpret (X Y : R) : value X Y numQx_03_21_expr=numQx_03_21 X Y := by
  simp only [numQx_03_21_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_03_21]
#print axioms numQx_03_21_interpret
def numQx_03_22_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 4378752) 1) (.neg (.lit 1036320))) 1) (.lit 1736057280)) 1) (.lit 11208340224)) 1) (.neg (.lit 101724628896))) 1) (.neg (.lit 119032303968))) 1) (.lit 1024601457888)) 1) (.neg (.lit 1804573936656))) 1) (.lit 1169225677872))
theorem numQx_03_22_interpret (X Y : R) : value X Y numQx_03_22_expr=numQx_03_22 X Y := by
  simp only [numQx_03_22_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_03_22]
#print axioms numQx_03_22_interpret
def numQx_03_23_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 193536) 1) (.neg (.lit 3803520))) 1) (.lit 182761632)) 1) (.lit 602550624)) 1) (.neg (.lit 5488234464))) 1) (.neg (.lit 51839538912))) 1) (.lit 222092448048)) 1) (.neg (.lit 397766250288))) 1) (.lit 273095845488))
theorem numQx_03_23_interpret (X Y : R) : value X Y numQx_03_23_expr=numQx_03_23 X Y := by
  simp only [numQx_03_23_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_03_23]
#print axioms numQx_03_23_interpret
def numQx_03_24_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 193536)) 1) (.lit 11074560)) 1) (.lit 6269280)) 1) (.lit 59708352)) 1) (.neg (.lit 8493699744))) 1) (.lit 31440714624)) 1) (.neg (.lit 62992592784))) 1) (.lit 46761236496))
theorem numQx_03_24_interpret (X Y : R) : value X Y numQx_03_24_expr=numQx_03_24 X Y := by
  simp only [numQx_03_24_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_03_24]
#print axioms numQx_03_24_interpret
def numQx_03_25_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 279552) 1) (.neg (.lit 559104))) 1) (.lit 25226784)) 1) (.neg (.lit 781108896))) 1) (.lit 2876750208)) 1) (.neg (.lit 7041806496))) 1) (.lit 5721382512))
theorem numQx_03_25_interpret (X Y : R) : value X Y numQx_03_25_expr=numQx_03_25 X Y := by
  simp only [numQx_03_25_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_03_25]
#print axioms numQx_03_25_interpret
def numQx_03_26_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 997920) 1) (.neg (.lit 39366720))) 1) (.lit 155367360)) 1) (.neg (.lit 528498432))) 1) (.lit 473799456))
theorem numQx_03_26_interpret (X Y : R) : value X Y numQx_03_26_expr=numQx_03_26 X Y := by
  simp only [numQx_03_26_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_03_26]
#print axioms numQx_03_26_interpret
def numQx_03_27_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 840672)) 1) (.lit 3774816)) 1) (.neg (.lit 23906016))) 1) (.lit 23771232))
theorem numQx_03_27_interpret (X Y : R) : value X Y numQx_03_27_expr=numQx_03_27 X Y := by
  simp only [numQx_03_27_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_03_27]
#print axioms numQx_03_27_interpret
def numQx_03_28_expr : HExpr := (.add (.mulX (.neg (.lit 492480)) 1) (.lit 544320))
theorem numQx_03_28_interpret (X Y : R) : value X Y numQx_03_28_expr=numQx_03_28 X Y := by
  simp only [numQx_03_28_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_03_28]
#print axioms numQx_03_28_interpret
def numQx_04_00_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 283392)) 1) (.lit 11276928)) 1) (.neg (.lit 173612160))) 1) (.lit 1240755840)) 1) (.neg (.lit 3379466880))) 1) (.neg (.lit 4558695552))) 1) (.lit 39690165888)) 1) (.neg (.lit 52895306880))) 1) (.lit 18253226880)) 8)
theorem numQx_04_00_interpret (X Y : R) : value X Y numQx_04_00_expr=numQx_04_00 X Y := by
  simp only [numQx_04_00_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_04_00]
#print axioms numQx_04_00_interpret
def numQx_04_01_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 746496) 1) (.neg (.lit 34304256))) 1) (.lit 668580480)) 1) (.neg (.lit 7040286720))) 1) (.lit 41736332160)) 1) (.neg (.lit 128538399744))) 1) (.lit 141972061824)) 1) (.lit 111660871680)) 1) (.neg (.lit 296246471040))) 1) (.lit 153055008000)) 1) (.neg (.lit 18366600960))) 6)
theorem numQx_04_01_interpret (X Y : R) : value X Y numQx_04_01_expr=numQx_04_01 X Y := by
  simp only [numQx_04_01_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_04_01]
#print axioms numQx_04_01_interpret
def numQx_04_02_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 725760)) 1) (.lit 30637440)) 1) (.neg (.lit 530789760))) 1) (.lit 5156784000)) 1) (.neg (.lit 34116349824))) 1) (.lit 169645843584)) 1) (.neg (.lit 546752799360))) 1) (.lit 782920743552)) 1) (.neg (.lit 293851338624))) 1) (.neg (.lit 149532853248))) 1) (.lit 70654726656)) 6)
theorem numQx_04_02_interpret (X Y : R) : value X Y numQx_04_02_expr=numQx_04_02 X Y := by
  simp only [numQx_04_02_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_04_02]
#print axioms numQx_04_02_interpret
def numQx_04_03_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 241920) 1) (.neg (.lit 4613760))) 1) (.neg (.lit 15534720))) 1) (.lit 998628480)) 1) (.neg (.lit 7243261056))) 1) (.neg (.lit 19451228544))) 1) (.lit 475674270336)) 1) (.neg (.lit 2077909096320))) 1) (.lit 2939965414272)) 1) (.neg (.lit 1058853441024))) 1) (.neg (.lit 552993412608))) 1) (.lit 324476616960)) 1) (.neg (.lit 22039921152))) 4)
theorem numQx_04_03_interpret (X Y : R) : value X Y numQx_04_03_expr=numQx_04_03 X Y := by
  simp only [numQx_04_03_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_04_03]
#print axioms numQx_04_03_interpret
def numQx_04_04_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 3024000)) 1) (.lit 95235840)) 1) (.neg (.lit 1038657600))) 1) (.lit 6302475072)) 1) (.neg (.lit 47527363008))) 1) (.lit 290497942080)) 1) (.neg (.lit 442792585152))) 1) (.neg (.lit 1386688870080))) 1) (.lit 3046068016704)) 1) (.neg (.lit 1343557171008))) 1) (.neg (.lit 236180883456))) 1) (.lit 114485145984)) 4)
theorem numQx_04_04_interpret (X Y : R) : value X Y numQx_04_04_expr=numQx_04_04 X Y := by
  simp only [numQx_04_04_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_04_04]
#print axioms numQx_04_04_interpret
def numQx_04_05_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 967680) 1) (.neg (.lit 22760640))) 1) (.lit 388480320)) 1) (.neg (.lit 5628571776))) 1) (.lit 55370889792)) 1) (.neg (.lit 352917722304))) 1) (.lit 1068874750656)) 1) (.lit 839001737664)) 1) (.neg (.lit 8249036334912))) 1) (.lit 11606016389760)) 1) (.neg (.lit 5439280211712))) 1) (.lit 367025909184)) 1) (.lit 117546246144)) 3)
theorem numQx_04_05_interpret (X Y : R) : value X Y numQx_04_05_expr=numQx_04_05 X Y := by
  simp only [numQx_04_05_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_04_05]
#print axioms numQx_04_05_interpret
def numQx_04_06_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 1935360)) 1) (.lit 77149920)) 1) (.neg (.lit 1172119200))) 1) (.lit 19659903648)) 1) (.neg (.lit 162833817888))) 1) (.neg (.lit 118344019104))) 1) (.lit 5361905857248)) 1) (.neg (.lit 12416883696288))) 1) (.lit 8402713430688)) 1) (.neg (.lit 116892455616))) 1) (.neg (.lit 499877656128))) 1) (.neg (.lit 542222875008))) 1) (.lit 86323024512)) 2)
theorem numQx_04_06_interpret (X Y : R) : value X Y numQx_04_06_expr=numQx_04_06 X Y := by
  simp only [numQx_04_06_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_04_06]
#print axioms numQx_04_06_interpret
def numQx_04_07_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 2419200) 1) (.neg (.lit 58051200))) 1) (.lit 978388800)) 1) (.neg (.lit 3903506304))) 1) (.neg (.lit 14906665440))) 1) (.neg (.lit 195986992896))) 1) (.lit 1752157332000)) 1) (.neg (.lit 1328402462400))) 1) (.lit 1437584104224)) 1) (.neg (.lit 10306324910016))) 1) (.lit 14408173300320)) 1) (.neg (.lit 6373618679808))) 1) (.lit 639157713408)) 1) (.neg (.lit 16529940864))) 1)
theorem numQx_04_07_interpret (X Y : R) : value X Y numQx_04_07_expr=numQx_04_07 X Y := by
  simp only [numQx_04_07_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_04_07]
#print axioms numQx_04_07_interpret
def numQx_04_08_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 4475520) 1) (.lit 50119200)) 1) (.lit 1377367200)) 1) (.neg (.lit 25689840768))) 1) (.lit 235442216736)) 1) (.neg (.lit 1679215050432))) 1) (.lit 1275975607680)) 1) (.lit 11555133395040)) 1) (.neg (.lit 26088786755424))) 1) (.lit 18493899266592)) 1) (.neg (.lit 3335267028960))) 1) (.neg (.lit 276060216096))) 1) (.neg (.lit 152442787968))) 1) (.neg (.lit 24794911296)))
theorem numQx_04_08_interpret (X Y : R) : value X Y numQx_04_08_expr=numQx_04_08 X Y := by
  simp only [numQx_04_08_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_04_08]
#print axioms numQx_04_08_interpret
def numQx_04_09_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 3870720) 1) (.neg (.lit 37297920))) 1) (.lit 1103461440)) 1) (.neg (.lit 7396483296))) 1) (.lit 160702766112)) 1) (.neg (.lit 1213585182720))) 1) (.neg (.lit 2249653422240))) 1) (.lit 12713231460096)) 1) (.neg (.lit 9527687451648))) 1) (.neg (.lit 6192013978944))) 1) (.lit 5989112377056)) 1) (.lit 1740490532640)) 1) (.neg (.lit 1397851388064))) 1) (.neg (.lit 33059881728)))
theorem numQx_04_09_interpret (X Y : R) : value X Y numQx_04_09_expr=numQx_04_09 X Y := by
  simp only [numQx_04_09_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_04_09]
#print axioms numQx_04_09_interpret
def numQx_04_10_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 18748800) 1) (.neg (.lit 34886592))) 1) (.lit 4298189760)) 1) (.lit 35918786112)) 1) (.neg (.lit 299525723136))) 1) (.neg (.lit 1648206854640))) 1) (.lit 896097298896)) 1) (.lit 13770385865856)) 1) (.neg (.lit 22095867341376))) 1) (.lit 8902750965264)) 1) (.lit 113938116048)) 1) (.lit 977766409440)) 1) (.neg (.lit 675431750304)))
theorem numQx_04_10_interpret (X Y : R) : value X Y numQx_04_10_expr=numQx_04_10 X Y := by
  simp only [numQx_04_10_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_04_10]
#print axioms numQx_04_10_interpret
def numQx_04_11_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 4596480) 1) (.lit 5106816)) 1) (.lit 1890386784)) 1) (.lit 13847629920)) 1) (.neg (.lit 43776584064))) 1) (.lit 342345650688)) 1) (.neg (.lit 4693882261536))) 1) (.lit 13929000229152)) 1) (.neg (.lit 18794062823760))) 1) (.lit 20753464836384)) 1) (.neg (.lit 21664327941504))) 1) (.lit 12794157222624)) 1) (.neg (.lit 2695528273392)))
theorem numQx_04_11_interpret (X Y : R) : value X Y numQx_04_11_expr=numQx_04_11 X Y := by
  simp only [numQx_04_11_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_04_11]
#print axioms numQx_04_11_interpret
def numQx_04_12_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 26006400) 1) (.lit 268402080)) 1) (.lit 7436724576)) 1) (.lit 10684944576)) 1) (.lit 711025425504)) 1) (.neg (.lit 2477931995664))) 1) (.lit 4720050949248)) 1) (.neg (.lit 17689645945728))) 1) (.lit 44264400924528)) 1) (.neg (.lit 50799978151776))) 1) (.lit 25950927268368)) 1) (.neg (.lit 4778811005616)))
theorem numQx_04_12_interpret (X Y : R) : value X Y numQx_04_12_expr=numQx_04_12 X Y := by
  simp only [numQx_04_12_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_04_12]
#print axioms numQx_04_12_interpret
def numQx_04_13_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 3870720) 1) (.lit 79981440)) 1) (.lit 1857335040)) 1) (.lit 20191350912)) 1) (.lit 351172768320)) 1) (.neg (.lit 182031326208))) 1) (.lit 1058362223760)) 1) (.neg (.lit 19774372117392))) 1) (.lit 53382863911248)) 1) (.neg (.lit 57298331554272))) 1) (.lit 27147117625920)) 1) (.neg (.lit 4741846996464)))
theorem numQx_04_13_interpret (X Y : R) : value X Y numQx_04_13_expr=numQx_04_13 X Y := by
  simp only [numQx_04_13_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_04_13]
#print axioms numQx_04_13_interpret
def numQx_04_14_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 24796800) 1) (.lit 273885120)) 1) (.lit 9557941056)) 1) (.lit 112020119568)) 1) (.lit 261262786896)) 1) (.lit 1005405759216)) 1) (.neg (.lit 15903719434224))) 1) (.lit 39118895104032)) 1) (.neg (.lit 38811681988560))) 1) (.lit 16914598308864)) 1) (.neg (.lit 2657761501104)))
theorem numQx_04_14_interpret (X Y : R) : value X Y numQx_04_14_expr=numQx_04_14 X Y := by
  simp only [numQx_04_14_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_04_14]
#print axioms numQx_04_14_interpret
def numQx_04_15_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 2419200) 1) (.lit 61088640)) 1) (.lit 2203894560)) 1) (.lit 28982704224)) 1) (.lit 122521366368)) 1) (.lit 811352363184)) 1) (.neg (.lit 8309212061760))) 1) (.lit 18543910289184)) 1) (.neg (.lit 16527671764992))) 1) (.lit 5924957025600)) 1) (.neg (.lit 497786538096)))
theorem numQx_04_15_interpret (X Y : R) : value X Y numQx_04_15_expr=numQx_04_15 X Y := by
  simp only [numQx_04_15_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_04_15]
#print axioms numQx_04_15_interpret
def numQx_04_16_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 12579840) 1) (.lit 307936800)) 1) (.lit 5727590592)) 1) (.lit 31803302256)) 1) (.lit 342715418496)) 1) (.neg (.lit 2863881764064))) 1) (.lit 5744139684912)) 1) (.neg (.lit 4056087396240))) 1) (.lit 410382408528)) 1) (.lit 478603476576))
theorem numQx_04_16_interpret (X Y : R) : value X Y numQx_04_16_expr=numQx_04_16 X Y := by
  simp only [numQx_04_16_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_04_16]
#print axioms numQx_04_16_interpret
def numQx_04_17_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 967680) 1) (.lit 37252800)) 1) (.lit 673078080)) 1) (.lit 6880175520)) 1) (.lit 83413354272)) 1) (.neg (.lit 653907367152))) 1) (.lit 1084629621744)) 1) (.neg (.lit 222362972928))) 1) (.neg (.lit 742156338816))) 1) (.lit 501471285120))
theorem numQx_04_17_interpret (X Y : R) : value X Y numQx_04_17_expr=numQx_04_17 X Y := by
  simp only [numQx_04_17_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_04_17]
#print axioms numQx_04_17_interpret
def numQx_04_18_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 4233600) 1) (.lit 23017440)) 1) (.lit 1313070720)) 1) (.lit 11923496592)) 1) (.neg (.lit 95615540208))) 1) (.lit 81653858784)) 1) (.lit 225273706848)) 1) (.neg (.lit 452091080160))) 1) (.lit 253755343296))
theorem numQx_04_18_interpret (X Y : R) : value X Y numQx_04_18_expr=numQx_04_18 X Y := by
  simp only [numQx_04_18_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_04_18]
#print axioms numQx_04_18_interpret
def numQx_04_19_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 241920) 1) (.neg (.lit 3077760))) 1) (.lit 178415520)) 1) (.lit 924264480)) 1) (.neg (.lit 7957975152))) 1) (.neg (.lit 14549357376))) 1) (.lit 92098042416)) 1) (.neg (.lit 146052933840))) 1) (.lit 83853300816))
theorem numQx_04_19_interpret (X Y : R) : value X Y numQx_04_19_expr=numQx_04_19 X Y := by
  simp only [numQx_04_19_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_04_19]
#print axioms numQx_04_19_interpret
def numQx_04_20_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 241920)) 1) (.lit 13644288)) 1) (.lit 28146528)) 1) (.neg (.lit 215080800))) 1) (.neg (.lit 5000447664))) 1) (.lit 18626813424)) 1) (.neg (.lit 30667813920))) 1) (.lit 19175378832))
theorem numQx_04_20_interpret (X Y : R) : value X Y numQx_04_20_expr=numQx_04_20 X Y := by
  simp only [numQx_04_20_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_04_20]
#print axioms numQx_04_20_interpret
def numQx_04_21_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 422016) 1) (.neg (.lit 220416))) 1) (.lit 17080320)) 1) (.neg (.lit 642818400))) 1) (.lit 2223482256)) 1) (.neg (.lit 4313033136))) 1) (.lit 3026325888))
theorem numQx_04_21_interpret (X Y : R) : value X Y numQx_04_21_expr=numQx_04_21 X Y := by
  simp only [numQx_04_21_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_04_21]
#print axioms numQx_04_21_interpret
def numQx_04_22_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 1118880) 1) (.neg (.lit 41011200))) 1) (.lit 149640480)) 1) (.neg (.lit 393614208))) 1) (.lit 315522864))
theorem numQx_04_22_interpret (X Y : R) : value X Y numQx_04_22_expr=numQx_04_22 X Y := by
  simp only [numQx_04_22_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_04_22]
#print axioms numQx_04_22_interpret
def numQx_04_23_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 1058400)) 1) (.lit 4402080)) 1) (.neg (.lit 21111840))) 1) (.lit 19556640))
theorem numQx_04_23_interpret (X Y : R) : value X Y numQx_04_23_expr=numQx_04_23 X Y := by
  simp only [numQx_04_23_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_04_23]
#print axioms numQx_04_23_interpret
def numQx_04_24_expr : HExpr := (.add (.mulX (.neg (.lit 505440)) 1) (.lit 544320))
theorem numQx_04_24_interpret (X Y : R) : value X Y numQx_04_24_expr=numQx_04_24 X Y := by
  simp only [numQx_04_24_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_04_24]
#print axioms numQx_04_24_interpret
def numQx_05_00_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 297216)) 1) (.lit 10046592)) 1) (.neg (.lit 126638208))) 1) (.lit 693062784)) 1) (.neg (.lit 1144540800))) 1) (.neg (.lit 2915063424))) 1) (.lit 10237166208)) 1) (.neg (.lit 8791949952))) 1) (.lit 2038214016)) 6)
theorem numQx_05_00_interpret (X Y : R) : value X Y numQx_05_00_expr=numQx_05_00 X Y := by
  simp only [numQx_05_00_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_05_00]
#print axioms numQx_05_00_interpret
def numQx_05_01_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 632448) 1) (.neg (.lit 24731136))) 1) (.lit 410845824)) 1) (.neg (.lit 3677716224))) 1) (.lit 18322920576)) 1) (.neg (.lit 47097780480))) 1) (.lit 50901042816)) 1) (.neg (.lit 11604466944))) 1) (.neg (.lit 13035499776))) 1) (.lit 6212899584)) 1) (.neg (.lit 408146688))) 4)
theorem numQx_05_01_interpret (X Y : R) : value X Y numQx_05_01_expr=numQx_05_01 X Y := by
  simp only [numQx_05_01_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_05_01]
#print axioms numQx_05_01_interpret
def numQx_05_02_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 580608)) 1) (.lit 20366208)) 1) (.neg (.lit 277247232))) 1) (.lit 2025838080)) 1) (.neg (.lit 10371449088))) 1) (.lit 41372557056)) 1) (.neg (.lit 92348543232))) 1) (.lit 73109205504)) 1) (.lit 11268543744)) 1) (.neg (.lit 31056939648))) 1) (.lit 6258249216)) 4)
theorem numQx_05_02_interpret (X Y : R) : value X Y numQx_05_02_expr=numQx_05_02 X Y := by
  simp only [numQx_05_02_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_05_02]
#print axioms numQx_05_02_interpret
def numQx_05_03_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 193536) 1) (.neg (.lit 2187648))) 1) (.neg (.lit 33042816))) 1) (.lit 707895936)) 1) (.neg (.lit 3309310080))) 1) (.neg (.lit 14945675904))) 1) (.lit 174902364288)) 1) (.neg (.lit 458520455808))) 1) (.lit 480638634624)) 1) (.neg (.lit 191002572288))) 1) (.lit 5850102528)) 1) (.lit 5714053632)) 3)
theorem numQx_05_03_interpret (X Y : R) : value X Y numQx_05_03_expr=numQx_05_03 X Y := by
  simp only [numQx_05_03_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_05_03]
#print axioms numQx_05_03_interpret
def numQx_05_04_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 1862784)) 1) (.lit 46677504)) 1) (.neg (.lit 342111168))) 1) (.lit 2038695552)) 1) (.neg (.lit 25077857856))) 1) (.lit 128850704640)) 1) (.neg (.lit 123767310528))) 1) (.neg (.lit 136067185152))) 1) (.lit 215695866816)) 1) (.neg (.lit 28434219264))) 1) (.neg (.lit 37980316800))) 1) (.lit 5101833600)) 2)
theorem numQx_05_04_interpret (X Y : R) : value X Y numQx_05_04_expr=numQx_05_04 X Y := by
  simp only [numQx_05_04_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_05_04]
#print axioms numQx_05_04_interpret
def numQx_05_05_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 580608) 1) (.neg (.lit 8204928))) 1) (.lit 152293824)) 1) (.neg (.lit 1987083072))) 1) (.lit 13616152896)) 1) (.neg (.lit 68496922944))) 1) (.lit 152893827072)) 1) (.lit 136516886784)) 1) (.neg (.lit 806911740864))) 1) (.lit 893069043264)) 1) (.neg (.lit 348122670912))) 1) (.lit 29352549312)) 2)
theorem numQx_05_05_interpret (X Y : R) : value X Y numQx_05_05_expr=numQx_05_05 X Y := by
  simp only [numQx_05_05_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_05_05]
#print axioms numQx_05_05_interpret
def numQx_05_06_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 362880)) 1) (.lit 41512608)) 1) (.neg (.lit 627434496))) 1) (.lit 9180856032)) 1) (.neg (.lit 47815110720))) 1) (.neg (.lit 122340738528))) 1) (.lit 724220612928)) 1) (.neg (.lit 943963359840))) 1) (.lit 283749988032)) 1) (.lit 186468868800)) 1) (.neg (.lit 74316709440))) 1) (.neg (.lit 14693280768))) 1)
theorem numQx_05_06_interpret (X Y : R) : value X Y numQx_05_06_expr=numQx_05_06 X Y := by
  simp only [numQx_05_06_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_05_06]
#print axioms numQx_05_06_interpret
def numQx_05_07_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 1161216) 1) (.neg (.lit 16566912))) 1) (.lit 297582624)) 1) (.lit 829704000)) 1) (.neg (.lit 6204206304))) 1) (.neg (.lit 131636241504))) 1) (.lit 157635412416)) 1) (.lit 566717135040)) 1) (.neg (.lit 1104944273568))) 1) (.lit 448172147232)) 1) (.lit 186294398688)) 1) (.neg (.lit 118260502848))) 1) (.lit 918330048))
theorem numQx_05_07_interpret (X Y : R) : value X Y numQx_05_07_expr=numQx_05_07 X Y := by
  simp only [numQx_05_07_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_05_07]
#print axioms numQx_05_07_interpret
def numQx_05_08_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 2104704) 1) (.lit 66705984)) 1) (.lit 733804416)) 1) (.neg (.lit 4320397824))) 1) (.lit 19994617728)) 1) (.neg (.lit 325671712128))) 1) (.lit 953795538144)) 1) (.neg (.lit 975937019904))) 1) (.lit 370695590208)) 1) (.neg (.lit 166673754432))) 1) (.lit 201312685152)) 1) (.neg (.lit 74078623872)))
theorem numQx_05_08_interpret (X Y : R) : value X Y numQx_05_08_expr=numQx_05_08 X Y := by
  simp only [numQx_05_08_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_05_08]
#print axioms numQx_05_08_interpret
def numQx_05_09_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 1354752) 1) (.lit 3283200)) 1) (.lit 450435840)) 1) (.neg (.lit 1198649856))) 1) (.lit 47991085920)) 1) (.neg (.lit 184123174464))) 1) (.lit 333545622336)) 1) (.neg (.lit 752437968192))) 1) (.lit 1674933323904)) 1) (.neg (.lit 2019531857184))) 1) (.lit 1135696502880)) 1) (.neg (.lit 235483632864)))
theorem numQx_05_09_interpret (X Y : R) : value X Y numQx_05_09_expr=numQx_05_09 X Y := by
  simp only [numQx_05_09_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_05_09]
#print axioms numQx_05_09_interpret
def numQx_05_10_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 5975424) 1) (.lit 61346784)) 1) (.lit 1143246528)) 1) (.lit 21526104288)) 1) (.neg (.lit 3945225408))) 1) (.lit 69776662320)) 1) (.neg (.lit 1179159663888))) 1) (.lit 3138577471296)) 1) (.neg (.lit 3454557836256))) 1) (.lit 1728773006544)) 1) (.neg (.lit 322467061392)))
theorem numQx_05_10_interpret (X Y : R) : value X Y numQx_05_10_expr=numQx_05_10 X Y := by
  simp only [numQx_05_10_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_05_10]
#print axioms numQx_05_10_interpret
def numQx_05_11_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 1161216) 1) (.lit 7754880)) 1) (.lit 618164256)) 1) (.lit 6965146848)) 1) (.lit 22808544768)) 1) (.lit 104053014144)) 1) (.neg (.lit 1200486145680))) 1) (.lit 2852353875456)) 1) (.neg (.lit 2916013856832))) 1) (.lit 1372268316960)) 1) (.neg (.lit 242436298320)))
theorem numQx_05_11_interpret (X Y : R) : value X Y numQx_05_11_expr=numQx_05_11 X Y := by
  simp only [numQx_05_11_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_05_11]
#print axioms numQx_05_11_interpret
def numQx_05_12_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 4281984) 1) (.lit 119193408)) 1) (.lit 2023546560)) 1) (.lit 8680474368)) 1) (.lit 86570499456)) 1) (.neg (.lit 687316033296))) 1) (.lit 1498637422224)) 1) (.neg (.lit 1429541492400))) 1) (.lit 618150791088)) 1) (.neg (.lit 96466225536)))
theorem numQx_05_12_interpret (X Y : R) : value X Y numQx_05_12_expr=numQx_05_12 X Y := by
  simp only [numQx_05_12_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_05_12]
#print axioms numQx_05_12_interpret
def numQx_05_13_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 580608) 1) (.lit 15909120)) 1) (.lit 382527168)) 1) (.lit 2171047296)) 1) (.lit 33676539072)) 1) (.neg (.lit 236245347072))) 1) (.lit 477630200880)) 1) (.neg (.lit 399262208832))) 1) (.lit 127588658544)) 1) (.neg (.lit 4716151776)))
theorem numQx_05_13_interpret (X Y : R) : value X Y numQx_05_13_expr=numQx_05_13 X Y := by
  simp only [numQx_05_13_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_05_13]
#print axioms numQx_05_13_interpret
def numQx_05_14_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 2395008) 1) (.lit 28920096)) 1) (.lit 540730752)) 1) (.lit 7008171312)) 1) (.neg (.lit 49568257152))) 1) (.lit 86563595808)) 1) (.neg (.lit 41136012432))) 1) (.neg (.lit 20155380336))) 1) (.lit 17760784464))
theorem numQx_05_14_interpret (X Y : R) : value X Y numQx_05_14_expr=numQx_05_14 X Y := by
  simp only [numQx_05_14_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_05_14]
#print axioms numQx_05_14_interpret
def numQx_05_15_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 193536) 1) (.neg (.lit 1120896))) 1) (.lit 103415904)) 1) (.lit 773140800)) 1) (.neg (.lit 6006308496))) 1) (.lit 5304651984)) 1) (.lit 11927478096)) 1) (.neg (.lit 22910649120))) 1) (.lit 11388997872))
theorem numQx_05_15_interpret (X Y : R) : value X Y numQx_05_15_expr=numQx_05_15 X Y := by
  simp only [numQx_05_15_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_05_15]
#print axioms numQx_05_15_interpret
def numQx_05_16_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 193536)) 1) (.lit 10698240)) 1) (.lit 37833120)) 1) (.neg (.lit 332503104))) 1) (.neg (.lit 1176075696))) 1) (.lit 5494654080)) 1) (.neg (.lit 7725078864))) 1) (.lit 3906055872))
theorem numQx_05_16_interpret (X Y : R) : value X Y numQx_05_16_expr=numQx_05_16 X Y := by
  simp only [numQx_05_16_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_05_16]
#print axioms numQx_05_16_interpret
def numQx_05_17_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 424704) 1) (.lit 322560)) 1) (.lit 2502432)) 1) (.neg (.lit 295603776))) 1) (.lit 979675632)) 1) (.neg (.lit 1482906096))) 1) (.lit 847723968))
theorem numQx_05_17_interpret (X Y : R) : value X Y numQx_05_17_expr=numQx_05_17 X Y := by
  simp only [numQx_05_17_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_05_17]
#print axioms numQx_05_17_interpret
def numQx_05_18_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 792288) 1) (.neg (.lit 26174016))) 1) (.lit 88014528)) 1) (.neg (.lit 171516960))) 1) (.lit 116562240))
theorem numQx_05_18_interpret (X Y : R) : value X Y numQx_05_18_expr=numQx_05_18 X Y := by
  simp only [numQx_05_18_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_05_18]
#print axioms numQx_05_18_interpret
def numQx_05_19_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 852768)) 1) (.lit 3278880)) 1) (.neg (.lit 11127456))) 1) (.lit 9292320))
theorem numQx_05_19_interpret (X Y : R) : value X Y numQx_05_19_expr=numQx_05_19 X Y := by
  simp only [numQx_05_19_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_05_19]
#print axioms numQx_05_19_interpret
def numQx_05_20_expr : HExpr := (.add (.mulX (.neg (.lit 311040)) 1) (.lit 326592))
theorem numQx_05_20_interpret (X Y : R) : value X Y numQx_05_20_expr=numQx_05_20 X Y := by
  simp only [numQx_05_20_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_05_20]
#print axioms numQx_05_20_interpret
def numQx_06_00_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 235008)) 1) (.lit 6804864)) 1) (.neg (.lit 71929728))) 1) (.lit 327162240)) 1) (.neg (.lit 533070720))) 1) (.neg (.lit 138091392))) 1) (.lit 1000584576)) 1) (.neg (.lit 704598912))) 1) (.lit 113374080)) 4)
theorem numQx_06_00_interpret (X Y : R) : value X Y numQx_06_00_expr=numQx_06_00 X Y := by
  simp only [numQx_06_00_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_06_00]
#print axioms numQx_06_00_interpret
def numQx_06_01_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 359424) 1) (.neg (.lit 11308032))) 1) (.lit 152889984)) 1) (.neg (.lit 1112914944))) 1) (.lit 4337732736)) 1) (.neg (.lit 8154100224))) 1) (.lit 7231462272)) 1) (.neg (.lit 2537339904))) 1) (.lit 2519424)) 1) (.lit 90699264)) 3)
theorem numQx_06_01_interpret (X Y : R) : value X Y numQx_06_01_expr=numQx_06_01 X Y := by
  simp only [numQx_06_01_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_06_01]
#print axioms numQx_06_01_interpret
def numQx_06_02_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 290304)) 1) (.lit 8028288)) 1) (.neg (.lit 76878720))) 1) (.lit 378338688)) 1) (.neg (.lit 1809426816))) 1) (.lit 7497401472)) 1) (.neg (.lit 12993146496))) 1) (.lit 7972670592)) 1) (.lit 479530368)) 1) (.neg (.lit 1637625600))) 1) (.lit 181398528)) 2)
theorem numQx_06_02_interpret (X Y : R) : value X Y numQx_06_02_expr=numQx_06_02 X Y := by
  simp only [numQx_06_02_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_06_02]
#print axioms numQx_06_02_interpret
def numQx_06_03_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 96768) 1) (.neg (.lit 300672))) 1) (.neg (.lit 20580480))) 1) (.lit 258802560)) 1) (.neg (.lit 994177152))) 1) (.neg (.lit 1973932416))) 1) (.lit 17900694144)) 1) (.neg (.lit 35963968896))) 1) (.lit 30531779712)) 1) (.neg (.lit 10584940032))) 1) (.lit 846526464)) 2)
theorem numQx_06_03_interpret (X Y : R) : value X Y numQx_06_03_expr=numQx_06_03 X Y := by
  simp only [numQx_06_03_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_06_03]
#print axioms numQx_06_03_interpret
def numQx_06_04_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 653184)) 1) (.lit 12623616)) 1) (.neg (.lit 41891904))) 1) (.lit 469962432)) 1) (.neg (.lit 6273465408))) 1) (.lit 12207567168)) 1) (.lit 3464814528)) 1) (.neg (.lit 26719098048))) 1) (.lit 22187307456)) 1) (.neg (.lit 4558897728))) 1) (.neg (.lit 748268928))) 1)
theorem numQx_06_04_interpret (X Y : R) : value X Y numQx_06_04_expr=numQx_06_04 X Y := by
  simp only [numQx_06_04_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_06_04]
#print axioms numQx_06_04_interpret
def numQx_06_05_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 193536) 1) (.neg (.lit 739008))) 1) (.lit 39417408)) 1) (.neg (.lit 262144512))) 1) (.lit 887942016)) 1) (.neg (.lit 14033251584))) 1) (.lit 42741862272)) 1) (.neg (.lit 43868272896))) 1) (.lit 6842662272)) 1) (.lit 13287022272)) 1) (.neg (.lit 5634691776))) 1)
theorem numQx_06_05_interpret (X Y : R) : value X Y numQx_06_05_expr=numQx_06_05 X Y := by
  simp only [numQx_06_05_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_06_05]
#print axioms numQx_06_05_interpret
def numQx_06_06_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 145152) 1) (.lit 16338912)) 1) (.neg (.lit 139650336))) 1) (.lit 2011984608)) 1) (.neg (.lit 9137700000))) 1) (.lit 16017665184)) 1) (.neg (.lit 15074559648))) 1) (.lit 18748861344)) 1) (.neg (.lit 27112431456))) 1) (.lit 19918566144)) 1) (.neg (.lit 5249219904)))
theorem numQx_06_06_interpret (X Y : R) : value X Y numQx_06_06_expr=numQx_06_06 X Y := by
  simp only [numQx_06_06_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_06_06]
#print axioms numQx_06_06_interpret
def numQx_06_07_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 290304) 1) (.neg (.lit 1124736))) 1) (.lit 50476032)) 1) (.lit 694205664)) 1) (.lit 348182784)) 1) (.lit 1404456480)) 1) (.neg (.lit 38907549504))) 1) (.lit 106717759200)) 1) (.neg (.lit 121369752000))) 1) (.lit 63897001632)) 1) (.neg (.lit 12833945856)))
theorem numQx_06_07_interpret (X Y : R) : value X Y numQx_06_07_expr=numQx_06_07 X Y := by
  simp only [numQx_06_07_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_06_07]
#print axioms numQx_06_07_interpret
def numQx_06_08_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 338688) 1) (.lit 23481312)) 1) (.lit 268274880)) 1) (.lit 1175312928)) 1) (.lit 6478487712)) 1) (.neg (.lit 59796051264))) 1) (.lit 137343572352)) 1) (.neg (.lit 141989207904))) 1) (.lit 69643807776)) 1) (.neg (.lit 13146984288)))
theorem numQx_06_08_interpret (X Y : R) : value X Y numQx_06_08_expr=numQx_06_08 X Y := by
  simp only [numQx_06_08_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_06_08]
#print axioms numQx_06_08_interpret
def numQx_06_09_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 193536) 1) (.lit 3300672)) 1) (.lit 99527232)) 1) (.lit 333344640)) 1) (.lit 5978669184)) 1) (.neg (.lit 39100955616))) 1) (.lit 83099798208)) 1) (.neg (.lit 82025587008))) 1) (.lit 38562397056)) 1) (.neg (.lit 6947941536)))
theorem numQx_06_09_interpret (X Y : R) : value X Y numQx_06_09_expr=numQx_06_09 X Y := by
  simp only [numQx_06_09_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_06_09]
#print axioms numQx_06_09_interpret
def numQx_06_10_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 701568) 1) (.lit 15241056)) 1) (.lit 100535232)) 1) (.lit 2133929088)) 1) (.neg (.lit 13327621344))) 1) (.lit 27238839264)) 1) (.neg (.lit 25206099264))) 1) (.lit 10634908608)) 1) (.neg (.lit 1586047392)))
theorem numQx_06_10_interpret (X Y : R) : value X Y numQx_06_10_expr=numQx_06_10 X Y := by
  simp only [numQx_06_10_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_06_10]
#print axioms numQx_06_10_interpret
def numQx_06_11_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 96768) 1) (.lit 110208)) 1) (.lit 32406048)) 1) (.lit 359210304)) 1) (.neg (.lit 2458979328))) 1) (.lit 4575962016)) 1) (.neg (.lit 3127368960))) 1) (.lit 338128992)) 1) (.lit 285931296))
theorem numQx_06_11_interpret (X Y : R) : value X Y numQx_06_11_expr=numQx_06_11 X Y := by
  simp only [numQx_06_11_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_06_11]
#print axioms numQx_06_11_interpret
def numQx_06_12_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 96768)) 1) (.lit 5182464)) 1) (.lit 26514912)) 1) (.neg (.lit 219669216))) 1) (.lit 184269888)) 1) (.lit 436780512)) 1) (.neg (.lit 762441120))) 1) (.lit 334088064))
theorem numQx_06_12_interpret (X Y : R) : value X Y numQx_06_12_expr=numQx_06_12 X Y := by
  simp only [numQx_06_12_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_06_12]
#print axioms numQx_06_12_interpret
def numQx_06_13_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 284928) 1) (.lit 526848)) 1) (.neg (.lit 4637376))) 1) (.neg (.lit 61784256))) 1) (.lit 216063936)) 1) (.neg (.lit 264214656))) 1) (.lit 116064576))
theorem numQx_06_13_interpret (X Y : R) : value X Y numQx_06_13_expr=numQx_06_13 X Y := by
  simp only [numQx_06_13_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_06_13]
#print axioms numQx_06_13_interpret
def numQx_06_14_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 344736) 1) (.neg (.lit 9730944))) 1) (.lit 30029472)) 1) (.neg (.lit 42221088))) 1) (.lit 22200480))
theorem numQx_06_14_interpret (X Y : R) : value X Y numQx_06_14_expr=numQx_06_14 X Y := by
  simp only [numQx_06_14_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_06_14]
#print axioms numQx_06_14_interpret
def numQx_06_15_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 429408)) 1) (.lit 1523232)) 1) (.neg (.lit 3372192))) 1) (.lit 2356128))
theorem numQx_06_15_interpret (X Y : R) : value X Y numQx_06_15_expr=numQx_06_15 X Y := by
  simp only [numQx_06_15_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_06_15]
#print axioms numQx_06_15_interpret
def numQx_06_16_expr : HExpr := (.add (.mulX (.neg (.lit 106272)) 1) (.lit 108864))
theorem numQx_06_16_interpret (X Y : R) : value X Y numQx_06_16_expr=numQx_06_16 X Y := by
  simp only [numQx_06_16_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_06_16]
#print axioms numQx_06_16_interpret
def numQx_07_00_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 131328)) 1) (.lit 3203712)) 1) (.neg (.lit 27713664))) 1) (.lit 101437056)) 1) (.neg (.lit 150180480))) 1) (.lit 71238528)) 1) (.lit 25100928)) 1) (.neg (.lit 25474176))) 1) (.lit 2519424)) 2)
theorem numQx_07_00_interpret (X Y : R) : value X Y numQx_07_00_expr=numQx_07_00 X Y := by
  simp only [numQx_07_00_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_07_00]
#print axioms numQx_07_00_interpret
def numQx_07_01_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 134784) 1) (.neg (.lit 2992896))) 1) (.lit 29414016)) 1) (.neg (.lit 158443776))) 1) (.lit 426971520)) 1) (.neg (.lit 592406784))) 1) (.lit 417695616)) 1) (.neg (.lit 130450176))) 1) (.lit 10077696)) 2)
theorem numQx_07_01_interpret (X Y : R) : value X Y numQx_07_01_expr=numQx_07_01 X Y := by
  simp only [numQx_07_01_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_07_01]
#print axioms numQx_07_01_interpret
def numQx_07_02_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 82944)) 1) (.lit 1648512)) 1) (.neg (.lit 8156160))) 1) (.lit 30046464)) 1) (.neg (.lit 314233344))) 1) (.lit 1015552512)) 1) (.neg (.lit 1349001216))) 1) (.lit 773432064)) 1) (.neg (.lit 126531072))) 1) (.neg (.lit 22674816))) 1)
theorem numQx_07_02_interpret (X Y : R) : value X Y numQx_07_02_expr=numQx_07_02 X Y := by
  simp only [numQx_07_02_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_07_02]
#print axioms numQx_07_02_interpret
def numQx_07_03_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 27648) 1) (.lit 155520)) 1) (.neg (.lit 4938624))) 1) (.lit 51014016)) 1) (.neg (.lit 290791296))) 1) (.lit 573291648)) 1) (.neg (.lit 264062592))) 1) (.neg (.lit 406498176))) 1) (.lit 492967296)) 1) (.neg (.lit 151165440))) 1)
theorem numQx_07_03_interpret (X Y : R) : value X Y numQx_07_03_expr=numQx_07_03 X Y := by
  simp only [numQx_07_03_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_07_03]
#print axioms numQx_07_03_interpret
def numQx_07_04_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 107136)) 1) (.lit 1744128)) 1) (.lit 4511808)) 1) (.lit 36327168)) 1) (.neg (.lit 87491520))) 1) (.neg (.lit 381427200))) 1) (.lit 1434352320)) 1) (.neg (.lit 1821263616))) 1) (.lit 1040102208)) 1) (.neg (.lit 226748160)))
theorem numQx_07_04_interpret (X Y : R) : value X Y numQx_07_04_expr=numQx_07_04 X Y := by
  simp only [numQx_07_04_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_07_04]
#print axioms numQx_07_04_interpret
def numQx_07_05_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 27648) 1) (.lit 268416)) 1) (.lit 6588864)) 1) (.lit 30861504)) 1) (.lit 237661056)) 1) (.neg (.lit 1820070144))) 1) (.lit 4032033984)) 1) (.neg (.lit 4158589248))) 1) (.lit 2079364608)) 1) (.neg (.lit 408146688)))
theorem numQx_07_05_interpret (X Y : R) : value X Y numQx_07_05_expr=numQx_07_05 X Y := by
  simp only [numQx_07_05_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_07_05]
#print axioms numQx_07_05_interpret
def numQx_07_06_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 58752) 1) (.lit 3300000)) 1) (.lit 3666624)) 1) (.lit 266307360)) 1) (.neg (.lit 1484690112))) 1) (.lit 3053560032)) 1) (.neg (.lit 3041938368))) 1) (.lit 1484850528)) 1) (.neg (.lit 285114816)))
theorem numQx_07_06_interpret (X Y : R) : value X Y numQx_07_06_expr=numQx_07_06 X Y := by
  simp only [numQx_07_06_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_07_06]
#print axioms numQx_07_06_interpret
def numQx_07_07_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 27648) 1) (.lit 223104)) 1) (.lit 3845856)) 1) (.lit 84276192)) 1) (.neg (.lit 497075904))) 1) (.lit 1027992384)) 1) (.neg (.lit 1010243232))) 1) (.lit 478573920)) 1) (.neg (.lit 87619968)))
theorem numQx_07_07_interpret (X Y : R) : value X Y numQx_07_07_expr=numQx_07_07 X Y := by
  simp only [numQx_07_07_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_07_07]
#print axioms numQx_07_07_interpret
end
end CriticalZeroSplitReduction20261003

import ExactPhase
import ExactSignedMean

/-! Exact imported data for the one-box leaf 66902. Printed native
coefficient intervals are data only: their containment remains a
premise. The trigonometric inputs and rational decisions below are
independently kernel checked. No physical leaf admission is asserted. -/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 2000000
namespace SignedMeanIntake20261006.Leaf66902
open SignedMeanIntake20261006

def center0 : ℚ := (585166059169711/281474976710656)
def radius0 : ℚ := (463617246416447489689/1208925819614629174706176)
def nativeRadius0 : ℚ := (7074237768805657/18446744073709551616)
def cosInput0 : QInterval := ⟨(-8764821909134921/18014398509481984), (-1095602738641865/2251799813685248)⟩
def sinInput0 : QInterval := ⟨(3934593773183383/4503599627370496), (7869187546366767/9007199254740992)⟩
theorem phase0_checked : phaseCheck 32 center0 cosInput0 sinInput0=true := by decide
theorem phase0_sound : cosInput0.Contains (Real.cos (center0:ℝ)) ∧
    sinInput0.Contains (Real.sin (center0:ℝ)) :=
  phaseCheck_sound 32 center0 cosInput0 sinInput0 phase0_checked
theorem radius0_checked : 0 < radius0 ∧ radius0 ≤ nativeRadius0 := by decide

def center1 : ℚ := (-2364843760245347/1125899906842624)
def radius1 : ℚ := (463617246416447489689/1208925819614629174706176)
def nativeRadius1 : ℚ := (7074237768805657/18446744073709551616)
def cosInput1 : QInterval := ⟨(-1137595989781491/2251799813685248), (-4550383959125963/9007199254740992)⟩
def sinInput1 : QInterval := ⟨(-7773264709189815/9007199254740992), (-3886632354594907/4503599627370496)⟩
theorem phase1_checked : phaseCheck 32 center1 cosInput1 sinInput1=true := by decide
theorem phase1_sound : cosInput1.Contains (Real.cos (center1:ℝ)) ∧
    sinInput1.Contains (Real.sin (center1:ℝ)) :=
  phaseCheck_sound 32 center1 cosInput1 sinInput1 phase1_checked
theorem radius1_checked : 0 < radius1 ∧ radius1 ≤ nativeRadius1 := by decide

def center2 : ℚ := (-73847395356849/35184372088832)
def radius2 : ℚ := (463617246416447489689/1208925819614629174706176)
def nativeRadius2 : ℚ := (7074237768805657/18446744073709551616)
def cosInput2 : QInterval := ⟨(-283653410708301/562949953421312), (-4538454571332815/9007199254740992)⟩
def sinInput2 : QInterval := ⟨(-3890117881200869/4503599627370496), (-7780235762401737/9007199254740992)⟩
theorem phase2_checked : phaseCheck 32 center2 cosInput2 sinInput2=true := by decide
theorem phase2_sound : cosInput2.Contains (Real.cos (center2:ℝ)) ∧
    sinInput2.Contains (Real.sin (center2:ℝ)) :=
  phaseCheck_sound 32 center2 cosInput2 sinInput2 phase2_checked
theorem radius2_checked : 0 < radius2 ∧ radius2 ≤ nativeRadius2 := by decide

def center3 : ℚ := (586461390789345/281474976710656)
def radius3 : ℚ := (463617246416447489689/1208925819614629174706176)
def nativeRadius3 : ℚ := (7074237768805657/18446744073709551616)
def cosInput3 : QInterval := ⟨(-4418577969293237/9007199254740992), (-8837155938586473/18014398509481984)⟩
def sinInput3 : QInterval := ⟨(7848936688742185/9007199254740992), (3924468344371093/4503599627370496)⟩
theorem phase3_checked : phaseCheck 32 center3 cosInput3 sinInput3=true := by decide
theorem phase3_sound : cosInput3.Contains (Real.cos (center3:ℝ)) ∧
    sinInput3.Contains (Real.sin (center3:ℝ)) :=
  phaseCheck_sound 32 center3 cosInput3 sinInput3 phase3_checked
theorem radius3_checked : 0 < radius3 ∧ radius3 ≤ nativeRadius3 := by decide

def rowR : QInterval := ⟨(4554120502605837/1180591620717411303424), (3513957199799821/590295810358705651712)⟩
def rowDelta : QInterval := ⟨(6524320588717279/5316911983139663491615228241121378304), (618204997360243/41538374868278621028243970633760768)⟩
theorem rowR_below_tao : rowR.hi < 243 := by decide
theorem rowDelta_positive : 0 < rowDelta.lo := by decide
def rowPair0 : MeanCertificate :=
  ⟨⟨(-1528644889136871/5192296858534827628530496329220096), (-1385762046028027/41538374868278621028243970633760768)⟩,
   ⟨(4255103555109791/162259276829213363391578010288128), (2447346722124947/20282409603651670423947251286016)⟩,
   ⟨(8512679611287577/324518553658426726783156020576256), (1224576334054431/10141204801825835211973625643008)⟩,
   ⟨(-7644149428197195/1532495540865888858358347027150309183618739122183602176), (7734091062354049/1532495540865888858358347027150309183618739122183602176)⟩,
   ⟨(-3870073646980115/766247770432944429179173513575154591809369561091801088), (7633447038493759/1532495540865888858358347027150309183618739122183602176)⟩⟩
theorem rowPair0_minus_checked : rowPair0.excludesMinus=true := by decide
theorem rowPair0_plus_unresolved : rowPair0.excludesPlus=false := by decide
theorem rowPair0_excludes_minus {A B D q : ℝ}
    (enclosures : rowPair0.Valid A B D q) (hD : 0 ≤ D) (hq : 0 < q)
    (physicalBound : (A-B*q)^2 ≤ (D*q)^2) : False :=
  MeanCertificate.excludesMinus_sound enclosures rowPair0_minus_checked hD hq physicalBound

def rowPair1 : MeanCertificate :=
  ⟨⟨(-6082918230970375/20769187434139310514121985316880384), (-5548554542169791/166153499473114484112975882535043072)⟩,
   ⟨(8496813987692849/324518553658426726783156020576256), (4869453073248497/40564819207303340847894502572032)⟩,
   ⟨(8499286488760841/324518553658426726783156020576256), (2436532482608163/20282409603651670423947251286016)⟩,
   ⟨(-3773090498638729/766247770432944429179173513575154591809369561091801088), (7629022751359001/1532495540865888858358347027150309183618739122183602176)⟩,
   ⟨(-3823562472384567/766247770432944429179173513575154591809369561091801088), (1883576402883887/383123885216472214589586756787577295904684780545900544)⟩⟩
theorem rowPair1_minus_checked : rowPair1.excludesMinus=true := by decide
theorem rowPair1_plus_unresolved : rowPair1.excludesPlus=false := by decide
theorem rowPair1_excludes_minus {A B D q : ℝ}
    (enclosures : rowPair1.Valid A B D q) (hD : 0 ≤ D) (hq : 0 < q)
    (physicalBound : (A-B*q)^2 ≤ (D*q)^2) : False :=
  MeanCertificate.excludesMinus_sound enclosures rowPair1_minus_checked hD hq physicalBound

def rowPair2 : MeanCertificate :=
  ⟨⟨(-6112664185159265/20769187434139310514121985316880384), (-2781493492408047/83076749736557242056487941267521536)⟩,
   ⟨(532980372371139/20282409603651670423947251286016), (4893018026445035/40564819207303340847894502572032)⟩,
   ⟨(4265079229503107/162259276829213363391578010288128), (4896629918412865/40564819207303340847894502572032)⟩,
   ⟨(-3812423438718055/766247770432944429179173513575154591809369561091801088), (1930227492658391/383123885216472214589586756787577295904684780545900544)⟩,
   ⟨(-1928295529452987/383123885216472214589586756787577295904684780545900544), (7612647708733175/1532495540865888858358347027150309183618739122183602176)⟩⟩
theorem rowPair2_minus_checked : rowPair2.excludesMinus=true := by decide
theorem rowPair2_plus_unresolved : rowPair2.excludesPlus=false := by decide
theorem rowPair2_excludes_minus {A B D q : ℝ}
    (enclosures : rowPair2.Valid A B D q) (hD : 0 ≤ D) (hq : 0 < q)
    (physicalBound : (A-B*q)^2 ≤ (D*q)^2) : False :=
  MeanCertificate.excludesMinus_sound enclosures rowPair2_minus_checked hD hq physicalBound

def columnR : QInterval := ⟨(4554120442588945/1180591620717411303424), (878489307449545/147573952589676412928)⟩
def columnDelta : QInterval := ⟨(3649964934218051/2658455991569831745807614120560689152), (2437026070321667/166153499473114484112975882535043072)⟩
theorem columnR_below_tao : columnR.hi < 243 := by decide
theorem columnDelta_positive : 0 < columnDelta.lo := by decide
def columnPair0 : MeanCertificate :=
  ⟨⟨(-3035861590091437/10384593717069655257060992658440192), (-722881085996397/20769187434139310514121985316880384)⟩,
   ⟨(8698661674817803/324518553658426726783156020576256), (4860306362169903/40564819207303340847894502572032)⟩,
   ⟨(8701412874589493/324518553658426726783156020576256), (1215966622219061/10141204801825835211973625643008)⟩,
   ⟨(-455882959178723/95780971304118053647396689196894323976171195136475136), (3690491192551933/766247770432944429179173513575154591809369561091801088)⟩,
   ⟨(-3695090085280017/766247770432944429179173513575154591809369561091801088), (910472691873929/191561942608236107294793378393788647952342390272950272)⟩⟩
theorem columnPair0_minus_checked : columnPair0.excludesMinus=true := by decide
theorem columnPair0_plus_unresolved : columnPair0.excludesPlus=false := by decide
theorem columnPair0_excludes_minus {A B D q : ℝ}
    (enclosures : columnPair0.Valid A B D q) (hD : 0 ≤ D) (hq : 0 < q)
    (physicalBound : (A-B*q)^2 ≤ (D*q)^2) : False :=
  MeanCertificate.excludesMinus_sound enclosures columnPair0_minus_checked hD hq physicalBound

def columnPair1 : MeanCertificate :=
  ⟨⟨(-6037059468469761/20769187434139310514121985316880384), (-5795551847049305/166153499473114484112975882535043072)⟩,
   ⟨(4344950976283275/162259276829213363391578010288128), (2416300175030747/20282409603651670423947251286016)⟩,
   ⟨(4346326576169119/162259276829213363391578010288128), (4836160476767827/40564819207303340847894502572032)⟩,
   ⟨(-3593296732495387/766247770432944429179173513575154591809369561091801088), (7268167625732281/1532495540865888858358347027150309183618739122183602176)⟩,
   ⟨(-1821452955637087/383123885216472214589586756787577295904684780545900544), (7175189884561865/1532495540865888858358347027150309183618739122183602176)⟩⟩
theorem columnPair1_minus_checked : columnPair1.excludesMinus=true := by decide
theorem columnPair1_plus_unresolved : columnPair1.excludesPlus=false := by decide
theorem columnPair1_excludes_minus {A B D q : ℝ}
    (enclosures : columnPair1.Valid A B D q) (hD : 0 ≤ D) (hq : 0 < q)
    (physicalBound : (A-B*q)^2 ≤ (D*q)^2) : False :=
  MeanCertificate.excludesMinus_sound enclosures columnPair1_minus_checked hD hq physicalBound

def columnPair2 : MeanCertificate :=
  ⟨⟨(-3033504742209549/10384593717069655257060992658440192), (-5800568076961897/166153499473114484112975882535043072)⟩,
   ⟨(8712404766820675/324518553658426726783156020576256), (1214074072611451/10141204801825835211973625643008)⟩,
   ⟨(544697247912023/20282409603651670423947251286016), (2429928208576071/20282409603651670423947251286016)⟩,
   ⟨(-7269009990643465/1532495540865888858358347027150309183618739122183602176), (3683165730534299/766247770432944429179173513575154591809369561091801088)⟩,
   ⟨(-7353319827098079/1532495540865888858358347027150309183618739122183602176), (7257524112064677/1532495540865888858358347027150309183618739122183602176)⟩⟩
theorem columnPair2_minus_checked : columnPair2.excludesMinus=true := by decide
theorem columnPair2_plus_unresolved : columnPair2.excludesPlus=false := by decide
theorem columnPair2_excludes_minus {A B D q : ℝ}
    (enclosures : columnPair2.Valid A B D q) (hD : 0 ≤ D) (hq : 0 < q)
    (physicalBound : (A-B*q)^2 ≤ (D*q)^2) : False :=
  MeanCertificate.excludesMinus_sound enclosures columnPair2_minus_checked hD hq physicalBound

end SignedMeanIntake20261006.Leaf66902

#print axioms SignedMeanIntake20261006.Leaf66902.phase0_checked
#print axioms SignedMeanIntake20261006.Leaf66902.phase0_sound
#print axioms SignedMeanIntake20261006.Leaf66902.radius0_checked
#print axioms SignedMeanIntake20261006.Leaf66902.phase1_checked
#print axioms SignedMeanIntake20261006.Leaf66902.phase1_sound
#print axioms SignedMeanIntake20261006.Leaf66902.radius1_checked
#print axioms SignedMeanIntake20261006.Leaf66902.phase2_checked
#print axioms SignedMeanIntake20261006.Leaf66902.phase2_sound
#print axioms SignedMeanIntake20261006.Leaf66902.radius2_checked
#print axioms SignedMeanIntake20261006.Leaf66902.phase3_checked
#print axioms SignedMeanIntake20261006.Leaf66902.phase3_sound
#print axioms SignedMeanIntake20261006.Leaf66902.radius3_checked
#print axioms SignedMeanIntake20261006.Leaf66902.rowPair0_minus_checked
#print axioms SignedMeanIntake20261006.Leaf66902.rowPair0_excludes_minus
#print axioms SignedMeanIntake20261006.Leaf66902.rowPair1_minus_checked
#print axioms SignedMeanIntake20261006.Leaf66902.rowPair1_excludes_minus
#print axioms SignedMeanIntake20261006.Leaf66902.rowPair2_minus_checked
#print axioms SignedMeanIntake20261006.Leaf66902.rowPair2_excludes_minus
#print axioms SignedMeanIntake20261006.Leaf66902.columnPair0_minus_checked
#print axioms SignedMeanIntake20261006.Leaf66902.columnPair0_excludes_minus
#print axioms SignedMeanIntake20261006.Leaf66902.columnPair1_minus_checked
#print axioms SignedMeanIntake20261006.Leaf66902.columnPair1_excludes_minus
#print axioms SignedMeanIntake20261006.Leaf66902.columnPair2_minus_checked
#print axioms SignedMeanIntake20261006.Leaf66902.columnPair2_excludes_minus

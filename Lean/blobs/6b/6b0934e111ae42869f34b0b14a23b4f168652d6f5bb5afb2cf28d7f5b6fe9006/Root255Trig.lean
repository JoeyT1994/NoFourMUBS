import RadianSeedBounds
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace ShoulderRoot255Trig20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
noncomputable section
def S0_0 : Interval := ⟨(-16944946237/4398046511104),(-4236236559/1099511627776)⟩
def C0_0 : Interval := ⟨(4398013867853/4398046511104),(4398013867955/4398046511104)⟩
theorem trig0_0 : Mem S0_0 (Real.sin ((-505/131072):ℝ)) ∧ Mem C0_0 (Real.cos ((-505/131072):ℝ)) := by
  have h := taylor_sound (q:=(-505/131072)) (S:=S0_0) (C:=C0_0) (by norm_num [TaylorCheck,S0_0,C0_0])
  norm_num at h ⊢
  exact h
def S0_1 : Interval := ⟨(-33889640937/4398046511104),(-33889640933/4398046511104)⟩
def C0_1 : Interval := ⟨(4397915938767/4398046511104),(1099478984743/1099511627776)⟩
theorem trig0_1 : Mem S0_1 (Real.sin ((-505/65536):ℝ)) ∧ Mem C0_1 (Real.cos ((-505/65536):ℝ)) := by
  have h := double_sound trig0_0
    (show Includes (doubleSin S0_0 C0_0) S0_1 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S0_0,C0_0,S0_1])
    (show Includes (doubleCos S0_0 C0_0) C0_1 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S0_0,C0_0,C0_1])
  norm_num at h ⊢
  exact h
def S0_2 : Interval := ⟨(-33888634799/2199023255552),(-33888634793/2199023255552)⟩
def C0_2 : Interval := ⟨(4397524229875/4398046511104),(2198762115143/2199023255552)⟩
theorem trig0_2 : Mem S0_2 (Real.sin ((-505/32768):ℝ)) ∧ Mem C0_2 (Real.cos ((-505/32768):ℝ)) := by
  have h := double_sound trig0_1
    (show Includes (doubleSin S0_1 C0_1) S0_2 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S0_1,C0_1,S0_2])
    (show Includes (doubleCos S0_1 C0_1) C0_2 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S0_1,C0_1,C0_2])
  norm_num at h ⊢
  exact h
def S0_3 : Interval := ⟨(-135538441701/4398046511104),(-135538441663/4398046511104)⟩
def C0_3 : Interval := ⟨(4395957510965/4398046511104),(1098989377947/1099511627776)⟩
theorem trig0_3 : Mem S0_3 (Real.sin ((-505/16384):ℝ)) ∧ Mem C0_3 (Real.cos ((-505/16384):ℝ)) := by
  have h := double_sound trig0_2
    (show Includes (doubleSin S0_2 C0_2) S0_3 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S0_2,C0_2,S0_3])
    (show Includes (doubleCos S0_2 C0_2) C0_3 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S0_2,C0_2,C0_3])
  norm_num at h ⊢
  exact h
def S0_4 : Interval := ⟨(-270948126369/4398046511104),(-270948126241/4398046511104)⟩
def C0_4 : Interval := ⟨(4389692496495/4398046511104),(4389692498143/4398046511104)⟩
theorem trig0_4 : Mem S0_4 (Real.sin ((-505/8192):ℝ)) ∧ Mem C0_4 (Real.cos ((-505/8192):ℝ)) := by
  have h := double_sound trig0_3
    (show Includes (doubleSin S0_3 C0_3) S0_4 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S0_3,C0_3,S0_4])
    (show Includes (doubleCos S0_3 C0_3) C0_4 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S0_3,C0_3,C0_4])
  norm_num at h ⊢
  exact h
def S0_5 : Interval := ⟨(-270433465109/2199023255552),(-540866929759/4398046511104)⟩
def C0_5 : Interval := ⟨(4364662192211/4398046511104),(4364662195517/4398046511104)⟩
theorem trig0_5 : Mem S0_5 (Real.sin ((-505/4096):ℝ)) ∧ Mem C0_5 (Real.cos ((-505/4096):ℝ)) := by
  have h := double_sound trig0_4
    (show Includes (doubleSin S0_4 C0_4) S0_5 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S0_4,C0_4,S0_5])
    (show Includes (doubleCos S0_4 C0_4) C0_5 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S0_4,C0_4,C0_5])
  norm_num at h ⊢
  exact h
def S0_6 : Interval := ⟨(-1073522727497/4398046511104),(-268380681443/1099511627776)⟩
def C0_6 : Interval := ⟨(1066254015763/1099511627776),(133281752179/137438953472)⟩
theorem trig0_6 : Mem S0_6 (Real.sin ((-505/2048):ℝ)) ∧ Mem C0_6 (Real.cos ((-505/2048):ℝ)) := by
  have h := double_sound trig0_5
    (show Includes (doubleSin S0_5 C0_5) S0_6 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S0_5,C0_5,S0_6])
    (show Includes (doubleCos S0_5 C0_5) C0_6 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S0_5,C0_5,C0_6])
  norm_num at h ⊢
  exact h
def S0_7 : Interval := ⟨(-2082102439087/4398046511104),(-2082102432481/4398046511104)⟩
def C0_7 : Interval := ⟨(484246554937/549755813888),(3873972453287/4398046511104)⟩
theorem trig0_7 : Mem S0_7 (Real.sin ((-505/1024):ℝ)) ∧ Mem C0_7 (Real.cos ((-505/1024):ℝ)) := by
  have h := double_sound trig0_6
    (show Includes (doubleSin S0_6 C0_6) S0_7 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S0_6,C0_6,S0_7])
    (show Includes (doubleCos S0_6 C0_6) C0_7 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S0_6,C0_6,C0_7])
  norm_num at h ⊢
  exact h
def S0_8 : Interval := ⟨(-1833997770051/2199023255552),(-1833997757703/2199023255552)⟩
def C0_8 : Interval := ⟨(2426648255805/4398046511104),(606662071589/1099511627776)⟩
theorem trig0_8 : Mem S0_8 (Real.sin ((-505/512):ℝ)) ∧ Mem C0_8 (Real.cos ((-505/512):ℝ)) := by
  have h := double_sound trig0_7
    (show Includes (doubleSin S0_7 C0_7) S0_8 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S0_7,C0_7,S0_8])
    (show Includes (doubleCos S0_7 C0_7) C0_8 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S0_7,C0_7,C0_8])
  norm_num at h ⊢
  exact h
def B0 : RationalRectangle := ⟨(295346627/536870912),(594192467/1073741824),(-896663841/1073741824),(-223586973/268435456)⟩
theorem phase0_box {x : ℝ} (hx : |x-((-505/512):ℝ)|≤1/512) : MemRectangle B0 (cis x) := by
  apply box_mono (b:=B0) (a:=radianBox S0_8 C0_8 (1/512))
  · norm_num [BoxIncludes,Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,radianBox,deltaSin,deltaCos,boxMul,rectangle,reInterval,imInterval,S0_8,C0_8,B0]
  · exact radianBox_sound (q:=(-505/512)) (r:=1/512) (S:=S0_8) (C:=C0_8)
      (by have ht := trig0_8; norm_num at ht ⊢; exact ht) (by norm_num) (by norm_num) (by norm_num at hx ⊢; exact hx)
def S1_0 : Interval := ⟨(18891087125/4398046511104),(9445543563/2199023255552)⟩
def C1_0 : Interval := ⟨(2199002969497/2199023255552),(2199002969575/2199023255552)⟩
theorem trig1_0 : Mem S1_0 (Real.sin ((563/131072):ℝ)) ∧ Mem C1_0 (Real.cos ((563/131072):ℝ)) := by
  have h := taylor_sound (q:=(563/131072)) (S:=S1_0) (C:=C1_0) (by norm_num [TaylorCheck,S1_0,C1_0])
  norm_num at h ⊢
  exact h
def S1_1 : Interval := ⟨(9445456427/1099511627776),(2361364107/274877906944)⟩
def C1_1 : Interval := ⟨(4397884223693/4398046511104),(2198942112003/2199023255552)⟩
theorem trig1_1 : Mem S1_1 (Real.sin ((563/65536):ℝ)) ∧ Mem C1_1 (Real.cos ((563/65536):ℝ)) := by
  have h := double_sound trig1_0
    (show Includes (doubleSin S1_0 C1_0) S1_1 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S1_0,C1_0,S1_1])
    (show Includes (doubleCos S1_0 C1_0) C1_1 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S1_0,C1_0,C1_1])
  norm_num at h ⊢
  exact h
def S1_2 : Interval := ⟨(75560863125/4398046511104),(18890215785/1099511627776)⟩
def C1_2 : Interval := ⟨(2198698686999/2199023255552),(4397397374625/4398046511104)⟩
theorem trig1_2 : Mem S1_2 (Real.sin ((563/32768):ℝ)) ∧ Mem C1_2 (Real.cos ((563/32768):ℝ)) := by
  have h := double_sound trig1_1
    (show Includes (doubleSin S1_1 C1_1) S1_2 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S1_1,C1_1,S1_2])
    (show Includes (doubleCos S1_1 C1_1) C1_2 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S1_1,C1_1,C1_2])
  norm_num at h ⊢
  exact h
def S1_3 : Interval := ⟨(151099421183/4398046511104),(37774855309/1099511627776)⟩
def C1_3 : Interval := ⟨(2197725077713/2199023255552),(2197725078341/2199023255552)⟩
theorem trig1_3 : Mem S1_3 (Real.sin ((563/16384):ℝ)) ∧ Mem C1_3 (Real.cos ((563/16384):ℝ)) := by
  have h := double_sound trig1_2
    (show Includes (doubleSin S1_2 C1_2) S1_3 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S1_2,C1_2,S1_3])
    (show Includes (doubleCos S1_2 C1_2) C1_3 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S1_2,C1_2,C1_3])
  norm_num at h ⊢
  exact h
def S1_4 : Interval := ⟨(151010220707/2199023255552),(37752555201/549755813888)⟩
def C1_4 : Interval := ⟨(4387664156123/4398046511104),(4387664158639/4398046511104)⟩
theorem trig1_4 : Mem S1_4 (Real.sin ((563/8192):ℝ)) ∧ Mem C1_4 (Real.cos ((563/8192):ℝ)) := by
  have h := double_sound trig1_3
    (show Includes (doubleSin S1_3 C1_3) S1_4 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S1_3,C1_3,S1_4])
    (show Includes (doubleCos S1_3 C1_3) C1_4 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S1_3,C1_3,C1_4])
  norm_num at h ⊢
  exact h
def S1_5 : Interval := ⟨(602614939093/4398046511104),(301307469913/2199023255552)⟩
def C1_5 : Interval := ⟨(4356566114387/4398046511104),(4356566119435/4398046511104)⟩
theorem trig1_5 : Mem S1_5 (Real.sin ((563/4096):ℝ)) ∧ Mem C1_5 (Real.cos ((563/4096):ℝ)) := by
  have h := double_sound trig1_4
    (show Includes (doubleSin S1_4 C1_4) S1_5 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S1_4,C1_4,S1_5])
    (show Includes (doubleCos S1_4 C1_4) C1_5 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S1_4,C1_4,C1_5])
  norm_num at h ⊢
  exact h
def S1_6 : Interval := ⟨(596931346007/2199023255552),(1193862694851/4398046511104)⟩
def C1_6 : Interval := ⟨(1058226845505/1099511627776),(4232907392223/4398046511104)⟩
theorem trig1_6 : Mem S1_6 (Real.sin ((563/2048):ℝ)) ∧ Mem C1_6 (Real.cos ((563/2048):ℝ)) := by
  have h := double_sound trig1_5
    (show Includes (doubleSin S1_5 C1_5) S1_6 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S1_5,C1_5,S1_6])
    (show Includes (doubleCos S1_5 C1_5) C1_6 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S1_5,C1_5,C1_6])
  norm_num at h ⊢
  exact h
def S1_7 : Interval := ⟨(1149035188551/2199023255552),(287258798513/549755813888)⟩
def C1_7 : Interval := ⟨(468736424483/549755813888),(3749891417045/4398046511104)⟩
theorem trig1_7 : Mem S1_7 (Real.sin ((563/1024):ℝ)) ∧ Mem C1_7 (Real.cos ((563/1024):ℝ)) := by
  have h := double_sound trig1_6
    (show Includes (doubleSin S1_6 C1_6) S1_7 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S1_6,C1_6,S1_7])
    (show Includes (doubleCos S1_6 C1_6) C1_7 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S1_6,C1_6,C1_7])
  norm_num at h ⊢
  exact h
def S1_8 : Interval := ⟨(489848976837/549755813888),(3918791855593/4398046511104)⟩
def C1_8 : Interval := ⟨(1996467738557/4398046511104),(998233893087/2199023255552)⟩
theorem trig1_8 : Mem S1_8 (Real.sin ((563/512):ℝ)) ∧ Mem C1_8 (Real.cos ((563/512):ℝ)) := by
  have h := double_sound trig1_7
    (show Includes (doubleSin S1_7 C1_7) S1_8 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S1_7,C1_7,S1_8])
    (show Includes (doubleCos S1_7 C1_7) C1_8 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S1_7,C1_7,C1_8])
  norm_num at h ⊢
  exact h
def B1 : RationalRectangle := ⟨(485549325/1073741824),(15290235/33554432),(955782467/1073741824),(239422071/268435456)⟩
theorem phase1_box {x : ℝ} (hx : |x-((563/512):ℝ)|≤1/512) : MemRectangle B1 (cis x) := by
  apply box_mono (b:=B1) (a:=radianBox S1_8 C1_8 (1/512))
  · norm_num [BoxIncludes,Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,radianBox,deltaSin,deltaCos,boxMul,rectangle,reInterval,imInterval,S1_8,C1_8,B1]
  · exact radianBox_sound (q:=(563/512)) (r:=1/512) (S:=S1_8) (C:=C1_8)
      (by have ht := trig1_8; norm_num at ht ⊢; exact ht) (by norm_num) (by norm_num) (by norm_num at hx ⊢; exact hx)
def S2_0 : Interval := ⟨(2369774421/549755813888),(18958195369/4398046511104)⟩
def C2_0 : Interval := ⟨(274875353139/274877906944),(274875353149/274877906944)⟩
theorem trig2_0 : Mem S2_0 (Real.sin ((565/131072):ℝ)) ∧ Mem C2_0 (Real.cos ((565/131072):ℝ)) := by
  have h := taylor_sound (q:=(565/131072)) (S:=S2_0) (C:=C2_0) (by norm_num [TaylorCheck,S2_0,C2_0])
  norm_num at h ⊢
  exact h
def S2_1 : Interval := ⟨(18958019233/2199023255552),(37916038471/4398046511104)⟩
def C2_1 : Interval := ⟨(4397883068629/4398046511104),(2198941534475/2199023255552)⟩
theorem trig2_1 : Mem S2_1 (Real.sin ((565/65536):ℝ)) ∧ Mem C2_1 (Real.cos ((565/65536):ℝ)) := by
  have h := double_sound trig2_0
    (show Includes (doubleSin S2_0 C2_0) S2_1 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S2_0,C2_0,S2_1])
    (show Includes (doubleCos S2_0 C2_0) C2_1 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S2_0,C2_0,C2_1])
  norm_num at h ⊢
  exact h
def S2_2 : Interval := ⟨(75829258821/4398046511104),(75829258837/4398046511104)⟩
def C2_2 : Interval := ⟨(2198696376963/2199023255552),(4397392754569/4398046511104)⟩
theorem trig2_2 : Mem S2_2 (Real.sin ((565/32768):ℝ)) ∧ Mem C2_2 (Real.cos ((565/32768):ℝ)) := by
  have h := double_sound trig2_1
    (show Includes (doubleSin S2_1 C2_1) S2_2 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S2_1,C2_1,S2_2])
    (show Includes (doubleCos S2_1 C2_1) C2_2 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S2_1,C2_1,C2_2])
  norm_num at h ⊢
  exact h
def S2_3 : Interval := ⟨(9477248377/274877906944),(151635974087/4398046511104)⟩
def C2_3 : Interval := ⟨(1098857919475/1099511627776),(4395431679187/4398046511104)⟩
theorem trig2_3 : Mem S2_3 (Real.sin ((565/16384):ℝ)) ∧ Mem C2_3 (Real.cos ((565/16384):ℝ)) := by
  have h := double_sound trig2_2
    (show Includes (doubleSin S2_2 C2_2) S2_3 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S2_2,C2_2,S2_3])
    (show Includes (doubleCos S2_2 C2_2) C2_3 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S2_2,C2_2,C2_3])
  norm_num at h ⊢
  exact h
def S2_4 : Interval := ⟨(303091639475/4398046511104),(151545819837/2199023255552)⟩
def C2_4 : Interval := ⟨(2193795144927/2199023255552),(274224393277/274877906944)⟩
theorem trig2_4 : Mem S2_4 (Real.sin ((565/8192):ℝ)) ∧ Mem C2_4 (Real.cos ((565/8192):ℝ)) := by
  have h := double_sound trig2_3
    (show Includes (doubleSin S2_3 C2_3) S2_4 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S2_3,C2_3,S2_4])
    (show Includes (doubleCos S2_3 C2_3) C2_4 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S2_3,C2_3,C2_4])
  norm_num at h ⊢
  exact h
def S2_5 : Interval := ⟨(604742096719/4398046511104),(9449095273/68719476736)⟩
def C2_5 : Interval := ⟨(544533918673/549755813888),(1089067838639/1099511627776)⟩
theorem trig2_5 : Mem S2_5 (Real.sin ((565/4096):ℝ)) ∧ Mem C2_5 (Real.cos ((565/4096):ℝ)) := by
  have h := double_sound trig2_4
    (show Includes (doubleSin S2_4 C2_4) S2_5 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S2_4,C2_4,S2_5])
    (show Includes (doubleCos S2_4 C2_4) C2_5 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S2_4,C2_4,C2_5])
  norm_num at h ⊢
  exact h
def S2_6 : Interval := ⟨(299498955167/1099511627776),(1197995823583/4398046511104)⟩
def C2_6 : Interval := ⟨(4231739482067/4398046511104),(4231739492521/4398046511104)⟩
theorem trig2_6 : Mem S2_6 (Real.sin ((565/2048):ℝ)) ∧ Mem C2_6 (Real.cos ((565/2048):ℝ)) := by
  have h := double_sound trig2_5
    (show Includes (doubleSin S2_5 C2_5) S2_6 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S2_5,C2_5,S2_6])
    (show Includes (doubleCos S2_5 C2_5) C2_6 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S2_5,C2_5,C2_6])
  norm_num at h ⊢
  exact h
def S2_7 : Interval := ⟨(288173749463/549755813888),(1152695003505/2199023255552)⟩
def C2_7 : Interval := ⟨(3745395827255/4398046511104),(3745395848961/4398046511104)⟩
theorem trig2_7 : Mem S2_7 (Real.sin ((565/1024):ℝ)) ∧ Mem C2_7 (Real.cos ((565/1024):ℝ)) := by
  have h := double_sound trig2_6
    (show Includes (doubleSin S2_6 C2_6) S2_7 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S2_6,C2_6,S2_7])
    (show Includes (doubleCos S2_6 C2_6) C2_7 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S2_6,C2_6,C2_7])
  norm_num at h ⊢
  exact h
def S2_8 : Interval := ⟨(3926560598349/4398046511104),(3926560640363/4398046511104)⟩
def C2_8 : Interval := ⟨(1981144764249/4398046511104),(123821550817/274877906944)⟩
theorem trig2_8 : Mem S2_8 (Real.sin ((565/512):ℝ)) ∧ Mem C2_8 (Real.cos ((565/512):ℝ)) := by
  have h := double_sound trig2_7
    (show Includes (doubleSin S2_7 C2_7) S2_8 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S2_7,C2_7,S2_8])
    (show Includes (doubleCos S2_7 C2_7) C2_8 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S2_7,C2_7,C2_8])
  norm_num at h ⊢
  exact h
def B2 : RationalRectangle := ⟨(481804667/1073741824),(485550265/1073741824),(478843223/536870912),(959577653/1073741824)⟩
theorem phase2_box {x : ℝ} (hx : |x-((565/512):ℝ)|≤1/512) : MemRectangle B2 (cis x) := by
  apply box_mono (b:=B2) (a:=radianBox S2_8 C2_8 (1/512))
  · norm_num [BoxIncludes,Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,radianBox,deltaSin,deltaCos,boxMul,rectangle,reInterval,imInterval,S2_8,C2_8,B2]
  · exact radianBox_sound (q:=(565/512)) (r:=1/512) (S:=S2_8) (C:=C2_8)
      (by have ht := trig2_8; norm_num at ht ⊢; exact ht) (by norm_num) (by norm_num) (by norm_num at hx ⊢; exact hx)
def S3_0 : Interval := ⟨(-17012054601/4398046511104),(-2126506825/549755813888)⟩
def C3_0 : Interval := ⟨(1099503402195/1099511627776),(1099503402221/1099511627776)⟩
theorem trig3_0 : Mem S3_0 (Real.sin ((-507/131072):ℝ)) ∧ Mem C3_0 (Real.cos ((-507/131072):ℝ)) := by
  have h := taylor_sound (q:=(-507/131072)) (S:=S3_0) (C:=C3_0) (by norm_num [TaylorCheck,S3_0,C3_0])
  norm_num at h ⊢
  exact h
def S3_1 : Interval := ⟨(-34023854665/4398046511104),(-34023854661/4398046511104)⟩
def C3_1 : Interval := ⟨(2198957451243/2199023255552),(4397914902695/4398046511104)⟩
theorem trig3_1 : Mem S3_1 (Real.sin ((-507/65536):ℝ)) ∧ Mem C3_1 (Real.cos ((-507/65536):ℝ)) := by
  have h := double_sound trig3_0
    (show Includes (doubleSin S3_0 C3_0) S3_1 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S3_0,C3_0,S3_1])
    (show Includes (doubleCos S3_0 C3_0) C3_1 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S3_0,C3_0,C3_1])
  norm_num at h ⊢
  exact h
def S3_2 : Interval := ⟨(-68045673051/4398046511104),(-68045673039/4398046511104)⟩
def C3_2 : Interval := ⟨(4397520084881/4398046511104),(1099380021325/1099511627776)⟩
theorem trig3_2 : Mem S3_2 (Real.sin ((-507/32768):ℝ)) ∧ Mem C3_2 (Real.cos ((-507/32768):ℝ)) := by
  have h := double_sound trig3_1
    (show Includes (doubleSin S3_1 C3_1) S3_2 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S3_1,C3_1,S3_2])
    (show Includes (doubleCos S3_1 C3_1) C3_2 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S3_1,C3_1,C3_2])
  norm_num at h ⊢
  exact h
def S3_3 : Interval := ⟨(-68037528299/2199023255552),(-136075056561/4398046511104)⟩
def C3_3 : Interval := ⟨(4395940932979/4398046511104),(4395940933819/4398046511104)⟩
theorem trig3_3 : Mem S3_3 (Real.sin ((-507/16384):ℝ)) ∧ Mem C3_3 (Real.cos ((-507/16384):ℝ)) := by
  have h := double_sound trig3_2
    (show Includes (doubleSin S3_2 C3_2) S3_3 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S3_2,C3_2,S3_3])
    (show Includes (doubleCos S3_2 C3_2) C3_3 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S3_2,C3_2,C3_3])
  norm_num at h ⊢
  exact h
def S3_4 : Interval := ⟨(-272019820555/4398046511104),(-68004955107/1099511627776)⟩
def C3_4 : Interval := ⟨(548703277025/549755813888),(4389626217883/4398046511104)⟩
theorem trig3_4 : Mem S3_4 (Real.sin ((-507/8192):ℝ)) ∧ Mem C3_4 (Real.cos ((-507/8192):ℝ)) := by
  have h := double_sound trig3_3
    (show Includes (doubleSin S3_3 C3_3) S3_4 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S3_3,C3_3,S3_4])
    (show Includes (doubleCos S3_3 C3_3) C3_4 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S3_3,C3_3,C3_4])
  norm_num at h ⊢
  exact h
def S3_5 : Interval := ⟨(-271499024187/2199023255552),(-542998047911/4398046511104)⟩
def C3_5 : Interval := ⟨(4364397576677/4398046511104),(4364397580053/4398046511104)⟩
theorem trig3_5 : Mem S3_5 (Real.sin ((-507/4096):ℝ)) ∧ Mem C3_5 (Real.cos ((-507/4096):ℝ)) := by
  have h := double_sound trig3_4
    (show Includes (doubleSin S3_4 C3_4) S3_5 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S3_4,C3_4,S3_5])
    (show Includes (doubleCos S3_4 C3_4) C3_5 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S3_4,C3_4,C3_5])
  norm_num at h ⊢
  exact h
def S3_6 : Interval := ⟨(-1077687269707/4398046511104),(-1077687267953/4398046511104)⟩
def C3_6 : Interval := ⟨(532995708419/549755813888),(4263965674167/4398046511104)⟩
theorem trig3_6 : Mem S3_6 (Real.sin ((-507/2048):ℝ)) ∧ Mem C3_6 (Real.cos ((-507/2048):ℝ)) := by
  have h := double_sound trig3_5
    (show Includes (doubleSin S3_5 C3_5) S3_6 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S3_5,C3_5,S3_6])
    (show Includes (doubleCos S3_5 C3_5) C3_6 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S3_5,C3_5,C3_6])
  norm_num at h ⊢
  exact h
def S3_7 : Interval := ⟨(-1044832407733/2199023255552),(-522416202181/1099511627776)⟩
def C3_7 : Interval := ⟨(3869898446525/4398046511104),(483737307575/549755813888)⟩
theorem trig3_7 : Mem S3_7 (Real.sin ((-507/1024):ℝ)) ∧ Mem C3_7 (Real.cos ((-507/1024):ℝ)) := by
  have h := double_sound trig3_6
    (show Includes (doubleSin S3_6 C3_6) S3_7 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S3_6,C3_6,S3_7])
    (show Includes (doubleCos S3_6 C3_6) C3_7 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S3_6,C3_6,C3_7])
  norm_num at h ⊢
  exact h
def S3_8 : Interval := ⟨(-3677446626417/4398046511104),(-3677446601177/4398046511104)⟩
def C3_8 : Interval := ⟨(1206150835221/2199023255552),(2412301701619/4398046511104)⟩
theorem trig3_8 : Mem S3_8 (Real.sin ((-507/512):ℝ)) ∧ Mem C3_8 (Real.cos ((-507/512):ℝ)) := by
  have h := double_sound trig3_7
    (show Includes (doubleSin S3_7 C3_7) S3_8 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S3_7,C3_7,S3_8])
    (show Includes (doubleCos S3_7 C3_7) C3_8 from by norm_num [Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,S3_7,C3_7,C3_8])
  norm_num at h ⊢
  exact h
def B3 : RationalRectangle := ⟨(587186169/1073741824),(295347195/536870912),(-449482197/536870912),(-896662123/1073741824)⟩
theorem phase3_box {x : ℝ} (hx : |x-((-507/512):ℝ)|≤1/512) : MemRectangle B3 (cis x) := by
  apply box_mono (b:=B3) (a:=radianBox S3_8 C3_8 (1/512))
  · norm_num [BoxIncludes,Includes,doubleSin,doubleCos,mul,sub,add,neg,square,point,radianBox,deltaSin,deltaCos,boxMul,rectangle,reInterval,imInterval,S3_8,C3_8,B3]
  · exact radianBox_sound (q:=(-507/512)) (r:=1/512) (S:=S3_8) (C:=C3_8)
      (by have ht := trig3_8; norm_num at ht ⊢; exact ht) (by norm_num) (by norm_num) (by norm_num at hx ⊢; exact hx)
def centers : Fin 4 → ℚ := ![(-505/512),(563/512),(565/512),(-507/512)]
def seedBoxes : Fin 4 → RationalRectangle := ![B0,B1,B2,B3]
def Cube (θ : Fin 4 → ℝ) : Prop := ∀ i, |θ i-(centers i:ℝ)|≤1/512
theorem cube_contains_center : Cube (fun i => (centers i:ℝ)) := by
  intro i;simp
theorem seed_boxes_sound {θ : Fin 4 → ℝ} (h : Cube θ) :
    ∀ i, MemRectangle (seedBoxes i) (cis (θ i)) := by
  intro i;fin_cases i
  · exact phase0_box (by simpa [centers] using h 0)
  · exact phase1_box (by simpa [centers] using h 1)
  · exact phase2_box (by simpa [centers] using h 2)
  · exact phase3_box (by simpa [centers] using h 3)
#print axioms seed_boxes_sound
end
end ShoulderRoot255Trig20261003

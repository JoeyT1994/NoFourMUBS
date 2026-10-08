import Root0Centers
import PhaseCube
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace ShoulderRoot1Centers20261003
open Mub6.Numerical.IntervalKernel ShoulderRadian20261003
noncomputable section
def S3_0_0 : Interval := ⟨(-55233279405433/1152921504606846976),(-6904159925679/144115188075855872)⟩
def C3_0_0 : Interval := ⟨(1152921503283810175/1152921504606846976),(1152921503283810177/1152921504606846976)⟩
theorem trig3_0_0 : Mem S3_0_0 (Real.sin ((-3215/67108864):ℝ)) ∧ Mem C3_0_0 (Real.cos ((-3215/67108864):ℝ)) := by
  have h := taylor_sound (q:=(-3215/67108864)) (S:=S3_0_0) (C:=C3_0_0) (by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_0_1 : Interval := ⟨(-27616639671025/288230376151711744),(-110466558684097/1152921504606846976)⟩
def C3_0_1 : Interval := ⟨(1152921499314699777/1152921504606846976),(576460749657349891/576460752303423488)⟩
theorem trig3_0_1 : Mem S3_0_1 (Real.sin ((-3215/33554432):ℝ)) ∧ Mem C3_0_1 (Real.cos ((-3215/33554432):ℝ)) := by
  have h := double_sound trig3_0_0
    (show Includes (doubleSin S3_0_0 C3_0_0) S3_0_1 from by decide +kernel)
    (show Includes (doubleCos S3_0_0 C3_0_0) C3_0_1 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_0_2 : Interval := ⟨(-27616639544259/144115188075855872),(-220933116354065/1152921504606846976)⟩
def C3_0_2 : Interval := ⟨(576460741719129117/576460752303423488),(1152921483438258245/1152921504606846976)⟩
theorem trig3_0_2 : Mem S3_0_2 (Real.sin ((-3215/16777216):ℝ)) ∧ Mem C3_0_2 (Real.cos ((-3215/16777216):ℝ)) := by
  have h := double_sound trig3_0_1
    (show Includes (doubleSin S3_0_1 C3_0_1) S3_0_2 from by decide +kernel)
    (show Includes (doubleCos S3_0_1 C3_0_1) C3_0_2 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_0_3 : Interval := ⟨(-110466556148779/288230376151711744),(-441866224595101/1152921504606846976)⟩
def C3_0_3 : Interval := ⟨(576460709966246399/576460752303423488),(1152921419932492821/1152921504606846976)⟩
theorem trig3_0_3 : Mem S3_0_3 (Real.sin ((-3215/8388608):ℝ)) ∧ Mem C3_0_3 (Real.cos ((-3215/8388608):ℝ)) := by
  have h := double_sound trig3_0_2
    (show Includes (doubleSin S3_0_2 C3_0_2) S3_0_3 from by decide +kernel)
    (show Includes (doubleCos S3_0_2 C3_0_2) C3_0_3 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_0_4 : Interval := ⟨(-441866192143005/576460752303423488),(-883732384285979/1152921504606846976)⟩
def C3_0_4 : Interval := ⟨(576460582954721365/576460752303423488),(1152921165909442777/1152921504606846976)⟩
theorem trig3_0_4 : Mem S3_0_4 (Real.sin ((-3215/4194304):ℝ)) ∧ Mem C3_0_4 (Real.cos ((-3215/4194304):ℝ)) := by
  have h := double_sound trig3_0_3
    (show Includes (doubleSin S3_0_3 C3_0_3) S3_0_4 from by decide +kernel)
    (show Includes (doubleCos S3_0_3 C3_0_3) C3_0_4 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_0_5 : Interval := ⟨(-883732124669147/576460752303423488),(-1767464249338231/1152921504606846976)⟩
def C3_0_5 : Interval := ⟨(1152920149817429051/1152921504606846976),(576460074908714573/576460752303423488)⟩
theorem trig3_0_5 : Mem S3_0_5 (Real.sin ((-3215/2097152):ℝ)) ∧ Mem C3_0_5 (Real.cos ((-3215/2097152):ℝ)) := by
  have h := double_sound trig3_0_4
    (show Includes (doubleSin S3_0_4 C3_0_4) S3_0_5 from by decide +kernel)
    (show Includes (doubleCos S3_0_4 C3_0_4) C3_0_5 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_0_6 : Interval := ⟨(-3534924344808607/1152921504606846976),(-110466385775265/36028797018963968)⟩
def C3_0_6 : Interval := ⟨(1152916085452359399/1152921504606846976),(576458042726179795/576460752303423488)⟩
theorem trig3_0_6 : Mem S3_0_6 (Real.sin ((-3215/1048576):ℝ)) ∧ Mem C3_0_6 (Real.cos ((-3215/1048576):ℝ)) := by
  have h := double_sound trig3_0_5
    (show Includes (doubleSin S3_0_5 C3_0_5) S3_0_6 from by decide +kernel)
    (show Includes (doubleCos S3_0_5 C3_0_5) C3_0_6 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_0_7 : Interval := ⟨(-7069815458731939/1152921504606846976),(-7069815458731683/1152921504606846976)⟩
def C3_0_7 : Interval := ⟨(144112478504980117/144115188075855872),(144112478504980165/144115188075855872)⟩
theorem trig3_0_7 : Mem S3_0_7 (Real.sin ((-3215/524288):ℝ)) ∧ Mem C3_0_7 (Real.cos ((-3215/524288):ℝ)) := by
  have h := double_sound trig3_0_6
    (show Includes (doubleSin S3_0_6 C3_0_6) S3_0_7 from by decide +kernel)
    (show Includes (doubleCos S3_0_6 C3_0_6) C3_0_7 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_0_8 : Interval := ⟨(-14139365072256037/1152921504606846976),(-14139365072255519/1152921504606846976)⟩
def C3_0_8 : Interval := ⟨(1152834799153923981/1152921504606846976),(1152834799153924753/1152921504606846976)⟩
theorem trig3_0_8 : Mem S3_0_8 (Real.sin ((-3215/262144):ℝ)) ∧ Mem C3_0_8 (Real.cos ((-3215/262144):ℝ)) := by
  have h := double_sound trig3_0_7
    (show Includes (doubleSin S3_0_7 C3_0_7) S3_0_8 from by decide +kernel)
    (show Includes (doubleCos S3_0_7 C3_0_7) C3_0_8 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_0_9 : Interval := ⟨(-7069150860707045/288230376151711744),(-7069150860706781/288230376151711744)⟩
def C3_0_9 : Interval := ⟨(1152574695836521791/1152921504606846976),(288143673959130837/288230376151711744)⟩
theorem trig3_0_9 : Mem S3_0_9 (Real.sin ((-3215/131072):ℝ)) ∧ Mem C3_0_9 (Real.cos ((-3215/131072):ℝ)) := by
  have h := double_sound trig3_0_8
    (show Includes (doubleSin S3_0_8 C3_0_8) S3_0_9 from by decide +kernel)
    (show Includes (doubleCos S3_0_8 C3_0_8) C3_0_9 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_0_10 : Interval := ⟨(-7067024398925009/144115188075855872),(-56536195191397883/1152921504606846976)⟩
def C3_0_10 : Interval := ⟨(1151534478171709549/1152921504606846976),(575767239085856357/576460752303423488)⟩
theorem trig3_0_10 : Mem S3_0_10 (Real.sin ((-3215/65536):ℝ)) ∧ Mem C3_0_10 (Real.cos ((-3215/65536):ℝ)) := by
  have h := double_sound trig3_0_9
    (show Includes (doubleSin S3_0_9 C3_0_9) S3_0_10 from by decide +kernel)
    (show Includes (doubleCos S3_0_9 C3_0_9) C3_0_10 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_0_11 : Interval := ⟨(-56468179114885719/576460752303423488),(-56468179114883377/576460752303423488)⟩
def C3_0_11 : Interval := ⟨(143422092025094757/144115188075855872),(573688368100382297/576460752303423488)⟩
theorem trig3_0_11 : Mem S3_0_11 (Real.sin ((-3215/32768):ℝ)) ∧ Mem C3_0_11 (Real.cos ((-3215/32768):ℝ)) := by
  have h := double_sound trig3_0_10
    (show Includes (doubleSin S3_0_10 C3_0_10) S3_0_11 from by decide +kernel)
    (show Includes (doubleCos S3_0_10 C3_0_10) C3_0_11 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_0_12 : Interval := ⟨(-112393211147764343/576460752303423488),(-224786422295518081/1152921504606846976)⟩
def C3_0_12 : Interval := ⟨(565397882056626419/576460752303423488),(565397882056633385/576460752303423488)⟩
theorem trig3_0_12 : Mem S3_0_12 (Real.sin ((-3215/16384):ℝ)) ∧ Mem C3_0_12 (Real.cos ((-3215/16384):ℝ)) := by
  have h := double_sound trig3_0_11
    (show Includes (doubleSin S3_0_11 C3_0_11) S3_0_12 from by decide +kernel)
    (show Includes (doubleCos S3_0_11 C3_0_11) C3_0_12 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_0_13 : Interval := ⟨(-220472541405704175/576460752303423488),(-440945082811382113/1152921504606846976)⟩
def C3_0_13 : Interval := ⟨(532633886860695189/576460752303423488),(1065267773721421843/1152921504606846976)⟩
theorem trig3_0_13 : Mem S3_0_13 (Real.sin ((-3215/8192):ℝ)) ∧ Mem C3_0_13 (Real.cos ((-3215/8192):ℝ)) := by
  have h := double_sound trig3_0_12
    (show Includes (doubleSin S3_0_12 C3_0_12) S3_0_13 from by decide +kernel)
    (show Includes (doubleCos S3_0_12 C3_0_12) C3_0_13 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_0_14 : Interval := ⟨(-814842267791849051/1152921504606846976),(-407421133895888249/576460752303423488)⟩
def C3_0_14 : Interval := ⟨(815634767775831261/1152921504606846976),(203908691943977369/288230376151711744)⟩
theorem trig3_0_14 : Mem S3_0_14 (Real.sin ((-3215/4096):ℝ)) ∧ Mem C3_0_14 (Real.cos ((-3215/4096):ℝ)) := by
  have h := double_sound trig3_0_13
    (show Includes (doubleSin S3_0_13 C3_0_13) S3_0_14 from by decide +kernel)
    (show Includes (doubleCos S3_0_13 C3_0_13) C3_0_14 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_0_15 : Interval := ⟨(-1152920959855003179/1152921504606846976),(-288230239963697491/288230376151711744)⟩
def C3_0_15 : Interval := ⟨(35023877910583/36028797018963968),(1120764093351879/1152921504606846976)⟩
theorem trig3_0_15 : Mem S3_0_15 (Real.sin ((-3215/2048):ℝ)) ∧ Mem C3_0_15 (Real.cos ((-3215/2048):ℝ)) := by
  have h := double_sound trig3_0_14
    (show Includes (doubleSin S3_0_14 C3_0_14) S3_0_15 from by decide +kernel)
    (show Includes (doubleCos S3_0_14 C3_0_14) C3_0_15 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_0_16 : Interval := ⟨(-1120763563794313/576460752303423488),(-560381781790441/288230376151711744)⟩
def C3_0_16 : Interval := ⟨(-576459662799898551/576460752303423488),(-1152919325599370257/1152921504606846976)⟩
theorem trig3_0_16 : Mem S3_0_16 (Real.sin ((-3215/1024):ℝ)) ∧ Mem C3_0_16 (Real.cos ((-3215/1024):ℝ)) := by
  have h := double_sound trig3_0_15
    (show Includes (doubleSin S3_0_15 C3_0_15) S3_0_16 from by decide +kernel)
    (show Includes (doubleCos S3_0_15 C3_0_15) C3_0_16 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_1_0 : Interval := ⟨(-1724966239597/36028797018963968),(-55198919667103/1152921504606846976)⟩
def C3_1_0 : Interval := ⟨(1152921503285455743/1152921504606846976),(1152921503285455745/1152921504606846976)⟩
theorem trig3_1_0 : Mem S3_1_0 (Real.sin ((-3213/67108864):ℝ)) ∧ Mem C3_1_0 (Real.cos ((-3213/67108864):ℝ)) := by
  have h := taylor_sound (q:=(-3213/67108864)) (S:=S3_1_0) (C:=C3_1_0) (by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_1_1 : Interval := ⟨(-110397839207679/1152921504606846976),(-27599459801919/288230376151711744)⟩
def C3_1_1 : Interval := ⟨(1152921499321282049/1152921504606846976),(576460749660641027/576460752303423488)⟩
theorem trig3_1_1 : Mem S3_1_1 (Real.sin ((-3213/33554432):ℝ)) ∧ Mem C3_1_1 (Real.cos ((-3213/33554432):ℝ)) := by
  have h := double_sound trig3_1_0
    (show Includes (doubleSin S3_1_0 C3_1_0) S3_1_1 from by decide +kernel)
    (show Includes (doubleCos S3_1_0 C3_1_0) C3_1_1 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_1_2 : Interval := ⟨(-220795677403121/1152921504606846976),(-110397838701557/576460752303423488)⟩
def C3_1_2 : Interval := ⟨(576460741732293661/576460752303423488),(1152921483464587333/1152921504606846976)⟩
theorem trig3_1_2 : Mem S3_1_2 (Real.sin ((-3213/16777216):ℝ)) ∧ Mem C3_1_2 (Real.cos ((-3213/16777216):ℝ)) := by
  have h := double_sound trig3_1_1
    (show Includes (doubleSin S3_1_1 C3_1_1) S3_1_2 from by decide +kernel)
    (show Includes (doubleCos S3_1_1 C3_1_1) C3_1_2 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_1_3 : Interval := ⟨(-220795673354173/576460752303423488),(-441591346708331/1152921504606846976)⟩
def C3_1_3 : Interval := ⟨(288230355009452287/288230376151711744),(1152921420037809171/1152921504606846976)⟩
theorem trig3_1_3 : Mem S3_1_3 (Real.sin ((-3213/8388608):ℝ)) ∧ Mem C3_1_3 (Real.cos ((-3213/8388608):ℝ)) := by
  have h := double_sound trig3_1_2
    (show Includes (doubleSin S3_1_2 C3_1_2) S3_1_3 from by decide +kernel)
    (show Includes (doubleCos S3_1_2 C3_1_2) C3_1_3 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_1_4 : Interval := ⟨(-441591314316761/576460752303423488),(-883182628633491/1152921504606846976)⟩
def C3_1_4 : Interval := ⟨(576460583165354049/576460752303423488),(1152921166330708145/1152921504606846976)⟩
theorem trig3_1_4 : Mem S3_1_4 (Real.sin ((-3213/4194304):ℝ)) ∧ Mem C3_1_4 (Real.cos ((-3213/4194304):ℝ)) := by
  have h := double_sound trig3_1_3
    (show Includes (doubleSin S3_1_3 C3_1_3) S3_1_4 from by decide +kernel)
    (show Includes (doubleCos S3_1_3 C3_1_3) C3_1_4 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_1_5 : Interval := ⟨(-220795592375217/144115188075855872),(-1766364739001673/1152921504606846976)⟩
def C3_1_5 : Interval := ⟨(1152920151502490025/1152921504606846976),(1152920151502490121/1152921504606846976)⟩
theorem trig3_1_5 : Mem S3_1_5 (Real.sin ((-3213/2097152):ℝ)) ∧ Mem C3_1_5 (Real.cos ((-3213/2097152):ℝ)) := by
  have h := double_sound trig3_1_4
    (show Includes (doubleSin S3_1_4 C3_1_4) S3_1_5 from by decide +kernel)
    (show Includes (doubleCos S3_1_4 C3_1_4) C3_1_5 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_1_6 : Interval := ⟨(-3532725331882831/1152921504606846976),(-220795333242669/72057594037927936)⟩
def C3_1_6 : Interval := ⟨(72057255762037211/72057594037927936),(1152916092192595569/1152921504606846976)⟩
theorem trig3_1_6 : Mem S3_1_6 (Real.sin ((-3213/1048576):ℝ)) ∧ Mem C3_1_6 (Real.cos ((-3213/1048576):ℝ)) := by
  have h := double_sound trig3_1_5
    (show Includes (doubleSin S3_1_5 C3_1_5) S3_1_6 from by decide +kernel)
    (show Includes (doubleCos S3_1_5 C3_1_5) C3_1_6 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_1_7 : Interval := ⟨(-3532708747429461/576460752303423488),(-3532708747429333/576460752303423488)⟩
def C3_1_7 : Interval := ⟨(1152899855000658191/1152921504606846976),(1152899855000658579/1152921504606846976)⟩
theorem trig3_1_7 : Mem S3_1_7 (Real.sin ((-3213/524288):ℝ)) ∧ Mem C3_1_7 (Real.cos ((-3213/524288):ℝ)) := by
  have h := double_sound trig3_1_6
    (show Includes (doubleSin S3_1_6 C3_1_6) S3_1_7 from by decide +kernel)
    (show Includes (doubleCos S3_1_6 C3_1_6) C3_1_7 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_1_8 : Interval := ⟨(-14130569640332463/1152921504606846976),(-14130569640331945/1152921504606846976)⟩
def C3_1_8 : Interval := ⟨(576417453497583321/576460752303423488),(576417453497583711/576460752303423488)⟩
theorem trig3_1_8 : Mem S3_1_8 (Real.sin ((-3213/262144):ℝ)) ∧ Mem C3_1_8 (Real.cos ((-3213/262144):ℝ)) := by
  have h := double_sound trig3_1_7
    (show Includes (doubleSin S3_1_7 C3_1_7) S3_1_8 from by decide +kernel)
    (show Includes (doubleCos S3_1_7 C3_1_7) C3_1_8 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_1_9 : Interval := ⟨(-28259016545374389/1152921504606846976),(-28259016545373333/1152921504606846976)⟩
def C3_1_9 : Interval := ⟨(1152575127169071785/1152921504606846976),(1152575127169073359/1152921504606846976)⟩
theorem trig3_1_9 : Mem S3_1_9 (Real.sin ((-3213/131072):ℝ)) ∧ Mem C3_1_9 (Real.cos ((-3213/131072):ℝ)) := by
  have h := double_sound trig3_1_8
    (show Includes (doubleSin S3_1_8 C3_1_8) S3_1_9 from by decide +kernel)
    (show Includes (doubleCos S3_1_8 C3_1_8) C3_1_9 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_1_10 : Interval := ⟨(-56501053121677377/1152921504606846976),(-56501053121675187/1152921504606846976)⟩
def C3_1_10 : Interval := ⟨(287884050745809489/288230376151711744),(1151536202983241155/1152921504606846976)⟩
theorem trig3_1_10 : Mem S3_1_10 (Real.sin ((-3213/65536):ℝ)) ∧ Mem C3_1_10 (Real.cos ((-3213/65536):ℝ)) := by
  have h := double_sound trig3_1_9
    (show Includes (doubleSin S3_1_9 C3_1_9) S3_1_10 from by decide +kernel)
    (show Includes (doubleCos S3_1_9 C3_1_9) C3_1_10 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_1_11 : Interval := ⟨(-28216581925270637/288230376151711744),(-112866327701077859/1152921504606846976)⟩
def C3_1_11 : Interval := ⟨(1147383627151869061/1152921504606846976),(1147383627151875667/1152921504606846976)⟩
theorem trig3_1_11 : Mem S3_1_11 (Real.sin ((-3213/32768):ℝ)) ∧ Mem C3_1_11 (Real.cos ((-3213/32768):ℝ)) := by
  have h := double_sound trig3_1_10
    (show Includes (doubleSin S3_1_10 C3_1_10) S3_1_11 from by decide +kernel)
    (show Includes (doubleCos S3_1_10 C3_1_10) C3_1_11 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_1_12 : Interval := ⟨(-112324192014391223/576460752303423488),(-224648384028771819/1152921504606846976)⟩
def C3_1_12 : Interval := ⟨(70676449714807215/72057594037927936),(282705798859232377/288230376151711744)⟩
theorem trig3_1_12 : Mem S3_1_12 (Real.sin ((-3213/16384):ℝ)) ∧ Mem C3_1_12 (Real.cos ((-3213/16384):ℝ)) := by
  have h := double_sound trig3_1_11
    (show Includes (doubleSin S3_1_11 C3_1_11) S3_1_12 from by decide +kernel)
    (show Includes (doubleCos S3_1_11 C3_1_11) C3_1_12 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_1_13 : Interval := ⟨(-440684994532734585/1152921504606846976),(-440684994532708255/1152921504606846976)⟩
def C3_1_13 : Interval := ⟨(532687697290488347/576460752303423488),(1065375394581008433/1152921504606846976)⟩
theorem trig3_1_13 : Mem S3_1_13 (Real.sin ((-3213/8192):ℝ)) ∧ Mem C3_1_13 (Real.cos ((-3213/8192):ℝ)) := by
  have h := double_sound trig3_1_12
    (show Includes (doubleSin S3_1_12 C3_1_12) S3_1_13 from by decide +kernel)
    (show Includes (doubleCos S3_1_12 C3_1_12) C3_1_13 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_1_14 : Interval := ⟨(-407221955753477073/576460752303423488),(-814443911506881221/1152921504606846976)⟩
def C3_1_14 : Interval := ⟨(816032542729854913/1152921504606846976),(816032542729933701/1152921504606846976)⟩
theorem trig3_1_14 : Mem S3_1_14 (Real.sin ((-3213/4096):ℝ)) ∧ Mem C3_1_14 (Real.cos ((-3213/4096):ℝ)) := by
  have h := double_sound trig3_1_13
    (show Includes (doubleSin S3_1_13 C3_1_13) S3_1_14 from by decide +kernel)
    (show Includes (doubleCos S3_1_13 C3_1_13) C3_1_14 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_1_15 : Interval := ⟨(-288229828900871165/288230376151711744),(-1152919315603270113/1152921504606846976)⟩
def C3_1_15 : Interval := ⟨(2246662754623881/1152921504606846976),(561665688709611/288230376151711744)⟩
theorem trig3_1_15 : Mem S3_1_15 (Real.sin ((-3213/2048):ℝ)) ∧ Mem C3_1_15 (Real.cos ((-3213/2048):ℝ)) := by
  have h := double_sound trig3_1_14
    (show Includes (doubleSin S3_1_14 C3_1_14) S3_1_15 from by decide +kernel)
    (show Includes (doubleCos S3_1_14 C3_1_14) C3_1_15 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_1_16 : Interval := ⟨(-2246658489194769/576460752303423488),(-4493316977959575/1152921504606846976)⟩
def C3_1_16 : Interval := ⟨(-36028523393797351/36028797018963968),(-576456374300542651/576460752303423488)⟩
theorem trig3_1_16 : Mem S3_1_16 (Real.sin ((-3213/1024):ℝ)) ∧ Mem C3_1_16 (Real.cos ((-3213/1024):ℝ)) := by
  have h := double_sound trig3_1_15
    (show Includes (doubleSin S3_1_15 C3_1_15) S3_1_16 from by decide +kernel)
    (show Includes (doubleCos S3_1_15 C3_1_15) C3_1_16 from by decide +kernel)
  norm_num at h ⊢
  exact h
def rootCenters : Fin 4 → ℚ := ![(-1073/512),(-559/512),(-1/512),(-1607/512)]
def radii : Fin 4 → ℚ := fun _ => 1/512
def center (k : Fin 4) (b : Bool) : ℚ := rootCenters k + if b then 1/1024 else -1/1024
def sinInterval (k : Fin 4) (b : Bool) : Interval :=
  if b then ![ShoulderRoot0Centers20261003.S0_1_16,ShoulderRoot0Centers20261003.S1_1_16,ShoulderRoot0Centers20261003.S2_1_16,S3_1_16] k else ![ShoulderRoot0Centers20261003.S0_0_16,ShoulderRoot0Centers20261003.S1_0_16,ShoulderRoot0Centers20261003.S2_0_16,S3_0_16] k
def cosInterval (k : Fin 4) (b : Bool) : Interval :=
  if b then ![ShoulderRoot0Centers20261003.C0_1_16,ShoulderRoot0Centers20261003.C1_1_16,ShoulderRoot0Centers20261003.C2_1_16,C3_1_16] k else ![ShoulderRoot0Centers20261003.C0_0_16,ShoulderRoot0Centers20261003.C1_0_16,ShoulderRoot0Centers20261003.C2_0_16,C3_0_16] k
theorem center_trig (k : Fin 4) (b : Bool) :
    Mem (sinInterval k b) (Real.sin (center k b:ℝ)) ∧
    Mem (cosInterval k b) (Real.cos (center k b:ℝ)) := by
  fin_cases k <;> cases b
  · have ht := ShoulderRoot0Centers20261003.trig0_0_16
    norm_num [center,rootCenters,sinInterval,cosInterval] at ht ⊢
    exact ht
  · have ht := ShoulderRoot0Centers20261003.trig0_1_16
    norm_num [center,rootCenters,sinInterval,cosInterval] at ht ⊢
    exact ht
  · have ht := ShoulderRoot0Centers20261003.trig1_0_16
    norm_num [center,rootCenters,sinInterval,cosInterval] at ht ⊢
    exact ht
  · have ht := ShoulderRoot0Centers20261003.trig1_1_16
    norm_num [center,rootCenters,sinInterval,cosInterval] at ht ⊢
    exact ht
  · have ht := ShoulderRoot0Centers20261003.trig2_0_16
    norm_num [center,rootCenters,sinInterval,cosInterval] at ht ⊢
    exact ht
  · have ht := ShoulderRoot0Centers20261003.trig2_1_16
    norm_num [center,rootCenters,sinInterval,cosInterval] at ht ⊢
    exact ht
  · have ht := trig3_0_16
    norm_num [center,rootCenters,sinInterval,cosInterval] at ht ⊢
    exact ht
  · have ht := trig3_1_16
    norm_num [center,rootCenters,sinInterval,cosInterval] at ht ⊢
    exact ht
def Cube (θ : Fin 4 → ℝ) : Prop := ShoulderPhaseCube20261003.Cube rootCenters radii θ
def HalfCube (b : Fin 4 → Bool) (θ : Fin 4 → ℝ) : Prop :=
  ∀ k, |θ k-(center k (b k):ℝ)|≤1/1024
theorem half_cubes_cover {θ : Fin 4 → ℝ} (h : Cube θ) : ∃ b, HalfCube b θ := by
  have ht := ShoulderPhaseCube20261003.half_cubes_cover h
  norm_num [HalfCube,center,radii,ShoulderPhaseCube20261003.HalfCube,
    ShoulderPhaseCube20261003.halfCenter] at ht ⊢
  exact ht
theorem cube_nonempty : ∃ θ, Cube θ := by
  exact ShoulderPhaseCube20261003.cube_nonempty rootCenters radii (by intro k; norm_num [radii])
#print axioms center_trig
#print axioms half_cubes_cover
#print axioms cube_nonempty
end
end ShoulderRoot1Centers20261003

import RadianSeedBounds
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace ShoulderRoot0Centers20261003
open Mub6.Numerical.IntervalKernel ShoulderRadian20261003
noncomputable section
def S0_0_0 : Interval := ⟨(-9221294782939/288230376151711744),(-36885179131755/1152921504606846976)⟩
def C0_0_0 : Interval := ⟨(1152921504016817023/1152921504606846976),(1152921504016817025/1152921504606846976)⟩
theorem trig0_0_0 : Mem S0_0_0 (Real.sin ((-2147/67108864):ℝ)) ∧ Mem C0_0_0 (Real.cos ((-2147/67108864):ℝ)) := by
  have h := taylor_sound (q:=(-2147/67108864)) (S:=S0_0_0) (C:=C0_0_0) (by decide +kernel)
  norm_num at h ⊢
  exact h
def S0_0_1 : Interval := ⟨(-73770358225759/1152921504606846976),(-18442589556439/288230376151711744)⟩
def C0_0_1 : Interval := ⟨(576460751123363583/576460752303423488),(1152921502246727171/1152921504606846976)⟩
theorem trig0_0_1 : Mem S0_0_1 (Real.sin ((-2147/33554432):ℝ)) ∧ Mem C0_0_1 (Real.cos ((-2147/33554432):ℝ)) := by
  have h := double_sound trig0_0_0
    (show Includes (doubleSin S0_0_0 C0_0_0) S0_0_1 from by decide +kernel)
    (show Includes (doubleCos S0_0_0 C0_0_0) C0_0_1 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S0_0_2 : Interval := ⟨(-147540716149491/1152921504606846976),(-36885179037371/288230376151711744)⟩
def C0_0_2 : Interval := ⟨(1152921495166367751/1152921504606846976),(576460747583183881/576460752303423488)⟩
theorem trig0_0_2 : Mem S0_0_2 (Real.sin ((-2147/16777216):ℝ)) ∧ Mem C0_0_2 (Real.cos ((-2147/16777216):ℝ)) := by
  have h := double_sound trig0_0_1
    (show Includes (doubleSin S0_0_1 C0_0_1) S0_0_2 from by decide +kernel)
    (show Includes (doubleCos S0_0_1 C0_0_1) C0_0_2 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S0_0_3 : Interval := ⟨(-73770357470691/288230376151711744),(-295081429882749/1152921504606846976)⟩
def C0_0_3 : Interval := ⟨(576460733422465121/576460752303423488),(1152921466844930265/1152921504606846976)⟩
theorem trig0_0_3 : Mem S0_0_3 (Real.sin ((-2147/8388608):ℝ)) ∧ Mem C0_0_3 (Real.cos ((-2147/8388608):ℝ)) := by
  have h := double_sound trig0_0_2
    (show Includes (doubleSin S0_0_2 C0_0_2) S0_0_3 from by decide +kernel)
    (show Includes (doubleCos S0_0_2 C0_0_2) C0_0_3 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S0_0_4 : Interval := ⟨(-295081420217891/576460752303423488),(-590162840435751/1152921504606846976)⟩
def C0_0_4 : Interval := ⟨(1152921353559182537/1152921504606846976),(144115169194897823/144115188075855872)⟩
theorem trig0_0_4 : Mem S0_0_4 (Real.sin ((-2147/4194304):ℝ)) ∧ Mem C0_0_4 (Real.cos ((-2147/4194304):ℝ)) := by
  have h := double_sound trig0_0_3
    (show Includes (doubleSin S0_0_3 C0_0_3) S0_0_4 from by decide +kernel)
    (show Includes (doubleCos S0_0_3 C0_0_3) C0_0_4 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S0_0_5 : Interval := ⟨(-590162763116799/576460752303423488),(-1180325526233535/1152921504606846976)⟩
def C0_0_5 : Interval := ⟨(72057556276014303/72057594037927936),(1152920900416228943/1152921504606846976)⟩
theorem trig0_0_5 : Mem S0_0_5 (Real.sin ((-2147/2097152):ℝ)) ∧ Mem C0_0_5 (Real.cos ((-2147/2097152):ℝ)) := by
  have h := double_sound trig0_0_4
    (show Includes (doubleSin S0_0_4 C0_0_4) S0_0_5 from by decide +kernel)
    (show Includes (doubleCos S0_0_4 C0_0_4) C0_0_5 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S0_0_6 : Interval := ⟨(-2360649815363705/1152921504606846976),(-1180324907681789/576460752303423488)⟩
def C0_0_6 : Interval := ⟨(288229771961251955/288230376151711744),(1152919087845008011/1152921504606846976)⟩
theorem trig0_0_6 : Mem S0_0_6 (Real.sin ((-2147/1048576):ℝ)) ∧ Mem C0_0_6 (Real.cos ((-2147/1048576):ℝ)) := by
  have h := double_sound trig0_0_5
    (show Includes (doubleSin S0_0_5 C0_0_5) S0_0_6 from by decide +kernel)
    (show Includes (doubleCos S0_0_5 C0_0_5) C0_0_6 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S0_0_7 : Interval := ⟨(-4721289733907261/1152921504606846976),(-4721289733907005/1152921504606846976)⟩
def C0_0_7 : Interval := ⟨(1152911837569622623/1152921504606846976),(576455918784811503/576460752303423488)⟩
theorem trig0_0_7 : Mem S0_0_7 (Real.sin ((-2147/524288):ℝ)) ∧ Mem C0_0_7 (Real.cos ((-2147/524288):ℝ)) := by
  have h := double_sound trig0_0_6
    (show Includes (doubleSin S0_0_6 C0_0_6) S0_0_7 from by decide +kernel)
    (show Includes (doubleCos S0_0_6 C0_0_6) C0_0_7 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S0_0_8 : Interval := ⟨(-147539067085973/18014398509481984),(-2360625073375439/288230376151711744)⟩
def C0_0_8 : Interval := ⟨(288220709155015669/288230376151711744),(1152882836620063445/1152921504606846976)⟩
theorem trig0_0_8 : Mem S0_0_8 (Real.sin ((-2147/262144):ℝ)) ∧ Mem C0_0_8 (Real.cos ((-2147/262144):ℝ)) := by
  have h := double_sound trig0_0_7
    (show Includes (doubleSin S0_0_7 C0_0_7) S0_0_8 from by decide +kernel)
    (show Includes (doubleCos S0_0_7 C0_0_7) C0_0_8 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S0_0_9 : Interval := ⟨(-9442183600236431/576460752303423488),(-2360545900058977/144115188075855872)⟩
def C0_0_9 : Interval := ⟨(1152766835253492045/1152921504606846976),(1152766835253493593/1152921504606846976)⟩
theorem trig0_0_9 : Mem S0_0_9 (Real.sin ((-2147/131072):ℝ)) ∧ Mem C0_0_9 (Real.cos ((-2147/131072):ℝ)) := by
  have h := double_sound trig0_0_8
    (show Includes (doubleSin S0_0_8 C0_0_8) S0_0_9 from by decide +kernel)
    (show Includes (doubleCos S0_0_8 C0_0_8) C0_0_9 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S0_0_10 : Interval := ⟨(-18881833781804103/576460752303423488),(-37763667563606063/1152921504606846976)⟩
def C0_0_10 : Interval := ⟨(1152302868692540115/1152921504606846976),(576151434346271623/576460752303423488)⟩
theorem trig0_0_10 : Mem S0_0_10 (Real.sin ((-2147/65536):ℝ)) ∧ Mem C0_0_10 (Real.cos ((-2147/65536):ℝ)) := by
  have h := double_sound trig0_0_9
    (show Includes (doubleSin S0_0_9 C0_0_9) S0_0_10 from by decide +kernel)
    (show Includes (doubleCos S0_0_9 C0_0_9) C0_0_10 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S0_0_11 : Interval := ⟨(-18871702146251585/288230376151711744),(-37743404292500925/576460752303423488)⟩
def C0_0_11 : Interval := ⟨(575223812423164313/576460752303423488),(575223812423167513/576460752303423488)⟩
theorem trig0_0_11 : Mem S0_0_11 (Real.sin ((-2147/32768):ℝ)) ∧ Mem C0_0_11 (Real.cos ((-2147/32768):ℝ)) := by
  have h := double_sound trig0_0_10
    (show Includes (doubleSin S0_0_10 C0_0_10) S0_0_11 from by decide +kernel)
    (show Includes (doubleCos S0_0_10 C0_0_10) C0_0_11 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S0_0_12 : Interval := ⟨(-18831208216873503/144115188075855872),(-150649665734978225/1152921504606846976)⟩
def C0_0_12 : Interval := ⟨(571518301106543155/576460752303423488),(142879575276637459/144115188075855872)⟩
theorem trig0_0_12 : Mem S0_0_12 (Real.sin ((-2147/16384):ℝ)) ∧ Mem C0_0_12 (Real.cos ((-2147/16384):ℝ)) := by
  have h := double_sound trig0_0_11
    (show Includes (doubleSin S0_0_11 C0_0_11) S0_0_12 from by decide +kernel)
    (show Includes (doubleCos S0_0_11 C0_0_11) C0_0_12 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S0_0_13 : Interval := ⟨(-298716055443827459/1152921504606846976),(-37339506930475567/144115188075855872)⟩
def C0_0_13 : Interval := ⟨(17399240579839087/18014398509481984),(17399240579839541/18014398509481984)⟩
theorem trig0_0_13 : Mem S0_0_13 (Real.sin ((-2147/8192):ℝ)) ∧ Mem C0_0_13 (Real.cos ((-2147/8192):ℝ)) := by
  have h := double_sound trig0_0_12
    (show Includes (doubleSin S0_0_12 C0_0_12) S0_0_13 from by decide +kernel)
    (show Includes (doubleCos S0_0_12 C0_0_12) C0_0_13 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S0_0_14 : Interval := ⟨(-577030924567605403/1152921504606846976),(-577030924567546065/1152921504606846976)⟩
def C0_0_14 : Interval := ⟨(998129905311694457/1152921504606846976),(31191559540992577/36028797018963968)⟩
theorem trig0_0_14 : Mem S0_0_14 (Real.sin ((-2147/4096):ℝ)) ∧ Mem C0_0_14 (Real.cos ((-2147/4096):ℝ)) := by
  have h := double_sound trig0_0_13
    (show Includes (doubleSin S0_0_13 C0_0_13) S0_0_14 from by decide +kernel)
    (show Includes (doubleCos S0_0_13 C0_0_13) C0_0_14 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S0_0_15 : Interval := ⟨(-62444821676847993/72057594037927936),(-499558573414698535/576460752303423488)⟩
def C0_0_15 : Interval := ⟨(143829960955662667/288230376151711744),(575319843822827819/1152921504606846976)⟩
theorem trig0_0_15 : Mem S0_0_15 (Real.sin ((-2147/2048):ℝ)) ∧ Mem C0_0_15 (Real.cos ((-2147/2048):ℝ)) := by
  have h := double_sound trig0_0_14
    (show Includes (doubleSin S0_0_14 C0_0_14) S0_0_15 from by decide +kernel)
    (show Includes (doubleCos S0_0_14 C0_0_14) C0_0_15 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S0_0_16 : Interval := ⟨(-124642466676582327/144115188075855872),(-997139733412181099/1152921504606846976)⟩
def C0_0_16 : Interval := ⟨(-289370155611882123/576460752303423488),(-72342538902911423/144115188075855872)⟩
theorem trig0_0_16 : Mem S0_0_16 (Real.sin ((-2147/1024):ℝ)) ∧ Mem C0_0_16 (Real.cos ((-2147/1024):ℝ)) := by
  have h := double_sound trig0_0_15
    (show Includes (doubleSin S0_0_15 C0_0_15) S0_0_16 from by decide +kernel)
    (show Includes (doubleCos S0_0_15 C0_0_15) C0_0_16 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S0_1_0 : Interval := ⟨(-18425409696703/576460752303423488),(-36850819393405/1152921504606846976)⟩
def C0_1_0 : Interval := ⟨(1152921504017915775/1152921504606846976),(1152921504017915777/1152921504606846976)⟩
theorem trig0_1_0 : Mem S0_1_0 (Real.sin ((-2145/67108864):ℝ)) ∧ Mem C0_1_0 (Real.cos ((-2145/67108864):ℝ)) := by
  have h := taylor_sound (q:=(-2145/67108864)) (S:=S0_1_0) (C:=C0_1_0) (by decide +kernel)
  norm_num at h ⊢
  exact h
def S0_1_1 : Interval := ⟨(-18425409687291/288230376151711744),(-73701638749161/1152921504606846976)⟩
def C0_1_1 : Interval := ⟨(576460751125561087/576460752303423488),(1152921502251122179/1152921504606846976)⟩
theorem trig0_1_1 : Mem S0_1_1 (Real.sin ((-2145/33554432):ℝ)) ∧ Mem C0_1_1 (Real.cos ((-2145/33554432):ℝ)) := by
  have h := double_sound trig0_1_0
    (show Includes (doubleSin S0_1_0 C0_1_0) S0_1_1 from by decide +kernel)
    (show Includes (doubleCos S0_1_0 C0_1_0) C0_1_1 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S0_1_2 : Interval := ⟨(-18425409649643/144115188075855872),(-147403277197137/1152921504606846976)⟩
def C0_1_2 : Interval := ⟨(1152921495183947783/1152921504606846976),(576460747591973897/576460752303423488)⟩
theorem trig0_1_2 : Mem S0_1_2 (Real.sin ((-2145/16777216):ℝ)) ∧ Mem C0_1_2 (Real.cos ((-2145/16777216):ℝ)) := by
  have h := double_sound trig0_1_1
    (show Includes (doubleSin S0_1_1 C0_1_1) S0_1_2 from by decide +kernel)
    (show Includes (doubleCos S0_1_1 C0_1_1) C0_1_2 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S0_1_3 : Interval := ⟨(-18425409499051/72057594037927936),(-294806551984801/1152921504606846976)⟩
def C0_1_3 : Interval := ⟨(1152921466915250369/1152921504606846976),(144115183364406299/144115188075855872)⟩
theorem trig0_1_3 : Mem S0_1_3 (Real.sin ((-2145/8388608):ℝ)) ∧ Mem C0_1_3 (Real.cos ((-2145/8388608):ℝ)) := by
  have h := double_sound trig0_1_2
    (show Includes (doubleSin S0_1_2 C0_1_2) S0_1_3 from by decide +kernel)
    (show Includes (doubleCos S0_1_2 C0_1_2) C0_1_3 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S0_1_4 : Interval := ⟨(-294806542346927/576460752303423488),(-589613084693823/1152921504606846976)⟩
def C0_1_4 : Interval := ⟨(1152921353840463037/1152921504606846976),(288230338460115771/288230376151711744)⟩
theorem trig0_1_4 : Mem S0_1_4 (Real.sin ((-2145/4194304):ℝ)) ∧ Mem C0_1_4 (Real.cos ((-2145/4194304):ℝ)) := by
  have h := double_sound trig0_1_3
    (show Includes (doubleSin S0_1_3 C0_1_3) S0_1_4 from by decide +kernel)
    (show Includes (doubleCos S0_1_3 C0_1_3) C0_1_4 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S0_1_5 : Interval := ⟨(-589613007590745/576460752303423488),(-1179226015181427/1152921504606846976)⟩
def C0_1_5 : Interval := ⟨(288230225385337675/288230376151711744),(288230225385337699/288230376151711744)⟩
theorem trig0_1_5 : Mem S0_1_5 (Real.sin ((-2145/2097152):ℝ)) ∧ Mem C0_1_5 (Real.cos ((-2145/2097152):ℝ)) := by
  have h := double_sound trig0_1_4
    (show Includes (doubleSin S0_1_4 C0_1_4) S0_1_5 from by decide +kernel)
    (show Includes (doubleCos S0_1_4 C0_1_4) C0_1_5 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S0_1_6 : Interval := ⟨(-2358450796713475/1152921504606846976),(-589612699178337/288230376151711744)⟩
def C0_1_6 : Interval := ⟨(1152919092345492871/1152921504606846976),(144114886543186633/144115188075855872)⟩
theorem trig0_1_6 : Mem S0_1_6 (Real.sin ((-2145/1048576):ℝ)) ∧ Mem C0_1_6 (Real.cos ((-2145/1048576):ℝ)) := by
  have h := double_sound trig0_1_5
    (show Includes (doubleSin S0_1_5 C0_1_5) S0_1_6 from by decide +kernel)
    (show Includes (doubleCos S0_1_5 C0_1_5) C0_1_6 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S0_1_7 : Interval := ⟨(-4716891724238651/1152921504606846976),(-4716891724238395/1152921504606846976)⟩
def C0_1_7 : Interval := ⟨(1152911855571525125/1152921504606846976),(144113981946440689/144115188075855872)⟩
theorem trig0_1_7 : Mem S0_1_7 (Real.sin ((-2145/524288):ℝ)) ∧ Mem C0_1_7 (Real.cos ((-2145/524288):ℝ)) := by
  have h := double_sound trig0_1_6
    (show Includes (doubleSin S0_1_6 C0_1_6) S0_1_7 from by decide +kernel)
    (show Includes (doubleCos S0_1_6 C0_1_6) C0_1_7 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S0_1_8 : Interval := ⟨(-9433704495218693/1152921504606846976),(-9433704495218177/1152921504606846976)⟩
def C0_1_8 : Interval := ⟨(36027590894595921/36028797018963968),(1152882908627070249/1152921504606846976)⟩
theorem trig0_1_8 : Mem S0_1_8 (Real.sin ((-2145/262144):ℝ)) ∧ Mem C0_1_8 (Real.cos ((-2145/262144):ℝ)) := by
  have h := double_sound trig0_1_7
    (show Includes (doubleSin S0_1_7 C0_1_7) S0_1_8 from by decide +kernel)
    (show Includes (doubleCos S0_1_7 C0_1_7) C0_1_8 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S0_1_9 : Interval := ⟨(-4716694343074449/288230376151711744),(-9433388686148375/576460752303423488)⟩
def C0_1_9 : Interval := ⟨(144095890408983501/144115188075855872),(1152767123271869571/1152921504606846976)⟩
theorem trig0_1_9 : Mem S0_1_9 (Real.sin ((-2145/131072):ℝ)) ∧ Mem C0_1_9 (Real.cos ((-2145/131072):ℝ)) := by
  have h := double_sound trig0_1_8
    (show Includes (doubleSin S0_1_8 C0_1_8) S0_1_9 from by decide +kernel)
    (show Includes (doubleCos S0_1_8 C0_1_8) C0_1_9 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S0_1_10 : Interval := ⟨(-4716062756651215/144115188075855872),(-37728502053207577/1152921504606846976)⟩
def C0_1_10 : Interval := ⟨(1152304020611632267/1152921504606846976),(288076005152908857/288230376151711744)⟩
theorem trig0_1_10 : Mem S0_1_10 (Real.sin ((-2145/65536):ℝ)) ∧ Mem C0_1_10 (Real.cos ((-2145/65536):ℝ)) := by
  have h := double_sound trig0_1_9
    (show Includes (doubleSin S0_1_9 C0_1_9) S0_1_10 from by decide +kernel)
    (show Includes (doubleCos S0_1_9 C0_1_9) C0_1_10 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S0_1_11 : Interval := ⟨(-4713536918369069/72057594037927936),(-18854147673475153/288230376151711744)⟩
def C0_1_11 : Interval := ⟨(143806528756575861/144115188075855872),(287613057513153337/288230376151711744)⟩
theorem trig0_1_11 : Mem S0_1_11 (Real.sin ((-2145/32768):ℝ)) ∧ Mem C0_1_11 (Real.cos ((-2145/32768):ℝ)) := by
  have h := double_sound trig0_1_10
    (show Includes (doubleSin S0_1_10 C0_1_10) S0_1_11 from by decide +kernel)
    (show Includes (doubleCos S0_1_10 C0_1_10) C0_1_11 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S0_1_12 : Interval := ⟨(-150510133777676479/1152921504606846976),(-150510133777666669/1152921504606846976)⟩
def C0_1_12 : Interval := ⟨(571527491774264299/576460752303423488),(1143054983548542079/1152921504606846976)⟩
theorem trig0_1_12 : Mem S0_1_12 (Real.sin ((-2145/16384):ℝ)) ∧ Mem C0_1_12 (Real.cos ((-2145/16384):ℝ)) := by
  have h := double_sound trig0_1_11
    (show Includes (doubleSin S0_1_11 C0_1_11) S0_1_12 from by decide +kernel)
    (show Includes (doubleCos S0_1_11 C0_1_11) C0_1_12 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S0_1_13 : Interval := ⟨(-298444183410037047/1152921504606846976),(-149222091705007037/576460752303423488)⟩
def C0_1_13 : Interval := ⟨(556812146323516479/576460752303423488),(1113624292647062251/1152921504606846976)⟩
theorem trig0_1_13 : Mem S0_1_13 (Real.sin ((-2145/8192):ℝ)) ∧ Mem C0_1_13 (Real.cos ((-2145/8192):ℝ)) := by
  have h := double_sound trig0_1_12
    (show Includes (doubleSin S0_1_12 C0_1_12) S0_1_13 from by decide +kernel)
    (show Includes (doubleCos S0_1_12 C0_1_12) C0_1_13 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S0_1_14 : Interval := ⟨(-72067935960212557/144115188075855872),(-288271743840820455/576460752303423488)⟩
def C0_1_14 : Interval := ⟨(249602884923819941/288230376151711744),(124801442461918531/144115188075855872)⟩
theorem trig0_1_14 : Mem S0_1_14 (Real.sin ((-2145/4096):ℝ)) ∧ Mem C0_1_14 (Real.cos ((-2145/4096):ℝ)) := by
  have h := double_sound trig0_1_13
    (show Includes (doubleSin S0_1_13 C0_1_13) S0_1_14 from by decide +kernel)
    (show Includes (doubleCos S0_1_13 C0_1_13) C0_1_14 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S0_1_15 : Interval := ⟨(-998554834717746071/1152921504606846976),(-249638708679393611/288230376151711744)⟩
def C0_1_15 : Interval := ⟨(288147634836203503/576460752303423488),(576295269672585173/1152921504606846976)⟩
theorem trig0_1_15 : Mem S0_1_15 (Real.sin ((-2145/2048):ℝ)) ∧ Mem C0_1_15 (Real.cos ((-2145/2048):ℝ)) := by
  have h := double_sound trig0_1_14
    (show Includes (doubleSin S0_1_14 C0_1_14) S0_1_15 from by decide +kernel)
    (show Includes (doubleCos S0_1_14 C0_1_14) C0_1_15 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S0_1_16 : Interval := ⟨(-998268182971855079/1152921504606846976),(-249567045742843719/288230376151711744)⟩
def C0_1_16 : Interval := ⟨(-576791670060972841/1152921504606846976),(-576791670060497429/1152921504606846976)⟩
theorem trig0_1_16 : Mem S0_1_16 (Real.sin ((-2145/1024):ℝ)) ∧ Mem C0_1_16 (Real.cos ((-2145/1024):ℝ)) := by
  have h := double_sound trig0_1_15
    (show Includes (doubleSin S0_1_15 C0_1_15) S0_1_16 from by decide +kernel)
    (show Includes (doubleCos S0_1_15 C0_1_15) C0_1_16 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S1_0_0 : Interval := ⟨(-9612136808003/576460752303423488),(-19224273616005/1152921504606846976)⟩
def C1_0_0 : Interval := ⟨(1152921504446570367/1152921504606846976),(1152921504446570369/1152921504606846976)⟩
theorem trig1_0_0 : Mem S1_0_0 (Real.sin ((-1119/67108864):ℝ)) ∧ Mem C1_0_0 (Real.cos ((-1119/67108864):ℝ)) := by
  have h := taylor_sound (q:=(-1119/67108864)) (S:=S1_0_0) (C:=C1_0_0) (by decide +kernel)
  norm_num at h ⊢
  exact h
def S1_0_1 : Interval := ⟨(-38448547226667/1152921504606846976),(-4806068403333/144115188075855872)⟩
def C1_0_1 : Interval := ⟨(576460751982870271/576460752303423488),(1152921503965740547/1152921504606846976)⟩
theorem trig1_0_1 : Mem S1_0_1 (Real.sin ((-1119/33554432):ℝ)) ∧ Mem C1_0_1 (Real.cos ((-1119/33554432):ℝ)) := by
  have h := double_sound trig1_0_0
    (show Includes (doubleSin S1_0_0 C1_0_0) S1_0_1 from by decide +kernel)
    (show Includes (doubleCos S1_0_0 C1_0_0) C1_0_1 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S1_0_2 : Interval := ⟨(-38448547205287/576460752303423488),(-76897094410567/1152921504606846976)⟩
def C1_0_2 : Interval := ⟨(288230375510605311/288230376151711744),(1152921502042421255/1152921504606846976)⟩
theorem trig1_0_2 : Mem S1_0_2 (Real.sin ((-1119/16777216):ℝ)) ∧ Mem C1_0_2 (Real.cos ((-1119/16777216):ℝ)) := by
  have h := double_sound trig1_0_1
    (show Includes (doubleSin S1_0_1 C1_0_1) S1_0_2 from by decide +kernel)
    (show Includes (doubleCos S1_0_1 C1_0_1) C1_0_2 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S1_0_3 : Interval := ⟨(-76897094239533/576460752303423488),(-153794188479051/1152921504606846976)⟩
def C1_0_3 : Interval := ⟨(1152921494349144069/1152921504606846976),(288230373587286023/288230376151711744)⟩
theorem trig1_0_3 : Mem S1_0_3 (Real.sin ((-1119/8388608):ℝ)) ∧ Mem C1_0_3 (Real.cos ((-1119/8388608):ℝ)) := by
  have h := double_sound trig1_0_2
    (show Includes (doubleSin S1_0_2 C1_0_2) S1_0_3 from by decide +kernel)
    (show Includes (doubleCos S1_0_2 C1_0_2) C1_0_3 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S1_0_4 : Interval := ⟨(-76897093555369/288230376151711744),(-307588374221445/1152921504606846976)⟩
def C1_0_4 : Interval := ⟨(576460731788017775/576460752303423488),(1152921463576035597/1152921504606846976)⟩
theorem trig1_0_4 : Mem S1_0_4 (Real.sin ((-1119/4194304):ℝ)) ∧ Mem C1_0_4 (Real.cos ((-1119/4194304):ℝ)) := by
  have h := double_sound trig1_0_3
    (show Includes (doubleSin S1_0_3 C1_0_3) S1_0_4 from by decide +kernel)
    (show Includes (doubleCos S1_0_3 C1_0_3) C1_0_4 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S1_0_5 : Interval := ⟨(-153794181637425/288230376151711744),(-615176726549637/1152921504606846976)⟩
def C1_0_5 : Interval := ⟨(1152921340483604235/1152921504606846976),(576460670241802165/576460752303423488)⟩
theorem trig1_0_5 : Mem S1_0_5 (Real.sin ((-1119/2097152):ℝ)) ∧ Mem C1_0_5 (Real.cos ((-1119/2097152):ℝ)) := by
  have h := double_sound trig1_0_4
    (show Includes (doubleSin S1_0_4 C1_0_4) S1_0_5 from by decide +kernel)
    (show Includes (doubleCos S1_0_4 C1_0_4) C1_0_5 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S1_0_6 : Interval := ⟨(-1230353277953393/1152921504606846976),(-615176638976633/576460752303423488)⟩
def C1_0_6 : Interval := ⟨(1152920848113922825/1152921504606846976),(144115106014240377/144115188075855872)⟩
theorem trig1_0_6 : Mem S1_0_6 (Real.sin ((-1119/1048576):ℝ)) ∧ Mem C1_0_6 (Real.cos ((-1119/1048576):ℝ)) := by
  have h := double_sound trig1_0_5
    (show Includes (doubleSin S1_0_5 C1_0_5) S1_0_6 from by decide +kernel)
    (show Includes (doubleCos S1_0_5 C1_0_5) C1_0_6 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S1_0_7 : Interval := ⟨(-2460705154739027/1152921504606846976),(-2460705154738771/1152921504606846976)⟩
def C1_0_7 : Interval := ⟨(288229719658974545/288230376151711744),(1152918878635898563/1152921504606846976)⟩
theorem trig1_0_7 : Mem S1_0_7 (Real.sin ((-1119/524288):ℝ)) ∧ Mem C1_0_7 (Real.cos ((-1119/524288):ℝ)) := by
  have h := double_sound trig1_0_6
    (show Includes (doubleSin S1_0_6 C1_0_6) S1_0_7 from by decide +kernel)
    (show Includes (doubleCos S1_0_6 C1_0_6) C1_0_7 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S1_0_8 : Interval := ⟨(-4921399100145549/1152921504606846976),(-2460699550072517/576460752303423488)⟩
def C1_0_8 : Interval := ⟨(1152911000735014309/1152921504606846976),(1152911000735015077/1152921504606846976)⟩
theorem trig1_0_8 : Mem S1_0_8 (Real.sin ((-1119/262144):ℝ)) ∧ Mem C1_0_8 (Real.cos ((-1119/262144):ℝ)) := by
  have h := double_sound trig1_0_7
    (show Includes (doubleSin S1_0_7 C1_0_7) S1_0_8 from by decide +kernel)
    (show Includes (doubleCos S1_0_7 C1_0_7) C1_0_8 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S1_0_9 : Interval := ⟨(-615169282871089/72057594037927936),(-4921354262968193/576460752303423488)⟩
def C1_0_9 : Interval := ⟨(576439744655455667/576460752303423488),(1152879489310912875/1152921504606846976)⟩
theorem trig1_0_9 : Mem S1_0_9 (Real.sin ((-1119/131072):ℝ)) ∧ Mem C1_0_9 (Real.cos ((-1119/131072):ℝ)) := by
  have h := double_sound trig1_0_8
    (show Includes (doubleSin S1_0_8 C1_0_8) S1_0_9 from by decide +kernel)
    (show Includes (doubleCos S1_0_8 C1_0_8) C1_0_9 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S1_0_10 : Interval := ⟨(-19684699666849315/1152921504606846976),(-4921174916711803/288230376151711744)⟩
def C1_0_10 : Interval := ⟨(1152753446485387279/1152921504606846976),(288188361621347595/288230376151711744)⟩
theorem trig1_0_10 : Mem S1_0_10 (Real.sin ((-1119/65536):ℝ)) ∧ Mem C1_0_10 (Real.cos ((-1119/65536):ℝ)) := by
  have h := double_sound trig1_0_9
    (show Includes (doubleSin S1_0_9 C1_0_9) S1_0_10 from by decide +kernel)
    (show Includes (doubleCos S1_0_9 C1_0_9) C1_0_10 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S1_0_11 : Interval := ⟨(-39363660567209795/1152921504606846976),(-19681830283602741/576460752303423488)⟩
def C1_0_11 : Interval := ⟨(9001947821216635/9007199254740992),(1152249321115735553/1152921504606846976)⟩
theorem trig1_0_11 : Mem S1_0_11 (Real.sin ((-1119/32768):ℝ)) ∧ Mem C1_0_11 (Real.cos ((-1119/32768):ℝ)) := by
  have h := double_sound trig1_0_10
    (show Includes (doubleSin S1_0_10 C1_0_10) S1_0_11 from by decide +kernel)
    (show Includes (doubleCos S1_0_10 C1_0_10) C1_0_11 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S1_0_12 : Interval := ⟨(-78681421040306913/1152921504606846976),(-39340710520148931/576460752303423488)⟩
def C1_0_12 : Interval := ⟨(287558388610902505/288230376151711744),(575116777221811427/576460752303423488)⟩
theorem trig1_0_12 : Mem S1_0_12 (Real.sin ((-1119/16384):ℝ)) ∧ Mem C1_0_12 (Real.cos ((-1119/16384):ℝ)) := by
  have h := double_sound trig1_0_11
    (show Includes (doubleSin S1_0_11 C1_0_11) S1_0_12 from by decide +kernel)
    (show Includes (doubleCos S1_0_11 C1_0_11) C1_0_12 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S1_0_13 : Interval := ⟨(-78497981198407079/576460752303423488),(-78497981198397173/576460752303423488)⟩
def C1_0_13 : Interval := ⟨(1142182237463001893/1152921504606846976),(571091118731514369/576460752303423488)⟩
theorem trig1_0_13 : Mem S1_0_13 (Real.sin ((-1119/8192):ℝ)) ∧ Mem C1_0_13 (Real.cos ((-1119/8192):ℝ)) := by
  have h := double_sound trig1_0_12
    (show Includes (doubleSin S1_0_12 C1_0_12) S1_0_13 from by decide +kernel)
    (show Includes (doubleCos S1_0_12 C1_0_12) C1_0_13 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S1_0_14 : Interval := ⟨(-311067143576618797/1152921504606846976),(-155533571788286115/576460752303423488)⟩
def C1_0_14 : Interval := ⟨(1110164504914453731/1152921504606846976),(1110164504914512317/1152921504606846976)⟩
theorem trig1_0_14 : Mem S1_0_14 (Real.sin ((-1119/4096):ℝ)) ∧ Mem C1_0_14 (Real.cos ((-1119/4096):ℝ)) := by
  have h := double_sound trig1_0_13
    (show Includes (doubleSin S1_0_13 C1_0_13) S1_0_14 from by decide +kernel)
    (show Includes (doubleCos S1_0_13 C1_0_13) C1_0_14 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S1_0_15 : Interval := ⟨(-599061948387665881/1152921504606846976),(-299530974193772293/576460752303423488)⟩
def C1_0_15 : Interval := ⟨(492532429840624153/576460752303423488),(492532429840693131/576460752303423488)⟩
theorem trig1_0_15 : Mem S1_0_15 (Real.sin ((-1119/2048):ℝ)) ∧ Mem C1_0_15 (Real.cos ((-1119/2048):ℝ)) := by
  have h := double_sound trig1_0_14
    (show Includes (doubleSin S1_0_14 C1_0_14) S1_0_15 from by decide +kernel)
    (show Includes (doubleCos S1_0_14 C1_0_14) C1_0_15 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S1_0_16 : Interval := ⟨(-1023686125674594991/1152921504606846976),(-511843062837122177/576460752303423488)⟩
def C1_0_16 : Interval := ⟨(66296529873181653/144115188075855872),(66296529873226877/144115188075855872)⟩
theorem trig1_0_16 : Mem S1_0_16 (Real.sin ((-1119/1024):ℝ)) ∧ Mem C1_0_16 (Real.cos ((-1119/1024):ℝ)) := by
  have h := double_sound trig1_0_15
    (show Includes (doubleSin S1_0_15 C1_0_15) S1_0_16 from by decide +kernel)
    (show Includes (doubleCos S1_0_15 C1_0_15) C1_0_16 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S1_1_0 : Interval := ⟨(-9594956938821/576460752303423488),(-19189913877641/1152921504606846976)⟩
def C1_1_0 : Interval := ⟨(1152921504447142783/1152921504606846976),(1152921504447142785/1152921504606846976)⟩
theorem trig1_1_0 : Mem S1_1_0 (Real.sin ((-1117/67108864):ℝ)) ∧ Mem C1_1_0 (Real.cos ((-1117/67108864):ℝ)) := by
  have h := taylor_sound (q:=(-1117/67108864)) (S:=S1_1_0) (C:=C1_1_0) (by decide +kernel)
  norm_num at h ⊢
  exact h
def S1_1_1 : Interval := ⟨(-2398739234373/72057594037927936),(-38379827749965/1152921504606846976)⟩
def C1_1_1 : Interval := ⟨(576460751984015103/576460752303423488),(1152921503968030211/1152921504606846976)⟩
theorem trig1_1_1 : Mem S1_1_1 (Real.sin ((-1117/33554432):ℝ)) ∧ Mem C1_1_1 (Real.cos ((-1117/33554432):ℝ)) := by
  have h := double_sound trig1_1_0
    (show Includes (doubleSin S1_1_0 C1_1_0) S1_1_1 from by decide +kernel)
    (show Includes (doubleCos S1_1_0 C1_1_0) C1_1_1 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S1_1_2 : Interval := ⟨(-76759655457405/1152921504606846976),(-38379827728699/576460752303423488)⟩
def C1_1_2 : Interval := ⟨(288230375512894975/288230376151711744),(1152921502051579911/1152921504606846976)⟩
theorem trig1_1_2 : Mem S1_1_2 (Real.sin ((-1117/16777216):ℝ)) ∧ Mem C1_1_2 (Real.cos ((-1117/16777216):ℝ)) := by
  have h := double_sound trig1_1_1
    (show Includes (doubleSin S1_1_1 C1_1_1) S1_1_2 from by decide +kernel)
    (show Includes (doubleCos S1_1_1 C1_1_1) C1_1_2 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S1_1_3 : Interval := ⟨(-153519310574559/1152921504606846976),(-9594956910909/72057594037927936)⟩
def C1_1_3 : Interval := ⟨(1152921494385778693/1152921504606846976),(288230373596444679/288230376151711744)⟩
theorem trig1_1_3 : Mem S1_1_3 (Real.sin ((-1117/8388608):ℝ)) ∧ Mem C1_1_3 (Real.cos ((-1117/8388608):ℝ)) := by
  have h := double_sound trig1_1_2
    (show Includes (doubleSin S1_1_2 C1_1_2) S1_1_3 from by decide +kernel)
    (show Includes (doubleCos S1_1_2 C1_1_2) C1_1_3 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S1_1_4 : Interval := ⟨(-153519309213555/576460752303423488),(-153519309213539/576460752303423488)⟩
def C1_1_4 : Interval := ⟨(1152921463722574045/1152921504606846976),(288230365930643523/288230376151711744)⟩
theorem trig1_1_4 : Mem S1_1_4 (Real.sin ((-1117/4194304):ℝ)) ∧ Mem C1_1_4 (Real.cos ((-1117/4194304):ℝ)) := by
  have h := double_sound trig1_1_3
    (show Includes (doubleSin S1_1_3 C1_1_3) S1_1_4 from by decide +kernel)
    (show Includes (doubleCos S1_1_3 C1_1_3) C1_1_4 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S1_1_5 : Interval := ⟨(-614077215078149/1152921504606846976),(-153519303769521/288230376151711744)⟩
def C1_1_5 : Interval := ⟨(72057583816859887/72057594037927936),(1152921341069758287/1152921504606846976)⟩
theorem trig1_1_5 : Mem S1_1_5 (Real.sin ((-1117/2097152):ℝ)) ∧ Mem C1_1_5 (Real.cos ((-1117/2097152):ℝ)) := by
  have h := double_sound trig1_1_4
    (show Includes (doubleSin S1_1_4 C1_1_4) S1_1_5 from by decide +kernel)
    (show Includes (doubleCos S1_1_4 C1_1_4) C1_1_5 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S1_1_6 : Interval := ⟨(-614077127973867/576460752303423488),(-1228154255947603/1152921504606846976)⟩
def C1_1_6 : Interval := ⟨(576460425229269159/576460752303423488),(1152920850458538509/1152921504606846976)⟩
theorem trig1_1_6 : Mem S1_1_6 (Real.sin ((-1117/1048576):ℝ)) ∧ Mem C1_1_6 (Real.cos ((-1117/1048576):ℝ)) := by
  have h := double_sound trig1_1_5
    (show Includes (doubleSin S1_1_5 C1_1_5) S1_1_6 from by decide +kernel)
    (show Includes (doubleCos S1_1_5 C1_1_5) C1_1_6 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S1_1_7 : Interval := ⟨(-2456307118227251/1152921504606846976),(-614076779556747/288230376151711744)⟩
def C1_1_7 : Interval := ⟨(1152918888014354819/1152921504606846976),(576459444007177601/576460752303423488)⟩
theorem trig1_1_7 : Mem S1_1_7 (Real.sin ((-1117/524288):ℝ)) ∧ Mem C1_1_7 (Real.cos ((-1117/524288):ℝ)) := by
  have h := double_sound trig1_1_6
    (show Includes (doubleSin S1_1_6 C1_1_6) S1_1_7 from by decide +kernel)
    (show Includes (doubleCos S1_1_6 C1_1_6) C1_1_7 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S1_1_8 : Interval := ⟨(-4912603087118251/1152921504606846976),(-4912603087117723/1152921504606846976)⟩
def C1_1_8 : Interval := ⟨(1152911038248755569/1152921504606846976),(1152911038248756337/1152921504606846976)⟩
theorem trig1_1_8 : Mem S1_1_8 (Real.sin ((-1117/262144):ℝ)) ∧ Mem C1_1_8 (Real.cos ((-1117/262144):ℝ)) := by
  have h := double_sound trig1_1_7
    (show Includes (doubleSin S1_1_7 C1_1_7) S1_1_8 from by decide +kernel)
    (show Includes (doubleCos S1_1_7 C1_1_7) C1_1_8 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S1_1_9 : Interval := ⟨(-4912558489925067/576460752303423488),(-9825116979849071/1152921504606846976)⟩
def C1_1_9 : Interval := ⟨(1152879639364511705/1152921504606846976),(1152879639364513247/1152921504606846976)⟩
theorem trig1_1_9 : Mem S1_1_9 (Real.sin ((-1117/131072):ℝ)) ∧ Mem C1_1_9 (Real.cos ((-1117/131072):ℝ)) := by
  have h := double_sound trig1_1_8
    (show Includes (doubleSin S1_1_8 C1_1_8) S1_1_9 from by decide +kernel)
    (show Includes (doubleCos S1_1_8 C1_1_8) C1_1_9 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S1_1_10 : Interval := ⟨(-19649520414325887/1152921504606846976),(-9824760207161867/576460752303423488)⟩
def C1_1_10 : Interval := ⟨(72047127917372157/72057594037927936),(1152754046677957615/1152921504606846976)⟩
theorem trig1_1_10 : Mem S1_1_10 (Real.sin ((-1117/65536):ℝ)) ∧ Mem C1_1_10 (Real.cos ((-1117/65536):ℝ)) := by
  have h := double_sound trig1_1_9
    (show Includes (doubleSin S1_1_9 C1_1_9) S1_1_10 from by decide +kernel)
    (show Includes (doubleCos S1_1_9 C1_1_9) C1_1_10 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S1_1_11 : Interval := ⟨(-4911666597072333/144115188075855872),(-9823333194143563/288230376151711744)⟩
def C1_1_11 : Interval := ⟨(288062930384167387/288230376151711744),(288062930384168957/288230376151711744)⟩
theorem trig1_1_11 : Mem S1_1_11 (Real.sin ((-1117/32768):ℝ)) ∧ Mem C1_1_11 (Real.cos ((-1117/32768):ℝ)) := by
  have h := double_sound trig1_1_10
    (show Includes (doubleSin S1_1_10 C1_1_10) S1_1_11 from by decide +kernel)
    (show Includes (doubleCos S1_1_10 C1_1_10) C1_1_11 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S1_1_12 : Interval := ⟨(-9817626385624053/144115188075855872),(-9817626385622897/144115188075855872)⟩
def C1_1_12 : Interval := ⟨(575121575269666465/576460752303423488),(143780393817418223/144115188075855872)⟩
theorem trig1_1_12 : Mem S1_1_12 (Real.sin ((-1117/16384):ℝ)) ∧ Mem C1_1_12 (Real.cos ((-1117/16384):ℝ)) := by
  have h := double_sound trig1_1_11
    (show Includes (doubleSin S1_1_11 C1_1_11) S1_1_12 from by decide +kernel)
    (show Includes (doubleCos S1_1_11 C1_1_11) C1_1_12 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S1_1_13 : Interval := ⟨(-156717104635417949/1152921504606846976),(-156717104635397743/1152921504606846976)⟩
def C1_1_13 : Interval := ⟨(1142220532515320781/1152921504606846976),(571110266257673845/576460752303423488)⟩
theorem trig1_1_13 : Mem S1_1_13 (Real.sin ((-1117/8192):ℝ)) ∧ Mem C1_1_13 (Real.cos ((-1117/8192):ℝ)) := by
  have h := double_sound trig1_1_12
    (show Includes (doubleSin S1_1_12 C1_1_12) S1_1_13 from by decide +kernel)
    (show Includes (doubleCos S1_1_12 C1_1_12) C1_1_13 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S1_1_14 : Interval := ⟨(-9703907312621669/36028797018963968),(-310525034003846055/1152921504606846976)⟩
def C1_1_14 : Interval := ⟨(138789532602525121/144115188075855872),(1110316260820259781/1152921504606846976)⟩
theorem trig1_1_14 : Mem S1_1_14 (Real.sin ((-1117/4096):ℝ)) ∧ Mem C1_1_14 (Real.cos ((-1117/4096):ℝ)) := by
  have h := double_sound trig1_1_13
    (show Includes (doubleSin S1_1_13 C1_1_13) S1_1_14 from by decide +kernel)
    (show Includes (doubleCos S1_1_13 C1_1_13) C1_1_14 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S1_1_15 : Interval := ⟨(-598099685483547817/1152921504606846976),(-598099685483424929/1152921504606846976)⟩
def C1_1_15 : Interval := ⟨(985649411306751913/1152921504606846976),(985649411306890701/1152921504606846976)⟩
theorem trig1_1_15 : Mem S1_1_15 (Real.sin ((-1117/2048):ℝ)) ∧ Mem C1_1_15 (Real.cos ((-1117/2048):ℝ)) := by
  have h := double_sound trig1_1_14
    (show Includes (doubleSin S1_1_14 C1_1_14) S1_1_15 from by decide +kernel)
    (show Includes (doubleCos S1_1_14 C1_1_14) C1_1_15 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S1_1_16 : Interval := ⟨(-255662072632049665/288230376151711744),(-15978879539497571/18014398509481984)⟩
def C1_1_16 : Interval := ⟨(266185306537035625/576460752303423488),(66546326634304507/144115188075855872)⟩
theorem trig1_1_16 : Mem S1_1_16 (Real.sin ((-1117/1024):ℝ)) ∧ Mem C1_1_16 (Real.cos ((-1117/1024):ℝ)) := by
  have h := double_sound trig1_1_15
    (show Includes (doubleSin S1_1_15 C1_1_15) S1_1_16 from by decide +kernel)
    (show Includes (doubleCos S1_1_15 C1_1_15) C1_1_16 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S2_0_0 : Interval := ⟨(-3/67108864),(-51539607551/1152921504606846976)⟩
def C2_0_0 : Interval := ⟨(1152921504606845823/1152921504606846976),(1152921504606845825/1152921504606846976)⟩
theorem trig2_0_0 : Mem S2_0_0 (Real.sin ((-3/67108864):ℝ)) ∧ Mem C2_0_0 (Real.cos ((-3/67108864):ℝ)) := by
  have h := taylor_sound (q:=(-3/67108864)) (S:=S2_0_0) (C:=C2_0_0) (by decide +kernel)
  norm_num at h ⊢
  exact h
def S2_0_1 : Interval := ⟨(-3/33554432),(-103079215101/1152921504606846976)⟩
def C2_0_1 : Interval := ⟨(576460752303421183/576460752303423488),(1152921504606842371/1152921504606846976)⟩
theorem trig2_0_1 : Mem S2_0_1 (Real.sin ((-3/33554432):ℝ)) ∧ Mem C2_0_1 (Real.cos ((-3/33554432):ℝ)) := by
  have h := double_sound trig2_0_0
    (show Includes (doubleSin S2_0_0 C2_0_0) S2_0_1 from by decide +kernel)
    (show Includes (doubleCos S2_0_0 C2_0_0) C2_0_1 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S2_0_2 : Interval := ⟨(-3/16777216),(-206158430201/1152921504606846976)⟩
def C2_0_2 : Interval := ⟨(288230376151707135/288230376151711744),(1152921504606828551/1152921504606846976)⟩
theorem trig2_0_2 : Mem S2_0_2 (Real.sin ((-3/16777216):ℝ)) ∧ Mem C2_0_2 (Real.cos ((-3/16777216):ℝ)) := by
  have h := double_sound trig2_0_1
    (show Includes (doubleSin S2_0_1 C2_0_1) S2_0_2 from by decide +kernel)
    (show Includes (doubleCos S2_0_1 C2_0_1) C2_0_2 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S2_0_3 : Interval := ⟨(-3/8388608),(-412316860401/1152921504606846976)⟩
def C2_0_3 : Interval := ⟨(144115188075846655/144115188075855872),(1152921504606773263/1152921504606846976)⟩
theorem trig2_0_3 : Mem S2_0_3 (Real.sin ((-3/8388608):ℝ)) ∧ Mem C2_0_3 (Real.cos ((-3/8388608):ℝ)) := by
  have h := double_sound trig2_0_2
    (show Includes (doubleSin S2_0_2 C2_0_2) S2_0_3 from by decide +kernel)
    (show Includes (doubleCos S2_0_2 C2_0_2) C2_0_3 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S2_0_4 : Interval := ⟨(-3/4194304),(-824633720801/1152921504606846976)⟩
def C2_0_4 : Interval := ⟨(72057594037909503/72057594037927936),(1152921504606552095/1152921504606846976)⟩
theorem trig2_0_4 : Mem S2_0_4 (Real.sin ((-3/4194304):ℝ)) ∧ Mem C2_0_4 (Real.cos ((-3/4194304):ℝ)) := by
  have h := double_sound trig2_0_3
    (show Includes (doubleSin S2_0_3 C2_0_3) S2_0_4 from by decide +kernel)
    (show Includes (doubleCos S2_0_3 C2_0_3) C2_0_4 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S2_0_5 : Interval := ⟨(-3/2097152),(-1649267441601/1152921504606846976)⟩
def C2_0_5 : Interval := ⟨(36028797018927103/36028797018963968),(1152921504605667391/1152921504606846976)⟩
theorem trig2_0_5 : Mem S2_0_5 (Real.sin ((-3/2097152):ℝ)) ∧ Mem C2_0_5 (Real.cos ((-3/2097152):ℝ)) := by
  have h := double_sound trig2_0_4
    (show Includes (doubleSin S2_0_4 C2_0_4) S2_0_5 from by decide +kernel)
    (show Includes (doubleCos S2_0_4 C2_0_4) C2_0_5 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S2_0_6 : Interval := ⟨(-3298534883325/1152921504606846976),(-1649267441599/576460752303423488)⟩
def C2_0_6 : Interval := ⟨(18014398509408255/18014398509481984),(1152921504602128511/1152921504606846976)⟩
theorem trig2_0_6 : Mem S2_0_6 (Real.sin ((-3/1048576):ℝ)) ∧ Mem C2_0_6 (Real.cos ((-3/1048576):ℝ)) := by
  have h := double_sound trig2_0_5
    (show Includes (doubleSin S2_0_5 C2_0_5) S2_0_6 from by decide +kernel)
    (show Includes (doubleCos S2_0_5 C2_0_5) C2_0_6 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S2_0_7 : Interval := ⟨(-206158430207/36028797018963968),(-206158430199/36028797018963968)⟩
def C2_0_7 : Interval := ⟨(9007199254593535/9007199254740992),(1152921504587972863/1152921504606846976)⟩
theorem trig2_0_7 : Mem S2_0_7 (Real.sin ((-3/524288):ℝ)) ∧ Mem C2_0_7 (Real.cos ((-3/524288):ℝ)) := by
  have h := double_sound trig2_0_6
    (show Includes (doubleSin S2_0_6 C2_0_6) S2_0_7 from by decide +kernel)
    (show Includes (doubleCos S2_0_6 C2_0_6) C2_0_7 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S2_0_8 : Interval := ⟨(-13194139533033/1152921504606846976),(-13194139532519/1152921504606846976)⟩
def C2_0_8 : Interval := ⟨(4503599627075583/4503599627370496),(1152921504531350015/1152921504606846976)⟩
theorem trig2_0_8 : Mem S2_0_8 (Real.sin ((-3/262144):ℝ)) ∧ Mem C2_0_8 (Real.cos ((-3/262144):ℝ)) := by
  have h := double_sound trig2_0_7
    (show Includes (doubleSin S2_0_7 C2_0_7) S2_0_8 from by decide +kernel)
    (show Includes (doubleCos S2_0_7 C2_0_7) C2_0_8 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S2_0_9 : Interval := ⟨(-26388279064339/1152921504606846976),(-26388279063309/1152921504606846976)⟩
def C2_0_9 : Interval := ⟨(2251799813095423/2251799813685248),(1152921504304858111/1152921504606846976)⟩
theorem trig2_0_9 : Mem S2_0_9 (Real.sin ((-3/131072):ℝ)) ∧ Mem C2_0_9 (Real.cos ((-3/131072):ℝ)) := by
  have h := double_sound trig2_0_8
    (show Includes (doubleSin S2_0_8 C2_0_8) S2_0_9 from by decide +kernel)
    (show Includes (doubleCos S2_0_8 C2_0_8) C2_0_9 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S2_0_10 : Interval := ⟨(-52776558114855/1152921504606846976),(-52776558112793/1152921504606846976)⟩
def C2_0_10 : Interval := ⟨(1125899905662975/1125899906842624),(1152921503398889471/1152921504606846976)⟩
theorem trig2_0_10 : Mem S2_0_10 (Real.sin ((-3/65536):ℝ)) ∧ Mem C2_0_10 (Real.cos ((-3/65536):ℝ)) := by
  have h := double_sound trig2_0_9
    (show Includes (doubleSin S2_0_9 C2_0_9) S2_0_10 from by decide +kernel)
    (show Includes (doubleCos S2_0_9 C2_0_9) C2_0_10 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S2_0_11 : Interval := ⟨(-105553116119119/1152921504606846976),(-105553116114993/1152921504606846976)⟩
def C2_0_11 : Interval := ⟨(576460749887503361/576460752303423488),(576460749887506433/576460752303423488)⟩
theorem trig2_0_11 : Mem S2_0_11 (Real.sin ((-3/32768):ℝ)) ∧ Mem C2_0_11 (Real.cos ((-3/32768):ℝ)) := by
  have h := double_sound trig2_0_10
    (show Includes (doubleSin S2_0_10 C2_0_10) S2_0_11 from by decide +kernel)
    (show Includes (doubleCos S2_0_10 C2_0_10) C2_0_11 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S2_0_12 : Interval := ⟨(-211106231353503/1152921504606846976),(-211106231345249/1152921504606846976)⟩
def C2_0_12 : Interval := ⟨(1152921485279490099/1152921504606846976),(288230371319875597/288230376151711744)⟩
theorem trig2_0_12 : Mem S2_0_12 (Real.sin ((-3/16384):ℝ)) ∧ Mem C2_0_12 (Real.cos ((-3/16384):ℝ)) := by
  have h := double_sound trig2_0_11
    (show Includes (doubleSin S2_0_11 C2_0_11) S2_0_12 from by decide +kernel)
    (show Includes (doubleCos S2_0_11 C2_0_11) C2_0_12 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S2_0_13 : Interval := ⟨(-211106227814561/576460752303423488),(-6597069618947/18014398509481984)⟩
def C2_0_13 : Interval := ⟨(1152921427297428313/1152921504606846976),(1152921427297452895/1152921504606846976)⟩
theorem trig2_0_13 : Mem S2_0_13 (Real.sin ((-3/8192):ℝ)) ∧ Mem C2_0_13 (Real.cos ((-3/8192):ℝ)) := by
  have h := double_sound trig2_0_12
    (show Includes (doubleSin S2_0_12 C2_0_12) S2_0_13 from by decide +kernel)
    (show Includes (doubleCos S2_0_12 C2_0_12) C2_0_13 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S2_0_14 : Interval := ⟨(-422212427317577/576460752303423488),(-844424854602107/1152921504606846976)⟩
def C2_0_14 : Interval := ⟨(1152921195369199089/1152921504606846976),(576460597684624133/576460752303423488)⟩
theorem trig2_0_14 : Mem S2_0_14 (Real.sin ((-3/4096):ℝ)) ∧ Mem C2_0_14 (Real.cos ((-3/4096):ℝ)) := by
  have h := double_sound trig2_0_13
    (show Includes (doubleSin S2_0_13 C2_0_13) S2_0_14 from by decide +kernel)
    (show Includes (doubleCos S2_0_13 C2_0_13) C2_0_14 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S2_0_15 : Interval := ⟨(-1688849256285585/1152921504606846976),(-844424628109709/576460752303423488)⟩
def C2_0_15 : Interval := ⟨(1152920267656454113/1152921504606846976),(288230066914138129/288230376151711744)⟩
theorem trig2_0_15 : Mem S2_0_15 (Real.sin ((-3/2048):ℝ)) ∧ Mem C2_0_15 (Real.cos ((-3/2048):ℝ)) := by
  have h := double_sound trig2_0_14
    (show Includes (doubleSin S2_0_14 C2_0_14) S2_0_15 from by decide +kernel)
    (show Includes (doubleCos S2_0_14 C2_0_14) C2_0_15 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S2_0_16 : Interval := ⟨(-3377694888694651/1152921504606846976),(-844423722140507/288230376151711744)⟩
def C2_0_16 : Interval := ⟨(1152916556807995325/1152921504606846976),(1152916556808192325/1152921504606846976)⟩
theorem trig2_0_16 : Mem S2_0_16 (Real.sin ((-3/1024):ℝ)) ∧ Mem C2_0_16 (Real.cos ((-3/1024):ℝ)) := by
  have h := double_sound trig2_0_15
    (show Includes (doubleSin S2_0_15 C2_0_15) S2_0_16 from by decide +kernel)
    (show Includes (doubleCos S2_0_15 C2_0_15) C2_0_16 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S2_1_0 : Interval := ⟨(-1/67108864),(-17179869183/1152921504606846976)⟩
def C2_1_0 : Interval := ⟨(1152921504606846847/1152921504606846976),(1152921504606846849/1152921504606846976)⟩
theorem trig2_1_0 : Mem S2_1_0 (Real.sin ((-1/67108864):ℝ)) ∧ Mem C2_1_0 (Real.cos ((-1/67108864):ℝ)) := by
  have h := taylor_sound (q:=(-1/67108864)) (S:=S2_1_0) (C:=C2_1_0) (by decide +kernel)
  norm_num at h ⊢
  exact h
def S2_1_1 : Interval := ⟨(-1/33554432),(-34359738365/1152921504606846976)⟩
def C2_1_1 : Interval := ⟨(576460752303423231/576460752303423488),(1152921504606846467/1152921504606846976)⟩
theorem trig2_1_1 : Mem S2_1_1 (Real.sin ((-1/33554432):ℝ)) ∧ Mem C2_1_1 (Real.cos ((-1/33554432):ℝ)) := by
  have h := double_sound trig2_1_0
    (show Includes (doubleSin S2_1_0 C2_1_0) S2_1_1 from by decide +kernel)
    (show Includes (doubleCos S2_1_0 C2_1_0) C2_1_1 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S2_1_2 : Interval := ⟨(-1/16777216),(-68719476729/1152921504606846976)⟩
def C2_1_2 : Interval := ⟨(288230376151711231/288230376151711744),(1152921504606844935/1152921504606846976)⟩
theorem trig2_1_2 : Mem S2_1_2 (Real.sin ((-1/16777216):ℝ)) ∧ Mem C2_1_2 (Real.cos ((-1/16777216):ℝ)) := by
  have h := double_sound trig2_1_1
    (show Includes (doubleSin S2_1_1 C2_1_1) S2_1_2 from by decide +kernel)
    (show Includes (doubleCos S2_1_1 C2_1_1) C2_1_2 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S2_1_3 : Interval := ⟨(-1/8388608),(-137438953457/1152921504606846976)⟩
def C2_1_3 : Interval := ⟨(144115188075854847/144115188075855872),(1152921504606838799/1152921504606846976)⟩
theorem trig2_1_3 : Mem S2_1_3 (Real.sin ((-1/8388608):ℝ)) ∧ Mem C2_1_3 (Real.cos ((-1/8388608):ℝ)) := by
  have h := double_sound trig2_1_2
    (show Includes (doubleSin S2_1_2 C2_1_2) S2_1_3 from by decide +kernel)
    (show Includes (doubleCos S2_1_2 C2_1_2) C2_1_3 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S2_1_4 : Interval := ⟨(-1/4194304),(-274877906913/1152921504606846976)⟩
def C2_1_4 : Interval := ⟨(72057594037925887/72057594037927936),(1152921504606814239/1152921504606846976)⟩
theorem trig2_1_4 : Mem S2_1_4 (Real.sin ((-1/4194304):ℝ)) ∧ Mem C2_1_4 (Real.cos ((-1/4194304):ℝ)) := by
  have h := double_sound trig2_1_3
    (show Includes (doubleSin S2_1_3 C2_1_3) S2_1_4 from by decide +kernel)
    (show Includes (doubleCos S2_1_3 C2_1_3) C2_1_4 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S2_1_5 : Interval := ⟨(-1/2097152),(-549755813825/1152921504606846976)⟩
def C2_1_5 : Interval := ⟨(36028797018959871/36028797018963968),(1152921504606715967/1152921504606846976)⟩
theorem trig2_1_5 : Mem S2_1_5 (Real.sin ((-1/2097152):ℝ)) ∧ Mem C2_1_5 (Real.cos ((-1/2097152):ℝ)) := by
  have h := double_sound trig2_1_4
    (show Includes (doubleSin S2_1_4 C2_1_4) S2_1_5 from by decide +kernel)
    (show Includes (doubleCos S2_1_4 C2_1_4) C2_1_5 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S2_1_6 : Interval := ⟨(-1/1048576),(-1099511627649/1152921504606846976)⟩
def C2_1_6 : Interval := ⟨(18014398509473791/18014398509481984),(1152921504606322815/1152921504606846976)⟩
theorem trig2_1_6 : Mem S2_1_6 (Real.sin ((-1/1048576):ℝ)) ∧ Mem C2_1_6 (Real.cos ((-1/1048576):ℝ)) := by
  have h := double_sound trig2_1_5
    (show Includes (doubleSin S2_1_5 C2_1_5) S2_1_6 from by decide +kernel)
    (show Includes (doubleCos S2_1_5 C2_1_5) C2_1_6 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S2_1_7 : Interval := ⟨(-1/524288),(-8589934591/4503599627370496)⟩
def C2_1_7 : Interval := ⟨(9007199254724607/9007199254740992),(1152921504604750079/1152921504606846976)⟩
theorem trig2_1_7 : Mem S2_1_7 (Real.sin ((-1/524288):ℝ)) ∧ Mem C2_1_7 (Real.cos ((-1/524288):ℝ)) := by
  have h := double_sound trig2_1_6
    (show Includes (doubleSin S2_1_6 C2_1_6) S2_1_7 from by decide +kernel)
    (show Includes (doubleCos S2_1_6 C2_1_6) C2_1_7 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S2_1_8 : Interval := ⟨(-4398046511097/1152921504606846976),(-4398046510583/1152921504606846976)⟩
def C2_1_8 : Interval := ⟨(4503599627337727/4503599627370496),(1152921504598458879/1152921504606846976)⟩
theorem trig2_1_8 : Mem S2_1_8 (Real.sin ((-1/262144):ℝ)) ∧ Mem C2_1_8 (Real.cos ((-1/262144):ℝ)) := by
  have h := double_sound trig2_1_7
    (show Includes (doubleSin S2_1_7 C2_1_7) S2_1_8 from by decide +kernel)
    (show Includes (doubleCos S2_1_7 C2_1_7) C2_1_8 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S2_1_9 : Interval := ⟨(-8796093022131/1152921504606846976),(-8796093021101/1152921504606846976)⟩
def C2_1_9 : Interval := ⟨(2251799813619711/2251799813685248),(1152921504573293567/1152921504606846976)⟩
theorem trig2_1_9 : Mem S2_1_9 (Real.sin ((-1/131072):ℝ)) ∧ Mem C2_1_9 (Real.cos ((-1/131072):ℝ)) := by
  have h := double_sound trig2_1_8
    (show Includes (doubleSin S2_1_8 C2_1_8) S2_1_9 from by decide +kernel)
    (show Includes (doubleCos S2_1_8 C2_1_8) C2_1_9 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S2_1_10 : Interval := ⟨(-17592186043751/1152921504606846976),(-17592186041689/1152921504606846976)⟩
def C2_1_10 : Interval := ⟨(1125899906711551/1125899906842624),(1152921504472631295/1152921504606846976)⟩
theorem trig2_1_10 : Mem S2_1_10 (Real.sin ((-1/65536):ℝ)) ∧ Mem C2_1_10 (Real.cos ((-1/65536):ℝ)) := by
  have h := double_sound trig2_1_9
    (show Includes (doubleSin S2_1_9 C2_1_9) S2_1_10 from by decide +kernel)
    (show Includes (doubleCos S2_1_9 C2_1_9) C2_1_10 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S2_1_11 : Interval := ⟨(-35184372083407/1152921504606846976),(-35184372079281/1152921504606846976)⟩
def C2_1_11 : Interval := ⟨(562949953159167/562949953421312),(1152921504069980159/1152921504606846976)⟩
theorem trig2_1_11 : Mem S2_1_11 (Real.sin ((-1/32768):ℝ)) ∧ Mem C2_1_11 (Real.cos ((-1/32768):ℝ)) := by
  have h := double_sound trig2_1_10
    (show Includes (doubleSin S2_1_10 C2_1_10) S2_1_11 from by decide +kernel)
    (show Includes (doubleCos S2_1_10 C2_1_10) C2_1_11 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S2_1_12 : Interval := ⟨(-70368744134047/1152921504606846976),(-70368744125793/1152921504606846976)⟩
def C2_1_12 : Interval := ⟨(281474976186367/281474976710656),(1152921502459371519/1152921504606846976)⟩
theorem trig2_1_12 : Mem S2_1_12 (Real.sin ((-1/16384):ℝ)) ∧ Mem C2_1_12 (Real.cos ((-1/16384):ℝ)) := by
  have h := double_sound trig2_1_11
    (show Includes (doubleSin S2_1_11 C2_1_11) S2_1_12 from by decide +kernel)
    (show Includes (doubleCos S2_1_11 C2_1_11) C2_1_12 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S2_1_13 : Interval := ⟨(-2199023250093/18014398509481984),(-140737487989441/1152921504606846976)⟩
def C2_1_13 : Interval := ⟨(1152921496016904201/1152921504606846976),(1152921496016928777/1152921504606846976)⟩
theorem trig2_1_13 : Mem S2_1_13 (Real.sin ((-1/8192):ℝ)) ∧ Mem C2_1_13 (Real.cos ((-1/8192):ℝ)) := by
  have h := double_sound trig2_1_12
    (show Includes (doubleSin S2_1_12 C2_1_12) S2_1_13 from by decide +kernel)
    (show Includes (doubleCos S2_1_12 C2_1_12) C2_1_13 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S2_1_14 : Interval := ⟨(-281474973914757/1152921504606846976),(-2199023233451/9007199254740992)⟩
def C2_1_14 : Interval := ⟨(1152921470247092391/1152921504606846976),(288230367561785387/288230376151711744)⟩
theorem trig2_1_14 : Mem S2_1_14 (Real.sin ((-1/4096):ℝ)) ∧ Mem C2_1_14 (Real.cos ((-1/4096):ℝ)) := by
  have h := double_sound trig2_1_13
    (show Includes (doubleSin S2_1_13 C2_1_13) S2_1_14 from by decide +kernel)
    (show Includes (doubleCos S2_1_13 C2_1_13) C2_1_14 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S2_1_15 : Interval := ⟨(-562949931052315/1152921504606846976),(-70368741373279/144115188075855872)⟩
def C2_1_15 : Interval := ⟨(1152921367167863459/1152921504606846976),(576460683583980895/576460752303423488)⟩
theorem trig2_1_15 : Mem S2_1_15 (Real.sin ((-1/2048):ℝ)) ∧ Mem C2_1_15 (Real.cos ((-1/2048):ℝ)) := by
  have h := double_sound trig2_1_14
    (show Includes (doubleSin S2_1_14 C2_1_14) S2_1_15 from by decide +kernel)
    (show Includes (doubleCos S2_1_14 C2_1_14) C2_1_15 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S2_1_16 : Interval := ⟨(-1125899727886975/1152921504606846976),(-140737465969339/144115188075855872)⟩
def C2_1_16 : Interval := ⟨(576460477425505613/576460752303423488),(576460477425603977/576460752303423488)⟩
theorem trig2_1_16 : Mem S2_1_16 (Real.sin ((-1/1024):ℝ)) ∧ Mem C2_1_16 (Real.cos ((-1/1024):ℝ)) := by
  have h := double_sound trig2_1_15
    (show Includes (doubleSin S2_1_15 C2_1_15) S2_1_16 from by decide +kernel)
    (show Includes (doubleCos S2_1_15 C2_1_15) C2_1_16 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_0_0 : Interval := ⟨(-27650999441045/576460752303423488),(-55301998882089/1152921504606846976)⟩
def C3_0_0 : Interval := ⟨(1152921503280515967/1152921504606846976),(1152921503280515969/1152921504606846976)⟩
theorem trig3_0_0 : Mem S3_0_0 (Real.sin ((-3219/67108864):ℝ)) ∧ Mem C3_0_0 (Real.cos ((-3219/67108864):ℝ)) := by
  have h := taylor_sound (q:=(-3219/67108864)) (S:=S3_0_0) (C:=C3_0_0) (by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_0_1 : Interval := ⟨(-110603997636941/1152921504606846976),(-55301998818469/576460752303423488)⟩
def C3_0_1 : Interval := ⟨(1152921499301522945/1152921504606846976),(576460749650761475/576460752303423488)⟩
theorem trig3_0_1 : Mem S3_0_1 (Real.sin ((-3219/33554432):ℝ)) ∧ Mem C3_0_1 (Real.cos ((-3219/33554432):ℝ)) := by
  have h := double_sound trig3_0_0
    (show Includes (doubleSin S3_0_0 C3_0_0) S3_0_1 from by decide +kernel)
    (show Includes (doubleCos S3_0_0 C3_0_0) C3_0_1 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_0_2 : Interval := ⟨(-55301998563991/288230376151711744),(-221207994255957/1152921504606846976)⟩
def C3_0_2 : Interval := ⟨(576460741692775453/576460752303423488),(1152921483385550917/1152921504606846976)⟩
theorem trig3_0_2 : Mem S3_0_2 (Real.sin ((-3219/16777216):ℝ)) ∧ Mem C3_0_2 (Real.cos ((-3219/16777216):ℝ)) := by
  have h := double_sound trig3_0_1
    (show Includes (doubleSin S3_0_1 C3_0_1) S3_0_2 from by decide +kernel)
    (show Includes (doubleCos S3_0_1 C3_0_1) C3_0_2 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_0_3 : Interval := ⟨(-442415980368581/1152921504606846976),(-221207990184283/576460752303423488)⟩
def C3_0_3 : Interval := ⟨(1152921419721663491/1152921504606846976),(576460709860831757/576460752303423488)⟩
theorem trig3_0_3 : Mem S3_0_3 (Real.sin ((-3219/8388608):ℝ)) ∧ Mem C3_0_3 (Real.cos ((-3219/8388608):ℝ)) := by
  have h := double_sound trig3_0_2
    (show Includes (doubleSin S3_0_2 C3_0_2) S3_0_3 from by decide +kernel)
    (show Includes (doubleCos S3_0_2 C3_0_2) C3_0_3 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_0_4 : Interval := ⟨(-884831895590383/1152921504606846976),(-55301993474397/72057594037927936)⟩
def C3_0_4 : Interval := ⟨(288230291266531391/288230376151711744),(1152921165066125611/1152921504606846976)⟩
theorem trig3_0_4 : Mem S3_0_4 (Real.sin ((-3219/4194304):ℝ)) ∧ Mem C3_0_4 (Real.cos ((-3219/4194304):ℝ)) := by
  have h := double_sound trig3_0_3
    (show Includes (doubleSin S3_0_3 C3_0_3) S3_0_4 from by decide +kernel)
    (show Includes (doubleCos S3_0_3 C3_0_3) C3_0_4 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_0_5 : Interval := ⟨(-884831635003293/576460752303423488),(-1769663270006523/1152921504606846976)⟩
def C3_0_5 : Interval := ⟨(288230036611040345/288230376151711744),(1152920146444161475/1152921504606846976)⟩
theorem trig3_0_5 : Mem S3_0_5 (Real.sin ((-3219/2097152):ℝ)) ∧ Mem C3_0_5 (Real.cos ((-3219/2097152):ℝ)) := by
  have h := double_sound trig3_0_4
    (show Includes (doubleSin S3_0_4 C3_0_4) S3_0_5 from by decide +kernel)
    (show Includes (doubleCos S3_0_4 C3_0_4) C3_0_5 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_0_6 : Interval := ⟨(-3539322370621571/1152921504606846976),(-884830592655361/288230376151711744)⟩
def C3_0_6 : Interval := ⟨(576458035979652297/576460752303423488),(1152916071959304785/1152921504606846976)⟩
theorem trig3_0_6 : Mem S3_0_6 (Real.sin ((-3219/1048576):ℝ)) ∧ Mem C3_0_6 (Real.cos ((-3219/1048576):ℝ)) := by
  have h := double_sound trig3_0_5
    (show Includes (doubleSin S3_0_5 C3_0_5) S3_0_6 from by decide +kernel)
    (show Includes (doubleCos S3_0_5 C3_0_5) C3_0_6 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_0_7 : Interval := ⟨(-3539305693084635/576460752303423488),(-3539305693084507/576460752303423488)⟩
def C3_0_7 : Interval := ⟨(576449887033937865/576460752303423488),(1152899774067876113/1152921504606846976)⟩
theorem trig3_0_7 : Mem S3_0_7 (Real.sin ((-3219/524288):ℝ)) ∧ Mem C3_0_7 (Real.cos ((-3219/524288):ℝ)) := by
  have h := double_sound trig3_0_6
    (show Includes (doubleSin S3_0_6 C3_0_6) S3_0_7 from by decide +kernel)
    (show Includes (doubleCos S3_0_6 C3_0_6) C3_0_7 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_0_8 : Interval := ⟨(-3539238983408403/288230376151711744),(-7078477966816547/576460752303423488)⟩
def C3_0_8 : Interval := ⟨(144104322908765903/144115188075855872),(576417291635063997/576460752303423488)⟩
theorem trig3_0_8 : Mem S3_0_8 (Real.sin ((-3219/262144):ℝ)) ∧ Mem C3_0_8 (Real.cos ((-3219/262144):ℝ)) := by
  have h := double_sound trig3_0_7
    (show Includes (doubleSin S3_0_7 C3_0_7) S3_0_8 from by decide +kernel)
    (show Includes (doubleCos S3_0_7 C3_0_7) C3_0_8 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_0_9 : Interval := ⟨(-7077944304495171/288230376151711744),(-7077944304494907/288230376151711744)⟩
def C3_0_9 : Interval := ⟨(576286916183178899/576460752303423488),(1152573832366359351/1152921504606846976)⟩
theorem trig3_0_9 : Mem S3_0_9 (Real.sin ((-3219/131072):ℝ)) ∧ Mem C3_0_9 (Real.cos ((-3219/131072):ℝ)) := by
  have h := double_sound trig3_0_8
    (show Includes (doubleSin S3_0_8 C3_0_8) S3_0_9 from by decide +kernel)
    (show Includes (doubleCos S3_0_8 C3_0_8) C3_0_9 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_0_10 : Interval := ⟨(-56606479172852423/1152921504606846976),(-28303239586425117/576460752303423488)⟩
def C3_0_10 : Interval := ⟨(143941378166413027/144115188075855872),(575765512665653687/576460752303423488)⟩
theorem trig3_0_10 : Mem S3_0_10 (Real.sin ((-3219/65536):ℝ)) ∧ Mem C3_0_10 (Real.cos ((-3219/65536):ℝ)) := by
  have h := double_sound trig3_0_9
    (show Includes (doubleSin S3_0_9 C3_0_9) S3_0_10 from by decide +kernel)
    (show Includes (doubleCos S3_0_9 C3_0_9) C3_0_10 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_0_11 : Interval := ⟨(-3533638063272693/36028797018963968),(-28269104506180373/288230376151711744)⟩
def C3_0_11 : Interval := ⟨(573681470737813771/576460752303423488),(573681470737817033/576460752303423488)⟩
theorem trig3_0_11 : Mem S3_0_11 (Real.sin ((-3219/32768):ℝ)) ∧ Mem C3_0_11 (Real.cos ((-3219/32768):ℝ)) := by
  have h := double_sound trig3_0_10
    (show Includes (doubleSin S3_0_10 C3_0_10) S3_0_11 from by decide +kernel)
    (show Includes (doubleCos S3_0_10 C3_0_10) C3_0_11 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_0_12 : Interval := ⟨(-225062488778228197/1152921504606846976),(-225062488778217593/1152921504606846976)⟩
def C3_0_12 : Interval := ⟨(565370425457913493/576460752303423488),(1130740850915840891/1152921504606846976)⟩
theorem trig3_0_12 : Mem S3_0_12 (Real.sin ((-3219/16384):ℝ)) ∧ Mem C3_0_12 (Real.cos ((-3219/16384):ℝ)) := by
  have h := double_sound trig3_0_11
    (show Includes (doubleSin S3_0_11 C3_0_11) S3_0_12 from by decide +kernel)
    (show Includes (doubleCos S3_0_11 C3_0_11) C3_0_12 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_0_13 : Interval := ⟨(-441465180506130517/1152921504606846976),(-13795786890815759/36028797018963968)⟩
def C3_0_13 : Interval := ⟨(1065052341523915737/1152921504606846976),(1065052341523947153/1152921504606846976)⟩
theorem trig3_0_13 : Mem S3_0_13 (Real.sin ((-3219/8192):ℝ)) ∧ Mem C3_0_13 (Real.cos ((-3219/8192):ℝ)) := by
  have h := double_sound trig3_0_12
    (show Includes (doubleSin S3_0_12 C3_0_12) S3_0_13 from by decide +kernel)
    (show Includes (doubleCos S3_0_12 C3_0_12) C3_0_13 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_0_14 : Interval := ⟨(-815638397446115203/1152921504606846976),(-815638397446042683/1152921504606846976)⟩
def C3_0_14 : Interval := ⟨(814838634575232005/1152921504606846976),(101854829321913767/144115188075855872)⟩
theorem trig3_0_14 : Mem S3_0_14 (Real.sin ((-3219/4096):ℝ)) ∧ Mem C3_0_14 (Real.cos ((-3219/4096):ℝ)) := by
  have h := double_sound trig3_0_13
    (show Includes (doubleSin S3_0_13 C3_0_13) S3_0_14 from by decide +kernel)
    (show Includes (doubleCos S3_0_13 C3_0_13) C3_0_14 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_0_15 : Interval := ⟨(-1152920949824461497/1152921504606846976),(-1152920949824248439/1152921504606846976)⟩
def C3_0_15 : Interval := ⟨(-141379420327837/144115188075855872),(-565517681204823/576460752303423488)⟩
theorem trig3_0_15 : Mem S3_0_15 (Real.sin ((-3219/2048):ℝ)) ∧ Mem C3_0_15 (Real.cos ((-3219/2048):ℝ)) := by
  have h := double_sound trig3_0_14
    (show Includes (doubleSin S3_0_14 C3_0_14) S3_0_15 from by decide +kernel)
    (show Includes (doubleCos S3_0_14 C3_0_14) C3_0_15 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_0_16 : Interval := ⟨(2262069636317195/1152921504606846976),(1131034818371857/576460752303423488)⟩
def C3_0_16 : Interval := ⟨(-288229821369413425/288230376151711744),(-1152919285477227165/1152921504606846976)⟩
theorem trig3_0_16 : Mem S3_0_16 (Real.sin ((-3219/1024):ℝ)) ∧ Mem C3_0_16 (Real.cos ((-3219/1024):ℝ)) := by
  have h := double_sound trig3_0_15
    (show Includes (doubleSin S3_0_15 C3_0_15) S3_0_16 from by decide +kernel)
    (show Includes (doubleCos S3_0_15 C3_0_15) C3_0_16 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_1_0 : Interval := ⟨(-55267639143761/1152921504606846976),(-3454227446485/72057594037927936)⟩
def C3_1_0 : Interval := ⟨(1152921503282163583/1152921504606846976),(1152921503282163585/1152921504606846976)⟩
theorem trig3_1_0 : Mem S3_1_0 (Real.sin ((-3217/67108864):ℝ)) ∧ Mem C3_1_0 (Real.cos ((-3217/67108864):ℝ)) := by
  have h := taylor_sound (q:=(-3217/67108864)) (S:=S3_1_0) (C:=C3_1_0) (by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_1_1 : Interval := ⟨(-13816909770065/144115188075855872),(-110535278160517/1152921504606846976)⟩
def C3_1_1 : Interval := ⟨(1152921499308113409/1152921504606846976),(576460749654056707/576460752303423488)⟩
theorem trig3_1_1 : Mem S3_1_1 (Real.sin ((-3217/33554432):ℝ)) ∧ Mem C3_1_1 (Real.cos ((-3217/33554432):ℝ)) := by
  have h := double_sound trig3_1_0
    (show Includes (doubleSin S3_1_0 C3_1_0) S3_1_1 from by decide +kernel)
    (show Includes (doubleCos S3_1_0 C3_1_0) C3_1_1 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_1_2 : Interval := ⟨(-110535277652509/576460752303423488),(-221070555305011/1152921504606846976)⟩
def C3_1_2 : Interval := ⟨(576460741705956381/576460752303423488),(1152921483411912773/1152921504606846976)⟩
theorem trig3_1_2 : Mem S3_1_2 (Real.sin ((-3217/16777216):ℝ)) ∧ Mem C3_1_2 (Real.cos ((-3217/16777216):ℝ)) := by
  have h := double_sound trig3_1_1
    (show Includes (doubleSin S3_1_1 C3_1_1) S3_1_2 from by decide +kernel)
    (show Includes (doubleCos S3_1_1 C3_1_1) C3_1_2 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_1_3 : Interval := ⟨(-221070551240929/576460752303423488),(-442141102481843/1152921504606846976)⟩
def C3_1_3 : Interval := ⟨(1152921419827110913/1152921504606846976),(144115177478388867/144115188075855872)⟩
theorem trig3_1_3 : Mem S3_1_3 (Real.sin ((-3217/8388608):ℝ)) ∧ Mem C3_1_3 (Real.cos ((-3217/8388608):ℝ)) := by
  have h := double_sound trig3_1_2
    (show Includes (doubleSin S3_1_2 C3_1_2) S3_1_3 from by decide +kernel)
    (show Includes (doubleCos S3_1_2 C3_1_2) C3_1_3 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_1_4 : Interval := ⟨(-884282139938291/1152921504606846976),(-221070534984565/288230376151711744)⟩
def C3_1_4 : Interval := ⟨(288230291371978805/288230376151711744),(1152921165487915267/1152921504606846976)⟩
theorem trig3_1_4 : Mem S3_1_4 (Real.sin ((-3217/4194304):ℝ)) ∧ Mem C3_1_4 (Real.cos ((-3217/4194304):ℝ)) := by
  have h := double_sound trig3_1_3
    (show Includes (doubleSin S3_1_3 C3_1_3) S3_1_4 from by decide +kernel)
    (show Includes (doubleCos S3_1_3 C3_1_3) C3_1_4 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_1_5 : Interval := ⟨(-110535234979577/72057594037927936),(-1768563759673169/1152921504606846976)⟩
def C3_1_5 : Interval := ⟨(1152920148131319505/1152921504606846976),(72057509258207475/72057594037927936)⟩
theorem trig3_1_5 : Mem S3_1_5 (Real.sin ((-3217/2097152):ℝ)) ∧ Mem C3_1_5 (Real.cos ((-3217/2097152):ℝ)) := by
  have h := double_sound trig3_1_4
    (show Includes (doubleSin S3_1_4 C3_1_4) S3_1_5 from by decide +kernel)
    (show Includes (doubleCos S3_1_4 C3_1_4) C3_1_5 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_1_6 : Interval := ⟨(-3537123357721499/1152921504606846976),(-3537123357721371/1152921504606846976)⟩
def C3_1_6 : Interval := ⟨(1152916078707929143/1152921504606846976),(576458039353964667/576460752303423488)⟩
theorem trig3_1_6 : Mem S3_1_6 (Real.sin ((-3217/1048576):ℝ)) ∧ Mem C3_1_6 (Real.cos ((-3217/1048576):ℝ)) := by
  have h := double_sound trig3_1_5
    (show Includes (doubleSin S3_1_5 C3_1_5) S3_1_6 from by decide +kernel)
    (show Includes (doubleCos S3_1_5 C3_1_5) C3_1_6 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_1_7 : Interval := ⟨(-1768553355625507/288230376151711744),(-3537106711250885/576460752303423488)⟩
def C3_1_7 : Interval := ⟨(144112475132780849/144115188075855872),(144112475132780897/144115188075855872)⟩
theorem trig3_1_7 : Mem S3_1_7 (Real.sin ((-3217/524288):ℝ)) ∧ Mem C3_1_7 (Real.cos ((-3217/524288):ℝ)) := by
  have h := double_sound trig3_1_6
    (show Includes (doubleSin S3_1_6 C3_1_6) S3_1_7 from by decide +kernel)
    (show Includes (doubleCos S3_1_6 C3_1_6) C3_1_7 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_1_8 : Interval := ⟨(-7074080251678247/576460752303423488),(-3537040125838993/288230376151711744)⟩
def C3_1_8 : Interval := ⟨(576417345622788763/576460752303423488),(576417345622789149/576460752303423488)⟩
theorem trig3_1_8 : Mem S3_1_8 (Real.sin ((-3217/262144):ℝ)) ∧ Mem C3_1_8 (Real.cos ((-3217/262144):ℝ)) := by
  have h := double_sound trig3_1_7
    (show Includes (doubleSin S3_1_7 C3_1_7) S3_1_8 from by decide +kernel)
    (show Includes (doubleCos S3_1_7 C3_1_7) C3_1_8 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_1_9 : Interval := ⟨(-14147095166849059/576460752303423488),(-14147095166848527/576460752303423488)⟩
def C3_1_9 : Interval := ⟨(1152574264235617137/1152921504606846976),(576287132117809347/576460752303423488)⟩
theorem trig3_1_9 : Mem S3_1_9 (Real.sin ((-3217/131072):ℝ)) ∧ Mem C3_1_9 (Real.cos ((-3217/131072):ℝ)) := by
  have h := double_sound trig3_1_8
    (show Includes (doubleSin S3_1_8 C3_1_8) S3_1_9 from by decide +kernel)
    (show Includes (doubleCos S3_1_8 C3_1_8) C3_1_9 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_1_10 : Interval := ⟨(-14142834302117237/288230376151711744),(-7071417151058343/144115188075855872)⟩
def C3_1_10 : Interval := ⟨(1151532752287731193/1152921504606846976),(1151532752287734359/1152921504606846976)⟩
theorem trig3_1_10 : Mem S3_1_10 (Real.sin ((-3217/65536):ℝ)) ∧ Mem C3_1_10 (Real.cos ((-3217/65536):ℝ)) := by
  have h := double_sound trig3_1_9
    (show Includes (doubleSin S3_1_9 C3_1_9) S3_1_10 from by decide +kernel)
    (show Includes (doubleCos S3_1_9 C3_1_9) C3_1_10 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_1_11 : Interval := ⟨(-113006388337738855/1152921504606846976),(-113006388337734141/1152921504606846976)⟩
def C3_1_11 : Interval := ⟨(573684920487667939/576460752303423488),(1147369840975342419/1152921504606846976)⟩
theorem trig3_1_11 : Mem S3_1_11 (Real.sin ((-3217/32768):ℝ)) ∧ Mem C3_1_11 (Real.cos ((-3217/32768):ℝ)) := by
  have h := double_sound trig3_1_10
    (show Includes (doubleSin S3_1_10 C3_1_10) S3_1_11 from by decide +kernel)
    (show Includes (doubleCos S3_1_10 C3_1_10) C3_1_11 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_1_12 : Interval := ⟨(-224924457212694781/1152921504606846976),(-224924457212684115/1152921504606846976)⟩
def C3_1_12 : Interval := ⟨(70673019746213809/72057594037927936),(141346039492429361/144115188075855872)⟩
theorem trig3_1_12 : Mem S3_1_12 (Real.sin ((-3217/16384):ℝ)) ∧ Mem C3_1_12 (Real.cos ((-3217/16384):ℝ)) := by
  have h := double_sound trig3_1_11
    (show Includes (doubleSin S3_1_11 C3_1_11) S3_1_12 from by decide +kernel)
    (show Includes (doubleCos S3_1_11 C3_1_11) C3_1_12 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_1_13 : Interval := ⟨(-220602572403852355/576460752303423488),(-441205144807678347/1152921504606846976)⟩
def C3_1_13 : Interval := ⟨(66572505585431185/72057594037927936),(1065160089366930475/1152921504606846976)⟩
theorem trig3_1_13 : Mem S3_1_13 (Real.sin ((-3217/8192):ℝ)) ∧ Mem C3_1_13 (Real.cos ((-3217/8192):ℝ)) := by
  have h := double_sound trig3_1_12
    (show Includes (doubleSin S3_1_12 C3_1_12) S3_1_13 from by decide +kernel)
    (show Includes (doubleCos S3_1_12 C3_1_12) C3_1_13 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_1_14 : Interval := ⟨(-815240429803209145/1152921504606846976),(-815240429803136311/1152921504606846976)⟩
def C3_1_14 : Interval := ⟨(407618399179667183/576460752303423488),(815236798359412777/1152921504606846976)⟩
theorem trig3_1_14 : Mem S3_1_14 (Real.sin ((-3217/4096):ℝ)) ∧ Mem C3_1_14 (Real.cos ((-3217/4096):ℝ)) := by
  have h := double_sound trig3_1_13
    (show Includes (doubleSin S3_1_13 C3_1_13) S3_1_14 from by decide +kernel)
    (show Includes (doubleCos S3_1_13 C3_1_13) C3_1_14 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_1_15 : Interval := ⟨(-1152921504595505153/1152921504606846976),(-1152921504595291259/1152921504606846976)⟩
def C3_1_15 : Interval := ⟨(-5135637178697/1152921504606846976),(-5135636964803/1152921504606846976)⟩
theorem trig3_1_15 : Mem S3_1_15 (Real.sin ((-3217/2048):ℝ)) ∧ Mem C3_1_15 (Real.cos ((-3217/2048):ℝ)) := by
  have h := double_sound trig3_1_14
    (show Includes (doubleSin S3_1_14 C3_1_14) S3_1_15 from by decide +kernel)
    (show Includes (doubleCos S3_1_14 C3_1_14) C3_1_15 from by decide +kernel)
  norm_num at h ⊢
  exact h
def S3_1_16 : Interval := ⟨(10271273929503/1152921504606846976),(10271274357293/1152921504606846976)⟩
def C3_1_16 : Interval := ⟨(-1152921504561286867/1152921504606846976),(-288230376140214769/288230376151711744)⟩
theorem trig3_1_16 : Mem S3_1_16 (Real.sin ((-3217/1024):ℝ)) ∧ Mem C3_1_16 (Real.cos ((-3217/1024):ℝ)) := by
  have h := double_sound trig3_1_15
    (show Includes (doubleSin S3_1_15 C3_1_15) S3_1_16 from by decide +kernel)
    (show Includes (doubleCos S3_1_15 C3_1_15) C3_1_16 from by decide +kernel)
  norm_num at h ⊢
  exact h
def rootCenters : Fin 4 → ℚ := ![(-1073/512),(-559/512),(-1/512),(-1609/512)]
def center (k : Fin 4) (b : Bool) : ℚ := rootCenters k + if b then 1/1024 else -1/1024
def sinInterval (k : Fin 4) (b : Bool) : Interval :=
  if b then ![S0_1_16,S1_1_16,S2_1_16,S3_1_16] k else ![S0_0_16,S1_0_16,S2_0_16,S3_0_16] k
def cosInterval (k : Fin 4) (b : Bool) : Interval :=
  if b then ![C0_1_16,C1_1_16,C2_1_16,C3_1_16] k else ![C0_0_16,C1_0_16,C2_0_16,C3_0_16] k
theorem center_trig (k : Fin 4) (b : Bool) :
    Mem (sinInterval k b) (Real.sin (center k b:ℝ)) ∧
    Mem (cosInterval k b) (Real.cos (center k b:ℝ)) := by
  fin_cases k <;> cases b
  · have ht := trig0_0_16
    norm_num [center,rootCenters,sinInterval,cosInterval] at ht ⊢
    exact ht
  · have ht := trig0_1_16
    norm_num [center,rootCenters,sinInterval,cosInterval] at ht ⊢
    exact ht
  · have ht := trig1_0_16
    norm_num [center,rootCenters,sinInterval,cosInterval] at ht ⊢
    exact ht
  · have ht := trig1_1_16
    norm_num [center,rootCenters,sinInterval,cosInterval] at ht ⊢
    exact ht
  · have ht := trig2_0_16
    norm_num [center,rootCenters,sinInterval,cosInterval] at ht ⊢
    exact ht
  · have ht := trig2_1_16
    norm_num [center,rootCenters,sinInterval,cosInterval] at ht ⊢
    exact ht
  · have ht := trig3_0_16
    norm_num [center,rootCenters,sinInterval,cosInterval] at ht ⊢
    exact ht
  · have ht := trig3_1_16
    norm_num [center,rootCenters,sinInterval,cosInterval] at ht ⊢
    exact ht
def Cube (θ : Fin 4 → ℝ) : Prop := ∀ k, |θ k-(rootCenters k:ℝ)|≤1/512
def HalfCube (b : Fin 4 → Bool) (θ : Fin 4 → ℝ) : Prop := ∀ k, |θ k-(center k (b k):ℝ)|≤1/1024
theorem half_cubes_cover {θ : Fin 4 → ℝ} (h : Cube θ) : ∃ b, HalfCube b θ := by
  classical
  refine ⟨fun k => decide ((rootCenters k:ℝ)≤θ k),?_⟩
  intro k
  have hk := abs_le.mp (h k)
  by_cases hx : (rootCenters k:ℝ)≤θ k
  · simp only [center,decide_eq_true hx,Bool.true_eq_false,↓reduceIte,Rat.cast_add,Rat.cast_div,Rat.cast_one,Rat.cast_ofNat]
    apply abs_le.mpr;constructor <;> linarith
  · simp only [center,decide_eq_false hx,Bool.false_eq_true,↓reduceIte,Rat.cast_add,Rat.cast_neg,Rat.cast_div,Rat.cast_one,Rat.cast_ofNat]
    have hn : θ k<(rootCenters k:ℝ) := lt_of_not_ge hx
    apply abs_le.mpr;constructor <;> linarith
theorem cube_radius_positive : (0:ℝ)<1/512 := by norm_num
#print axioms center_trig
#print axioms half_cubes_cover
end
end ShoulderRoot0Centers20261003

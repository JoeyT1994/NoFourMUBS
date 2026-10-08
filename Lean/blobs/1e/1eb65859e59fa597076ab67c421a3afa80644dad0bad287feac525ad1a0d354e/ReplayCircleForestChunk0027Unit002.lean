import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_174678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
def hex_174678 : String := "440840420A434441420A0642080641420A060A4408410A074243440841400A0808084344414042080505054140420A43064405410605424344050A0843050540420A43060542430A050544084140420843440507070808"
theorem cover_174678 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174678 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 87) (hex := hex_174678)
  decide +kernel
#print axioms cover_174678

def state_174765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
def hex_174765 : String := "43440506444142090505414244400943050940430609434144064240064306410A06060641440942400943410A44094042430609060A4109090944054240430609434405414042430609050505440541090505064244054043060943060505"
theorem cover_174765 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174765 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 18) (count := 95) (hex := hex_174765)
  decide +kernel
#print axioms cover_174765

def state_174860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
def hex_174860 : String := "4243444340410707070843444041064243064407060641060740410642430644060A06414243064406090642430744070706444041420806420809414208054208434405400605054041420A44060A424443400A410A420844080A080A444306424009410A0906430A0A41424443400A08080A44430640060543064041060A41420A05420A05424443404108080708430A0A4443404241064406430606064207054042084105440542400605054208054340420A0642410944070941054405064042410A0A4144060A4442400A430505060A424144080A44080A4105440540420A050544084408404142084344090A0742430A064344090707414208434408404142084305054208430A05414208054208050842084344084042430A07074208430505084344054243064406400641064405424306400605050644054244054041434405070507410543440542400705050505"
theorem cover_174860 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174860 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 18) (count := 339) (hex := hex_174860)
  decide +kernel
#print axioms cover_174860

def state_175199 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
def hex_175199 : String := "41424344054041434405074442410505054241440707444007050941440707440509434405094405424440410505050944050941430544054209050544400805404144424341400805050543054140050505424341444043070843070640430742064107440706074440080540434209090809414408060643414440424307410705430505054042430741074442070742070743074107440542070742070744054042434405094405414209430740440509054208054305440541424305050505054144404208430A0A054042434144420607064408060643410A440A4240430A06060A410A440A0A42060A44054042434405060643440541424043440541050506050505440541420605050544054243440840084105050843440540410505050541440542430606434041050505404106050505434405404142430544054107050505054440414243050805054142050505404142440543414405404243070A050705410A4405400505440543050A054142440543050A050542434405404344074109074441054207054142444008050944050942440840430708074405404307424105050505430544050944054044054142080542084344054042080505050543440540050505"
theorem cover_175199 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175199 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 22) (count := 457) (hex := hex_175199)
  decide +kernel
#print axioms cover_175199

def state_175660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 3)))
def hex_175660 : String := "44414344400A07084440420A414408080A42410909410844430640060908400A09430A44400A420A4441430640060909090909"
theorem cover_175660 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175660 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_175660)
  decide +kernel
#print axioms cover_175660

def state_175715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 12)))
def hex_175715 : String := "42430A0A434144420543084005410544420506050544420A43060A0A410544420A0705"
theorem cover_175715 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175715 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 35) (hex := hex_175715)
  decide +kernel
#print axioms cover_175715

def state_175751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 7 else 12)))
def hex_175751 : String := "434144400543094205410544400506050544400A43090A0A410506"
theorem cover_175751 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175751 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 27) (hex := hex_175751)
  decide +kernel
#print axioms cover_175751


end Mub6.Numerical.CircleFullPrototype.Forest

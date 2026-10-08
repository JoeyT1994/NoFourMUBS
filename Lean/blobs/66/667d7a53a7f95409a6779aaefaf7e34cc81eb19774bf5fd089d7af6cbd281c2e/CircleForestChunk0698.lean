import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1468402 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 17 else 22)))
def hex_1468402 : String := "4008424441434005420544070507050544414340064244410605084441060A08064340054205050508"
theorem cover_1468402 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468402 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_1468402)
  decide +kernel
#print axioms cover_1468402

def state_1468443 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 23)))
def hex_1468443 : String := "08"
theorem cover_1468443 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468443 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1468443)
  decide +kernel
#print axioms cover_1468443

def state_1468444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 8 else 11)))
def hex_1468444 : String := "444143400842440A07074006420606430A4008424441430A06430A4005420508080A08"
theorem cover_1468444 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468444 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 35) (hex := hex_1468444)
  decide +kernel
#print axioms cover_1468444

def state_1468479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 9 else 11)))
def hex_1468479 : String := "40064244410643400642080806084441060806"
theorem cover_1468479 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468479 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_1468479)
  decide +kernel
#print axioms cover_1468479

def state_1468498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 11)))
def hex_1468498 : String := "4340084244414340420505420544414309050505400542050505054441430A4008424405050A0A0840084244070544434108050505"
theorem cover_1468498 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468498 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 53) (hex := hex_1468498)
  decide +kernel
#print axioms cover_1468498

def state_1468551 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 2)))
def hex_1468551 : String := "4407400742074344074106400608440706"
theorem cover_1468551 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468551 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_1468551)
  decide +kernel
#print axioms cover_1468551

def state_1468569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
def hex_1468569 : String := "41424344410905050943440609064243054407054308440605"
theorem cover_1468569 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468569 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 25) (hex := hex_1468569)
  decide +kernel
#print axioms cover_1468569

def state_1468596 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
def hex_1468596 : String := "4344404144420906050541440809440805400541090544404106094143440842400908080943080840094143090909"
theorem cover_1468596 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468596 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_1468596)
  decide +kernel
#print axioms cover_1468596
end Mub6.Numerical.CircleFullD0.Forest

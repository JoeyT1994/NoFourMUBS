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
def state_1553007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 105 else (if j.val < 4 then 41 else 87)))
def hex_1553007 : String := "41430506434044420805084442890505400644420643050606"
theorem cover_1553007 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553007 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1553007)
  decide +kernel
#print axioms cover_1553007

def state_1553034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 58) else (if j.val < 3 then 53 else (if j.val < 4 then 20 else 42)))
def hex_1553034 : String := "4305404244410509080542444105430540424409050542440505050505"
theorem cover_1553034 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553034 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 29) (hex := hex_1553034)
  decide +kernel
#print axioms cover_1553034

def state_1553063 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 59) else (if j.val < 3 then 53 else (if j.val < 4 then 20 else 42)))
def hex_1553063 : String := "4309400942444143094009424407430907090941430540424409080942444305410507050543094009424409090909"
theorem cover_1553063 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553063 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 47) (hex := hex_1553063)
  decide +kernel
#print axioms cover_1553063

def state_1553110 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 53 else (if j.val < 4 then 20 else 43)))
def hex_1553110 : String := "4143050543094044424108090942080544424143050543094009444243094105090942430508054105094241054305400844050505"
theorem cover_1553110 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553110 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 53) (hex := hex_1553110)
  decide +kernel
#print axioms cover_1553110

def state_1553165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 20)))
def hex_1553165 : String := "404206430806424341440A064407400642060A4106074341440A0644404207070A4008420A0A41080A"
theorem cover_1553165 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553165 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_1553165)
  decide +kernel
#print axioms cover_1553165

def state_1553206 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 20)))
def hex_1553206 : String := "400742434144074007420707070743414407404207074243410A070743410A44070A070707"
theorem cover_1553206 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553206 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 37) (hex := hex_1553206)
  decide +kernel
#print axioms cover_1553206

def state_1553244 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 21)))
def hex_1553244 : String := "06"
theorem cover_1553244 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553244 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1553244)
  decide +kernel
#print axioms cover_1553244

def state_1553246 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 21)))
def hex_1553246 : String := "42064344080606"
theorem cover_1553246 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553246 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1553246)
  decide +kernel
#print axioms cover_1553246
end Mub6.Numerical.CircleFullD0.Forest

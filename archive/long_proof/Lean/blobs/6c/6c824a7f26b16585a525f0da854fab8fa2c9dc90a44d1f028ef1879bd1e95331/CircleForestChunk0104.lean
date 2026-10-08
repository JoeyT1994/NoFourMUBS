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
def state_46144 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 4)))
def hex_46144 : String := "440A430A424144400A430A09400A430A44414209050A41054240050905440A0A0A"
theorem cover_46144 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46144 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 33) (hex := hex_46144)
  decide +kernel
#print axioms cover_46144

def state_46178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 4)))
def hex_46178 : String := "44074307424044074107430744074005070707"
theorem cover_46178 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46178 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_46178)
  decide +kernel
#print axioms cover_46178

def state_46198 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 8)))
def hex_46198 : String := "07"
theorem cover_46198 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46198 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_46198)
  decide +kernel
#print axioms cover_46198

def state_46200 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 9)))
def hex_46200 : String := "424041070A07400A07"
theorem cover_46200 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46200 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_46200)
  decide +kernel
#print axioms cover_46200

def state_46212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 18) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 9)))
def hex_46212 : String := "44074344074041070A07444041074209070740414209054243440941090609430A44090A41074243070907"
theorem cover_46212 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46212 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_46212)
  decide +kernel
#print axioms cover_46212

def state_46255 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 9)))
def hex_46255 : String := "444307084341440A400A4206070A414440080740424306080A4243414405060509430A414407400807084408400A420508"
theorem cover_46255 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46255 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_46255)
  decide +kernel
#print axioms cover_46255

def state_46304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 9) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 9)))
def hex_46304 : String := "4107440543074041070505"
theorem cover_46304 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46304 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_46304)
  decide +kernel
#print axioms cover_46304

def state_46315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 9)))
def hex_46315 : String := "40414407430A4244074005070A44070A07"
theorem cover_46315 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46315 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_46315)
  decide +kernel
#print axioms cover_46315

def state_46332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 4)))
def hex_46332 : String := "43400A4144070A0A4041440A050A414407424307404406050643400A07400506440742430A400A41074407430742070A430A400A414406060A"
theorem cover_46332 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46332 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 57) (hex := hex_46332)
  decide +kernel
#print axioms cover_46332
end Mub6.Numerical.CircleFullPrototype.Forest

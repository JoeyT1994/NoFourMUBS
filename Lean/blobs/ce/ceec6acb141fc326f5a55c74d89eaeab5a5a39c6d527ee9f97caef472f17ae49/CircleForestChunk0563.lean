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
def state_373985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
def hex_373985 : String := "424344094009094440064309064043440608064344410A090A4441420606420606414240060A08424006430A44060808430944400642090940080A"
theorem cover_373985 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373985 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 59) (hex := hex_373985)
  decide +kernel
#print axioms cover_373985

def state_374046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 5)))
def hex_374046 : String := "09"
theorem cover_374046 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374046 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_374046)
  decide +kernel
#print axioms cover_374046

def state_374048 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 10)))
def hex_374048 : String := "40064143090609"
theorem cover_374048 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374048 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_374048)
  decide +kernel
#print axioms cover_374048

def state_374056 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 11)))
def hex_374056 : String := "41430906430906"
theorem cover_374056 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374056 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_374056)
  decide +kernel
#print axioms cover_374056

def state_374065 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 11)))
def hex_374065 : String := "440942400944090A09"
theorem cover_374065 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374065 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_374065)
  decide +kernel
#print axioms cover_374065

def state_374074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 11)))
def hex_374074 : String := "444206064240064344410640064206064140080A40424406430806064244430A06430A410840060A0A4406414006420606400642060640064309440608"
theorem cover_374074 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374074 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 61) (hex := hex_374074)
  decide +kernel
#print axioms cover_374074

def state_374136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 23) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 11)))
def hex_374136 : String := "44094240094144094309090909"
theorem cover_374136 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374136 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_374136)
  decide +kernel
#print axioms cover_374136

def state_374149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 23) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 11)))
def hex_374149 : String := "44420606424041060641434440050540424405410605064244054143404205050A05054405410905440540050543440540050505400641430905430505"
theorem cover_374149 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374149 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 61) (hex := hex_374149)
  decide +kernel
#print axioms cover_374149

def state_374210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 5)))
def hex_374210 : String := "4309440940094142090909"
theorem cover_374210 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374210 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_374210)
  decide +kernel
#print axioms cover_374210
end Mub6.Numerical.CircleFullPrototype.Forest

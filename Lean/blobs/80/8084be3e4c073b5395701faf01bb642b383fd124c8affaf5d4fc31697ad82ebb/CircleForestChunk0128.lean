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
def state_968211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 47) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 28)))
def hex_968211 : String := "42440643414009060A06440A434140420A440A434140074208070A0A424406434108400A05064406434108404205050506400A420A440643050641400A060A"
theorem cover_968211 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968211 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 63) (hex := hex_968211)
  decide +kernel
#print axioms cover_968211

def state_968274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 23) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 28)))
def hex_968274 : String := "41420644064340410806060606"
theorem cover_968274 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968274 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_968274)
  decide +kernel
#print axioms cover_968274

def state_968289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 29)))
def hex_968289 : String := "420943444009080809"
theorem cover_968289 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968289 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_968289)
  decide +kernel
#print axioms cover_968289

def state_968299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 47) else (if j.val < 3 then 50 else (if j.val < 4 then 18 else 29)))
def hex_968299 : String := "09"
theorem cover_968299 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968299 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_968299)
  decide +kernel
#print axioms cover_968299

def state_968301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 47) else (if j.val < 3 then 51 else (if j.val < 4 then 36 else 29)))
def hex_968301 : String := "44414042094443410840070809094208084042440A09440A0742444341080506430808444341400808400A0541400A060A430841084008084108400908"
theorem cover_968301 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968301 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_968301)
  decide +kernel
#print axioms cover_968301

def state_968362 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 47) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 29)))
def hex_968362 : String := "44410940094206434406090609"
theorem cover_968362 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968362 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_968362)
  decide +kernel
#print axioms cover_968362

def state_968375 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 23) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 29)))
def hex_968375 : String := "41420708420743444041084207080608440608"
theorem cover_968375 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968375 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_968375)
  decide +kernel
#print axioms cover_968375

def state_968394 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 14)))
def hex_968394 : String := "44064009410906"
theorem cover_968394 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968394 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_968394)
  decide +kernel
#print axioms cover_968394

def state_968401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 15)))
def hex_968401 : String := "40094109420943444009080809"
theorem cover_968401 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968401 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_968401)
  decide +kernel
#print axioms cover_968401
end Mub6.Numerical.CircleFullD0.Forest

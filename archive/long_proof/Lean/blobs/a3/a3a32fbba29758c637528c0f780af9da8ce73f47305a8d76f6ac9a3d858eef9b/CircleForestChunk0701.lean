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
def state_1469143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 16)))
def hex_1469143 : String := "42430A444006420641060A064305444041420605420A0941424305060542430A44400A420A0A4006420605430544870505"
theorem cover_1469143 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469143 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_1469143)
  decide +kernel
#print axioms cover_1469143

def state_1469192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 17)))
def hex_1469192 : String := "05"
theorem cover_1469192 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469192 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1469192)
  decide +kernel
#print axioms cover_1469192

def state_1469195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 16)))
def hex_1469195 : String := "06"
theorem cover_1469195 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469195 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1469195)
  decide +kernel
#print axioms cover_1469195

def state_1469197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 16)))
def hex_1469197 : String := "4206430606"
theorem cover_1469197 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469197 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1469197)
  decide +kernel
#print axioms cover_1469197

def state_1469203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 50 else (if j.val < 4 then 19 else 16)))
def hex_1469203 : String := "430606"
theorem cover_1469203 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469203 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1469203)
  decide +kernel
#print axioms cover_1469203

def state_1469208 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 32)))
def hex_1469208 : String := "40410642064306064142064344400641068706064243444006420687060643448740064142064305064243440605064305448705440A06"
theorem cover_1469208 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469208 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_1469208)
  decide +kernel
#print axioms cover_1469208

def state_1469263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 33)))
def hex_1469263 : String := "400641064206430506"
theorem cover_1469263 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469263 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1469263)
  decide +kernel
#print axioms cover_1469263

def state_1469272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 39 else 16)))
def hex_1469272 : String := "0A"
theorem cover_1469272 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469272 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1469272)
  decide +kernel
#print axioms cover_1469272

def state_1469273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 17)))
def hex_1469273 : String := "06"
theorem cover_1469273 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469273 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1469273)
  decide +kernel
#print axioms cover_1469273

def state_1469274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 9)))
def hex_1469274 : String := "400641054206430506"
theorem cover_1469274 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469274 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1469274)
  decide +kernel
#print axioms cover_1469274

def state_1469283 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 4)))
def hex_1469283 : String := "43054440084108424344404105054105424305444005410509050505444008410842434440084108424344874008410508080808080808084005410505"
theorem cover_1469283 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469283 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 20) (count := 61) (hex := hex_1469283)
  decide +kernel
#print axioms cover_1469283

def state_1469346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 4)))
def hex_1469346 : String := "44400A42410A0A0A40420A094241440A05440A0A410509"
theorem cover_1469346 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469346 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 23) (hex := hex_1469346)
  decide +kernel
#print axioms cover_1469346

def state_1469371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 8)))
def hex_1469371 : String := "42074143090707"
theorem cover_1469371 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469371 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1469371)
  decide +kernel
#print axioms cover_1469371
end Mub6.Numerical.CircleFullD0.Forest

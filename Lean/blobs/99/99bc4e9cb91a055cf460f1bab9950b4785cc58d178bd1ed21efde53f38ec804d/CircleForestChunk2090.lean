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
def state_2582090 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 9) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 9)))
def hex_2582090 : String := "4108444208434105050608"
theorem cover_2582090 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582090 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_2582090)
  decide +kernel
#print axioms cover_2582090

def state_2582101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 23 else (if j.val < 4 then 25 else 9)))
def hex_2582101 : String := "404144080844420843404106444208060806080808"
theorem cover_2582101 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582101 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 21) (hex := hex_2582101)
  decide +kernel
#print axioms cover_2582101

def state_2582122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 4)))
def hex_2582122 : String := "4108444208404306050608"
theorem cover_2582122 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582122 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_2582122)
  decide +kernel
#print axioms cover_2582122

def state_2582135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 5)))
def hex_2582135 : String := "434441070606440806"
theorem cover_2582135 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582135 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_2582135)
  decide +kernel
#print axioms cover_2582135

def state_2582144 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 5)))
def hex_2582144 : String := "434441404207094207430709404206434441070606094243060743444107420643060706444107420740050707074441094005420843090509"
theorem cover_2582144 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582144 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_2582144)
  decide +kernel
#print axioms cover_2582144

def state_2582201 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
def hex_2582201 : String := "4243440807084344414208434044080708084243400708084340444142074340070707420743400707070744080740440807084107074408410707"
theorem cover_2582201 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582201 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 59) (hex := hex_2582201)
  decide +kernel
#print axioms cover_2582201

def state_2582260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
def hex_2582260 : String := "4440420805084042080508"
theorem cover_2582260 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582260 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_2582260)
  decide +kernel
#print axioms cover_2582260

def state_2582272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
def hex_2582272 : String := "43444006410806064440080707"
theorem cover_2582272 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582272 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_2582272)
  decide +kernel
#print axioms cover_2582272

def state_2582290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 4)))
def hex_2582290 : String := "4344400643064142064440090808060644404142060505410808400608"
theorem cover_2582290 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582290 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_2582290)
  decide +kernel
#print axioms cover_2582290

def state_2582322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 8)))
def hex_2582322 : String := "42430641440509050A"
theorem cover_2582322 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582322 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2582322)
  decide +kernel
#print axioms cover_2582322
end Mub6.Numerical.CircleFullD0.Forest

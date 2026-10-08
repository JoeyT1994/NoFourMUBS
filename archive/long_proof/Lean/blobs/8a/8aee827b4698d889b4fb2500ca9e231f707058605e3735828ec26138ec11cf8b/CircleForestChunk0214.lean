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
def state_72727 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 4)))
def hex_72727 : String := "41434244090944094109090943424443054009050944090942444041090741064305060909"
theorem cover_72727 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72727 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_72727)
  decide +kernel
#print axioms cover_72727

def state_72769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 10)))
def hex_72769 : String := "40410A060A"
theorem cover_72769 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72769 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_72769)
  decide +kernel
#print axioms cover_72769

def state_72775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 10)))
def hex_72775 : String := "414344420A404105430605410A43420644090A09420640060A0A43444206400643414206440906060906440907"
theorem cover_72775 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72775 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_72775)
  decide +kernel
#print axioms cover_72775

def state_72820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 10)))
def hex_72820 : String := "410A4344424340060909434041420944094340060909420644090641420944090A0940090942074340060A0A0A"
theorem cover_72820 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72820 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 45) (hex := hex_72820)
  decide +kernel
#print axioms cover_72820

def state_72865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 11)))
def hex_72865 : String := "420740070A"
theorem cover_72865 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72865 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_72865)
  decide +kernel
#print axioms cover_72865

def state_72870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 5)))
def hex_72870 : String := "0A"
theorem cover_72870 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72870 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_72870)
  decide +kernel
#print axioms cover_72870

def state_72871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
def hex_72871 : String := "43444207400743414442074307070707070707"
theorem cover_72871 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72871 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_72871)
  decide +kernel
#print axioms cover_72871

def state_72890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
def hex_72890 : String := "414344420A410A434044420943410A05090A0A0A0A0A43444243070743404144420505070505404144090707410905074442070907"
theorem cover_72890 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72890 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 53) (hex := hex_72890)
  decide +kernel
#print axioms cover_72890

def state_72943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 2)))
def hex_72943 : String := "4440094109420A080A"
theorem cover_72943 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72943 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_72943)
  decide +kernel
#print axioms cover_72943

def state_72959 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 8)))
def hex_72959 : String := "4008410608"
theorem cover_72959 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72959 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_72959)
  decide +kernel
#print axioms cover_72959
end Mub6.Numerical.CircleFullPrototype.Forest

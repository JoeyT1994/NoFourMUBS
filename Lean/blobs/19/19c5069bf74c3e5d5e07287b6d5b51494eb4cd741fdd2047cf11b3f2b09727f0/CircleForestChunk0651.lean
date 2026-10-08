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
def state_761907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 10)))
def hex_761907 : String := "4344404241430A094307050742090A404241430A4405054344050505410A430A44050542410A430A4405050A4409404205410605420909"
theorem cover_761907 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761907 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 55) (hex := hex_761907)
  decide +kernel
#print axioms cover_761907

def state_761962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 27) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 10)))
def hex_761962 : String := "434407404205074243080507440505"
theorem cover_761962 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761962 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_761962)
  decide +kernel
#print axioms cover_761962

def state_761977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 10)))
def hex_761977 : String := "41430A44074240080A07430707"
theorem cover_761977 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761977 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_761977)
  decide +kernel
#print axioms cover_761977

def state_761990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 10)))
def hex_761990 : String := "4241430A094344064042060A0609410A0A"
theorem cover_761990 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761990 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_761990)
  decide +kernel
#print axioms cover_761990

def state_762008 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 11)))
def hex_762008 : String := "4244414340424441060506060A40054205440A064340054205440A080541064308054441430A06430A424005440505074106430A06"
theorem cover_762008 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_762008 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_762008)
  decide +kernel
#print axioms cover_762008

def state_762061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 11)))
def hex_762061 : String := "424441430A0A430840420544050509410A080A"
theorem cover_762061 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_762061 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_762061)
  decide +kernel
#print axioms cover_762061

def state_762081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 4)))
def hex_762081 : String := "4108400809"
theorem cover_762081 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_762081 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_762081)
  decide +kernel
#print axioms cover_762081

def state_762087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
def hex_762087 : String := "444042434108090808420908400642434106440906090A"
theorem cover_762087 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_762087 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_762087)
  decide +kernel
#print axioms cover_762087

def state_762110 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
def hex_762110 : String := "44404243410905050809404205434441060506054243444109054140050705054344410A094106404205060A09"
theorem cover_762110 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_762110 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_762110)
  decide +kernel
#print axioms cover_762110
end Mub6.Numerical.CircleFullPrototype.Forest

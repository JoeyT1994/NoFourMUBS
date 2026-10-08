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
def state_286792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 4)))
def hex_286792 : String := "43444207404105054107434407424105430507050742400641434407060706400941430544070843444241054305060509094407420709"
theorem cover_286792 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286792 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_286792)
  decide +kernel
#print axioms cover_286792

def state_286848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 4)))
def hex_286848 : String := "4344414006060541400606064441070541404206060805"
theorem cover_286848 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286848 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 23) (hex := hex_286848)
  decide +kernel
#print axioms cover_286848

def state_286875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 14 else 8)))
def hex_286875 : String := "4006434441070606440706"
theorem cover_286875 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286875 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_286875)
  decide +kernel
#print axioms cover_286875

def state_286887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 14 else 8)))
def hex_286887 : String := "4344420641050606440706"
theorem cover_286887 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286887 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_286887)
  decide +kernel
#print axioms cover_286887

def state_286900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 28 else 16)))
def hex_286900 : String := "42410743400644094206410706074143050743400844424107080842414308070841050840074407420707"
theorem cover_286900 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286900 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_286900)
  decide +kernel
#print axioms cover_286900

def state_286944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 22) else (if j.val < 3 then 46 else (if j.val < 4 then 28 else 17)))
def hex_286944 : String := "41434006444206410543050706400644070606"
theorem cover_286944 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286944 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_286944)
  decide +kernel
#print axioms cover_286944

def state_286963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 22) else (if j.val < 3 then 47 else (if j.val < 4 then 28 else 17)))
def hex_286963 : String := "414305400544074241050605434006444241430540054407060641050842064105064006444241070641070A420609"
theorem cover_286963 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286963 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_286963)
  decide +kernel
#print axioms cover_286963

def state_287010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 29 else 8)))
def hex_287010 : String := "440742410706410743400644070607"
theorem cover_287010 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287010 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_287010)
  decide +kernel
#print axioms cover_287010

def state_287025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 23) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 8)))
def hex_287025 : String := "42064006434441420643084006440A4206080606444142060A0606"
theorem cover_287025 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287025 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 27) (hex := hex_287025)
  decide +kernel
#print axioms cover_287025
end Mub6.Numerical.CircleFullPrototype.Forest

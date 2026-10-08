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
def state_2561039 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 57 else (if j.val < 4 then 30 else 50)))
def hex_2561039 : String := "4341444005070744050541444042050542070709440505"
theorem cover_2561039 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2561039 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 23) (hex := hex_2561039)
  decide +kernel
#print axioms cover_2561039

def state_2561062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 51)))
def hex_2561062 : String := "4243050505"
theorem cover_2561062 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2561062 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2561062)
  decide +kernel
#print axioms cover_2561062

def state_2561067 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 25)))
def hex_2561067 : String := "4442430641070643070706"
theorem cover_2561067 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2561067 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_2561067)
  decide +kernel
#print axioms cover_2561067

def state_2561084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 92) else (if j.val < 3 then 56 else (if j.val < 4 then 62 else 50)))
def hex_2561084 : String := "444042434107444008070741440607440807430A0607400A07"
theorem cover_2561084 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2561084 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_2561084)
  decide +kernel
#print axioms cover_2561084

def state_2561109 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 93) else (if j.val < 3 then 56 else (if j.val < 4 then 62 else 50)))
def hex_2561109 : String := "44404243414408074408400507084341440807080842430707074042430A410A44400507050A07"
theorem cover_2561109 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2561109 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_2561109)
  decide +kernel
#print axioms cover_2561109

def state_2561148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 56 else (if j.val < 4 then 63 else 50)))
def hex_2561148 : String := "414440420806420808404243410744070741440607440807430A06074440080840424341440807080843414408050508420707"
theorem cover_2561148 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2561148 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_2561148)
  decide +kernel
#print axioms cover_2561148

def state_2561199 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 57 else (if j.val < 4 then 31 else 50)))
def hex_2561199 : String := "434144400607094440094207070941440609440809"
theorem cover_2561199 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2561199 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_2561199)
  decide +kernel
#print axioms cover_2561199

def state_2561220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 31 else 51)))
def hex_2561220 : String := "4243410A400A0741400A074044420505050709"
theorem cover_2561220 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2561220 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_2561220)
  decide +kernel
#print axioms cover_2561220

def state_2561239 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 31 else 25)))
def hex_2561239 : String := "4442430741074044070707430741070707"
theorem cover_2561239 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2561239 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_2561239)
  decide +kernel
#print axioms cover_2561239
end Mub6.Numerical.CircleFullD0.Forest

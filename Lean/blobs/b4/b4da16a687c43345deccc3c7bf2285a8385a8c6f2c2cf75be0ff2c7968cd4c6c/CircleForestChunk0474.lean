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
def state_275096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 16)))
def hex_275096 : String := "41400A43090908"
theorem cover_275096 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275096 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_275096)
  decide +kernel
#print axioms cover_275096

def state_275105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 17)))
def hex_275105 : String := "4342440841400643440807060808424406060A"
theorem cover_275105 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275105 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_275105)
  decide +kernel
#print axioms cover_275105

def state_275126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 46) else (if j.val < 3 then 34 else (if j.val < 4 then 56 else 17)))
def hex_275126 : String := "4409414043440907444206414006090842060743440907440942094140070707400709"
theorem cover_275126 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275126 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_275126)
  decide +kernel
#print axioms cover_275126

def state_275161 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 46) else (if j.val < 3 then 35 else (if j.val < 4 then 56 else 17)))
def hex_275161 : String := "444140084308420908084140430842440841D90708434244080708424441D90841D907440841D90708"
theorem cover_275161 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275161 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_275161)
  decide +kernel
#print axioms cover_275161

def state_275203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 46) else (if j.val < 3 then 34 else (if j.val < 4 then 57 else 17)))
def hex_275203 : String := "4409414043440606064344094209414006050544054206410605400605"
theorem cover_275203 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275203 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_275203)
  decide +kernel
#print axioms cover_275203

def state_275233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 46) else (if j.val < 3 then 35 else (if j.val < 4 then 57 else 34)))
def hex_275233 : String := "41400A4342090A0A0A"
theorem cover_275233 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275233 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_275233)
  decide +kernel
#print axioms cover_275233

def state_275243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 92) else (if j.val < 3 then 35 else (if j.val < 4 then 57 else 35)))
def hex_275243 : String := "404342440A41D906440841D9080A43424441D90541D9404307440506054441D90841D940084307420508424441D90541D9400605440A41D9400A430505"
theorem cover_275243 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275243 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_275243)
  decide +kernel
#print axioms cover_275243

def state_275304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 93) else (if j.val < 3 then 35 else (if j.val < 4 then 57 else 35)))
def hex_275304 : String := "4043080A4342050842050A"
theorem cover_275304 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275304 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_275304)
  decide +kernel
#print axioms cover_275304

def state_275315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 17)))
def hex_275315 : String := "4043080A43420908420544054140080505"
theorem cover_275315 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275315 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_275315)
  decide +kernel
#print axioms cover_275315
end Mub6.Numerical.CircleFullPrototype.Forest

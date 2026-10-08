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
def state_175909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 14 else 24)))
def hex_175909 : String := "4309444140420A43094441400A090A0A09400A09410909"
theorem cover_175909 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175909 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 23) (hex := hex_175909)
  decide +kernel
#print axioms cover_175909

def state_175933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 24)))
def hex_175933 : String := "4441080908"
theorem cover_175933 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175933 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_175933)
  decide +kernel
#print axioms cover_175933

def state_175943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 38 else (if j.val < 4 then 58 else 48)))
def hex_175943 : String := "44414006090908"
theorem cover_175943 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175943 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_175943)
  decide +kernel
#print axioms cover_175943

def state_175952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 100) else (if j.val < 3 then 38 else (if j.val < 4 then 59 else 96)))
def hex_175952 : String := "4042430A0A4306444142400543060A06420A0608424309444109090943084441404243089506420908404243060A0609410809"
theorem cover_175952 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175952 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_175952)
  decide +kernel
#print axioms cover_175952

def state_176003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 101) else (if j.val < 3 then 38 else (if j.val < 4 then 59 else 96)))
def hex_176003 : String := "400A420A43094441400A090A09"
theorem cover_176003 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176003 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_176003)
  decide +kernel
#print axioms cover_176003

def state_176016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 38 else (if j.val < 4 then 59 else 97)))
def hex_176016 : String := "4140420508090A"
theorem cover_176016 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176016 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_176016)
  decide +kernel
#print axioms cover_176016

def state_176023 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 39 else (if j.val < 4 then 29 else 48)))
def hex_176023 : String := "43064441080608"
theorem cover_176023 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176023 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_176023)
  decide +kernel
#print axioms cover_176023

def state_176030 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 50) else (if j.val < 3 then 19 else (if j.val < 4 then 29 else 48)))
def hex_176030 : String := "424309444109090943084441400842090840424305440509050508"
theorem cover_176030 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176030 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_176030)
  decide +kernel
#print axioms cover_176030

def state_176057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 19 else (if j.val < 4 then 29 else 48)))
def hex_176057 : String := "4042430A0A4306440641400A4209060A42430944410905094306440509"
theorem cover_176057 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176057 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_176057)
  decide +kernel
#print axioms cover_176057

def state_176086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 29 else 49)))
def hex_176086 : String := "41404209080940420943080A09"
theorem cover_176086 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176086 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_176086)
  decide +kernel
#print axioms cover_176086

def state_176099 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 25)))
def hex_176099 : String := "40420A43080809"
theorem cover_176099 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176099 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_176099)
  decide +kernel
#print axioms cover_176099

def state_176109 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 24) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 24)))
def hex_176109 : String := "4205434105444205400543084409050541054442050905"
theorem cover_176109 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176109 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_176109)
  decide +kernel
#print axioms cover_176109

def state_176133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 18 else (if j.val < 4 then 15 else 24)))
def hex_176133 : String := "434105444005060506"
theorem cover_176133 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176133 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_176133)
  decide +kernel
#print axioms cover_176133

def state_176144 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 48) else (if j.val < 3 then 19 else (if j.val < 4 then 30 else 24)))
def hex_176144 : String := "44400542050805"
theorem cover_176144 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176144 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_176144)
  decide +kernel
#print axioms cover_176144
end Mub6.Numerical.CircleFullPrototype.Forest

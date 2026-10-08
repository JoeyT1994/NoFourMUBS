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
def state_1538958 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 58) else (if j.val < 3 then 49 else (if j.val < 4 then 38 else 43)))
def hex_1538958 : String := "404244434106400608060644430A06430706424443080943070944430841050807"
theorem cover_1538958 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538958 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 33) (hex := hex_1538958)
  decide +kernel
#print axioms cover_1538958

def state_1538991 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 59) else (if j.val < 3 then 49 else (if j.val < 4 then 38 else 43)))
def hex_1538991 : String := "404244430A414006420808400A08430A4106400A4244050A0A440A0A42440843084142094044080908420840440808084408430A4140420A0A08400A08"
theorem cover_1538991 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538991 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_1538991)
  decide +kernel
#print axioms cover_1538991

def state_1539053 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 58) else (if j.val < 3 then 49 else (if j.val < 4 then 39 else 43)))
def hex_1539053 : String := "40064209444341064006080606"
theorem cover_1539053 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539053 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1539053)
  decide +kernel
#print axioms cover_1539053

def state_1539067 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 59) else (if j.val < 3 then 49 else (if j.val < 4 then 39 else 43)))
def hex_1539067 : String := "424443410605060644434140064206440606400A424405050A410605434106400642440A060A06"
theorem cover_1539067 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539067 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_1539067)
  decide +kernel
#print axioms cover_1539067

def state_1539106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 49 else (if j.val < 4 then 39 else 43)))
def hex_1539106 : String := "424443080909444341404208440808080841094042054405430505084341404206444306060609404244430808430A06440A0A420808410640420644090609"
theorem cover_1539106 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539106 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_1539106)
  decide +kernel
#print axioms cover_1539106

def state_1539172 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 20)))
def hex_1539172 : String := "40424143054405050A094241050805"
theorem cover_1539172 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539172 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_1539172)
  decide +kernel
#print axioms cover_1539172
end Mub6.Numerical.CircleFullD0.Forest

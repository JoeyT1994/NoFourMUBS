import FourierPilotCircleTree002177
import FourierPilotCircleTree002200
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002176
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![27, 20, 31, 17, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002177.state FourierPilotCircleTree002200.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002177.covered FourierPilotCircleTree002200.covered
#print axioms covered
end FourierPilotCircleTree002176

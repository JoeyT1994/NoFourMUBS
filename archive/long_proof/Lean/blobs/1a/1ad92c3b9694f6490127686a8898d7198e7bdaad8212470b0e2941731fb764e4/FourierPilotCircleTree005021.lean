import FourierPilotCircleTree005022
import FourierPilotCircleTree005027
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005021
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![50, 49, 55, 43, 17]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005022.state FourierPilotCircleTree005027.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005022.covered FourierPilotCircleTree005027.covered
#print axioms covered
end FourierPilotCircleTree005021

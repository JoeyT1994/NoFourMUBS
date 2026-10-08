import FourierPilotCircleTree002230
import FourierPilotCircleTree002231
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002229
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![29, 18, 15, 25, 22]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002230.state FourierPilotCircleTree002231.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002230.covered FourierPilotCircleTree002231.covered
#print axioms covered
end FourierPilotCircleTree002229

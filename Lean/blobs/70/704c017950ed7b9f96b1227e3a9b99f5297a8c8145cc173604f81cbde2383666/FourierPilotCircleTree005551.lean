import FourierPilotCircleTree005552
import FourierPilotCircleTree005553
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005551
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![3, 3, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005552.state FourierPilotCircleTree005553.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005552.covered FourierPilotCircleTree005553.covered
#print axioms covered
end FourierPilotCircleTree005551

import FourierPilotCircleTree002625
import FourierPilotCircleTree002626
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002624
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![14, 20, 27, 22, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002625.state FourierPilotCircleTree002626.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002625.covered FourierPilotCircleTree002626.covered
#print axioms covered
end FourierPilotCircleTree002624

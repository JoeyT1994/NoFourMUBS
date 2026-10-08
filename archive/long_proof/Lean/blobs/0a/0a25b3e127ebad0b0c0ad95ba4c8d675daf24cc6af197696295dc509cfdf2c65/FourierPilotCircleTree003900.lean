import FourierPilotCircleTree003901
import FourierPilotCircleTree003910
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003900
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![111, 40, 32, 34, 61]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003901.state FourierPilotCircleTree003910.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003901.covered FourierPilotCircleTree003910.covered
#print axioms covered
end FourierPilotCircleTree003900

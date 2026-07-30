import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceActionPotentialsLemmaCanonicalLaneLean

structure ConnectomicsPackage where
  connectivityMatrix : Prop
  graphTopology : Prop
  circuitMotifs : Prop
  informationFlow : Prop
  structureFunctionRelation : Prop

structure ConnectomicsEvidence (C : ConnectomicsPackage) where
  connectivityMatrixClosed : C.connectivityMatrix
  graphTopologyClosed : C.graphTopology
  circuitMotifsClosed : C.circuitMotifs
  informationFlowClosed : C.informationFlow
  structureFunctionRelationClosed : C.structureFunctionRelation

def ConnectomicsClosed (C : ConnectomicsPackage) : Prop :=
  C.connectivityMatrix ∧ C.graphTopology ∧
  C.circuitMotifs ∧ C.informationFlow ∧ C.structureFunctionRelation

theorem connectomics_closed_from_evidence (C : ConnectomicsPackage)
    (E : ConnectomicsEvidence C) : ConnectomicsClosed C := by
  exact And.intro E.connectivityMatrixClosed
    (And.intro E.graphTopologyClosed
      (And.intro E.circuitMotifsClosed
        (And.intro E.informationFlowClosed E.structureFunctionRelationClosed)))

end NeuroscienceActionPotentialsLemmaCanonicalLaneLean
end HautevilleHouse

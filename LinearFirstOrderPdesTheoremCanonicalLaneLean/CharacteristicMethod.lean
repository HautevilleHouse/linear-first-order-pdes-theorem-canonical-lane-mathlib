import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearFirstOrderPdesTheoremCanonicalLaneLean

structure CharacteristicMethodPackage where
  transportEquation : Prop
  characteristicODEs : Prop
  initialDataCurve : Prop
  solutionAlongCharacteristics : Prop

structure CharacteristicMethodEvidence (C : CharacteristicMethodPackage) where
  transportEquationClosed : C.transportEquation
  characteristicODEsClosed : C.characteristicODEs
  initialDataCurveClosed : C.initialDataCurve
  solutionAlongCharacteristicsClosed : C.solutionAlongCharacteristics

def CharacteristicMethodClosed (C : CharacteristicMethodPackage) : Prop := 
  C.transportEquation ∧ C.characteristicODEs ∧ C.initialDataCurve ∧ C.solutionAlongCharacteristics

theorem characteristic_method_closed_from_evidence (C : CharacteristicMethodPackage) (E : CharacteristicMethodEvidence C) : CharacteristicMethodClosed C := by
  exact And.intro E.transportEquationClosed (And.intro E.characteristicODEsClosed (And.intro E.initialDataCurveClosed E.solutionAlongCharacteristicsClosed))

end HautevilleHouse
end HautevilleHouse.LinearFirstOrderPdesTheoremCanonicalLaneLean
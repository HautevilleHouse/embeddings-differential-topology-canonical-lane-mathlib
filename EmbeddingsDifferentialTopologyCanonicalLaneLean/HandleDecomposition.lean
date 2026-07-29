import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EmbeddingsDifferentialTopologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EmbeddingsDifferentialTopologyCanonicalLaneLean

structure HandleDecompositionPackage (M : Type u) [TopologicalSpace M] where
  dimension : ℕ
  handlesAttached : ℕ
  handleIndices : List ℕ
  smoothStructure : Prop
  handleDecompositionExists : Prop
  mainTheorem : handleDecompositionExists

structure HandleDecompositionEvidence {M : Type u} [TopologicalSpace M]
    (H : HandleDecompositionPackage M) where
  smoothStructureClosed : H.smoothStructure
  handleDecompositionExistsClosed : H.handleDecompositionExists

def HandleDecompositionClosed {M : Type u} [TopologicalSpace M]
    (H : HandleDecompositionPackage M) : Prop :=
  H.smoothStructure ∧ H.handleDecompositionExists

theorem handle_decomposition_closed_from_evidence
    {M : Type u} [TopologicalSpace M]
    (H : HandleDecompositionPackage M) (E : HandleDecompositionEvidence H) :
    HandleDecompositionClosed H := by
  exact And.intro E.smoothStructureClosed E.handleDecompositionExistsClosed

end EmbeddingsDifferentialTopologyCanonicalLaneLean
end HautevilleHouse
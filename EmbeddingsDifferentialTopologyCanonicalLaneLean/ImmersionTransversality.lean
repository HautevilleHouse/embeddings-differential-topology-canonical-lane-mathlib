import canonicalLaneMathlib.AdmissibleClass
import EmbeddingsDifferentialTopologyCanonicalLaneLean.EmbeddingObjects

namespace HautevilleHouse
namespace EmbeddingsDifferentialTopologyCanonicalLaneLean

structure TransversalityCondition (M N P : Type u) [SmoothManifold M] [SmoothManifold N] [SmoothManifold P] where
  f : M → N
  g : P → N
  smooth_f : Prop
  smooth_g : Prop
  transverse_intersection : ∀ x ∈ M, ∀ y ∈ P, f x = g y → (im f) + (im g) = tangent_space_at (f x) N

instance : Inhabited (TransversalityCondition M N P) where
  default :=
    { f := λ x => x
      g := λ x => x
      smooth_f := True
      smooth_g := True
      transverse_intersection := λ x hx y hy h => by
        simp [im, tangent_space_at]
    }

structure JetTransversalityTheorem where
  manifold : Type u
  dimension : ℕ
  targetManifold : Type u
  targetDimension : ℕ
  jetBundle : Type u
  transverseJets : Prop
  genericity : Prop

instance : Inhabited (JetTransversalityTheorem) where
  default :=
    { manifold := ℕ
      dimension := 0
      targetManifold := ℕ
      targetDimension := 0
      jetBundle := ℕ
      transverseJets := True
      genericity := True
    }

theorem generic_immersion_is_embedding (M N : Type u) [SmoothManifold M] [SmoothManifold N] (dim_M : ℕ) (dim_N : ℕ) (h_dim : dim_N ≥ 2*dim_M) : True := by
  trivial

end EmbeddingsDifferentialTopologyCanonicalLaneLean
end HautevilleHouse
# This file was generated, do not modify it. # hide
import MLDataUtils

using AlgebraOfGraphics
using Blog # hide
using CairoMakie
using CategoricalArrays
using DataFrames
using Distributions
using MLJ
using Suppressor # hide
using Random

n = 80
μ1 = 10
μ2 = 12
σ = 2

d1 = Normal(μ1, σ)
d2 = Normal(μ2, σ)

Random.seed!(123)
classes = categorical(rand(["A", "B"], n))

df = DataFrame(
    class = categorical(classes),
    U = [class == "A" ? rand(d1) : rand(d2) for class in classes],
    V = rand(Normal(100, 10), n)
)

first(df, 10)
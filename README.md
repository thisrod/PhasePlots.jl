# PhasePlots.jl

![Lifecycle](https://img.shields.io/badge/lifecycle-experimental-orange.svg)<!--
![Lifecycle](https://img.shields.io/badge/lifecycle-maturing-blue.svg)
![Lifecycle](https://img.shields.io/badge/lifecycle-stable-green.svg)
![Lifecycle](https://img.shields.io/badge/lifecycle-retired-orange.svg)
![Lifecycle](https://img.shields.io/badge/lifecycle-archived-red.svg)
![Lifecycle](https://img.shields.io/badge/lifecycle-dormant-blue.svg) -->
[![Build Status](https://travis-ci.com/"thisrod"/PhasePlots.jl.svg?branch=master)](https://travis-ci.com/"thisrod"/PhasePlots.jl)
[![codecov.io](http://codecov.io/github/"thisrod"/PhasePlots.jl/coverage.svg?branch=master)](http://codecov.io/github/"thisrod"/PhasePlots.jl?branch=master)
<!--
[![Documentation](https://img.shields.io/badge/docs-stable-blue.svg)](https://"thisrod".github.io/PhasePlots.jl/stable)
[![Documentation](https://img.shields.io/badge/docs-master-blue.svg)](https://"thisrod".github.io/PhasePlots.jl/dev)
-->

Lightweight and versatile complex phase plots

The main function is `phaseplot(x, y, z)'.  The modulus of the numbers is stored on the alpha channel.  By default, the aspect ratio is 1, and coordinates increase upward and rightward.  Make background black by default, describe how to get white.
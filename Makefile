# Prerequisites
BLAS_LAPACK = libblas-dev liblapack-dev
BOOST = libboost-all-dev
SUITESPARSE = libsuitesparse-dev
ZOLTAN = libtrilinos-zoltan-dev

# Tools
COMPILER = g++
CMAKE = cmake
DOXYGEN = doxygen
LATEX = texlive-latex-base texlive-fonts-recommended texlive-latex-recommended

# Build targets
.PHONY: all deps doc

all: deps doc

deps:
	sudo apt-get update && \
	sudo apt-get install -y \
		$(BLAS_LAPACK) \
		$(BOOST) \
		$(SUITESPARSE) \
		$(ZOLTAN) \
		$(COMPILER) \
		$(CMAKE) \
		$(DOXYGEN) \
		$(LATEX)


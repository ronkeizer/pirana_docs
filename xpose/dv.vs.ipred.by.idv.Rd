% Xpose 4
% An R-based population pharmacokinetic/
% pharmacodynamic model building aid for NONMEM.
% Copyright (C) 1998-2004 E. Niclas Jonsson and Mats Karlsson.
% Copyright (C) 2005-2008 Andrew C. Hooker, Justin J. Wilkins, 
% Mats O. Karlsson and E. Niclas Jonsson.
% Copyright (C) 2009-2010 Andrew C. Hooker, Mats O. Karlsson and 
% E. Niclas Jonsson.

% This file is a part of Xpose 4.
% Xpose 4 is free software; you can redistribute it and/or
% modify it under the terms of the GNU Lesser General Public License
% as published by the Free Software Foundation, either version 3
% of the License, or (at your option) any later version.

% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU Lesser General Public License for more details.

% You should have received a copy of the GNU Lesser General Public License
% along with this program.  A copy can be cound in the R installation
% directory under \share\licenses. If not, see http://www.gnu.org/licenses/.

\name{dv.vs.ipred.by.idv}
\alias{dv.vs.ipred.by.idv}
\title{Dependent variable vs individual predictions, conditioned on 
  independent variable, for Xpose 4}
\description{
  This is a plot of the dependent variable (DV) vs individual predictions 
  (IPRED) conditioned by the independent variable, a specific function 
  in Xpose 4. It is a wrapper encapsulating arguments to the 
  \code{xpose.plot.default} function. Most of the options take their 
  default values from xpose.data object but may be overridden by supplying 
  them as arguments.
}
\usage{
dv.vs.ipred.by.idv(object,
           abline = c(0,1),
           smooth = TRUE,
           ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{object}{An xpose.data object. }
  \item{abline}{Vector of arguments to the \code{\link[lattice]{panel.abline}}
    function. No abline is drawn if \code{NULL}.}
  \item{smooth}{Logical value indicating whether an x-y smooth should be superimposed.
    The default is TRUE.}
  \item{\dots}{Other arguments passed to \code{link[xpose4generic]{xpose.plot.default}}.}
}
\details{
  A wide array of extra options controlling \code{xyplot} are 
  available. See \code{\link[xpose4generic]{xpose.plot.default}} and 
  \code{\link[xpose4generic]{xpose.panel.default}} for details.
}
\value{
  Returns a stack of xyplots of DV vs IPRED, conditioned on the independent
  variable.
}
\author{E. Niclas Jonsson, Mats Karlsson, Andrew Hooker & Justin Wilkins}
\seealso{
  \code{\link{dv.vs.ipred}},
  \code{\link[xpose4generic]{xpose.plot.default}},
  \code{\link[xpose4generic]{xpose.panel.default}},
  \code{\link[lattice]{xyplot}},
  \code{\link[xpose4data]{xpose.prefs-class}},
  \code{\link[xpose4data]{xpose.data-class}}
}
\examples{
\dontrun{
## We expect to find the required NONMEM run and table files for run
## 5 in the current working directory
xpdb5 <- xpose.data(5)

## A vanilla plot
dv.vs.ipred.by.idv(xpdb5)

## Custom axis labels
dv.vs.ipred.by.idv(xpdb5, ylb="DV", xlb="PRED")

## Custom colours and symbols, no IDs
dv.vs.ipred.by.idv(xpdb5, cex=0.6, pch=3, col=1, ids=FALSE)
}

}
\keyword{methods}

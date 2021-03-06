\name{dOFV1.vs.dOFV2}
\alias{dOFV1.vs.dOFV2}

\title{
Change in individual objective function value 1 vs. individual objective
function value 2.
}
\description{
Change in individual objective function value 1 vs. individual objective
}
\usage{
dOFV1.vs.dOFV2(xpdb1,
             xpdb2,
             xpdb3,
             ylb=expression(paste(Delta, OFV1[i])),
             xlb=expression(paste(Delta, OFV2[i])),
             main="Default",
             smooth=NULL,
             abline=c(0,1),
             ablcol="grey",
             abllwd=2,
             abllty="dashed",
             lmline=TRUE,
             ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{xpdb1}{
Xpose data object for first NONMEM run
}
  \item{xpdb2}{
Xpose data object for second NONMEM run
}
  \item{xpdb3}{
Xpose data object for third NONMEM run
}
  \item{ylb}{
Label for Y axis.
}
  \item{xlb}{
Label for X axis.
}
  \item{main}{
Title of plot.
}
  \item{smooth}{
Should we have a smooth?
}
  \item{abline}{
abline description.
}
  \item{ablcol}{
color of abline
}
  \item{abllwd}{
line width of abline
}
  \item{abllty}{
type of abline
}
  \item{lmline}{
Linear regression line?
}
  \item{\dots}{
Additional arguments to function.
}
}
\details{
}
\value{
}
\references{

}
\author{
Andrew C. Hooker
}
\note{
}

\seealso{
}
\examples{
\dontrun{
## read in table files
xpdb8 <- xpose.data(8)
xpdb8 <- xpose.data(9)
xpdb11 <- xpose.data(11)

## Make the plot
dOFV.vs.cov(xpdb8,xpdb9,xpdb11)
}
}
\keyword{ methods }

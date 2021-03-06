\name{dOFV.vs.cov}
\alias{dOFV.vs.cov}
\title{
Change in individual objective function value vs. covariate value.
}
\description{
Change in individual objective function value vs. covariate value.
}
\usage{
dOFV.vs.cov(xpdb1,
             xpdb2,
             covariates=xvardef("covariates",xpdb1),
             ylb=expression(paste(Delta, OFV[i])),
             main="Default",
             smooth=TRUE,
             abline=c(0,0),
             ablcol="grey",
             abllwd=2,
             abllty="dashed",
             max.plots.per.page=1,
             ...)

}

\arguments{
  \item{xpdb1}{
Xpose data object for first NONMEM run
}
  \item{xpdb2}{
Xpose data object for second NONMEM run
}
  \item{covariates}{
Covariates to plot against
}
  \item{ylb}{
Label for Y axis.
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
\item{max.plots.per.page}{Plots per page.}
  \item{\dots}{
additional arguments to function
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
xpdb11 <- xpose.data(11)

## Make some plots
dOFV.vs.cov(xpdb8,xpdb11,"AGE")
dOFV.vs.cov(xpdb8,xpdb11,c("AGE","SECR"))
}
}
\keyword{ methods }

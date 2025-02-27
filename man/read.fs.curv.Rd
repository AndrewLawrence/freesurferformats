% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read_fs_curv.R
\name{read.fs.curv}
\alias{read.fs.curv}
\title{Read file in FreeSurfer curv format}
\usage{
read.fs.curv(filepath)
}
\arguments{
\item{filepath, }{string. Full path to the input curv file. Note: gzipped files are supported and gz format is assumed if the filepath ends with ".gz".}
}
\value{
data, vector of floats. The brain morphometry data, one value per vertex.
}
\description{
Read vertex-wise brain mophometry data from a file in FreeSurfer binary 'curv' format.
   For a subject (MRI image pre-processed with FreeSurfer) named 'bert', an example file would be 'bert/surf/lh.thickness', which contains n values. Each value represents the cortical thickness at the respective vertex in the brain surface mesh of bert.
}
\examples{
    curvfile = system.file("extdata", "lh.thickness",
                            package = "freesurferformats", mustWork = TRUE);
    ct = read.fs.curv(curvfile);
    cat(sprintf("Read data for \%d vertices. Values: min=\%f, mean=\%f, max=\%f.\\n",
                            length(ct), min(ct), mean(ct), max(ct)));

}
\seealso{
Other morphometry functions: \code{\link{fs.get.morph.file.ext.for.format}},
  \code{\link{fs.get.morph.file.format.from.filename}},
  \code{\link{read.fs.mgh}}, \code{\link{read.fs.morph}},
  \code{\link{write.fs.curv}}, \code{\link{write.fs.mgh}},
  \code{\link{write.fs.morph}}
}
\concept{morphometry functions}

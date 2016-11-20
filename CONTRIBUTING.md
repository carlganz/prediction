Contributions to **prediction** are welcome from anyone and are best sent as pull requests on [the GitHub repository](https://github.com/leeper/prediction/). This page provides some instructions to potential contributors about how to add to the package.

 1. Contributions can be submitted as [a pull request](https://help.github.com/articles/creating-a-pull-request/) on GitHub by forking or cloning the [repo](https://github.com/leeper/prediction/), making changes and submitting the pull request.
 
 2. This package follows [the cloudyr project style guide](http://cloudyr.github.io/styleguide/index.html). Please refer to this when editing package code.
 
 3. Pull requests should involve only one commit per substantive change. This means if you change multiple files (e.g., code and documentation), these changes should be committed together. If you don't know how to do this (e.g., you are making changes in the GitHub web interface) just submit anyway and the maintainer will clean things up.
 
 4. All contributions must be submitted consistent with the package license ([MIT](https://opensource.org/licenses/MIT)).
 
 5. Non-trivial contributions need to be noted in the `Authors@R` field in the [DESCRIPTION](https://github.com/leeper/prediction/blob/master/DESCRIPTION). Just follow the format of the existing entries to add your name (and, optionally, email address). Substantial contributions should also be noted in [`inst/CITATION`](https://github.com/leeper/prediction/blob/master/inst/CITATION).
 
 6. The package uses royxgen code and documentation markup, so changes should be made to roxygen comments in the source code `.R` files. If changes are made, roxygen needs to be run. The easiest way to do this is a command line call to: `Rscript -e devtools::document()`. Please resolve any roxygen errors before submitting a pull request. The [README.md](https://github.com/leeper/prediction/blob/master/README.md) file is built from [README.Rmd](https://github.com/leeper/prediction/blob/master/README.Rmd); changes should be made in both places or to [README.Rmd](https://github.com/leeper/prediction/blob/master/README.Rmd) and then knitted using using `knitr::knit("README.Rmd")`.
 
 7. Please run `R CMD BUILD prediction` and `R CMD CHECK prediction_VERSION.tar.gz` before submitting the pull request to check for any errors.
 
Some specific types of changes that you might make are:

 1. Bug fixes. Great!
 
 2. Documentation-only changes (e.g., to Rd files, README, vignettes). This is great! All contributions are welcome.
 
 3. New functionality. This is fine, but should be discussed on [the GitHub issues page](https://github.com/leeper/prediction/issues) before submitting a pull request. Note, in particular, that contributions of new `prediction()` methods, should comply with following:
 
   - Methods should be added to their own file in the [`R/`](https://github.com/leeper/prediction/tree/master/R/) directory, with a file name corresponding to the function name.
   - Any packages that these methods work for should be added to the `Enhances` field of the [`DESCRIPTION`](https://github.com/leeper/prediction/blob/master/DESCRIPTION) file. If methods require imports from a package they are supporting, they should still be listed in `Enhances` and call code should be made conditional on a `requireNamespace()` statement in the method.
   - If tests are added, these should similarly be conditional on a `requireNamespace()` statement and the required packages should be added to [`.travis.yml`](https://github.com/leeper/prediction/blob/master/.travis.yml) under the `r_packages:` heading so that they can be used during testing on Travis-CI.
 
 3. Changes requiring a new package dependency should also be discussed on [the GitHub issues page](https://github.com/leeper/prediction/issues) before submitting a pull request.
 
 4. Message translations. These are very appreciated! The format is a pain, but if you're doing this I'm assuming you're already familiar with it.

Any questions you have can be opened as GitHub issues or directed to thosjleeper (at) gmail.com.

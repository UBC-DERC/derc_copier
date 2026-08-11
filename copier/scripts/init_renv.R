#!/usr/bin/env Rscript

# init_renv.R --------------------------------------------------------------
#
# Post-generation task for R projects created from this Copier template.
#
# It is invoked (non-interactively, via `Rscript`) from the `_tasks` block in
# `copier.yml` with the newly generated project as the working directory.
#
# Responsibilities:
#   1. Make sure a *writable* personal library exists and is on `.libPaths()`.
#      Under `Rscript` there is no interactive prompt to create one, so if the
#      user library does not yet exist R falls back to the (usually
#      unwritable) system site-library and `install.packages()` fails. We
#      create it up front to avoid that.
#   2. Install `renv` into that library if it is not already available.
#   3. Initialise `renv` for the project and take an initial snapshot.
#
# Keep this logic here (rather than as a one-line `Rscript -e '...'` in
# copier.yml) so it can be read, documented, and maintained on its own.
# --------------------------------------------------------------------------

repos <- "https://cloud.r-project.org"

# 1. Ensure a writable personal library exists and is used.
user_lib <- Sys.getenv("R_LIBS_USER")
if (nzchar(user_lib)) {
  if (!dir.exists(user_lib)) {
    dir.create(user_lib, recursive = TRUE, showWarnings = FALSE)
  }
  .libPaths(user_lib)
}
lib <- .libPaths()[1]

# 2. Install renv if needed.
if (!requireNamespace("renv", quietly = TRUE)) {
  install.packages("renv", repos = repos, lib = lib)
}

# 3. Initialise renv and snapshot.
renv::init(bare = TRUE)
renv::snapshot(type = "explicit", prompt = FALSE)

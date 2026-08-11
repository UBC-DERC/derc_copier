# Keeping Your Project in Sync

One of the main reasons we use `copier` is that your project stays **linked** to
this template. When we improve the template &mdash; better links to ORCID, updated
codes of conduct, new license options &mdash; you can pull those improvements into
your existing project, and you can also change your own answers after the fact.

## Editing your answers

Your original answers live in `.copier-answers.yml` in your project directory (see
[Building your project](building.md)). If you want to change one of them &mdash; for
example, to update the copyright year &mdash; edit the value in that file:

```yaml
copyright_year: 2027
```

Then run:

```bash
copier update
```

`copier` will check whether there is a newer version of the template, and then
update any files that depend on the answers you changed. For example, if you
modify `copyright_year`, you would see changes to `LICENSE.md` and `CITATION.cff`.

## Before you update

`copier update` works *through* `git`, so a couple of conditions need to be true
first:

- Your project must be a **git repository** (the template set this up for you when
  you built it with `--trust`).
- Your working tree should be **clean** &mdash; commit or stash any changes before
  running the update. This lets you clearly see, and if necessary undo, whatever
  the update changes.

Because updates are applied as a merge, you may occasionally get **merge conflicts**
where your edits and the template's changes overlap. `copier` marks these the same
way `git` does; resolve them as you would any other conflict, then commit.

## Pinning to a specific template version (optional)

By default `copier` copies and updates from the latest released version of the
template. If you need a reproducible build &mdash; for example, to match a
collaborator exactly &mdash; you can pin to a specific tagged version with
`--vcs-ref`:

```bash
copier copy --vcs-ref v0.1.0 https://github.com/UBC-DERC/derc_copier . --trust
```

The same flag works with `copier update` if you want to move to (or stay on) a
particular version rather than the newest one.

# -*- mode: python -*-
from __future__ import print_function

import os
import subprocess
import sys

def ls(path):
    return os.listdir(path)

join = os.path.join

env = Environment(ENV = {
    # for deployment
    "NETLIFY_KEY": os.environ.get("NETLIFY_KEY") or "",
    # so that we can find people's tools
    "PATH" : os.environ["PATH"],
    # otherwise latexmk emits a silly warning
    "USER" : os.environ["USER"]})

static_files = []

shared_tex_dir = join("tex", "documents")
for document in ls(shared_tex_dir):
    tex_dir = join(shared_tex_dir, document)
    tex_file = join(tex_dir, document + ".tex")
    pdf_file = join(tex_dir, document + ".pdf")
    deps = [tex_file]
    if "data" in ls(tex_dir):
        data_dir = join(tex_dir, "data")
        # If we just declare a dependency on data_dir, then adding
        # files to it doesn't cause a rebuild. We actually have to
        # depend on all contents of data_dir. This actually works with
        # both insertions and deletions, interestingly.
        deps.extend(join(data_dir, item) for item in ls(data_dir))
    env.Command(pdf_file, deps,
                "tectonic "
                .format(document + ".tex"),
                chdir=tex_dir)
    for ext in ["aux", "fdb_latexmk", "fls", "log", "nav", "out",
                "snm", "toc"]:
        path = join(tex_dir, document + "." + ext)
        env.Clean(pdf_file, path)
    env.Clean(pdf_file, join(tex_dir, "auto"))
    moved_pdf_file = join("static", document + ".pdf")
    env.Command(moved_pdf_file, pdf_file,
                Copy(moved_pdf_file, pdf_file))
    static_files.append(moved_pdf_file)

for fname in ls("favicon"):
    if fname.endswith(".png") or fname.endswith(".ico"):
        old_path = join("favicon", fname)
        new_path = join("static", fname)
        env.Command(new_path, old_path, Copy(new_path, old_path))
        static_files.append(new_path)
    else:
        pass

hugo_deps = static_files + ["content", "layouts", "static", "themes"]
env.Command("public", hugo_deps, "hugo")
env.Clean("public", "public")

env.Zip("public.zip", "public")

env.Alias("deploy", "public.zip", "script/deploy.zsh")
env.AlwaysBuild("deploy")

compdef Make

_Make () {
    _arguments \
        '-b[Build the project]' '--build[Build the project]' \
        '-r[Rebuild the project]' '--rebuild[Rebuild the project]' \
        '-c[Clean the project]' '--clean[Clean the project]' \
        '-j[Number of jobs to run simultaneously]' '--jobs[Number of jobs to run simultaneously]' \
        '-p[Specify the preset to use]' '--preset[Specify the preset to use]' \
        '--build-dir[Specify the build directory]' \
        '--now[Skip the delay before cleaning]'
}

compdef _Make Make

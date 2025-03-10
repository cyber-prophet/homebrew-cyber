#!/usr/bin/env nu
def main [x: string] {
  make_release $x
}

def make_release [
  script_name
] {
    let $prev_ver = (
        ls -s releases/ | get name | parse '{a}-{ver}.{other}' | get ver | sort | last
    )
    let $cur_ver = ($prev_ver | into int | $in + 1 | fill -a right -c '0' -w 3)
    let $file_name = ($"releases/($script_name)-($cur_ver).tar.gz" | inspect )

    tar -cvzf $"($file_name)" $"src/($script_name)"
    
    git add $"src/($script_name)"

    let $shasum = (open $file_name | hash sha256 | inspect)

    open $"Formula/($script_name).rb"
    | str replace -r 'sha256 ".*?"' $'sha256 "($shasum)"'
    | str replace -r $'\d\d\d.tar.gz' $'($cur_ver).tar.gz'
    | save -f $"Formula/($script_name).rb"

    git add $'Formula/($script_name).rb' $file_name
    git commit -m $'($script_name) ($cur_ver)'
    git push
}
